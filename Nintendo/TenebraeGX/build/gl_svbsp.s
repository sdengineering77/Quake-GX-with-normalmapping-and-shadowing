	.file	"gl_svbsp.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl AllocPlane
	.type	AllocPlane, @function
AllocPlane:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_svbsp.c"
	.loc 1 46 0
	.cfi_startproc
.LVL0:
	.loc 1 48 0
	cmpwi 0,3,0
	.loc 1 46 0
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB9:
	.loc 1 51 0
	lis 8,planesusedpool@ha
	lwz 10,planesusedpool@l(8)
.LBE9:
	.loc 1 46 0
	stw 0,12(1)
	.loc 1 48 0
	beq- 0,.L3
	.cfi_offset 65, 4
.LVL1:
.LBB10:
	.loc 1 51 0 discriminator 1
	cmpwi 7,10,0
	ble- 7,.L4
	.loc 1 51 0 is_stmt 0
	lis 9,PlanePool@ha
	lfs 13,0(3)
	la 0,PlanePool@l(9)
	mtctr 10
	mr 9,0
	li 11,0
.LVL2:
.L7:
	.loc 1 52 0 is_stmt 1
	lfs 0,0(9)
	fcmpu 7,13,0
	bne- 7,.L5
	.loc 1 52 0 is_stmt 0 discriminator 1
	lfs 12,4(9)
	lfs 0,4(3)
	fcmpu 7,12,0
	bne- 7,.L5
	.loc 1 53 0 is_stmt 1
	lfs 12,8(9)
	lfs 0,8(3)
	fcmpu 7,12,0
	bne- 7,.L5
	.loc 1 54 0
	lfs 12,12(9)
	lfs 0,12(3)
	fcmpu 7,12,0
	beq- 7,.L10
.L5:
	.loc 1 51 0
	addi 11,11,1
.LVL3:
	addi 9,9,16
	bdnz .L7
.LVL4:
.L3:
.LBE10:
	.loc 1 61 0
	cmpwi 7,10,32767
	bgt- 7,.L11
.L4:
	.loc 1 66 0
	addi 0,10,1
	.loc 1 67 0
	lis 3,PlanePool@ha
.LVL5:
	slwi 10,10,4
	.loc 1 66 0
	stw 0,planesusedpool@l(8)
	.loc 1 67 0
	la 0,PlanePool@l(3)
	add 3,10,0
.L6:
	.loc 1 68 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL6:
.L10:
.LCFI2:
	.cfi_restore_state
.LBB11:
	.loc 1 56 0
	slwi 11,11,4
	add 3,0,11
.LVL7:
	b .L6
.LVL8:
.L11:
.LBE11:
.LBB12:
.LBB13:
	.loc 1 62 0
	lis 3,.LC0@ha
.LVL9:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 63 0
	lis 9,svBsp_NumMissedPlanes@ha
	lwz 11,svBsp_NumMissedPlanes@l(9)
	li 3,0
	addi 0,11,1
	stw 0,svBsp_NumMissedPlanes@l(9)
	b .L6
.LBE13:
.LBE12:
	.cfi_endproc
.LFE38:
	.size	AllocPlane, .-AllocPlane
	.align 2
	.globl AllocNode
	.type	AllocNode, @function
AllocNode:
.LFB39:
	.loc 1 70 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 71 0
	lis 9,nodesusedpool@ha
	lwz 3,nodesusedpool@l(9)
	.loc 1 70 0
	stw 0,12(1)
	.loc 1 71 0
	li 0,0
	.cfi_offset 65, 4
	ori 0,0,65535
	cmpw 7,3,0
	bgt- 7,.L15
	.loc 1 76 0
	addi 0,3,1
	.loc 1 77 0
	mulli 3,3,12
	.loc 1 76 0
	stw 0,nodesusedpool@l(9)
	.loc 1 77 0
	lis 9,NodePool@ha
	la 0,NodePool@l(9)
	add 3,3,0
.L14:
	.loc 1 78 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L15:
.LCFI5:
	.cfi_restore_state
.LBB16:
.LBB17:
	.loc 1 72 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 73 0
	lis 9,svBsp_NumMissedNodes@ha
	lwz 11,svBsp_NumMissedNodes@l(9)
	li 3,0
	addi 0,11,1
	stw 0,svBsp_NumMissedNodes@l(9)
	b .L14
.LBE17:
.LBE16:
	.cfi_endproc
.LFE39:
	.size	AllocNode, .-AllocNode
	.align 2
	.globl Epsilon_Sign
	.type	Epsilon_Sign, @function
Epsilon_Sign:
.LFB40:
	.loc 1 81 0
	.cfi_startproc
.LVL10:
	.loc 1 82 0
	lis 9,.LC2@ha
	li 3,1
	lfd 0,.LC2@l(9)
	fcmpu 7,1,0
	bltlr- 7
	.loc 1 83 0
	lis 9,.LC3@ha
	lfd 0,.LC3@l(9)
	fcmpu 7,1,0
	.loc 1 84 0
	mfcr 3
	rlwinm 3,3,30,1
	slwi 3,3,1
	.loc 1 85 0
	blr
	.cfi_endproc
.LFE40:
	.size	Epsilon_Sign, .-Epsilon_Sign
	.align 2
	.globl R_CreateEmptyTree
	.type	R_CreateEmptyTree, @function
R_CreateEmptyTree:
.LFB41:
	.loc 1 103 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI6:
	.cfi_def_cfa_offset 24
	.loc 1 110 0
	lis 9,planesusedpool@ha
	.loc 1 103 0
	mflr 0
	.loc 1 115 0
	li 3,0
	.loc 1 103 0
	stw 31,20(1)
	.loc 1 110 0
	li 31,0
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 31,planesusedpool@l(9)
	.loc 1 111 0
	lis 9,nodesusedpool@ha
	stw 31,nodesusedpool@l(9)
	.loc 1 112 0
	lis 9,svBsp_NumMissedPlanes@ha
	stw 31,svBsp_NumMissedPlanes@l(9)
	.loc 1 113 0
	lis 9,svBsp_NumMissedNodes@ha
	.loc 1 103 0
	stw 0,28(1)
	.loc 1 113 0
	stw 31,svBsp_NumMissedNodes@l(9)
	.loc 1 103 0
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 115 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl AllocPlane
	mr 29,3
.LVL11:
	.loc 1 116 0
	li 3,0
.LVL12:
	bl AllocPlane
	mr 30,3
.LVL13:
	.loc 1 117 0
	bl AllocNode
.LVL14:
	mr 28,3
.LVL15:
	.loc 1 118 0
	bl AllocNode
.LVL16:
	.loc 1 124 0
	lis 11,currentshadowlight@ha
	.loc 1 122 0
	lis 10,.LC6@ha
	.loc 1 124 0
	lwz 11,currentshadowlight@l(11)
	.loc 1 118 0
	mr 9,3
.LVL17:
	.loc 1 122 0
	lfs 0,.LC6@l(10)
	.loc 1 141 0
	mr 3,28
.LVL18:
	.loc 1 124 0
	lfs 12,0(11)
	lfs 11,4(11)
	lfs 13,8(11)
	.loc 1 121 0
	lis 11,.LC4@ha
	lwz 0,.LC4@l(11)
	.loc 1 126 0
	lis 11,.LC5@ha
	.loc 1 122 0
	stfs 0,4(29)
	.loc 1 124 0
	fmadds 10,11,0,12
	.loc 1 121 0
	stw 0,0(29)
	.loc 1 129 0
	fmsubs 12,11,0,12
	.loc 1 126 0
	lwz 0,.LC5@l(11)
	.loc 1 123 0
	stfs 0,8(29)
	.loc 1 124 0
	fmadds 10,13,0,10
	.loc 1 126 0
	stw 0,0(30)
	.loc 1 129 0
	fmadds 13,13,0,12
	.loc 1 141 0
	lwz 0,28(1)
	.loc 1 124 0
	stfs 10,12(29)
	.loc 1 141 0
	mtlr 0
	.loc 1 127 0
	stfs 0,4(30)
	.loc 1 128 0
	stfs 0,8(30)
	.loc 1 129 0
	stfs 13,12(30)
	.loc 1 134 0
	stw 31,8(28)
	.loc 1 133 0
	stw 9,4(28)
	.loc 1 132 0
	stw 29,0(28)
	.loc 1 137 0
	stw 31,4(9)
	.loc 1 136 0
	stw 30,0(9)
	.loc 1 138 0
	stw 31,8(9)
	.loc 1 141 0
	lwz 28,8(1)
.LVL19:
	lwz 29,12(1)
.LVL20:
	lwz 30,16(1)
.LVL21:
	lwz 31,20(1)
	addi 1,1,24
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE41:
	.size	R_CreateEmptyTree, .-R_CreateEmptyTree
	.align 2
	.globl SplitPolygon
	.type	SplitPolygon, @function
SplitPolygon:
.LFB42:
	.loc 1 145 0
	.cfi_startproc
.LVL22:
	mflr 0
	stwu 1,-80(1)
.LCFI8:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	.loc 1 157 0
	cmpwi 7,5,0
	.loc 1 145 0
	stw 24,48(1)
	mr 24,10
	.cfi_offset 24, -32
	stw 0,84(1)
	.loc 1 150 0
	addi 0,5,-1
	.cfi_offset 65, 4
	.loc 1 152 0
	slwi 11,0,2
.LVL23:
	.loc 1 145 0
	stw 25,52(1)
	stw 28,64(1)
	mr 25,9
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	stw 29,68(1)
	mr 28,8
	stw 30,72(1)
	mr 29,7
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,76(1)
	mr 30,6
	stw 18,24(1)
	mr 31,5
	.cfi_offset 18, -56
	.cfi_offset 31, -4
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 26,56(1)
	stw 27,60(1)
	.loc 1 152 0
	lwzx 9,4,11
.LVL24:
	.loc 1 157 0
	ble- 7,.L34
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
.LVL25:
	.loc 1 150 0
	mulli 0,0,12
.LVL26:
	mr 23,3
	.loc 1 145 0
	addi 20,4,-4
.LVL27:
	.loc 1 157 0
	li 21,0
	.loc 1 150 0
	add 18,3,0
	.loc 1 148 0
	li 26,0
	.loc 1 147 0
	li 27,0
	b .L33
.LVL28:
.L25:
	.loc 1 187 0
	cmpwi 7,22,1
	beq- 7,.L36
	.loc 1 213 0
	lwz 8,0(23)
	mulli 7,26,12
	.loc 1 214 0
	mulli 10,27,12
	.loc 1 215 0
	addi 26,26,1
.LVL29:
	.loc 1 213 0
	stwx 8,29,7
	add 7,29,7
	.loc 1 214 0
	add 9,25,10
.LVL30:
	.loc 1 216 0
	addi 27,27,1
.LVL31:
	.loc 1 213 0
	lwz 11,4(23)
	stw 11,4(7)
	lwz 0,8(23)
	stw 0,8(7)
	.loc 1 214 0
	stwx 8,25,10
	stw 11,4(9)
	stw 0,8(9)
.L27:
.LVL32:
	.loc 1 221 0
	cmpwi 7,27,32
	bgt- 7,.L30
.L38:
	.loc 1 221 0 is_stmt 0 discriminator 1
	cmpwi 7,26,32
	bgt- 7,.L30
	.loc 1 157 0 is_stmt 1
	addi 21,21,1
.LVL33:
	addi 23,23,12
	cmpw 7,21,31
	beq- 7,.L24
.LVL34:
	.loc 1 160 0
	mr 9,22
.LVL35:
	.loc 1 159 0
	mr 18,19
.LVL36:
.L33:
	.loc 1 160 0
	lwzu 22,4(20)
	.loc 1 159 0
	mr 19,23
.LVL37:
	.loc 1 163 0
	cmpwi 7,22,2
	bne+ 7,.L25
	.loc 1 165 0
	cmpwi 7,9,1
	beq- 7,.L37
.LVL38:
.L26:
	.loc 1 183 0
	mulli 0,27,12
	lwz 11,0(23)
	.loc 1 184 0
	addi 27,27,1
.LVL39:
	.loc 1 183 0
	stwx 11,25,0
	add 9,25,0
	.loc 1 221 0
	cmpwi 7,27,32
	.loc 1 183 0
	lwz 0,4(23)
	stw 0,4(9)
	lwz 0,8(23)
	stw 0,8(9)
.LVL40:
	.loc 1 221 0
	ble+ 7,.L38
.L30:
	.loc 1 222 0
	lis 3,.LC7@ha
	mr 4,26
	la 3,.LC7@l(3)
	mr 5,27
	crxor 6,6,6
	bl Con_Printf
	.loc 1 225 0
	stw 26,0(28)
	.loc 1 226 0
	stw 27,0(24)
.LVL41:
.L23:
	.loc 1 233 0
	lwz 0,84(1)
	lwz 18,24(1)
	mtlr 0
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
.LVL42:
	lwz 25,52(1)
.LVL43:
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
.LVL44:
	lwz 29,68(1)
.LVL45:
	lwz 30,72(1)
.LVL46:
	lwz 31,76(1)
.LVL47:
	addi 1,1,80
	.cfi_remember_state
.LCFI9:
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	blr
.LVL48:
.L36:
.LCFI10:
	.cfi_restore_state
	.loc 1 189 0
	cmpwi 7,9,2
	beq- 7,.L39
.LVL49:
.L29:
	.loc 1 207 0
	mulli 0,26,12
	lwz 11,0(23)
	.loc 1 208 0
	addi 26,26,1
.LVL50:
	.loc 1 207 0
	stwx 11,29,0
	add 9,29,0
	lwz 0,4(23)
	stw 0,4(9)
	lwz 0,8(23)
	stw 0,8(9)
	b .L27
.LVL51:
.L37:
	.loc 1 170 0
	lfs 0,4(18)
	.loc 1 173 0
	addi 3,1,8
	.loc 1 171 0
	lfs 9,4(30)
	.loc 1 173 0
	mr 4,3
	.loc 1 170 0
	lfs 12,0(18)
	.loc 1 171 0
	fmuls 1,0,9
	lfs 10,0(30)
	.loc 1 170 0
	lfs 13,4(23)
	.loc 1 171 0
	lfs 11,8(30)
	.loc 1 170 0
	fsubs 13,13,0
	lfs 8,0(23)
	.loc 1 171 0
	fmadds 1,12,10,1
	.loc 1 170 0
	lfs 0,8(18)
	fsubs 12,8,12
	lfs 7,8(23)
	.loc 1 172 0
	fmuls 9,13,9
	.loc 1 171 0
	lfs 8,12(30)
	fmadds 1,0,11,1
	.loc 1 170 0
	stfs 13,12(1)
	fsubs 0,7,0
	stfs 12,8(1)
	.loc 1 172 0
	fmadds 10,12,10,9
	.loc 1 171 0
	fsubs 1,1,8
	.loc 1 170 0
	stfs 0,16(1)
	.loc 1 172 0
	fmadds 11,0,11,10
	.loc 1 171 0
	fneg 1,1
	.loc 1 173 0
	fdivs 1,1,11
	bl VectorScale
.LVL52:
	.loc 1 176 0
	lfs 12,0(18)
	lfs 0,8(1)
	.loc 1 177 0
	mulli 10,26,12
	.loc 1 176 0
	lfs 13,4(18)
	.loc 1 178 0
	mulli 0,27,12
	.loc 1 176 0
	fadds 12,12,0
.LVL53:
	lfs 0,12(1)
	lfs 11,8(18)
	.loc 1 177 0
	add 11,29,10
	.loc 1 176 0
	fadds 13,13,0
.LVL54:
	lfs 0,16(1)
	.loc 1 178 0
	add 9,25,0
	.loc 1 177 0
	stfsx 12,29,10
	.loc 1 176 0
	fadds 0,11,0
.LVL55:
	.loc 1 180 0
	addi 27,27,1
.LVL56:
	.loc 1 177 0
	stfs 13,4(11)
	.loc 1 181 0
	addi 26,26,1
.LVL57:
	.loc 1 177 0
	stfs 0,8(11)
	.loc 1 178 0
	stfsx 12,25,0
	stfs 13,4(9)
	stfs 0,8(9)
	b .L26
.LVL58:
.L34:
	.loc 1 148 0
	li 26,0
	.loc 1 147 0
	li 27,0
.LVL59:
.L24:
	.loc 1 231 0
	stw 26,0(28)
	.loc 1 232 0
	stw 27,0(24)
	b .L23
.LVL60:
.L39:
	.loc 1 194 0
	lfs 0,4(18)
	.loc 1 197 0
	addi 3,1,8
	.loc 1 195 0
	lfs 9,4(30)
	.loc 1 197 0
	mr 4,3
	.loc 1 194 0
	lfs 12,0(18)
	.loc 1 195 0
	fmuls 1,0,9
	lfs 10,0(30)
	.loc 1 194 0
	lfs 13,4(23)
	.loc 1 195 0
	lfs 11,8(30)
	.loc 1 194 0
	fsubs 13,13,0
	lfs 8,0(23)
	.loc 1 195 0
	fmadds 1,12,10,1
	.loc 1 194 0
	lfs 0,8(18)
	fsubs 12,8,12
	lfs 7,8(23)
	.loc 1 196 0
	fmuls 9,13,9
	.loc 1 195 0
	lfs 8,12(30)
	fmadds 1,0,11,1
	.loc 1 194 0
	stfs 13,12(1)
	fsubs 0,7,0
	stfs 12,8(1)
	.loc 1 196 0
	fmadds 10,12,10,9
	.loc 1 195 0
	fsubs 1,1,8
	.loc 1 194 0
	stfs 0,16(1)
	.loc 1 196 0
	fmadds 11,0,11,10
	.loc 1 195 0
	fneg 1,1
	.loc 1 197 0
	fdivs 1,1,11
	bl VectorScale
.LVL61:
	.loc 1 200 0
	lfs 12,0(18)
	lfs 0,8(1)
	.loc 1 201 0
	mulli 10,26,12
	.loc 1 200 0
	lfs 13,4(18)
	.loc 1 202 0
	mulli 0,27,12
	.loc 1 200 0
	fadds 12,12,0
.LVL62:
	lfs 0,12(1)
	lfs 11,8(18)
	.loc 1 201 0
	add 11,29,10
	.loc 1 200 0
	fadds 13,13,0
.LVL63:
	lfs 0,16(1)
	.loc 1 202 0
	add 9,25,0
	.loc 1 201 0
	stfsx 12,29,10
	.loc 1 200 0
	fadds 0,11,0
.LVL64:
	.loc 1 204 0
	addi 27,27,1
.LVL65:
	.loc 1 201 0
	stfs 13,4(11)
	.loc 1 205 0
	addi 26,26,1
.LVL66:
	.loc 1 201 0
	stfs 0,8(11)
	.loc 1 202 0
	stfsx 12,25,0
	stfs 13,4(9)
	stfs 0,8(9)
	b .L29
	.cfi_endproc
.LFE42:
	.size	SplitPolygon, .-SplitPolygon
	.align 2
	.globl NodeFromEdge
	.type	NodeFromEdge, @function
NodeFromEdge:
.LFB45:
	.loc 1 371 0
	.cfi_startproc
.LVL67:
	mflr 0
	stwu 1,-88(1)
.LCFI11:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 381 0
	addi 11,5,1
	.loc 1 371 0
	mr 8,5
	stw 31,76(1)
	.loc 1 382 0
	lis 31,currentshadowlight@ha
	.cfi_offset 31, -12
	.loc 1 371 0
	stw 0,92(1)
	.loc 1 381 0
	divw 0,11,4
	.cfi_offset 65, 4
	.loc 1 382 0
	lwz 10,currentshadowlight@l(31)
	.loc 1 371 0
	mr 9,3
	.loc 1 386 0
	addi 5,1,8
.LVL68:
	.loc 1 371 0
	stfd 31,80(1)
	.loc 1 382 0
	lfs 9,0(10)
	.loc 1 386 0
	addi 3,1,32
.LVL69:
	.loc 1 382 0
	lfs 10,4(10)
	lfs 11,8(10)
	.loc 1 381 0
	mullw 0,0,4
	.loc 1 386 0
	addi 4,1,20
.LVL70:
	.loc 1 381 0
	subf 0,0,11
	.loc 1 380 0
	mulli 8,8,12
.LVL71:
	.loc 1 381 0
	mulli 0,0,12
	.loc 1 380 0
	add 10,9,8
.LVL72:
	.loc 1 382 0
	lfsx 12,9,8
	.loc 1 381 0
	add 11,9,0
.LVL73:
	.loc 1 382 0
	lfs 13,4(10)
	lfs 0,8(10)
	fsubs 9,12,9
	.loc 1 384 0
	lfsx 6,9,0
	.loc 1 382 0
	fsubs 10,13,10
	.loc 1 384 0
	lfs 7,4(11)
	.loc 1 382 0
	fsubs 11,0,11
	.loc 1 384 0
	lfs 8,8(11)
	fsubs 12,12,6
	fsubs 13,13,7
	.loc 1 382 0
	stfs 9,32(1)
	.loc 1 384 0
	fsubs 0,0,8
	.loc 1 382 0
	stfs 10,36(1)
	stfs 11,40(1)
	.loc 1 384 0
	stfs 12,20(1)
	stfs 13,24(1)
	stfs 0,28(1)
	.loc 1 386 0
	.cfi_offset 63, -8
	bl CrossProduct
.LVL74:
	.loc 1 387 0
	addi 3,1,8
	bl VectorNormalize
	.loc 1 390 0
	lwz 9,currentshadowlight@l(31)
	lfs 13,12(1)
	.loc 1 396 0
	addi 3,1,44
	.loc 1 390 0
	lfs 31,4(9)
	lfs 0,0(9)
	fmuls 31,13,31
	lfs 12,8(1)
	lfs 11,8(9)
	.loc 1 393 0
	stfs 12,44(1)
	.loc 1 390 0
	fmadds 31,12,0,31
	lfs 0,16(1)
	.loc 1 393 0
	stfs 13,48(1)
	stfs 0,52(1)
	.loc 1 390 0
	fmadds 31,0,11,31
.LVL75:
	.loc 1 394 0
	stfs 31,56(1)
	.loc 1 396 0
	bl AllocPlane
.LVL76:
	.loc 1 397 0
	mr. 31,3
	li 3,0
.LVL77:
	beq- 0,.L41
	.loc 1 399 0
	lwz 0,8(1)
	stw 0,0(31)
	lwz 0,12(1)
	stw 0,4(31)
	lwz 0,16(1)
	.loc 1 400 0
	stfs 31,12(31)
	.loc 1 399 0
	stw 0,8(31)
	.loc 1 402 0
	bl AllocNode
.LVL78:
	.loc 1 403 0
	cmpwi 0,3,0
	beq- 0,.L41
	.loc 1 409 0
	li 0,0
	.loc 1 407 0
	stw 31,0(3)
	.loc 1 409 0
	stw 0,4(3)
	.loc 1 410 0
	stw 0,8(3)
.LVL79:
.L41:
	.loc 1 413 0
	lwz 0,92(1)
	lwz 31,76(1)
.LVL80:
	mtlr 0
	lfd 31,80(1)
.LVL81:
	addi 1,1,88
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE45:
	.size	NodeFromEdge, .-NodeFromEdge
	.align 2
	.globl ExpandVolume
	.type	ExpandVolume, @function
ExpandVolume:
.LFB44:
	.loc 1 339 0
	.cfi_startproc
.LVL82:
	stwu 1,-32(1)
.LCFI13:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 30,24(1)
	.loc 1 349 0
	mr. 30,5
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 339 0
	stw 27,12(1)
	.loc 1 349 0
	li 27,0
	.cfi_offset 27, -20
	.loc 1 339 0
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 0,36(1)
	stw 29,20(1)
	stw 31,28(1)
	.loc 1 349 0
	beq- 0,.L44
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 351 0
	mr 4,30
.LVL83:
	li 5,0
.LVL84:
	bl NodeFromEdge
.LVL85:
	.loc 1 352 0
	mr. 27,3
	beq- 0,.L44
.LVL86:
	.loc 1 355 0 discriminator 1
	cmpwi 7,30,1
	ble- 7,.L44
	.loc 1 355 0 is_stmt 0
	mr 29,27
	li 31,1
	b .L45
.LVL87:
.L48:
	beq- 6,.L44
.LVL88:
.L45:
	.loc 1 356 0 is_stmt 1
	mr 5,31
	mr 3,28
	mr 4,30
	.loc 1 355 0
	addi 31,31,1
	.loc 1 356 0
	bl NodeFromEdge
	.loc 1 355 0
	cmpw 6,31,30
	.loc 1 357 0
	cmpwi 7,3,0
	.loc 1 356 0
	stw 3,4(29)
	.loc 1 355 0
	mr 29,3
	.loc 1 357 0
	bne+ 7,.L48
.LVL89:
.L44:
	.loc 1 363 0
	lwz 0,36(1)
	mr 3,27
	lwz 28,16(1)
.LVL90:
	mtlr 0
	lwz 27,12(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL91:
	lwz 31,28(1)
	addi 1,1,32
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE44:
	.size	ExpandVolume, .-ExpandVolume
	.align 2
	.globl R_AddShadowCaster
	.type	R_AddShadowCaster, @function
R_AddShadowCaster:
.LFB43:
	.loc 1 242 0
	.cfi_startproc
.LVL92:
	.loc 1 250 0
	cmpwi 7,7,1500
	.loc 1 242 0
	mflr 0
	stwu 1,-1064(1)
.LCFI15:
	.cfi_def_cfa_offset 1064
	.cfi_register 65, 0
	stw 29,1052(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,1056(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,1060(1)
	mr 31,7
	.cfi_offset 31, -4
	stw 0,1068(1)
	.loc 1 250 0
	bgt- 7,.L71
	.cfi_offset 65, 4
	.loc 1 255 0
	cmpwi 7,5,0
	beq- 7,.L51
.LVL93:
	.loc 1 259 0 discriminator 1
	ble- 7,.L51
.LBB18:
.LBB19:
	.loc 1 83 0
	slwi 7,5,2
.LVL94:
.LBE19:
.LBE18:
	.loc 1 259 0
	lwz 6,0(3)
.LVL95:
.LBB27:
.LBB20:
	.loc 1 83 0
	addi 7,7,-4
	.loc 1 82 0
	lis 9,.LC2@ha
	.loc 1 83 0
	srwi 7,7,2
.LBE20:
.LBE27:
	.loc 1 259 0
	lfs 7,0(6)
.LBB28:
.LBB21:
	.loc 1 83 0
	addi 7,7,1
.LBE21:
.LBE28:
	.loc 1 259 0
	lfs 8,4(6)
	lfs 9,8(6)
.LBB29:
.LBB22:
	.loc 1 83 0
	mtctr 7
.LBE22:
.LBE29:
	.loc 1 259 0
	lfs 10,12(6)
	addi 10,1,140
.LBB30:
.LBB23:
	.loc 1 82 0
	lfd 11,.LC2@l(9)
.LBE23:
.LBE30:
	.loc 1 242 0
	li 11,0
	.loc 1 259 0
	mr 9,4
.LBB31:
.LBB24:
	.loc 1 83 0
	lis 8,.LC3@ha
.LVL96:
.L54:
.LBE24:
.LBE31:
	.loc 1 260 0 discriminator 2
	lfs 0,4(9)
.LBB32:
.LBB25:
	.loc 1 82 0 discriminator 2
	li 0,1
.LBE25:
.LBE32:
	.loc 1 260 0 discriminator 2
	lfs 12,0(9)
	fmuls 0,8,0
	lfs 13,8(9)
	addi 9,9,12
.LVL97:
	fmadds 0,12,7,0
	fmadds 0,13,9,0
	fsubs 0,0,10
.LBB33:
.LBB26:
	.loc 1 82 0 discriminator 2
	fcmpu 7,0,11
	blt- 7,.L52
	.loc 1 83 0
	lfd 13,.LC3@l(8)
	.loc 1 84 0
	fcmpu 7,0,13
	mfcr 0
	rlwinm 0,0,30,1
	slwi 0,0,1
.L52:
.LBE26:
.LBE33:
	.loc 1 260 0
	stwu 0,4(10)
	or 11,11,0
.LVL98:
	.loc 1 259 0
	bdnz .L54
	.loc 1 263 0
	cmpwi 7,11,1
	beq- 7,.L72
	.loc 1 274 0
	cmpwi 7,11,2
	beq- 7,.L73
	.loc 1 295 0
	cmpwi 7,11,3
	beq- 7,.L74
.LVL99:
.L51:
	.loc 1 331 0
	lwz 0,1068(1)
	li 3,0
	lwz 29,1052(1)
.LVL100:
	mtlr 0
	lwz 30,1056(1)
.LVL101:
	lwz 31,1060(1)
.LVL102:
	addi 1,1,1064
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL103:
.L71:
.LCFI17:
	.cfi_restore_state
	.loc 1 251 0
	lis 3,.LC8@ha
.LVL104:
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL105:
	.loc 1 331 0
	lwz 0,1068(1)
	lwz 29,1052(1)
.LVL106:
	li 3,0
	mtlr 0
	lwz 30,1056(1)
.LVL107:
	lwz 31,1060(1)
.LVL108:
	addi 1,1,1064
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.LVL109:
.L74:
.LCFI19:
	.cfi_restore_state
	.loc 1 298 0
	mr 3,4
.LVL110:
	addi 7,1,656
	addi 4,1,144
.LVL111:
	addi 8,1,12
	addi 9,1,272
	addi 10,1,8
	bl SplitPolygon
.LVL112:
	.loc 1 300 0
	lwz 3,4(30)
	cmpwi 7,3,0
	beq- 7,.L59
.LVL113:
	.loc 1 302 0
	lwz 5,12(1)
	addi 4,1,656
	mr 6,29
	addi 7,31,1
	bl R_AddShadowCaster
.L60:
.LVL114:
	.loc 1 311 0
	lwz 5,8(1)
	cmpwi 7,5,0
	beq- 7,.L51
	.loc 1 313 0
	lwz 3,8(30)
	cmpwi 7,3,0
	beq- 7,.L61
	.loc 1 315 0
	addi 4,1,272
	b .L67
.LVL115:
.L72:
	.loc 1 265 0
	lwz 3,4(30)
	cmpwi 7,3,0
	beq- 7,.L56
.LVL116:
.L67:
	.loc 1 315 0
	mr 6,29
	addi 7,31,1
	bl R_AddShadowCaster
	.loc 1 331 0
	lwz 0,1068(1)
	lwz 29,1052(1)
.LVL117:
	li 3,0
	mtlr 0
	lwz 30,1056(1)
.LVL118:
	lwz 31,1060(1)
.LVL119:
	addi 1,1,1064
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI20:
	.cfi_def_cfa_offset 0
	blr
.LVL120:
.L73:
.LCFI21:
	.cfi_restore_state
	.loc 1 277 0
	lwz 3,8(30)
.LVL121:
	cmpwi 7,3,0
	bne+ 7,.L67
	.loc 1 283 0
	mr 3,4
	addi 4,1,144
.LVL122:
.L70:
	.loc 1 318 0
	mr 6,29
	bl ExpandVolume
	.loc 1 320 0
	lis 9,r_lightTimestamp@ha
	lwz 0,r_lightTimestamp@l(9)
	lwz 9,0(29)
	.loc 1 318 0
	stw 3,8(30)
	.loc 1 320 0
	cmpw 7,9,0
	beq- 7,.L51
	.loc 1 326 0
	lis 9,svBsp_NumKeptPolys@ha
	.loc 1 322 0
	lis 11,shadowchain@ha
	.loc 1 326 0
	lwz 10,svBsp_NumKeptPolys@l(9)
	.loc 1 322 0
	lwz 7,shadowchain@l(11)
	.loc 1 324 0
	lwz 8,36(29)
	.loc 1 326 0
	addi 10,10,1
	.loc 1 323 0
	stw 0,0(29)
	.loc 1 322 0
	stw 7,44(29)
	.loc 1 325 0
	stw 29,shadowchain@l(11)
	.loc 1 324 0
	stw 0,16(8)
	.loc 1 326 0
	stw 10,svBsp_NumKeptPolys@l(9)
	b .L51
.LVL123:
.L59:
	.loc 1 306 0
	lis 9,svBsp_NumCutPolys@ha
	lwz 0,svBsp_NumCutPolys@l(9)
	addic 0,0,1
	stw 0,svBsp_NumCutPolys@l(9)
	b .L60
.LVL124:
.L56:
	.loc 1 270 0
	lis 9,svBsp_NumCutPolys@ha
	lwz 11,svBsp_NumCutPolys@l(9)
.LVL125:
	addi 0,11,1
	stw 0,svBsp_NumCutPolys@l(9)
	b .L51
.LVL126:
.L61:
	.loc 1 318 0
	addi 3,1,272
	addi 4,1,16
	b .L70
	.cfi_endproc
.LFE43:
	.size	R_AddShadowCaster, .-R_AddShadowCaster
	.comm	nodesusedpool,4,4
	.comm	NodePool,786432,4
	.comm	planesusedpool,4,4
	.comm	PlanePool,524288,4
	.comm	svBsp_NumMissedNodes,4,4
	.comm	svBsp_NumMissedPlanes,4,4
	.comm	svBsp_NumAddedPolys,4,4
	.comm	svBsp_NumKeptPolys,4,4
	.comm	svBsp_NumCutPolys,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC4:
	.4byte	1065353216
.LC5:
	.4byte	-1082130432
.LC6:
	.4byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
	.4byte	-1078355559
	.4byte	-1717986918
.LC3:
	.4byte	1069128089
	.4byte	-1717986918
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Too many planes..."
	.zero	1
.LC1:
	.string	"Too many nodes..."
	.zero	2
.LC7:
	.string	"MAX_POLY_VERT exceeded: %i %i\n"
	.zero	1
.LC8:
	.string	"to deep\n"
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
	.4byte	0x1dd5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF349
	.byte	0x1
	.4byte	.LASF350
	.4byte	.LASF351
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
	.4byte	0xf18
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
	.4byte	0xf43
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd8
	.4byte	0xf49
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
	.4byte	0x128c
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
	.4byte	0xb2b
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
	.4byte	0x1298
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
	.4byte	0xefb
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
	.4byte	0x129e
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
	.4byte	0x12a4
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
	.4byte	0x12aa
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
	.4byte	0x12b0
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
	.4byte	0xf07
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
	.4byte	0xf4f
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
	.4byte	0x12b6
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
	.4byte	0xfbd
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
	.4byte	0xf49
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x1bd
	.4byte	0x12bc
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
	.4byte	0x12cc
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
	.4byte	0xf18
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
	.4byte	0xefb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.byte	0xc2
	.4byte	0xf28
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
	.4byte	0x169b
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
	.4byte	0xb00
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
	.4byte	0x169b
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
	.4byte	0x16a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x9
	.2byte	0xa2d
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x9
	.2byte	0xa2f
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x9
	.2byte	0xa31
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x9
	.2byte	0xa33
	.4byte	0x16ec
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x9
	.2byte	0xa37
	.4byte	0x16fd
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaf5
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xb16
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.byte	0x34
	.4byte	0xb2b
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
	.4byte	0xb16
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.byte	0x64
	.4byte	0xb59
	.uleb128 0xd
	.string	"v"
	.byte	0xa
	.byte	0x65
	.4byte	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0xa
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xb69
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0xa
	.byte	0x67
	.4byte	0xb36
	.uleb128 0x8
	.byte	0xc
	.byte	0x8
	.byte	0x3b
	.4byte	0xb8b
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x8
	.byte	0x3d
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x8
	.byte	0x3e
	.4byte	0xb74
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0x14
	.byte	0x8
	.byte	0x52
	.4byte	0xbe9
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x8
	.byte	0x54
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF163
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
	.4byte	.LASF164
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
	.4byte	0xbe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xbf9
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF165
	.byte	0x8
	.byte	0x59
	.4byte	0xb96
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0x48
	.byte	0x8
	.byte	0x5b
	.4byte	0xcb9
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x8
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x8
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x8
	.byte	0x61
	.4byte	0xdde
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x8
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x8
	.byte	0x64
	.4byte	0xde4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x8
	.byte	0x65
	.4byte	0xde4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x8
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x5c
	.byte	0x8
	.byte	0x96
	.4byte	0xdde
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
	.4byte	0xefb
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
	.4byte	.LASF179
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
	.4byte	.LASF180
	.byte	0x8
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0x8
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x8
	.byte	0xa5
	.4byte	0xf01
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x8
	.byte	0xa6
	.4byte	0xdde
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x8
	.byte	0xa7
	.4byte	0xdde
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x8
	.byte	0xa9
	.4byte	0xf07
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
	.4byte	.LASF186
	.byte	0x8
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x8
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x8
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x8
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0x8
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcb9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc04
	.uleb128 0x6
	.4byte	.LASF191
	.byte	0x8
	.byte	0x67
	.4byte	0xc04
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0x78
	.4byte	0xe18
	.uleb128 0xd
	.string	"v"
	.byte	0x8
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x8
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x8
	.byte	0x7c
	.4byte	0xdf5
	.uleb128 0x8
	.byte	0x2c
	.byte	0x8
	.byte	0x7e
	.4byte	0xe64
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x8
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0x8
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0x8
	.byte	0x82
	.4byte	0xe64
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
	.4byte	0xdea
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x8
	.byte	0x84
	.4byte	0xe23
	.uleb128 0xc
	.4byte	.LASF198
	.byte	0x1c
	.byte	0x8
	.byte	0x8a
	.4byte	0xee4
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0x8
	.byte	0x8c
	.4byte	0xee4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x8
	.byte	0x8d
	.4byte	0xee4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF201
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
	.4byte	.LASF202
	.byte	0x8
	.byte	0x92
	.4byte	0xeea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0x8
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe75
	.uleb128 0x5
	.byte	0x4
	.4byte	0xee4
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x8
	.byte	0x94
	.4byte	0xe75
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbf9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xef0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe6a
	.uleb128 0x6
	.4byte	.LASF205
	.byte	0x8
	.byte	0xb4
	.4byte	0xcb9
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0xf28
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x9bf
	.4byte	0xf38
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x8
	.byte	0xc6
	.4byte	0x942
	.uleb128 0x5
	.byte	0x4
	.4byte	0x667
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf4f
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf0d
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x8
	.byte	0xdd
	.4byte	0x340
	.uleb128 0x8
	.byte	0x28
	.byte	0x8
	.byte	0xe0
	.4byte	0xfbd
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x8
	.byte	0xe2
	.4byte	0xfbd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x8
	.byte	0xe3
	.4byte	0xefb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0x8
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x8
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0x8
	.byte	0xe6
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF211
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
	.4byte	.LASF212
	.byte	0x8
	.byte	0xe8
	.4byte	0xf60
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x14
	.byte	0x28
	.byte	0x8
	.2byte	0x11e
	.4byte	0x1047
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x123
	.4byte	0xb69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x124
	.4byte	0xb69
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
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x127
	.4byte	0xfd4
	.uleb128 0x16
	.2byte	0x53c
	.byte	0x8
	.2byte	0x142
	.4byte	0x1238
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x145
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x146
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0x8
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x148
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0x8
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF228
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
	.4byte	0xb2b
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
	.4byte	.LASF229
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
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF233
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
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x15e
	.4byte	0x1238
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x15f
	.4byte	0x1238
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x160
	.4byte	0xb06
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x161
	.4byte	0x124e
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x124e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x1047
	.4byte	0x125e
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x162
	.4byte	0x1053
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.2byte	0x172
	.4byte	0x128c
	.uleb128 0x13
	.4byte	.LASF241
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF242
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF243
	.sleb128 2
	.uleb128 0x13
	.4byte	.LASF244
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x172
	.4byte	0x126a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf55
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe18
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf38
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0xfc3
	.4byte	0x12cc
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe64
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x16
	.4byte	0x12f7
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0xb
	.byte	0x18
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0xb
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF246
	.byte	0xb
	.byte	0x1a
	.4byte	0x12d2
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0x14
	.byte	0x9
	.2byte	0x981
	.4byte	0x132e
	.uleb128 0x10
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x985
	.4byte	0x132e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1302
	.uleb128 0x15
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x987
	.4byte	0x1302
	.uleb128 0x19
	.4byte	.LASF297
	.byte	0x4
	.byte	0x9
	.2byte	0x98d
	.4byte	0x137e
	.uleb128 0x1a
	.4byte	.LASF250
	.byte	0x9
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0x9
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1a
	.4byte	.LASF252
	.byte	0x9
	.2byte	0x993
	.4byte	0x209
	.uleb128 0x1a
	.4byte	.LASF253
	.byte	0x9
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF254
	.byte	0x9
	.2byte	0x997
	.4byte	0x1340
	.uleb128 0xf
	.4byte	.LASF255
	.2byte	0x890
	.byte	0x9
	.2byte	0x99d
	.4byte	0x153e
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x9
	.2byte	0x99f
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF256
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
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x10
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.4byte	.LASF261
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
	.4byte	0x129e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1b
	.string	"vis"
	.byte	0x9
	.2byte	0x9b3
	.4byte	0x153e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF262
	.byte	0x9
	.2byte	0x9b5
	.4byte	0x153e
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x10
	.4byte	.LASF263
	.byte	0x9
	.2byte	0x9b7
	.4byte	0xf49
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x10
	.4byte	.LASF264
	.byte	0x9
	.2byte	0x9b9
	.4byte	0x12b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0x9
	.2byte	0x9bb
	.4byte	0xfce
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0x9
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0x9
	.2byte	0x9bf
	.4byte	0x154f
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x10
	.4byte	.LASF268
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
	.4byte	.LASF269
	.byte	0x9
	.2byte	0x9c5
	.4byte	0xb00
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0x9
	.2byte	0x9c7
	.4byte	0x1334
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x10
	.4byte	.LASF271
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
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0x9
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x10
	.4byte	.LASF275
	.byte	0x9
	.2byte	0x9d3
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x154f
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x137e
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x9d5
	.4byte	0x138a
	.uleb128 0x11
	.4byte	.LASF277
	.4byte	0x1e864
	.byte	0x9
	.2byte	0x9db
	.4byte	0x169b
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF278
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF280
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF282
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
	.4byte	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x9e7
	.4byte	0x169b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x9e9
	.4byte	0x16a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF286
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF287
	.byte	0x9
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x9f3
	.4byte	0x16a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x9f5
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x10
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x9f7
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x10
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x9f9
	.4byte	0x16a7
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x10
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x9fb
	.4byte	0x16be
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x9ff
	.4byte	0x16cf
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x9
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x125e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1555
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x16be
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x16cf
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x16e0
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF293
	.byte	0x9
	.2byte	0xa05
	.4byte	0x1561
	.uleb128 0xa
	.4byte	0x12f7
	.4byte	0x16fd
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16e0
	.uleb128 0x18
	.4byte	.LASF294
	.byte	0xc
	.byte	0x9
	.2byte	0xab5
	.4byte	0x172f
	.uleb128 0x10
	.4byte	.LASF295
	.byte	0x9
	.2byte	0xab7
	.4byte	0x172f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x9
	.2byte	0xab9
	.4byte	0x1735
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12f7
	.uleb128 0xa
	.4byte	0x1745
	.4byte	0x1745
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1703
	.uleb128 0x15
	.4byte	.LASF296
	.byte	0x9
	.2byte	0xabb
	.4byte	0x1703
	.uleb128 0x19
	.4byte	.LASF298
	.byte	0x4
	.byte	0xc
	.2byte	0x490
	.4byte	0x17b7
	.uleb128 0x1d
	.string	"U8"
	.byte	0xc
	.2byte	0x492
	.4byte	0x17b7
	.uleb128 0x1d
	.string	"S8"
	.byte	0xc
	.2byte	0x493
	.4byte	0x17bc
	.uleb128 0x1d
	.string	"U16"
	.byte	0xc
	.2byte	0x494
	.4byte	0x17c1
	.uleb128 0x1d
	.string	"S16"
	.byte	0xc
	.2byte	0x495
	.4byte	0x17c6
	.uleb128 0x1d
	.string	"U32"
	.byte	0xc
	.2byte	0x496
	.4byte	0x17cb
	.uleb128 0x1d
	.string	"S32"
	.byte	0xc
	.2byte	0x497
	.4byte	0x17d0
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
	.4byte	.LASF299
	.byte	0xc
	.2byte	0x499
	.4byte	0x1757
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	0x172f
	.byte	0x1
	.4byte	0x180a
	.uleb128 0x1f
	.4byte	.LASF302
	.byte	0x1
	.byte	0x2e
	.4byte	0x172f
	.uleb128 0x20
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF352
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x1818
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x174b
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF301
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x183c
	.uleb128 0x1f
	.4byte	.LASF303
	.byte	0x1
	.byte	0x51
	.4byte	0x7a
	.byte	0
	.uleb128 0x23
	.4byte	0x17e1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x188d
	.uleb128 0x24
	.4byte	0x17f3
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.4byte	0x186d
	.uleb128 0x26
	.4byte	0x17ff
	.4byte	.LLST2
	.byte	0
	.uleb128 0x27
	.4byte	0x17e1
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0x2e
	.uleb128 0x28
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x29
	.4byte	0x17f3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x180a
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST3
	.4byte	0x18b2
	.uleb128 0x2a
	.4byte	0x180a
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.byte	0x46
	.byte	0
	.uleb128 0x2b
	.4byte	0x181e
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x18cf
	.uleb128 0x2c
	.4byte	0x1830
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF321
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	0x1818
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST4
	.4byte	0x1929
	.uleb128 0x2e
	.4byte	.LASF304
	.byte	0x1
	.byte	0x69
	.4byte	0x172f
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	.LASF305
	.byte	0x1
	.byte	0x6a
	.4byte	0x172f
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	.LASF306
	.byte	0x1
	.byte	0x6b
	.4byte	0x1818
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	.LASF307
	.byte	0x1
	.byte	0x6c
	.4byte	0x1818
	.4byte	.LLST8
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF353
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST9
	.4byte	0x1a49
	.uleb128 0x30
	.4byte	.LASF308
	.byte	0x1
	.byte	0x91
	.4byte	0x1a49
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	.LASF309
	.byte	0x1
	.byte	0x91
	.4byte	0x12b6
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LASF310
	.byte	0x1
	.byte	0x91
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF133
	.byte	0x1
	.byte	0x91
	.4byte	0x172f
	.4byte	.LLST13
	.uleb128 0x30
	.4byte	.LASF311
	.byte	0x1
	.byte	0x91
	.4byte	0x1a49
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	.LASF312
	.byte	0x1
	.byte	0x91
	.4byte	0x12b6
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	.LASF313
	.byte	0x1
	.byte	0x91
	.4byte	0x1a49
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LASF314
	.byte	0x1
	.byte	0x91
	.4byte	0x12b6
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF315
	.byte	0x1
	.byte	0x93
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	.LASF316
	.byte	0x1
	.byte	0x94
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x31
	.string	"ptA"
	.byte	0x1
	.byte	0x96
	.4byte	0x1a49
	.4byte	.LLST20
	.uleb128 0x31
	.string	"ptB"
	.byte	0x1
	.byte	0x97
	.4byte	0x1a49
	.4byte	.LLST21
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.byte	0x97
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.4byte	.LASF317
	.byte	0x1
	.byte	0x97
	.4byte	0x214
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	.LASF318
	.byte	0x1
	.byte	0x98
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	.LASF319
	.byte	0x1
	.byte	0x99
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LASF320
	.byte	0x1
	.byte	0x9b
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x214
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x173
	.byte	0x1
	.4byte	0x1818
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST26
	.4byte	0x1b28
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.2byte	0x173
	.4byte	0x1a49
	.4byte	.LLST27
	.uleb128 0x36
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x173
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x36
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x173
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x37
	.string	"v1"
	.byte	0x1
	.2byte	0x175
	.4byte	0x1a49
	.4byte	.LLST30
	.uleb128 0x37
	.string	"v2"
	.byte	0x1
	.2byte	0x175
	.4byte	0x1a49
	.4byte	.LLST31
	.uleb128 0x38
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x176
	.4byte	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x176
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x176
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x177
	.4byte	0x209
	.4byte	.LLST32
	.uleb128 0x39
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x178
	.4byte	0x172f
	.4byte	.LLST33
	.uleb128 0x38
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x178
	.4byte	0x12f7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"res"
	.byte	0x1
	.2byte	0x179
	.4byte	0x1818
	.4byte	.LLST34
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x153
	.byte	0x1
	.4byte	0x1818
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST35
	.4byte	0x1bb3
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.2byte	0x153
	.4byte	0x1a49
	.4byte	.LLST36
	.uleb128 0x36
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x153
	.4byte	0x12b6
	.4byte	.LLST37
	.uleb128 0x36
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x153
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x36
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x153
	.4byte	0xf4f
	.4byte	.LLST39
	.uleb128 0x37
	.string	"res"
	.byte	0x1
	.2byte	0x155
	.4byte	0x1818
	.4byte	.LLST40
	.uleb128 0x39
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x155
	.4byte	0x1818
	.4byte	.LLST41
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x156
	.4byte	0x41
	.4byte	.LLST42
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF330
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.4byte	0x1818
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST43
	.4byte	0x1ca8
	.uleb128 0x30
	.4byte	.LASF331
	.byte	0x1
	.byte	0xf2
	.4byte	0x1818
	.4byte	.LLST44
	.uleb128 0x3a
	.string	"v"
	.byte	0x1
	.byte	0xf2
	.4byte	0x1a49
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LASF310
	.byte	0x1
	.byte	0xf2
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x30
	.4byte	.LASF328
	.byte	0x1
	.byte	0xf2
	.4byte	0xf4f
	.4byte	.LLST47
	.uleb128 0x30
	.4byte	.LASF332
	.byte	0x1
	.byte	0xf2
	.4byte	0x41
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LASF327
	.byte	0x1
	.byte	0xf4
	.4byte	0x41
	.4byte	.LLST49
	.uleb128 0x3b
	.4byte	.LASF309
	.byte	0x1
	.byte	0xf5
	.4byte	0xb06
	.byte	0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x3b
	.4byte	.LASF333
	.byte	0x1
	.byte	0xf5
	.4byte	0xb06
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x32
	.string	"v1"
	.byte	0x1
	.byte	0xf6
	.4byte	0x1ca8
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x32
	.string	"v2"
	.byte	0x1
	.byte	0xf6
	.4byte	0x1ca8
	.byte	0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x2e
	.4byte	.LASF334
	.byte	0x1
	.byte	0xf7
	.4byte	0x41
	.4byte	.LLST50
	.uleb128 0x2e
	.4byte	.LASF335
	.byte	0x1
	.byte	0xf7
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xf8
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x3c
	.4byte	0x181e
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x104
	.uleb128 0x24
	.4byte	0x1830
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x1cbe
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF336
	.byte	0x9
	.2byte	0x21f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF337
	.byte	0x9
	.2byte	0xa81
	.4byte	0x16a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF185
	.byte	0x9
	.2byte	0xa83
	.4byte	0xf4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF338
	.byte	0x1
	.byte	0x1a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	svBsp_NumCutPolys
	.uleb128 0x3e
	.4byte	.LASF339
	.byte	0x1
	.byte	0x1b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	svBsp_NumKeptPolys
	.uleb128 0x3e
	.4byte	.LASF340
	.byte	0x1
	.byte	0x1c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	svBsp_NumAddedPolys
	.uleb128 0x3e
	.4byte	.LASF341
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	svBsp_NumMissedPlanes
	.uleb128 0x3e
	.4byte	.LASF342
	.byte	0x1
	.byte	0x1e
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	svBsp_NumMissedNodes
	.uleb128 0x3e
	.4byte	.LASF343
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	planesusedpool
	.uleb128 0x3e
	.4byte	.LASF344
	.byte	0x1
	.byte	0x2b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	nodesusedpool
	.uleb128 0x3f
	.4byte	.LASF345
	.byte	0x9
	.2byte	0xc2c
	.4byte	0xf4f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x3d
	.4byte	.LASF346
	.byte	0xc
	.2byte	0x548
	.4byte	0x1d87
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	0x1d8c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17d5
	.uleb128 0xa
	.4byte	0x12f7
	.4byte	0x1da3
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7fff
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF347
	.byte	0x1
	.byte	0x27
	.4byte	0x1d92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	PlanePool
	.uleb128 0xa
	.4byte	0x174b
	.4byte	0x1dc6
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0xffff
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF348
	.byte	0x1
	.byte	0x2a
	.4byte	0x1db5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	NodePool
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x59
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
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x84
	.sleb128 0
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL74-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1064
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1064
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1064
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1064
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1052
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1052
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1052
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1052
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1052
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1056
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1056
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1056
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1056
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1056
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF254:
	.string	"lightcmd_t"
.LASF297:
	.string	"lightcmd_u"
.LASF353:
	.string	"SplitPolygon"
.LASF44:
	.string	"efrag_s"
.LASF91:
	.string	"efrag_t"
.LASF133:
	.string	"plane"
.LASF215:
	.string	"interval"
.LASF92:
	.string	"model_s"
.LASF296:
	.string	"svnode_t"
.LASF195:
	.string	"mipadjust"
.LASF152:
	.string	"lightinstant"
.LASF223:
	.string	"boundingradius"
.LASF326:
	.string	"ExpandVolume"
.LASF267:
	.string	"lightCmds"
.LASF240:
	.string	"aliashdr_t"
.LASF243:
	.string	"mod_alias"
.LASF113:
	.string	"edges"
.LASF134:
	.string	"firstsurface"
.LASF150:
	.string	"binomials"
.LASF257:
	.string	"brightness"
.LASF76:
	.string	"frame_start_time"
.LASF22:
	.string	"numfaces"
.LASF115:
	.string	"nodes"
.LASF108:
	.string	"planes"
.LASF50:
	.string	"contents"
.LASF199:
	.string	"next"
.LASF220:
	.string	"version"
.LASF290:
	.string	"tshalfangles"
.LASF142:
	.string	"lastblend"
.LASF235:
	.string	"texcoords"
.LASF336:
	.string	"r_lightTimestamp"
.LASF277:
	.string	"aliaslightinstant_s"
.LASF86:
	.string	"origin1"
.LASF87:
	.string	"origin2"
.LASF316:
	.string	"in_c"
.LASF174:
	.string	"anim_max"
.LASF120:
	.string	"numsurfedges"
.LASF123:
	.string	"clipnodes"
.LASF329:
	.string	"currnode"
.LASF21:
	.string	"firstface"
.LASF287:
	.string	"lastframeinstant"
.LASF137:
	.string	"lockframe"
.LASF323:
	.string	"edgeindex"
.LASF62:
	.string	"update_type"
.LASF97:
	.string	"synctype"
.LASF110:
	.string	"numvertexes"
.LASF252:
	.string	"asVec"
.LASF157:
	.string	"lightnormalindex"
.LASF344:
	.string	"nodesusedpool"
.LASF61:
	.string	"forcelink"
.LASF55:
	.string	"efrags"
.LASF49:
	.string	"mleaf_s"
.LASF207:
	.string	"mleaf_t"
.LASF180:
	.string	"texturemins"
.LASF333:
	.string	"signs2"
.LASF89:
	.string	"angles1"
.LASF90:
	.string	"angles2"
.LASF0:
	.string	"signed char"
.LASF312:
	.string	"innum"
.LASF118:
	.string	"numsurfaces"
.LASF194:
	.string	"vecs"
.LASF155:
	.string	"ST_RAND"
.LASF216:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF32:
	.string	"modelindex"
.LASF160:
	.string	"mvertex_t"
.LASF58:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF208:
	.string	"firstclipnode"
.LASF314:
	.string	"outnum"
.LASF261:
	.string	"halo"
.LASF125:
	.string	"hulls"
.LASF169:
	.string	"gl_texturenum"
.LASF79:
	.string	"pose1"
.LASF80:
	.string	"pose2"
.LASF35:
	.string	"skin"
.LASF347:
	.string	"PlanePool"
.LASF211:
	.string	"clip_maxs"
.LASF225:
	.string	"numskins"
.LASF340:
	.string	"svBsp_NumAddedPolys"
.LASF85:
	.string	"translate_start_time"
.LASF351:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF63:
	.string	"baseline"
.LASF68:
	.string	"efrag"
.LASF295:
	.string	"splitplane"
.LASF265:
	.string	"volumeVerts"
.LASF99:
	.string	"radius"
.LASF284:
	.string	"lastlight"
.LASF269:
	.string	"owner"
.LASF144:
	.string	"lastshadowonly"
.LASF36:
	.string	"effects"
.LASF303:
	.string	"value"
.LASF132:
	.string	"mnode_s"
.LASF206:
	.string	"mnode_t"
.LASF171:
	.string	"texturechain"
.LASF37:
	.string	"color"
.LASF186:
	.string	"lightmaptexturenum"
.LASF84:
	.string	"leafnums"
.LASF210:
	.string	"clip_mins"
.LASF291:
	.string	"colors"
.LASF302:
	.string	"tryplane"
.LASF327:
	.string	"sign"
.LASF350:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_svbsp.c"
.LASF167:
	.string	"width"
.LASF283:
	.string	"lasthdr"
.LASF274:
	.string	"haloalpha"
.LASF135:
	.string	"aliasframeinstant_s"
.LASF172:
	.string	"anim_total"
.LASF298:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF60:
	.string	"entity_s"
.LASF153:
	.string	"entity_t"
.LASF104:
	.string	"nummodelsurfaces"
.LASF136:
	.string	"_next"
.LASF23:
	.string	"dmodel_t"
.LASF98:
	.string	"flags"
.LASF181:
	.string	"extents"
.LASF175:
	.string	"anim_next"
.LASF246:
	.string	"plane_t"
.LASF18:
	.string	"origin"
.LASF106:
	.string	"submodels"
.LASF196:
	.string	"texture"
.LASF107:
	.string	"numplanes"
.LASF130:
	.string	"entities"
.LASF20:
	.string	"visleafs"
.LASF238:
	.string	"texels"
.LASF67:
	.string	"model"
.LASF45:
	.string	"leaf"
.LASF253:
	.string	"asVoid"
.LASF301:
	.string	"Epsilon_Sign"
.LASF242:
	.string	"mod_sprite"
.LASF8:
	.string	"char"
.LASF187:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF41:
	.string	"pflags"
.LASF189:
	.string	"cached_dlight"
.LASF81:
	.string	"aliasframeinstant"
.LASF30:
	.string	"vec3_t"
.LASF273:
	.string	"cubescale"
.LASF258:
	.string	"visible"
.LASF42:
	.string	"entity_state_t"
.LASF16:
	.string	"mins"
.LASF51:
	.string	"visframe"
.LASF244:
	.string	"mod_alias3"
.LASF56:
	.string	"firstmarksurface"
.LASF193:
	.string	"medge_t"
.LASF59:
	.string	"ambient_sound_level"
.LASF230:
	.string	"poseverts"
.LASF27:
	.string	"data"
.LASF219:
	.string	"ident"
.LASF197:
	.string	"mtexinfo_t"
.LASF156:
	.string	"synctype_t"
.LASF122:
	.string	"numclipnodes"
.LASF239:
	.string	"frames"
.LASF116:
	.string	"numtexinfo"
.LASF48:
	.string	"entnext"
.LASF69:
	.string	"syncbase"
.LASF129:
	.string	"lightdata"
.LASF315:
	.string	"out_c"
.LASF100:
	.string	"clipbox"
.LASF288:
	.string	"extvertices"
.LASF345:
	.string	"causticschain"
.LASF320:
	.string	"sect"
.LASF75:
	.string	"topnode"
.LASF78:
	.string	"blend"
.LASF117:
	.string	"texinfo"
.LASF245:
	.string	"modtype_t"
.LASF34:
	.string	"colormap"
.LASF190:
	.string	"samples"
.LASF213:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF352:
	.string	"AllocNode"
.LASF188:
	.string	"cached_light"
.LASF102:
	.string	"clipmaxs"
.LASF332:
	.string	"depth"
.LASF40:
	.string	"light_lev"
.LASF266:
	.string	"numVolumeVerts"
.LASF19:
	.string	"headnode"
.LASF308:
	.string	"polygon"
.LASF26:
	.string	"dclipnode_t"
.LASF309:
	.string	"signs"
.LASF192:
	.string	"cachededgeoffset"
.LASF241:
	.string	"mod_brush"
.LASF226:
	.string	"skinwidth"
.LASF339:
	.string	"svBsp_NumKeptPolys"
.LASF221:
	.string	"scale"
.LASF341:
	.string	"svBsp_NumMissedPlanes"
.LASF83:
	.string	"numleafs"
.LASF292:
	.string	"triangleVis"
.LASF224:
	.string	"eyeposition"
.LASF229:
	.string	"size"
.LASF334:
	.string	"vnum1"
.LASF335:
	.string	"vnum2"
.LASF256:
	.string	"baseColor"
.LASF163:
	.string	"dist"
.LASF47:
	.string	"entity"
.LASF170:
	.string	"gl_lumitex"
.LASF166:
	.string	"texture_s"
.LASF191:
	.string	"texture_t"
.LASF281:
	.string	"lastvorg"
.LASF168:
	.string	"height"
.LASF178:
	.string	"msurface_s"
.LASF205:
	.string	"msurface_t"
.LASF231:
	.string	"posedata"
.LASF127:
	.string	"textures"
.LASF218:
	.string	"maliasframedesc_t"
.LASF343:
	.string	"planesusedpool"
.LASF131:
	.string	"cache"
.LASF29:
	.string	"vec_t"
.LASF322:
	.string	"NodeFromEdge"
.LASF234:
	.string	"binormals"
.LASF348:
	.string	"NodePool"
.LASF232:
	.string	"commands"
.LASF185:
	.string	"shadowchain"
.LASF300:
	.string	"AllocPlane"
.LASF139:
	.string	"paliashdr"
.LASF173:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF71:
	.string	"lightTimestamp"
.LASF158:
	.string	"trivertx_t"
.LASF70:
	.string	"skinnum"
.LASF112:
	.string	"numedges"
.LASF294:
	.string	"svnode_s"
.LASF233:
	.string	"triangles"
.LASF270:
	.string	"scizz"
.LASF209:
	.string	"lastclipnode"
.LASF263:
	.string	"visSurf"
.LASF53:
	.string	"parent"
.LASF259:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF146:
	.string	"shadowonly"
.LASF143:
	.string	"lastent"
.LASF311:
	.string	"inpts"
.LASF248:
	.string	"coords"
.LASF12:
	.string	"long int"
.LASF46:
	.string	"leafnext"
.LASF330:
	.string	"R_AddShadowCaster"
.LASF164:
	.string	"signbits"
.LASF182:
	.string	"light_s"
.LASF183:
	.string	"light_t"
.LASF318:
	.string	"sideA"
.LASF319:
	.string	"sideB"
.LASF177:
	.string	"offsets"
.LASF217:
	.string	"bboxmax"
.LASF299:
	.string	"WGPipe"
.LASF293:
	.string	"aliaslightinstant_t"
.LASF317:
	.string	"newVert"
.LASF105:
	.string	"numsubmodels"
.LASF280:
	.string	"lasteangles"
.LASF331:
	.string	"node"
.LASF201:
	.string	"numverts"
.LASF247:
	.string	"screenrect_s"
.LASF249:
	.string	"screenrect_t"
.LASF151:
	.string	"triplanes"
.LASF77:
	.string	"frame_interval"
.LASF338:
	.string	"svBsp_NumCutPolys"
.LASF251:
	.string	"asFloat"
.LASF176:
	.string	"alternate_anims"
.LASF114:
	.string	"numnodes"
.LASF147:
	.string	"vertices"
.LASF54:
	.string	"compressed_vis"
.LASF93:
	.string	"name"
.LASF228:
	.string	"numtris"
.LASF214:
	.string	"numposes"
.LASF4:
	.string	"unsigned int"
.LASF94:
	.string	"needload"
.LASF111:
	.string	"vertexes"
.LASF278:
	.string	"lasteorg"
.LASF285:
	.string	"lightpos"
.LASF250:
	.string	"asInt"
.LASF43:
	.string	"cache_user_s"
.LASF124:
	.string	"marksurfaces"
.LASF28:
	.string	"cache_user_t"
.LASF7:
	.string	"long unsigned int"
.LASF236:
	.string	"indecies"
.LASF64:
	.string	"msgtime"
.LASF268:
	.string	"numVisSurf"
.LASF328:
	.string	"surf"
.LASF38:
	.string	"alpha"
.LASF272:
	.string	"rspeed"
.LASF52:
	.string	"minmaxs"
.LASF148:
	.string	"normals"
.LASF198:
	.string	"glpoly_s"
.LASF204:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF279:
	.string	"lastlorg"
.LASF349:
	.string	"GNU C 4.6.3"
.LASF162:
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
.LASF227:
	.string	"skinheight"
.LASF212:
	.string	"hull_t"
.LASF82:
	.string	"brushlightinstant"
.LASF184:
	.string	"polys"
.LASF140:
	.string	"lastpose1"
.LASF141:
	.string	"lastpose2"
.LASF202:
	.string	"neighbours"
.LASF109:
	.string	"leafs"
.LASF96:
	.string	"numframes"
.LASF121:
	.string	"surfedges"
.LASF324:
	.string	"vert1"
.LASF325:
	.string	"vert2"
.LASF39:
	.string	"style"
.LASF57:
	.string	"nummarksurfaces"
.LASF128:
	.string	"visdata"
.LASF255:
	.string	"shadowlight_s"
.LASF276:
	.string	"shadowlight_t"
.LASF126:
	.string	"numtextures"
.LASF145:
	.string	"lastpaliashdr"
.LASF66:
	.string	"msg_angles"
.LASF33:
	.string	"frame"
.LASF321:
	.string	"R_CreateEmptyTree"
.LASF342:
	.string	"svBsp_NumMissedNodes"
.LASF305:
	.string	"plane2"
.LASF72:
	.string	"dlightframe"
.LASF237:
	.string	"gl_lumatex"
.LASF222:
	.string	"scale_origin"
.LASF119:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF282:
	.string	"lastlradius"
.LASF264:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF200:
	.string	"chain"
.LASF289:
	.string	"tslights"
.LASF346:
	.string	"wgPipe"
.LASF31:
	.string	"angles"
.LASF203:
	.string	"firstvertex"
.LASF154:
	.string	"ST_SYNC"
.LASF286:
	.string	"vieworg"
.LASF304:
	.string	"plane1"
.LASF25:
	.string	"children"
.LASF9:
	.string	"double"
.LASF103:
	.string	"firstmodelsurface"
.LASF271:
	.string	"filtercube"
.LASF310:
	.string	"vnum"
.LASF337:
	.string	"currentshadowlight"
.LASF275:
	.string	"oldlightorigin"
.LASF313:
	.string	"outpts"
.LASF149:
	.string	"tangents"
.LASF161:
	.string	"mplane_s"
.LASF165:
	.string	"mplane_t"
.LASF73:
	.string	"dlightbits"
.LASF101:
	.string	"clipmins"
.LASF65:
	.string	"msg_origins"
.LASF260:
	.string	"castShadow"
.LASF159:
	.string	"position"
.LASF306:
	.string	"node1"
.LASF307:
	.string	"node2"
.LASF14:
	.string	"qboolean"
.LASF179:
	.string	"firstedge"
.LASF262:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
