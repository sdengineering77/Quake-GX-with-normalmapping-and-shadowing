	.file	"gl_md3.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl findneighbourmd3_old
	.type	findneighbourmd3_old, @function
findneighbourmd3_old:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_md3.c"
	.loc 1 108 0
	.cfi_startproc
.LVL0:
	.loc 1 112 0
	cmpwi 0,5,0
	.loc 1 108 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.loc 1 110 0
	mulli 9,3,28
	.loc 1 108 0
	mr 0,3
	stw 28,8(1)
	.loc 1 127 0
	li 3,-1
.LVL1:
	.loc 1 108 0
	stw 29,12(1)
	.loc 1 110 0
	add 8,6,9
.LVL2:
	.loc 1 108 0
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 112 0
	ble- 0,.L2
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 116 0
	lis 9,0x5555
	addi 10,4,1
	ori 9,9,21846
	srawi 11,10,31
	mulhw 7,10,9
	.loc 1 113 0
	slwi 4,4,2
.LVL3:
	.loc 1 112 0
	li 3,0
	.loc 1 113 0
	add 28,8,4
	.loc 1 116 0
	subf 11,11,7
	mulli 11,11,3
	subf 11,11,10
	slwi 11,11,2
	add 30,8,11
.LVL4:
.L9:
	.loc 1 113 0
	cmpw 7,3,0
	beq- 7,.L3
	lwz 8,4(28)
	.loc 1 108 0
	addi 10,6,-4
	li 11,1
.L8:
	addi 10,10,4
	.loc 1 115 0
	srawi 4,11,31
	lwz 7,4(10)
	.loc 1 108 0
	addi 31,11,-1
	.loc 1 115 0
	cmpw 7,7,8
	beq- 7,.L4
	mulhw 12,11,9
	subf 4,4,12
	mulli 4,4,3
	subf 4,4,11
	slwi 4,4,2
	add 4,6,4
	lwz 4,4(4)
.L5:
	.loc 1 117 0
	cmpw 7,8,4
	.loc 1 114 0
	cmpwi 6,11,3
	addi 11,11,1
	.loc 1 117 0
	beq- 7,.L14
.L7:
	.loc 1 114 0 discriminator 1
	bne+ 6,.L8
.L3:
	.loc 1 112 0
	addi 3,3,1
.LVL5:
	addi 6,6,28
	cmpw 7,3,5
	bne+ 7,.L9
	.loc 1 128 0
	lwz 28,8(1)
	.loc 1 127 0
	li 3,-1
.LVL6:
	.loc 1 128 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
.L14:
.LCFI2:
	.cfi_restore_state
	.loc 1 119 0
	lwz 4,4(30)
	cmpw 7,7,4
	bne+ 7,.L7
.L6:
	.loc 1 121 0
	addi 9,31,4
	slwi 9,9,2
	stwx 0,6,9
.L2:
	.loc 1 128 0
	lwz 28,8(1)
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L4:
.LCFI4:
	.cfi_restore_state
	.loc 1 116 0
	mulhw 29,11,9
	srawi 4,11,31
	lwz 12,4(30)
	subf 4,4,29
	mulli 4,4,3
	subf 4,4,11
	slwi 4,4,2
	add 4,6,4
	lwz 4,4(4)
	cmpw 7,12,4
	bne+ 7,.L5
	b .L6
	.cfi_endproc
.LFE38:
	.size	findneighbourmd3_old, .-findneighbourmd3_old
	.align 2
	.globl findneighbourmd3
	.type	findneighbourmd3, @function
findneighbourmd3:
.LFB39:
	.loc 1 135 0
	.cfi_startproc
.LVL7:
	.loc 1 147 0
	cmpwi 0,5,0
	.loc 1 135 0
	stwu 1,-40(1)
.LCFI5:
	.cfi_def_cfa_offset 40
	.loc 1 137 0
	mulli 9,3,28
	.loc 1 135 0
	mr 0,3
	stw 24,8(1)
	.loc 1 147 0
	li 3,-1
.LVL8:
	.loc 1 135 0
	stw 25,12(1)
	.loc 1 137 0
	add 9,6,9
.LVL9:
	.loc 1 135 0
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 147 0
	ble- 0,.L16
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
.LVL10:
	.loc 1 153 0
	lis 30,0x5555
	addi 10,4,1
	ori 30,30,21846
	srawi 11,10,31
	mulhw 7,10,30
	.loc 1 148 0
	slwi 4,4,2
.LVL11:
	.loc 1 153 0
	mr 8,6
	.loc 1 146 0
	li 26,0
	.loc 1 136 0
	li 25,0
	.loc 1 153 0
	subf 11,11,7
	.loc 1 147 0
	li 31,0
	.loc 1 153 0
	mulli 11,11,3
	.loc 1 148 0
	add 27,9,4
	.loc 1 153 0
	subf 11,11,10
	.loc 1 156 0
	slwi 11,11,2
	add 28,9,11
.LVL12:
.L23:
	.loc 1 148 0
	cmpw 7,31,0
	beq- 7,.L17
	lwz 4,4(27)
	.loc 1 135 0
	addi 10,8,-4
	li 11,1
.L22:
	addi 10,10,4
	.loc 1 152 0
	srawi 12,11,31
	lwz 7,4(10)
	.loc 1 135 0
	addi 29,11,-1
	.loc 1 152 0
	cmpw 7,7,4
	beq- 7,.L18
	mulhw 9,11,30
	subf 12,12,9
	mulli 12,12,3
	subf 12,12,11
	slwi 12,12,2
	add 12,8,12
	lwz 12,4(12)
.L19:
	.loc 1 154 0
	cmpw 7,4,12
	beq- 7,.L30
.L21:
.LVL13:
	.loc 1 151 0
	cmpwi 7,11,3
	addi 11,11,1
	bne+ 7,.L22
.LVL14:
.L17:
	.loc 1 147 0
	addi 31,31,1
.LVL15:
	addi 8,8,28
	cmpw 7,31,5
	bne+ 7,.L23
	.loc 1 172 0
	cmpwi 7,26,0
	bne- 7,.L26
	.loc 1 173 0
	cmpwi 7,3,-1
	beq- 7,.L16
	.loc 1 174 0
	mulli 9,3,28
	addi 25,25,4
	slwi 25,25,2
	add 6,6,9
.LVL16:
	stwx 0,6,25
.LVL17:
.L16:
	.loc 1 180 0
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
.LCFI6:
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
.LVL18:
.L18:
.LCFI7:
	.cfi_restore_state
	.loc 1 153 0
	mulhw 24,11,30
	srawi 12,11,31
	lwz 9,4(28)
	subf 12,12,24
	mulli 12,12,3
	subf 12,12,11
	slwi 12,12,2
	add 12,8,12
	lwz 12,4(12)
	cmpw 7,9,12
	bne+ 7,.L19
	.loc 1 159 0
	cmpwi 7,3,-1
	beq- 7,.L31
.L25:
	.loc 1 165 0
	li 26,1
	b .L21
.L30:
	.loc 1 156 0
	lwz 9,4(28)
	cmpw 7,7,9
	bne+ 7,.L21
	.loc 1 159 0
	cmpwi 7,3,-1
	bne+ 7,.L25
.L31:
	mr 25,29
	mr 3,31
	b .L21
.LVL19:
.L26:
	.loc 1 179 0
	li 3,-1
.LVL20:
	b .L16
	.cfi_endproc
.LFE39:
	.size	findneighbourmd3, .-findneighbourmd3
	.align 2
	.globl TangentForTrimd3
	.type	TangentForTrimd3, @function
TangentForTrimd3:
.LFB40:
	.loc 1 182 0
	.cfi_startproc
.LVL21:
	mflr 0
	stwu 1,-112(1)
.LCFI8:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	stw 22,72(1)
	stw 0,116(1)
	stw 23,76(1)
	.loc 1 191 0
	lwz 11,0(3)
	.loc 1 192 0
	lwz 9,4(3)
	.loc 1 193 0
	lwz 0,8(3)
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	.cfi_offset 22, -40
	.loc 1 191 0
	slwi 22,11,4
	.loc 1 192 0
	slwi 23,9,4
	.loc 1 182 0
	stw 24,80(1)
	.loc 1 194 0
	slwi 11,11,3
	.loc 1 193 0
	slwi 24,0,4
	.cfi_offset 24, -32
	.loc 1 195 0
	slwi 9,9,3
	.loc 1 196 0
	slwi 0,0,3
	.loc 1 182 0
	stw 25,84(1)
	.loc 1 191 0
	add 22,4,22
.LVL22:
	.loc 1 182 0
	stw 26,88(1)
	mr 25,7
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	stw 27,92(1)
	.loc 1 192 0
	add 23,4,23
.LVL23:
	.loc 1 182 0
	stw 28,96(1)
	.loc 1 193 0
	add 24,4,24
.LVL24:
	.loc 1 182 0
	stw 29,100(1)
	.loc 1 194 0
	add 26,5,11
.LVL25:
	.loc 1 182 0
	stw 30,104(1)
	.loc 1 195 0
	add 27,5,9
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL26:
	.loc 1 182 0
	stw 31,108(1)
	.loc 1 196 0
	add 28,5,0
.LVL27:
	.loc 1 182 0
	mr 31,6
	.cfi_offset 31, -4
	.loc 1 207 0
	addi 29,1,32
	.loc 1 196 0
	li 30,0
.LVL28:
.L33:
	.loc 1 202 0 discriminator 2
	lfsx 6,24,30
	.loc 1 205 0 discriminator 2
	addi 3,1,20
	.loc 1 199 0 discriminator 2
	lfsx 12,22,30
	.loc 1 203 0 discriminator 2
	lfs 7,0(28)
	.loc 1 204 0 discriminator 2
	lfs 8,4(28)
	.loc 1 199 0 discriminator 2
	lfsx 9,23,30
	.loc 1 200 0 discriminator 2
	lfs 13,0(26)
	.loc 1 201 0 discriminator 2
	lfs 0,4(26)
	.loc 1 199 0 discriminator 2
	fsubs 9,9,12
	.loc 1 200 0 discriminator 2
	lfs 10,0(27)
	.loc 1 202 0 discriminator 2
	fsubs 12,6,12
	.loc 1 201 0 discriminator 2
	lfs 11,4(27)
	.loc 1 200 0 discriminator 2
	fsubs 10,10,13
	.loc 1 199 0 discriminator 2
	stfs 9,20(1)
	.loc 1 201 0 discriminator 2
	fsubs 11,11,0
	.loc 1 202 0 discriminator 2
	stfs 12,8(1)
	.loc 1 203 0 discriminator 2
	fsubs 13,7,13
	.loc 1 204 0 discriminator 2
	fsubs 0,8,0
	.loc 1 200 0 discriminator 2
	stfs 10,24(1)
	.loc 1 201 0 discriminator 2
	stfs 11,28(1)
	.loc 1 203 0 discriminator 2
	stfs 13,12(1)
	.loc 1 204 0 discriminator 2
	stfs 0,16(1)
	.loc 1 205 0 discriminator 2
	bl VectorNormalize
	.loc 1 206 0 discriminator 2
	addi 3,1,8
	bl VectorNormalize
	.loc 1 207 0 discriminator 2
	mr 5,29
	addi 3,1,20
	addi 4,1,8
	bl CrossProduct
	.loc 1 198 0 discriminator 2
	cmpwi 7,30,8
	.loc 1 207 0 discriminator 2
	addi 29,29,12
	.loc 1 198 0 discriminator 2
	addi 30,30,4
	bne+ 7,.L33
	.loc 1 212 0
	lfs 6,36(1)
	.loc 1 218 0
	mr 3,31
	.loc 1 213 0
	lfs 7,48(1)
	.loc 1 214 0
	lfs 9,60(1)
	.loc 1 212 0
	fneg 6,6
	.loc 1 215 0
	lfs 8,40(1)
	.loc 1 213 0
	fneg 7,7
	.loc 1 216 0
	lfs 10,52(1)
	.loc 1 214 0
	fneg 9,9
	.loc 1 217 0
	lfs 11,64(1)
	.loc 1 215 0
	fneg 8,8
	.loc 1 216 0
	fneg 10,10
	.loc 1 212 0
	lfs 12,32(1)
	.loc 1 217 0
	fneg 11,11
	.loc 1 213 0
	lfs 13,44(1)
	.loc 1 214 0
	lfs 0,56(1)
	.loc 1 212 0
	fdivs 6,6,12
	.loc 1 213 0
	fdivs 7,7,13
	.loc 1 212 0
	stfs 6,0(31)
	.loc 1 214 0
	fdivs 9,9,0
	.loc 1 213 0
	stfs 7,4(31)
	.loc 1 215 0
	fdivs 12,8,12
	.loc 1 214 0
	stfs 9,8(31)
	.loc 1 216 0
	fdivs 13,10,13
	.loc 1 215 0
	stfs 12,0(25)
	.loc 1 217 0
	fdivs 0,11,0
	.loc 1 216 0
	stfs 13,4(25)
	.loc 1 217 0
	stfs 0,8(25)
	.loc 1 218 0
	bl VectorNormalize
	.loc 1 219 0
	mr 3,25
	bl VectorNormalize
	.loc 1 220 0
	lwz 0,116(1)
	lwz 22,72(1)
.LVL29:
	mtlr 0
	lwz 23,76(1)
.LVL30:
	lwz 24,80(1)
.LVL31:
	lwz 25,84(1)
.LVL32:
	lwz 26,88(1)
.LVL33:
	lwz 27,92(1)
.LVL34:
	lwz 28,96(1)
.LVL35:
	lwz 29,100(1)
	lwz 30,104(1)
	lwz 31,108(1)
.LVL36:
	addi 1,1,112
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
	blr
	.cfi_endproc
.LFE40:
	.size	TangentForTrimd3, .-TangentForTrimd3
	.align 2
	.globl ClosestPointOnLine
	.type	ClosestPointOnLine, @function
ClosestPointOnLine:
.LFB41:
	.loc 1 223 0
	.cfi_startproc
.LVL37:
	mflr 0
	stwu 1,-72(1)
.LCFI10:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stfd 28,40(1)
	stw 0,76(1)
	.loc 1 228 0
	lfs 28,4(5)
	.cfi_offset 65, 4
	.cfi_offset 60, -32
	lfs 0,8(3)
	lfs 12,0(3)
	lfs 13,4(3)
	.loc 1 229 0
	lfs 9,0(4)
	lfs 10,4(4)
	.loc 1 228 0
	fsubs 28,28,13
	.loc 1 229 0
	lfs 11,8(4)
	fsubs 9,9,12
	fsubs 10,10,13
	.loc 1 223 0
	stfd 29,48(1)
	.loc 1 229 0
	fsubs 11,11,0
	.loc 1 228 0
	lfs 29,0(5)
	.cfi_offset 61, -24
	.loc 1 223 0
	stfd 30,56(1)
	.loc 1 228 0
	lfs 30,8(5)
	.cfi_offset 62, -16
	fsubs 29,29,12
.LVL38:
	.loc 1 223 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -36
	.loc 1 230 0
	addi 3,1,8
.LVL39:
	.loc 1 228 0
	fsubs 30,30,0
.LVL40:
	.loc 1 223 0
	stfd 31,64(1)
	stw 29,28(1)
	mr 29,6
	.cfi_offset 29, -44
	.cfi_offset 63, -8
	stw 30,32(1)
	.loc 1 223 0
	mr 30,4
	.cfi_offset 30, -40
	.loc 1 229 0
	stfs 9,8(1)
	stfs 10,12(1)
	stfs 11,16(1)
	.loc 1 230 0
	bl Length
.LVL41:
	.loc 1 231 0
	addi 3,1,8
	.loc 1 230 0
	fmr 31,1
.LVL42:
	.loc 1 231 0
	bl VectorNormalize
.LVL43:
	.loc 1 232 0
	lfs 1,12(1)
	.loc 1 235 0
	lis 9,.LC1@ha
	.loc 1 232 0
	fmuls 28,28,1
.LVL44:
	lfs 1,8(1)
	.loc 1 235 0
	lfs 0,.LC1@l(9)
	.loc 1 232 0
	fmadds 29,29,1,28
.LVL45:
	lfs 1,16(1)
	fmadds 1,30,1,29
.LVL46:
	.loc 1 235 0
	fcmpu 7,1,0
	bnl- 7,.L36
	.loc 1 237 0
	lwz 0,0(31)
	stw 0,0(29)
	lwz 0,4(31)
	stw 0,4(29)
	lwz 0,8(31)
	stw 0,8(29)
.L36:
	.loc 1 239 0
	fcmpu 7,1,31
	bng- 7,.L38
	.loc 1 241 0
	lwz 0,0(30)
	stw 0,0(29)
	lwz 0,4(30)
	stw 0,4(29)
	lwz 0,8(30)
	stw 0,8(29)
.L38:
	.loc 1 244 0
	addi 3,1,8
	mr 4,3
	bl VectorScale
.LVL47:
	.loc 1 245 0
	lfs 13,0(31)
	lfs 0,8(1)
	.loc 1 246 0
	lwz 0,76(1)
	.loc 1 245 0
	fadds 0,13,0
	.loc 1 246 0
	lwz 30,32(1)
.LVL48:
	mtlr 0
	lfd 28,40(1)
	lfd 29,48(1)
	.loc 1 245 0
	stfs 0,0(29)
	lfs 0,12(1)
	lfs 13,4(31)
	.loc 1 246 0
	lfd 30,56(1)
.LVL49:
	.loc 1 245 0
	fadds 0,13,0
	.loc 1 246 0
	lfd 31,64(1)
.LVL50:
	.loc 1 245 0
	stfs 0,4(29)
	lfs 0,16(1)
	lfs 13,8(31)
	.loc 1 246 0
	lwz 31,36(1)
.LVL51:
	.loc 1 245 0
	fadds 0,13,0
	stfs 0,8(29)
	.loc 1 246 0
	lwz 29,28(1)
.LVL52:
	addi 1,1,72
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE41:
	.size	ClosestPointOnLine, .-ClosestPointOnLine
	.align 2
	.globl Orthogonalize
	.type	Orthogonalize, @function
Orthogonalize:
.LFB42:
	.loc 1 249 0
	.cfi_startproc
.LVL53:
	stwu 1,-56(1)
.LCFI12:
	.cfi_def_cfa_offset 56
	mflr 0
	.loc 1 252 0
	lis 9,.LC2@ha
	lfs 1,.LC2@l(9)
	.loc 1 249 0
	stw 29,44(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	.loc 1 252 0
	addi 4,1,8
.LVL54:
	.loc 1 249 0
	stw 0,60(1)
	stw 31,52(1)
	.loc 1 249 0
	mr 31,5
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 252 0
	bl VectorScale
.LVL55:
	.loc 1 253 0
	mr 3,29
	addi 4,1,8
	mr 5,30
	addi 6,1,20
	bl ClosestPointOnLine
	.loc 1 254 0
	lfs 13,0(30)
	lfs 0,20(1)
	.loc 1 255 0
	mr 3,31
	.loc 1 254 0
	fsubs 0,13,0
	stfs 0,0(31)
	lfs 0,24(1)
	lfs 13,4(30)
	fsubs 0,13,0
	stfs 0,4(31)
	lfs 0,28(1)
	lfs 13,8(30)
	fsubs 0,13,0
	stfs 0,8(31)
	.loc 1 255 0
	bl VectorNormalize
	.loc 1 256 0
	lwz 0,60(1)
	lwz 29,44(1)
.LVL56:
	mtlr 0
	lwz 30,48(1)
.LVL57:
	lwz 31,52(1)
.LVL58:
	addi 1,1,56
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE42:
	.size	Orthogonalize, .-Orthogonalize
	.align 2
	.globl DecodeNormal
	.type	DecodeNormal, @function
DecodeNormal:
.LFB43:
	.loc 1 258 0
	.cfi_startproc
.LVL59:
	mflr 0
	stwu 1,-64(1)
.LCFI14:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 260 0
	rlwinm 9,3,24,24,31
	.loc 1 261 0
	rlwinm 3,3,0,24,31
.LVL60:
	.loc 1 260 0
	xoris 9,9,0x8000
	.loc 1 258 0
	stfd 29,40(1)
	stw 0,68(1)
	.loc 1 260 0
	lis 0,0x4330
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	stw 0,8(1)
	.loc 1 261 0
	xoris 3,3,0x8000
	.loc 1 260 0
	stw 9,12(1)
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	.loc 1 262 0
	lis 9,.LC5@ha
	.loc 1 260 0
	lfd 29,8(1)
	.loc 1 261 0
	stw 0,16(1)
	stw 3,20(1)
	.loc 1 260 0
	fsub 29,29,0
	.loc 1 258 0
	stfd 31,56(1)
	.loc 1 261 0
	lfd 31,16(1)
	.cfi_offset 63, -8
	.loc 1 260 0
	frsp 29,29
.LVL61:
	.loc 1 258 0
	stfd 28,32(1)
	.loc 1 261 0
	fsub 31,31,0
	.loc 1 262 0
	lfs 0,.LC5@l(9)
	.loc 1 258 0
	stfd 30,48(1)
	.loc 1 262 0
	fmuls 29,29,0
.LVL62:
	.loc 1 258 0
	stw 31,28(1)
	.loc 1 261 0
	frsp 31,31
	.loc 1 258 0
	mr 31,4
	.cfi_offset 31, -36
	.cfi_offset 62, -16
	.cfi_offset 60, -32
.LVL63:
	.loc 1 265 0
	fmr 1,29
	.loc 1 263 0
	fmuls 31,31,0
.LVL64:
	.loc 1 265 0
	bl cos
.LVL65:
	fmr 28,1
	fmr 1,31
	bl sin
	fmr 30,1
	.loc 1 266 0
	fmr 1,29
	.loc 1 265 0
	fmul 0,28,30
	frsp 0,0
	stfs 0,0(31)
	.loc 1 266 0
	bl sin
	fmul 30,30,1
	.loc 1 267 0
	fmr 1,31
	.loc 1 266 0
	frsp 30,30
	stfs 30,4(31)
	.loc 1 267 0
	bl cos
	.loc 1 268 0
	lwz 0,68(1)
	.loc 1 267 0
	frsp 1,1
	.loc 1 268 0
	lfd 28,32(1)
	mtlr 0
	lfd 29,40(1)
	lfd 30,48(1)
	.loc 1 267 0
	stfs 1,8(31)
	.loc 1 268 0
	lfd 31,56(1)
.LVL66:
	lwz 31,28(1)
.LVL67:
	addi 1,1,64
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE43:
	.size	DecodeNormal, .-DecodeNormal
	.align 2
	.globl Mod_LoadMd3Model
	.type	Mod_LoadMd3Model, @function
Mod_LoadMd3Model:
.LFB44:
	.loc 1 282 0
	.cfi_startproc
.LVL68:
	stwu 1,-352(1)
.LCFI16:
	.cfi_def_cfa_offset 352
	mflr 0
	stw 31,324(1)
	.loc 1 319 0
	lis 31,LittleLong@ha
	.cfi_offset 31, -28
	.cfi_register 65, 0
	.loc 1 282 0
	stw 0,356(1)
	stw 24,296(1)
	mr 24,4
	.cfi_offset 24, -56
	.cfi_offset 65, 4
	stw 26,304(1)
	mr 26,3
	.cfi_offset 26, -48
	stfd 29,328(1)
	stfd 30,336(1)
	stfd 31,344(1)
	stw 14,256(1)
	stw 15,260(1)
	stw 16,264(1)
	stw 17,268(1)
	stw 18,272(1)
	stw 19,276(1)
	stw 20,280(1)
	stw 21,284(1)
	stw 22,288(1)
	stw 23,292(1)
	stw 25,300(1)
	stw 27,308(1)
	stw 28,312(1)
	stw 29,316(1)
	stw 30,320(1)
	.loc 1 309 0
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
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
	.cfi_offset 61, -24
	bl Hunk_LowMark
.LVL69:
	.loc 1 319 0
	lwz 0,LittleLong@l(31)
	.loc 1 309 0
	stw 3,236(1)
.LVL70:
	.loc 1 319 0
	mtctr 0
	lwz 3,4(24)
.LVL71:
	bctrl
	.loc 1 320 0
	cmpwi 7,3,15
	.loc 1 319 0
	mr 5,3
	stw 3,4(24)
	.loc 1 320 0
	beq- 7,.L45
	.loc 1 321 0
	lis 3,.LC7@ha
	mr 4,26
	la 3,.LC7@l(3)
	li 6,15
	crxor 6,6,6
	bl Sys_Error
.L45:
	.loc 1 325 0
	lwz 0,LittleLong@l(31)
	lwz 3,76(24)
	mtctr 0
	bctrl
	.loc 1 326 0
	lwz 0,LittleLong@l(31)
	.loc 1 325 0
	stw 3,76(24)
	.loc 1 326 0
	mtctr 0
	lwz 3,80(24)
	bctrl
	.loc 1 327 0
	lwz 0,LittleLong@l(31)
	.loc 1 326 0
	stw 3,80(24)
	.loc 1 327 0
	mtctr 0
	lwz 3,84(24)
	bctrl
	.loc 1 329 0
	lwz 0,LittleLong@l(31)
	.loc 1 327 0
	stw 3,84(24)
	.loc 1 329 0
	mtctr 0
	lwz 3,88(24)
	bctrl
	.loc 1 331 0
	lwz 0,LittleLong@l(31)
	.loc 1 329 0
	stw 3,88(24)
	.loc 1 331 0
	mtctr 0
	lwz 3,92(24)
	bctrl
	.loc 1 332 0
	lwz 0,LittleLong@l(31)
	.loc 1 331 0
	stw 3,92(24)
	.loc 1 332 0
	mtctr 0
	lwz 3,96(24)
	bctrl
	.loc 1 333 0
	lwz 0,LittleLong@l(31)
	.loc 1 332 0
	stw 3,96(24)
	.loc 1 333 0
	mtctr 0
	lwz 3,100(24)
	bctrl
	.loc 1 334 0
	lwz 0,LittleLong@l(31)
	.loc 1 333 0
	stw 3,100(24)
	.loc 1 334 0
	mtctr 0
	lwz 3,104(24)
	bctrl
	.loc 1 344 0
	lwz 0,76(24)
	.loc 1 334 0
	stw 3,104(24)
	.loc 1 344 0
	cmpwi 7,0,0
	ble- 7,.L162
	.loc 1 349 0
	cmpwi 7,0,256
	bgt- 7,.L163
	.loc 1 354 0
	lwz 29,92(24)
.L161:
	add 29,24,29
.LVL72:
	lis 30,LittleFloat@ha
	.loc 1 281 0
	addi 29,29,-4
.LVL73:
	li 28,0
	la 30,LittleFloat@l(30)
.LVL74:
.L52:
	.loc 1 356 0
	lwz 0,0(30)
	mr 31,29
	lfs 1,40(29)
	mtctr 0
	bctrl
	li 0,3
	stfs 1,40(29)
.LVL75:
	stw 0,216(1)
.LVL76:
.L51:
	.loc 1 358 0 discriminator 2
	lwz 0,0(30)
	lfsu 1,4(31)
	mtctr 0
	bctrl
	.loc 1 359 0 discriminator 2
	lwz 0,0(30)
	.loc 1 358 0 discriminator 2
	stfs 1,0(31)
	.loc 1 359 0 discriminator 2
	mtctr 0
	lfs 1,12(31)
	bctrl
	.loc 1 360 0 discriminator 2
	lwz 0,0(30)
	.loc 1 359 0 discriminator 2
	stfs 1,12(31)
	.loc 1 360 0 discriminator 2
	mtctr 0
	lfs 1,24(31)
	bctrl
	.loc 1 357 0 discriminator 2
	lwz 0,216(1)
	.loc 1 360 0 discriminator 2
	stfs 1,24(31)
	.loc 1 357 0 discriminator 2
	addic. 8,0,-1
	stw 8,216(1)
	bne+ 0,.L51
	.loc 1 355 0
	lwz 0,76(24)
	addi 28,28,1
.LVL77:
	addi 29,29,56
	cmpw 7,0,28
	bgt+ 7,.L52
.LVL78:
.L49:
	.loc 1 367 0
	lwz 0,84(24)
	.loc 1 365 0
	lwz 31,100(24)
.LVL79:
	.loc 1 367 0
	cmpwi 7,0,1
	ble- 7,.L53
	.loc 1 368 0
	lis 3,.LC10@ha
	mr 4,26
	la 3,.LC10@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL80:
	lwz 0,84(24)
.L53:
.LVL81:
	.loc 1 371 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L54
	lis 30,LittleLong@ha
	.loc 1 393 0
	lis 22,.LC11@ha
	.loc 1 396 0
	lis 23,.LC12@ha
	.loc 1 399 0
	lis 25,.LC13@ha
	.loc 1 365 0
	add 31,24,31
.LVL82:
	li 29,0
	la 30,LittleLong@l(30)
	.loc 1 393 0
	la 22,.LC11@l(22)
	.loc 1 396 0
	la 23,.LC12@l(23)
	.loc 1 399 0
	la 25,.LC13@l(25)
	lis 27,LittleFloat@ha
	lis 28,LittleShort@ha
.LVL83:
.L64:
	.loc 1 373 0
	lwz 0,0(30)
	lwz 3,0(31)
	mtctr 0
	bctrl
	.loc 1 374 0
	lwz 0,0(30)
	.loc 1 373 0
	stw 3,0(31)
	.loc 1 374 0
	mtctr 0
	lwz 3,68(31)
	bctrl
	.loc 1 375 0
	lwz 0,0(30)
	.loc 1 374 0
	stw 3,68(31)
	.loc 1 375 0
	mtctr 0
	lwz 3,72(31)
	bctrl
	.loc 1 376 0
	lwz 0,0(30)
	.loc 1 375 0
	stw 3,72(31)
	.loc 1 376 0
	mtctr 0
	lwz 3,76(31)
	bctrl
	.loc 1 377 0
	lwz 0,0(30)
	.loc 1 376 0
	stw 3,76(31)
	.loc 1 377 0
	mtctr 0
	lwz 3,84(31)
	bctrl
	.loc 1 378 0
	lwz 0,0(30)
	.loc 1 377 0
	stw 3,84(31)
	.loc 1 378 0
	mtctr 0
	lwz 3,88(31)
	bctrl
	.loc 1 379 0
	lwz 0,0(30)
	.loc 1 378 0
	stw 3,88(31)
	.loc 1 379 0
	mtctr 0
	lwz 3,80(31)
	bctrl
	.loc 1 380 0
	lwz 0,0(30)
	.loc 1 379 0
	stw 3,80(31)
	.loc 1 380 0
	mtctr 0
	lwz 3,92(31)
	bctrl
	.loc 1 381 0
	lwz 0,0(30)
	.loc 1 380 0
	stw 3,92(31)
	.loc 1 381 0
	mtctr 0
	lwz 3,96(31)
	bctrl
	.loc 1 382 0
	lwz 0,0(30)
	.loc 1 381 0
	stw 3,96(31)
	.loc 1 382 0
	mtctr 0
	lwz 3,100(31)
	bctrl
	.loc 1 383 0
	lwz 0,0(30)
	.loc 1 382 0
	stw 3,100(31)
	.loc 1 383 0
	mtctr 0
	lwz 3,104(31)
	bctrl
	.loc 1 392 0
	lwz 5,80(31)
	.loc 1 383 0
	stw 3,104(31)
	.loc 1 392 0
	cmpwi 7,5,2048
	bgt- 7,.L164
	.loc 1 395 0
	lwz 0,84(31)
	cmpwi 7,0,0
	ble- 7,.L165
.L56:
	.loc 1 398 0
	cmpwi 7,0,2048
	bgt- 7,.L166
.L57:
	.loc 1 403 0
	cmpwi 7,0,0
	.loc 1 402 0
	lwz 21,88(31)
.LVL84:
	.loc 1 403 0
	ble- 7,.L58
	.loc 1 402 0
	add 21,31,21
	.loc 1 403 0
	li 20,0
.LVL85:
.L59:
	.loc 1 404 0 discriminator 2
	lwz 0,0(30)
	.loc 1 403 0 discriminator 2
	addi 20,20,1
	.loc 1 404 0 discriminator 2
	lwz 3,0(21)
	mtctr 0
	bctrl
	.loc 1 405 0 discriminator 2
	lwz 0,0(30)
	.loc 1 404 0 discriminator 2
	stw 3,0(21)
	.loc 1 405 0 discriminator 2
	mtctr 0
	lwz 3,4(21)
	bctrl
	.loc 1 406 0 discriminator 2
	lwz 0,0(30)
	.loc 1 405 0 discriminator 2
	stw 3,4(21)
	.loc 1 406 0 discriminator 2
	mtctr 0
	lwz 3,8(21)
	bctrl
.LVL86:
	stw 3,8(21)
	.loc 1 403 0 discriminator 2
	addi 21,21,12
.LVL87:
	lwz 0,84(31)
	cmpw 7,0,20
	bgt+ 7,.L59
.LVL88:
.L58:
	.loc 1 411 0
	lwz 0,80(31)
	.loc 1 410 0
	lwz 21,96(31)
.LVL89:
	.loc 1 411 0
	cmpwi 7,0,0
	ble- 7,.L60
	.loc 1 410 0
	add 21,31,21
	.loc 1 411 0
	li 20,0
	la 19,LittleFloat@l(27)
.LVL90:
.L61:
	.loc 1 412 0 discriminator 2
	lwz 0,0(19)
	.loc 1 411 0 discriminator 2
	addi 20,20,1
	.loc 1 412 0 discriminator 2
	lfs 1,0(21)
	mtctr 0
	bctrl
	.loc 1 413 0 discriminator 2
	lwz 0,0(19)
	.loc 1 412 0 discriminator 2
	stfs 1,0(21)
	.loc 1 413 0 discriminator 2
	mtctr 0
	lfs 1,4(21)
	bctrl
.LVL91:
	.loc 1 411 0 discriminator 2
	lwz 0,80(31)
	.loc 1 413 0 discriminator 2
	stfs 1,4(21)
	.loc 1 411 0 discriminator 2
	addi 21,21,8
.LVL92:
	cmpw 7,0,20
	bgt+ 7,.L61
.LVL93:
.L60:
	.loc 1 418 0
	lwz 9,72(31)
	.loc 1 417 0
	lwz 21,100(31)
.LVL94:
	.loc 1 418 0
	mullw. 8,0,9
	ble- 0,.L62
	.loc 1 417 0
	add 21,31,21
	.loc 1 418 0
	li 19,0
	la 20,LittleShort@l(28)
.LVL95:
.L63:
	.loc 1 420 0 discriminator 2
	lwz 0,0(20)
	.loc 1 418 0 discriminator 2
	addi 19,19,1
	.loc 1 420 0 discriminator 2
	lha 3,0(21)
	mtctr 0
	bctrl
	.loc 1 421 0 discriminator 2
	lwz 0,0(20)
	.loc 1 420 0 discriminator 2
	sth 3,0(21)
	.loc 1 421 0 discriminator 2
	mtctr 0
	lha 3,2(21)
	bctrl
	.loc 1 422 0 discriminator 2
	lwz 0,0(20)
	.loc 1 421 0 discriminator 2
	sth 3,2(21)
	.loc 1 422 0 discriminator 2
	mtctr 0
	lha 3,4(21)
	bctrl
	.loc 1 424 0 discriminator 2
	lwz 0,0(20)
	.loc 1 422 0 discriminator 2
	sth 3,4(21)
	.loc 1 424 0 discriminator 2
	mtctr 0
	lha 3,6(21)
	bctrl
.LVL96:
	.loc 1 418 0 discriminator 2
	lwz 9,80(31)
	lwz 0,72(31)
	.loc 1 424 0 discriminator 2
	sth 3,6(21)
	.loc 1 418 0 discriminator 2
	addi 21,21,8
.LVL97:
	mullw 0,9,0
	cmpw 7,0,19
	bgt+ 7,.L63
.LVL98:
.L62:
	.loc 1 371 0
	lwz 0,84(24)
	addi 29,29,1
	cmpw 7,0,29
	.loc 1 429 0
	lwz 0,104(31)
	add 31,31,0
.LVL99:
	.loc 1 371 0
	bgt+ 7,.L64
.LVL100:
.L54:
	.loc 1 445 0
	li 3,8
	mr 4,26
	.loc 1 433 0
	lwz 22,100(24)
.LVL101:
	.loc 1 445 0
	bl Hunk_AllocName
.LVL102:
	.loc 1 446 0
	lwz 9,84(24)
	.loc 1 445 0
	stw 3,220(1)
.LVL103:
	.loc 1 449 0
	addi 0,9,-1
.LVL104:
	.loc 1 450 0
	slwi. 3,0,2
.LVL105:
	.loc 1 446 0
	lwz 11,220(1)
	stw 9,0(11)
	.loc 1 450 0
	bne- 0,.L167
.LVL106:
.L65:
	.loc 1 461 0
	cmpwi 7,9,0
	.loc 1 458 0
	lis 8,.LC6@ha
	.loc 1 459 0
	lis 10,.LC14@ha
	.loc 1 455 0
	lwz 9,76(24)
	.loc 1 458 0
	lwz 11,.LC6@l(8)
	.loc 1 453 0
	li 7,0
	.loc 1 459 0
	lwz 0,.LC14@l(10)
	.loc 1 454 0
	li 6,2
	.loc 1 453 0
	stw 7,80(26)
	.loc 1 454 0
	stw 6,68(26)
	.loc 1 455 0
	stw 9,72(26)
	.loc 1 456 0
	stw 7,76(26)
	.loc 1 458 0
	stw 11,92(26)
	stw 11,88(26)
	stw 11,84(26)
	.loc 1 459 0
	stw 0,104(26)
	stw 0,100(26)
	stw 0,96(26)
.LVL107:
	.loc 1 461 0
	ble- 7,.L66
	.loc 1 281 0
	lwz 11,220(1)
	lis 30,pheader@ha
	lis 25,.LC17@ha
	lis 29,numNormals@ha
	addi 11,11,-4
	.loc 1 433 0
	add 22,24,22
.LVL108:
	.loc 1 281 0
	stw 11,224(1)
	.loc 1 461 0
	li 11,0
	stw 11,232(1)
	la 30,pheader@l(30)
	la 25,.LC17@l(25)
	addi 28,1,120
	.loc 1 474 0
	li 31,0
	lis 27,.LC4@ha
	.loc 1 602 0
	lis 23,numNormals-4@ha
	la 29,numNormals@l(29)
.LVL109:
.L109:
	.loc 1 464 0
	addi 9,9,-1
	.loc 1 465 0
	lwz 11,224(1)
	.loc 1 464 0
	mulli 3,9,40
	.loc 1 465 0
	addi 11,11,4
	addi 3,3,1340
	stw 11,224(1)
	bl Hunk_Alloc
.LVL110:
	.loc 1 467 0
	lwz 11,220(1)
.LVL111:
	.loc 1 465 0
	stw 3,0(30)
	.loc 1 468 0
	li 4,0
	.loc 1 467 0
	subf 9,11,3
	lwz 11,224(1)
	.loc 1 468 0
	li 5,1340
	.loc 1 467 0
	stw 9,4(11)
	.loc 1 468 0
	bl Q_memset
.LVL112:
	.loc 1 473 0
	lis 8,.LC15@ha
	.loc 1 480 0
	lwz 0,80(22)
	.loc 1 473 0
	la 8,.LC15@l(8)
	.loc 1 482 0
	lwz 11,72(22)
	.loc 1 471 0
	lwz 9,0(30)
	.loc 1 473 0
	lwz 10,0(8)
	.loc 1 475 0
	lis 8,.LC16@ha
	.loc 1 490 0
	mullw 3,0,11
	.loc 1 475 0
	la 8,.LC16@l(8)
	.loc 1 471 0
	lwz 20,0(24)
	.loc 1 472 0
	lwz 21,4(24)
	.loc 1 481 0
	lwz 5,84(22)
	.loc 1 483 0
	lwz 6,76(26)
	.loc 1 490 0
	slwi 3,3,4
	.loc 1 475 0
	lwz 4,0(8)
	.loc 1 478 0
	li 8,4
	.loc 1 473 0
	stw 10,8(9)
	stw 10,12(9)
	stw 10,16(9)
	.loc 1 477 0
	li 10,1
	.loc 1 485 0
	lwz 7,0(25)
	.loc 1 477 0
	stw 10,48(9)
	.loc 1 484 0
	li 10,0
	.loc 1 480 0
	stw 0,60(9)
	.loc 1 482 0
	stw 11,68(9)
	.loc 1 484 0
	stw 10,76(9)
	.loc 1 486 0
	stw 11,108(9)
	.loc 1 487 0
	stw 0,112(9)
	.loc 1 471 0
	stw 20,0(9)
	.loc 1 472 0
	stw 21,4(9)
	.loc 1 474 0
	stw 31,20(9)
	stw 31,24(9)
	stw 31,28(9)
	.loc 1 475 0
	stw 4,32(9)
	.loc 1 476 0
	stw 31,36(9)
	stw 31,40(9)
	stw 31,44(9)
	.loc 1 478 0
	stw 8,52(9)
	.loc 1 479 0
	stw 8,56(9)
	.loc 1 481 0
	stw 5,64(9)
	.loc 1 483 0
	stw 6,72(9)
	.loc 1 485 0
	stw 7,80(9)
	.loc 1 490 0
	bl Hunk_Alloc
	.loc 1 491 0
	lwz 9,0(30)
	.loc 1 492 0
	lwz 0,100(22)
	.loc 1 490 0
	mr 18,3
.LVL113:
	.loc 1 496 0
	lwz 10,68(9)
	.loc 1 491 0
	subf 11,9,3
	stw 11,116(9)
	.loc 1 492 0
	add 0,22,0
.LVL114:
	.loc 1 496 0
	cmpwi 7,10,0
	.loc 1 495 0
	lwz 19,92(24)
.LVL115:
	.loc 1 496 0
	ble- 7,.L67
	lis 11,.LC18@ha
	lis 8,.LC6@ha
	la 14,.LC18@l(11)
	lis 11,.LC14@ha
	.loc 1 495 0
	add 19,24,19
	.loc 1 507 0
	stw 24,216(1)
	.loc 1 496 0
	li 20,0
	la 15,.LC6@l(8)
	la 16,.LC14@l(11)
	.loc 1 499 0
	li 17,1
	.loc 1 507 0
	lis 21,0x4330
	mr 24,0
.LVL116:
.L81:
	.loc 1 497 0
	mulli 0,20,40
	addi 4,19,40
	add 9,9,0
	stw 0,244(1)
	addi 3,9,1324
	bl strcpy
	.loc 1 498 0
	lwz 9,0(30)
	lwz 0,244(1)
	.loc 1 505 0
	lwz 5,112(9)
	.loc 1 502 0
	lwz 11,0(15)
	.loc 1 498 0
	add 7,9,0
	.loc 1 501 0
	lwz 8,0(14)
	.loc 1 505 0
	cmpwi 7,5,0
	.loc 1 498 0
	stw 20,1300(7)
	.loc 1 499 0
	stw 17,1304(7)
	.loc 1 500 0
	stw 20,1320(7)
	.loc 1 501 0
	stw 8,1308(7)
	.loc 1 503 0
	lwz 10,0(16)
	.loc 1 505 0
	stw 11,248(1)
	lfs 0,248(1)
	.loc 1 502 0
	stw 11,92(9)
	stw 11,88(9)
	stw 11,84(9)
	.loc 1 503 0
	stw 10,104(9)
	stw 10,100(9)
	stw 10,96(9)
.LVL117:
	.loc 1 505 0
	ble- 7,.L68
	.loc 1 281 0
	mullw 0,20,5
	.loc 1 507 0
	lis 8,.LC15@ha
	la 8,.LC15@l(8)
	lfs 10,.LC4@l(27)
	lfs 11,0(8)
	.loc 1 505 0
	li 6,0
	.loc 1 281 0
	slwi 7,0,3
	slwi 0,0,4
	add 7,24,7
	add 8,18,0
.LVL118:
.L75:
	.loc 1 507 0
	lha 0,0(7)
	.loc 1 510 0
	mr 11,9
	.loc 1 507 0
	stw 21,184(1)
	.loc 1 510 0
	li 10,0
	.loc 1 507 0
	xoris 0,0,0x8000
	.loc 1 512 0
	cmpwi 7,10,8
	.loc 1 507 0
	stw 0,188(1)
	.loc 1 512 0
	addi 10,10,4
	.loc 1 507 0
	lfd 0,184(1)
	.loc 1 508 0
	lha 0,2(7)
	.loc 1 507 0
	fsub 0,0,10
	.loc 1 508 0
	xoris 0,0,0x8000
	.loc 1 507 0
	fmul 0,0,11
	frsp 0,0
	stfs 0,0(8)
	.loc 1 508 0
	stw 0,196(1)
	stw 21,192(1)
	lfd 13,192(1)
	.loc 1 509 0
	lha 0,4(7)
	.loc 1 508 0
	fsub 13,13,10
	.loc 1 509 0
	xoris 0,0,0x8000
	.loc 1 508 0
	fmul 13,13,11
	frsp 13,13
	stfs 13,4(8)
	.loc 1 509 0
	stw 0,204(1)
	stw 21,200(1)
	lfd 13,200(1)
	.loc 1 510 0
	lhz 0,6(7)
	.loc 1 509 0
	fsub 13,13,10
	.loc 1 510 0
	stw 0,12(8)
.LVL119:
	.loc 1 509 0
	fmul 13,13,11
	frsp 13,13
	stfs 13,8(8)
	.loc 1 513 0
	lfs 13,84(11)
	fcmpu 6,0,13
	bgt- 6,.L69
.LVL120:
.L168:
	fmr 13,0
.L69:
	.loc 1 514 0 discriminator 3
	lfs 12,96(11)
	.loc 1 513 0 discriminator 3
	stfs 13,84(11)
	.loc 1 514 0 discriminator 3
	fcmpu 6,0,12
	bnl- 6,.L71
	.loc 1 514 0 is_stmt 0
	fmr 0,12
.L71:
	.loc 1 514 0 discriminator 3
	stfs 0,96(11)
	addi 11,11,4
	.loc 1 512 0 is_stmt 1 discriminator 3
	beq- 7,.L73
	.loc 1 512 0 is_stmt 0
	lfsx 0,8,10
	cmpwi 7,10,8
	.loc 1 513 0 is_stmt 1
	lfs 13,84(11)
	.loc 1 512 0
	addi 10,10,4
	.loc 1 513 0
	fcmpu 6,0,13
	bgt- 6,.L69
	b .L168
.L73:
	.loc 1 505 0
	addi 6,6,1
.LVL121:
	addi 7,7,8
	cmpw 7,6,5
	addi 8,8,16
	bne+ 7,.L75
	lfs 0,84(9)
.LVL122:
.L68:
	.loc 1 530 0
	mr 11,26
	.loc 1 514 0
	li 0,3
	.loc 1 519 0
	lfs 13,84(11)
	.loc 1 530 0
	mr 10,9
	.loc 1 514 0
	mtctr 0
	.loc 1 519 0
	fcmpu 7,13,0
	bnl- 7,.L76
.LVL123:
.L170:
	fmr 0,13
.L76:
	.loc 1 519 0 is_stmt 0 discriminator 3
	stfs 0,84(11)
	.loc 1 520 0 is_stmt 1 discriminator 3
	lfs 13,96(11)
	lfs 0,96(10)
	addi 10,10,4
	fcmpu 7,13,0
	bng- 7,.L78
	.loc 1 520 0 is_stmt 0
	fmr 0,13
.L78:
	.loc 1 520 0 discriminator 3
	stfs 0,96(11)
	addi 11,11,4
	.loc 1 518 0 is_stmt 1 discriminator 3
	bdz .L169
	.loc 1 505 0
	lfs 0,84(10)
	.loc 1 519 0
	lfs 13,84(11)
	fcmpu 7,13,0
	bnl- 7,.L76
	b .L170
.L169:
	.loc 1 496 0
	lwz 0,68(9)
	addi 20,20,1
.LVL124:
	addi 19,19,56
.LVL125:
	cmpw 7,0,20
	bgt+ 7,.L81
	lwz 24,216(1)
.LVL126:
.L67:
	.loc 1 527 0
	lwz 3,64(9)
	mulli 3,3,28
	bl Hunk_Alloc
	.loc 1 528 0
	lwz 6,0(30)
	.loc 1 529 0
	lwz 11,88(22)
	.loc 1 527 0
	mr 16,3
.LVL127:
	.loc 1 530 0
	lwz 5,64(6)
	.loc 1 528 0
	subf 0,6,3
	stw 0,124(6)
	.loc 1 529 0
	add 11,22,11
.LVL128:
	.loc 1 530 0
	cmpwi 7,5,0
	ble- 7,.L83
	.loc 1 535 0
	mtctr 5
	.loc 1 281 0
	mr 17,3
	.loc 1 530 0
	mr 9,3
	.loc 1 533 0
	li 0,-1
	.loc 1 535 0
	li 4,1
.LVL129:
.L122:
	.loc 1 532 0
	lwz 7,0(11)
	lwz 8,4(11)
	lwz 10,8(11)
	.loc 1 530 0
	addi 11,11,12
	.loc 1 532 0
	stw 7,4(9)
	.loc 1 533 0
	stw 0,16(9)
.LVL130:
	.loc 1 532 0
	stw 8,8(9)
	.loc 1 533 0
	stw 0,20(9)
.LVL131:
	.loc 1 532 0
	stw 10,12(9)
	.loc 1 533 0
	stw 0,24(9)
.LVL132:
	.loc 1 535 0
	stw 4,0(9)
	.loc 1 530 0
	addi 9,9,28
	bdnz .L122
.LVL133:
	lwz 5,64(6)
	li 19,0
.LVL134:
.L84:
	.loc 1 281 0
	addi 20,17,12
	li 21,0
.LVL135:
.L86:
	.loc 1 542 0
	lwzu 0,4(20)
	cmpwi 7,0,-1
	beq- 7,.L171
.L85:
.LVL136:
	.loc 1 540 0
	cmpwi 7,21,2
	addi 21,21,1
.LVL137:
	bne+ 7,.L86
	.loc 1 539 0
	addi 19,19,1
.LVL138:
	addi 17,17,28
	cmpw 7,19,5
	blt+ 7,.L84
.LVL139:
.L83:
	.loc 1 548 0
	lwz 0,108(6)
	.loc 1 550 0
	li 20,0
	.loc 1 548 0
	mullw 5,5,0
	slwi 3,5,4
	bl Hunk_Alloc
	.loc 1 549 0
	lwz 11,0(30)
	.loc 1 548 0
	mr 17,3
.LVL140:
	.loc 1 550 0
	lwz 9,108(11)
	.loc 1 549 0
	subf 0,11,3
	stw 0,128(11)
.LVL141:
	.loc 1 550 0
	cmpwi 7,9,0
	ble- 7,.L88
.LVL142:
.L154:
	.loc 1 551 0 discriminator 1
	lwz 0,64(11)
	.loc 1 281 0 discriminator 1
	addi 19,16,-4
	li 21,0
	.loc 1 551 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L91
.LVL143:
.L90:
	.loc 1 281 0
	lwz 6,112(11)
	addi 9,1,84
	mr 11,19
	mullw 6,20,6
.LVL144:
.L89:
	.loc 1 550 0
	addi 11,11,4
	.loc 1 555 0
	lwz 0,4(11)
	add 0,6,0
	slwi 0,0,4
	add 10,18,0
.LVL145:
	.loc 1 557 0
	lwzx 7,18,0
	lwz 8,4(10)
	lwz 0,8(10)
	stw 7,0(9)
.LVL146:
	stw 8,4(9)
.LVL147:
	stw 0,8(9)
.LVL148:
	addi 9,9,12
	.loc 1 554 0
	cmpw 7,9,28
	bne+ 7,.L89
	.loc 1 561 0
	lfs 30,84(1)
	.loc 1 563 0
	addi 4,1,56
	.loc 1 561 0
	lfs 12,96(1)
	.loc 1 563 0
	addi 5,1,32
	.loc 1 562 0
	lfs 8,108(1)
	.loc 1 563 0
	addi 3,1,44
	.loc 1 561 0
	fsubs 9,30,12
	lfs 29,88(1)
	.loc 1 562 0
	fsubs 12,8,12
	.loc 1 561 0
	lfs 13,100(1)
	.loc 1 562 0
	lfs 8,112(1)
	.loc 1 551 0
	addi 19,19,28
	.loc 1 561 0
	fsubs 10,29,13
	lfs 31,92(1)
	.loc 1 562 0
	fsubs 13,8,13
	.loc 1 561 0
	lfs 0,104(1)
	.loc 1 562 0
	lfs 8,116(1)
	.loc 1 561 0
	fsubs 11,31,0
	stfs 9,56(1)
	.loc 1 562 0
	fsubs 0,8,0
	stfs 13,48(1)
	.loc 1 561 0
	stfs 10,60(1)
	stfs 11,64(1)
	.loc 1 562 0
	stfs 12,44(1)
	stfs 0,52(1)
	.loc 1 563 0
	bl CrossProduct
.LVL149:
	.loc 1 564 0
	addi 3,1,32
	bl Length
	lfs 0,0(25)
	lwz 9,0(30)
	addi 3,1,32
	fdivs 1,0,1
	lwz 4,64(9)
	mullw 4,20,4
	add 4,4,21
	slwi 4,4,4
	add 4,17,4
	bl VectorScale
	.loc 1 567 0
	lwz 11,0(30)
	lwz 0,64(11)
	mullw 10,0,20
	add 10,10,21
	.loc 1 551 0
	addi 21,21,1
.LVL150:
	.loc 1 567 0
	slwi 10,10,4
	.loc 1 551 0
	cmpw 7,0,21
	.loc 1 567 0
	add 9,17,10
	lfsx 13,17,10
	lfs 0,4(9)
	fmuls 29,29,0
	lfs 0,8(9)
	fmadds 30,30,13,29
	fmadds 31,31,0,30
	stfs 31,12(9)
	.loc 1 551 0
	bgt+ 7,.L90
.LVL151:
.L91:
	.loc 1 550 0
	lwz 0,108(11)
	addi 20,20,1
.LVL152:
	cmpw 7,0,20
	bgt+ 7,.L154
.LVL153:
.L88:
	.loc 1 572 0
	lwz 3,112(11)
	slwi 3,3,3
	bl Hunk_Alloc
	.loc 1 573 0
	lwz 7,0(30)
	.loc 1 574 0
	lwz 8,96(22)
	.loc 1 575 0
	lwz 0,112(7)
	.loc 1 573 0
	subf 9,7,3
	.loc 1 572 0
	stw 3,228(1)
.LVL154:
	.loc 1 574 0
	add 8,22,8
.LVL155:
	.loc 1 575 0
	cmpwi 7,0,0
	.loc 1 573 0
	stw 9,140(7)
	.loc 1 575 0
	ble- 7,.L92
	mtctr 0
	li 10,0
	mr 6,3
.LVL156:
.L93:
	.loc 1 576 0 discriminator 2
	mr 11,8
	mr 9,6
	lwzux 0,11,10
	stwux 0,9,10
	.loc 1 575 0 discriminator 2
	addi 10,10,8
	.loc 1 577 0 discriminator 2
	lwz 0,4(11)
	stw 0,4(9)
	.loc 1 575 0 discriminator 2
	bdnz .L93
.L92:
	.loc 1 581 0
	lwz 3,64(7)
.LVL157:
	mulli 3,3,12
	bl Hunk_Alloc
.LVL158:
	.loc 1 582 0
	lwz 11,0(30)
	.loc 1 583 0
	lwz 9,64(11)
	.loc 1 582 0
	subf 0,11,3
	stw 0,144(11)
.LVL159:
	.loc 1 583 0
	cmpwi 7,9,0
	ble- 7,.L94
	li 9,0
.LVL160:
.L95:
	.loc 1 586 0 discriminator 1
	lwz 0,4(16)
	.loc 1 583 0 discriminator 1
	addi 9,9,1
	.loc 1 586 0 discriminator 1
	stw 0,0(3)
.LVL161:
	lwz 0,8(16)
	stw 0,4(3)
.LVL162:
	lwz 0,12(16)
	.loc 1 583 0 discriminator 1
	addi 16,16,28
	.loc 1 586 0 discriminator 1
	stw 0,8(3)
.LVL163:
	addi 3,3,12
.LVL164:
	.loc 1 583 0 discriminator 1
	lwz 0,64(11)
	cmpw 7,0,9
	bgt+ 7,.L95
	.loc 1 583 0 is_stmt 0
	lwz 0,144(11)
.LVL165:
.L94:
	.loc 1 593 0 is_stmt 1
	lwz 9,108(11)
	.loc 1 590 0
	add 0,11,0
	.loc 1 593 0
	lwz 3,112(11)
.LVL166:
	.loc 1 599 0
	li 19,0
	.loc 1 590 0
	stw 0,216(1)
.LVL167:
	.loc 1 593 0
	mullw 3,3,9
	mulli 3,3,12
	bl Hunk_Alloc
.LVL168:
	.loc 1 594 0
	lwz 9,0(30)
	.loc 1 593 0
	mr 21,3
.LVL169:
	.loc 1 596 0
	lwz 11,108(9)
	.loc 1 594 0
	subf 0,9,21
	.loc 1 596 0
	lwz 3,112(9)
.LVL170:
	.loc 1 594 0
	stw 0,132(9)
	.loc 1 596 0
	mullw 3,3,11
	mulli 3,3,12
	bl Hunk_Alloc
	.loc 1 597 0
	lwz 9,0(30)
	.loc 1 596 0
	mr 20,3
.LVL171:
	.loc 1 599 0
	lwz 11,108(9)
	.loc 1 597 0
	subf 0,9,3
	stw 0,136(9)
.LVL172:
	.loc 1 599 0
	cmpwi 7,11,0
	ble- 7,.L98
.LBB2:
	.loc 1 633 0 discriminator 1
	stw 24,240(1)
	mr 24,26
	lwz 26,228(1)
.LVL173:
.LBE2:
	.loc 1 602 0 discriminator 1
	li 17,0
.LVL174:
.LBB3:
	.loc 1 633 0 discriminator 1
	lis 14,0x4330
.LVL175:
.L156:
.LBE3:
	.loc 1 602 0 discriminator 1
	lwz 0,112(9)
	cmpwi 7,0,0
	ble- 7,.L106
	.loc 1 602 0 is_stmt 0
	la 7,numNormals-4@l(23)
	li 11,0
.LVL176:
.L99:
	.loc 1 603 0 is_stmt 1 discriminator 2
	mullw 0,19,0
	add 0,0,11
	.loc 1 602 0 discriminator 2
	addi 11,11,1
.LVL177:
	.loc 1 603 0 discriminator 2
	mulli 0,0,12
	add 8,21,0
	.loc 1 606 0 discriminator 2
	add 10,20,0
	.loc 1 603 0 discriminator 2
	stwx 31,21,0
	.loc 1 604 0 discriminator 2
	stw 31,4(8)
	.loc 1 605 0 discriminator 2
	stw 31,8(8)
	.loc 1 606 0 discriminator 2
	stwx 31,20,0
	.loc 1 607 0 discriminator 2
	stw 31,4(10)
	.loc 1 608 0 discriminator 2
	stw 31,8(10)
	.loc 1 609 0 discriminator 2
	stwu 17,4(7)
	.loc 1 602 0 discriminator 2
	lwz 0,112(9)
	cmpw 7,0,11
	bgt+ 7,.L99
.LVL178:
.L106:
	.loc 1 613 0 discriminator 1
	lwz 0,64(9)
	cmpwi 7,0,0
	ble- 7,.L100
	.loc 1 613 0 is_stmt 0
	lwz 16,216(1)
	li 15,0
.LVL179:
.L102:
.LBB4:
	.loc 1 616 0 is_stmt 1
	lwz 4,112(9)
	mr 3,16
	mr 5,26
	addi 6,1,20
	mullw 4,19,4
	addi 7,1,8
	slwi 4,4,4
	add 4,18,4
	bl TangentForTrimd3
.LVL180:
	lwz 9,0(30)
	li 8,0
.LVL181:
.L101:
	.loc 1 621 0 discriminator 2
	lwz 0,112(9)
	.loc 1 618 0 discriminator 2
	cmpwi 7,8,8
	.loc 1 619 0 discriminator 2
	lwzx 11,16,8
.LVL182:
	.loc 1 618 0 discriminator 2
	addi 8,8,4
.LVL183:
	.loc 1 621 0 discriminator 2
	mullw 0,19,0
	lfs 0,20(1)
	.loc 1 625 0 discriminator 2
	slwi 7,11,2
	lwzx 6,29,7
	.loc 1 621 0 discriminator 2
	add 0,0,11
	.loc 1 625 0 discriminator 2
	addi 6,6,1
	.loc 1 621 0 discriminator 2
	mulli 0,0,12
	lfsx 13,21,0
	add 10,21,0
	.loc 1 623 0 discriminator 2
	add 11,20,0
	.loc 1 621 0 discriminator 2
	fadds 0,13,0
	stfsx 0,21,0
	lfs 12,4(10)
	lfs 0,24(1)
	lfs 13,8(10)
	fadds 0,12,0
	stfs 0,4(10)
	lfs 0,28(1)
	fadds 0,13,0
	stfs 0,8(10)
	.loc 1 623 0 discriminator 2
	lfsx 13,20,0
	lfs 0,8(1)
	fadds 0,13,0
	stfsx 0,20,0
	lfs 12,4(11)
	lfs 0,12(1)
	lfs 13,8(11)
	fadds 0,12,0
	stfs 0,4(11)
	lfs 0,16(1)
	fadds 0,13,0
	stfs 0,8(11)
	.loc 1 625 0 discriminator 2
	stwx 6,29,7
	.loc 1 618 0 discriminator 2
	bne+ 7,.L101
.LBE4:
	.loc 1 613 0
	lwz 0,64(9)
	addi 15,15,1
.LVL184:
	addi 16,16,12
.LVL185:
	cmpw 7,0,15
	bgt+ 7,.L102
.LVL186:
.L100:
	.loc 1 630 0 discriminator 1
	lwz 0,112(9)
	cmpwi 7,0,0
	ble- 7,.L103
	.loc 1 630 0 is_stmt 0
	la 15,numNormals-4@l(23)
	mr 10,0
	li 16,0
	b .L105
.LVL187:
.L104:
	addi 16,16,1
.LVL188:
	mr 0,10
	cmpw 7,16,10
	bge- 7,.L103
.LVL189:
.L105:
.LBB5:
	.loc 1 632 0 is_stmt 1
	lwzu 11,4(15)
	cmpwi 7,11,0
	beq+ 7,.L104
	.loc 1 633 0
	xoris 11,11,0x8000
	stw 14,208(1)
	stw 11,212(1)
	mullw 0,19,0
	lfs 0,.LC4@l(27)
	lfd 13,208(1)
	fsub 0,13,0
	add 0,0,16
	mulli 0,0,12
	.loc 1 634 0
	mullw 10,19,10
	.loc 1 633 0
	frsp 0,0
	lfsx 13,21,0
	add 11,21,0
	.loc 1 637 0
	add 9,20,0
	.loc 1 633 0
	fdivs 13,13,0
	.loc 1 634 0
	add 10,10,16
	mulli 10,10,12
	.loc 1 641 0
	mr 3,11
	.loc 1 634 0
	add 10,21,10
	.loc 1 633 0
	stfsx 13,21,0
	.loc 1 634 0
	lfs 13,4(10)
	fdivs 13,13,0
	stfs 13,4(10)
	.loc 1 635 0
	lfs 13,8(11)
	fdivs 13,13,0
	stfs 13,8(11)
	.loc 1 637 0
	lfsx 13,20,0
	fdivs 13,13,0
	stfsx 13,20,0
	.loc 1 639 0
	lfs 12,8(9)
	.loc 1 638 0
	lfs 13,4(9)
	fdivs 13,13,0
	.loc 1 639 0
	fdivs 0,12,0
	.loc 1 638 0
	stfs 13,4(9)
	.loc 1 639 0
	stfs 0,8(9)
	.loc 1 641 0
	bl VectorNormalize
	.loc 1 642 0
	lwz 9,0(30)
	lwz 3,112(9)
	mullw 3,19,3
	add 3,3,16
	mulli 3,3,12
	add 3,20,3
	bl VectorNormalize
	.loc 1 644 0
	lwz 9,0(30)
	addi 4,1,8
	lwz 9,112(9)
	mullw 9,19,9
	add 9,9,16
	slwi 9,9,4
	add 9,18,9
	lwz 3,12(9)
	bl DecodeNormal
	.loc 1 646 0
	lwz 9,0(30)
	addi 3,1,8
	lwz 4,112(9)
	mullw 4,19,4
	add 4,4,16
	mulli 4,4,12
	add 4,21,4
	mr 5,4
	bl Orthogonalize
	.loc 1 647 0
	lwz 9,0(30)
	addi 3,1,8
	lwz 4,112(9)
	mullw 4,19,4
	add 4,4,16
.LBE5:
	.loc 1 630 0
	addi 16,16,1
.LBB6:
	.loc 1 647 0
	mulli 4,4,12
	add 4,20,4
	mr 5,4
	bl Orthogonalize
.LVL190:
	lwz 9,0(30)
	lwz 10,112(9)
.LBE6:
	.loc 1 630 0
	cmpw 7,16,10
	mr 0,10
	blt+ 7,.L105
.LVL191:
.L103:
	.loc 1 599 0
	lwz 0,108(9)
	addi 19,19,1
.LVL192:
	cmpw 7,0,19
	bgt+ 7,.L156
	mr 26,24
	lwz 24,240(1)
.LVL193:
.L98:
	.loc 1 654 0
	li 8,16
	.loc 1 802 0
	addi 9,1,67
	.loc 1 654 0
	mtctr 8
	li 0,-2
.LVL194:
.L107:
	.loc 1 654 0 is_stmt 0 discriminator 2
	stbu 0,1(9)
	.loc 1 653 0 is_stmt 1 discriminator 2
	bdnz .L107
	.loc 1 656 0
	lwz 21,92(22)
.LVL195:
	.loc 1 658 0
	lbzx 0,22,21
	.loc 1 656 0
	add 21,22,21
.LVL196:
	.loc 1 658 0
	cmpwi 7,0,0
	beq- 7,.L172
.LVL197:
.L108:
	.loc 1 662 0
	mr 3,21
	mr 4,28
	bl COM_FileBase
	.loc 1 666 0
	lwz 21,0(30)
.LVL198:
	li 4,4
	li 5,4
	addi 6,1,68
	li 7,1
	li 8,0
	li 9,1
	mr 3,28
	bl GL_LoadTexture
	.loc 1 671 0
	li 4,1
	.loc 1 666 0
	stw 3,160(21)
	.loc 1 665 0
	stw 3,156(21)
	.loc 1 664 0
	stw 3,152(21)
	.loc 1 663 0
	stw 3,148(21)
	.loc 1 671 0
	mr 3,28
	lwz 21,0(30)
	bl GL_LoadLuma
	.loc 1 461 0
	lwz 11,232(1)
	lwz 0,84(24)
	addi 11,11,1
	cmpw 7,0,11
	.loc 1 676 0
	lwz 0,104(22)
	.loc 1 461 0
	stw 11,232(1)
	.loc 1 671 0
	stw 3,672(21)
	.loc 1 676 0
	add 22,22,0
.LVL199:
	.loc 1 670 0
	stw 3,668(21)
	.loc 1 669 0
	stw 3,664(21)
	.loc 1 668 0
	stw 3,660(21)
	.loc 1 461 0
	ble- 7,.L66
	lwz 9,76(24)
	b .L109
.LVL200:
.L171:
	.loc 1 543 0
	mr 6,16
	mr 4,21
	mr 3,19
	bl findneighbourmd3
	lwz 6,0(30)
	stw 3,0(20)
	lwz 5,64(6)
	b .L85
.LVL201:
.L172:
	.loc 1 659 0
	lis 9,.LC74@ha
	mr 3,21
	lwz 4,.LC74@l(9)
	bl Q_strcpy
	b .L108
.LVL202:
.L164:
	.loc 1 393 0
	lwz 6,84(31)
	mr 3,22
	mr 4,26
	crxor 6,6,6
	bl Sys_Error
	.loc 1 395 0
	lwz 0,84(31)
	cmpwi 7,0,0
	bgt+ 7,.L56
.L165:
	.loc 1 396 0
	mr 3,23
	mr 4,26
	crxor 6,6,6
	bl Sys_Error
	lwz 0,84(31)
	.loc 1 398 0
	cmpwi 7,0,2048
	ble+ 7,.L57
.L166:
	.loc 1 399 0
	mr 3,25
	mr 4,26
	crxor 6,6,6
	bl Sys_Error
	lwz 0,84(31)
	b .L57
.LVL203:
.L66:
	.loc 1 680 0
	addi 3,26,84
	addi 4,26,96
	bl RadiusFromBounds
	.loc 1 709 0
	lis 4,.LC21@ha
	.loc 1 680 0
	stfs 1,108(26)
	.loc 1 709 0
	mr 3,26
	la 4,.LC21@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 710 0 discriminator 1
	lis 4,.LC22@ha
	mr 3,26
	la 4,.LC22@l(4)
	bl strcmp
	.loc 1 709 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 711 0
	lis 4,.LC23@ha
	mr 3,26
	la 4,.LC23@l(4)
	bl strcmp
	.loc 1 710 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 712 0
	lis 4,.LC24@ha
	mr 3,26
	la 4,.LC24@l(4)
	bl strcmp
	.loc 1 711 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 713 0
	lis 4,.LC25@ha
	mr 3,26
	la 4,.LC25@l(4)
	bl strcmp
	.loc 1 712 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 714 0
	lis 4,.LC26@ha
	mr 3,26
	la 4,.LC26@l(4)
	bl strcmp
	.loc 1 713 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 715 0
	lis 4,.LC27@ha
	mr 3,26
	la 4,.LC27@l(4)
	bl strcmp
	.loc 1 714 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 716 0
	lis 4,.LC28@ha
	mr 3,26
	la 4,.LC28@l(4)
	bl strcmp
	.loc 1 715 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 717 0
	lis 4,.LC29@ha
	mr 3,26
	la 4,.LC29@l(4)
	bl strcmp
	.loc 1 716 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 718 0
	lis 4,.LC30@ha
	mr 3,26
	la 4,.LC30@l(4)
	bl strcmp
	.loc 1 717 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 719 0
	lis 4,.LC31@ha
	mr 3,26
	la 4,.LC31@l(4)
	bl strcmp
	.loc 1 718 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 720 0
	lis 4,.LC32@ha
	mr 3,26
	la 4,.LC32@l(4)
	bl strcmp
	.loc 1 719 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 721 0
	lis 4,.LC33@ha
	mr 3,26
	la 4,.LC33@l(4)
	bl strcmp
	.loc 1 720 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 722 0
	lis 4,.LC34@ha
	mr 3,26
	la 4,.LC34@l(4)
	bl strcmp
	.loc 1 721 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 723 0
	lis 4,.LC35@ha
	mr 3,26
	la 4,.LC35@l(4)
	bl strcmp
	.loc 1 722 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 724 0
	lis 4,.LC36@ha
	mr 3,26
	la 4,.LC36@l(4)
	bl strcmp
	.loc 1 723 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 725 0
	lis 4,.LC37@ha
	mr 3,26
	la 4,.LC37@l(4)
	bl strcmp
	.loc 1 724 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 726 0
	lis 4,.LC38@ha
	mr 3,26
	la 4,.LC38@l(4)
	bl strcmp
	.loc 1 725 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 727 0
	lis 4,.LC39@ha
	mr 3,26
	la 4,.LC39@l(4)
	bl strcmp
	.loc 1 726 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 728 0
	lis 4,.LC40@ha
	mr 3,26
	la 4,.LC40@l(4)
	bl strcmp
	.loc 1 727 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 729 0
	lis 4,.LC41@ha
	mr 3,26
	la 4,.LC41@l(4)
	bl strcmp
	.loc 1 728 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 730 0
	lis 4,.LC42@ha
	mr 3,26
	la 4,.LC42@l(4)
	bl strcmp
	.loc 1 729 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 731 0
	lis 4,.LC43@ha
	mr 3,26
	la 4,.LC43@l(4)
	bl strcmp
	.loc 1 730 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 732 0
	lis 4,.LC44@ha
	mr 3,26
	la 4,.LC44@l(4)
	bl strcmp
	.loc 1 731 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 733 0
	lis 4,.LC45@ha
	mr 3,26
	la 4,.LC45@l(4)
	bl strcmp
	.loc 1 732 0
	cmpwi 7,3,0
	beq- 7,.L110
	.loc 1 736 0
	lis 4,.LC46@ha
	mr 3,26
	la 4,.LC46@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L113
	.loc 1 737 0
	lwz 0,80(26)
	ori 0,0,1
	stw 0,80(26)
.L112:
	.loc 1 777 0
	lis 4,.LC67@ha
	mr 3,26
	la 4,.LC67@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 778 0
	lis 4,.LC68@ha
	mr 3,26
	la 4,.LC68@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 779 0
	lis 4,.LC69@ha
	mr 3,26
	la 4,.LC69@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 780 0
	lis 4,.LC70@ha
	mr 3,26
	la 4,.LC70@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 781 0
	lis 4,.LC64@ha
	mr 3,26
	la 4,.LC64@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 782 0
	lis 4,.LC71@ha
	mr 3,26
	la 4,.LC71@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 783 0
	lis 4,.LC72@ha
	mr 3,26
	la 4,.LC72@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L120
	.loc 1 784 0
	lis 4,.LC73@ha
	mr 3,26
	la 4,.LC73@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L121
.L120:
	.loc 1 786 0
	lwz 0,80(26)
	ori 0,0,512
	stw 0,80(26)
.L121:
	.loc 1 792 0
	bl Hunk_LowMark
.LVL204:
	.loc 1 793 0
	lwz 0,236(1)
	.loc 1 795 0
	lis 5,loadname@ha
	.loc 1 793 0
	subf 31,0,3
.LVL205:
	.loc 1 795 0
	la 5,loadname@l(5)
	addi 3,26,416
.LVL206:
	mr 4,31
	bl Cache_Alloc
	.loc 1 796 0
	lwz 3,416(26)
	cmpwi 7,3,0
	beq- 7,.L44
	.loc 1 798 0
	lwz 4,220(1)
	mr 5,31
	bl memcpy
	.loc 1 802 0
	lwz 3,236(1)
	bl Hunk_FreeToLowMark
.LVL207:
.L44:
	.loc 1 804 0
	lwz 0,356(1)
	lwz 14,256(1)
	mtlr 0
	lwz 15,260(1)
	lwz 16,264(1)
	lwz 17,268(1)
	lwz 18,272(1)
	lwz 19,276(1)
	lwz 20,280(1)
	lwz 21,284(1)
	lwz 22,288(1)
	lwz 23,292(1)
	lwz 24,296(1)
	lwz 25,300(1)
	lwz 26,304(1)
.LVL208:
	lwz 27,308(1)
	lwz 28,312(1)
	lwz 29,316(1)
	lwz 30,320(1)
	lwz 31,324(1)
	lfd 29,328(1)
	lfd 30,336(1)
	lfd 31,344(1)
	addi 1,1,352
	.cfi_remember_state
.LCFI17:
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
.LVL209:
.L110:
.LCFI18:
	.cfi_restore_state
	.loc 1 734 0
	lwz 0,80(26)
	ori 0,0,8
	stw 0,80(26)
	b .L112
.LVL210:
.L167:
	.loc 1 451 0
	bl Hunk_Alloc
.LVL211:
	lwz 9,84(24)
	b .L65
.LVL212:
.L113:
	.loc 1 739 0
	lis 4,.LC47@ha
	mr 3,26
	la 4,.LC47@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 740 0 discriminator 1
	lis 4,.LC48@ha
	mr 3,26
	la 4,.LC48@l(4)
	bl strcmp
	.loc 1 739 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 741 0
	lis 4,.LC49@ha
	mr 3,26
	la 4,.LC49@l(4)
	bl strcmp
	.loc 1 740 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 742 0
	lis 4,.LC50@ha
	mr 3,26
	la 4,.LC50@l(4)
	bl strcmp
	.loc 1 741 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 743 0
	lis 4,.LC51@ha
	mr 3,26
	la 4,.LC51@l(4)
	bl strcmp
	.loc 1 742 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 744 0
	lis 4,.LC52@ha
	mr 3,26
	la 4,.LC52@l(4)
	bl strcmp
	.loc 1 743 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 745 0
	lis 4,.LC53@ha
	mr 3,26
	la 4,.LC53@l(4)
	bl strcmp
	.loc 1 744 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 746 0
	lis 4,.LC54@ha
	mr 3,26
	la 4,.LC54@l(4)
	bl strcmp
	.loc 1 745 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 747 0
	lis 4,.LC55@ha
	mr 3,26
	la 4,.LC55@l(4)
	bl strcmp
	.loc 1 746 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 748 0
	lis 4,.LC56@ha
	mr 3,26
	la 4,.LC56@l(4)
	bl strcmp
	.loc 1 747 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 749 0
	lis 4,.LC57@ha
	mr 3,26
	la 4,.LC57@l(4)
	bl strcmp
	.loc 1 748 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 750 0
	lis 4,.LC58@ha
	mr 3,26
	la 4,.LC58@l(4)
	bl strcmp
	.loc 1 749 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 751 0
	lis 4,.LC59@ha
	mr 3,26
	la 4,.LC59@l(4)
	bl strcmp
	.loc 1 750 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 752 0
	lis 4,.LC60@ha
	mr 3,26
	la 4,.LC60@l(4)
	bl strcmp
	.loc 1 751 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 754 0
	lis 4,.LC61@ha
	mr 3,26
	la 4,.LC61@l(4)
	bl strcmp
	.loc 1 753 0
	cmpwi 7,3,0
	bne- 7,.L115
.L114:
	.loc 1 755 0
	lwz 0,80(26)
	ori 0,0,4
	stw 0,80(26)
	b .L112
.L115:
	.loc 1 757 0
	lis 4,.LC62@ha
	mr 3,26
	la 4,.LC62@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L116
	.loc 1 758 0
	lwz 0,80(26)
	ori 0,0,2
	stw 0,80(26)
	b .L112
.LVL213:
.L163:
	.loc 1 350 0
	lis 3,.LC9@ha
	mr 4,26
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl Sys_Error
	.loc 1 355 0
	lwz 0,76(24)
	.loc 1 354 0
	lwz 29,92(24)
.LVL214:
	.loc 1 355 0
	cmpwi 7,0,0
	ble+ 7,.L49
	b .L161
.LVL215:
.L162:
	.loc 1 345 0
	lis 3,.LC8@ha
	mr 4,26
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 346 0
	b .L44
.LVL216:
.L116:
	.loc 1 760 0
	lis 4,.LC63@ha
	mr 3,26
	la 4,.LC63@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L117
	.loc 1 762 0
	lwz 0,80(26)
	ori 0,0,16
	stw 0,80(26)
	b .L112
.L117:
	.loc 1 764 0
	lis 4,.LC64@ha
	mr 3,26
	la 4,.LC64@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L118
	.loc 1 766 0
	lwz 0,80(26)
	ori 0,0,64
	stw 0,80(26)
	b .L112
.L118:
	.loc 1 768 0
	lis 4,.LC65@ha
	mr 3,26
	la 4,.LC65@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L119
	.loc 1 770 0
	lwz 0,80(26)
	ori 0,0,128
	stw 0,80(26)
	b .L112
.L119:
	.loc 1 772 0
	lis 4,.LC66@ha
	mr 3,26
	la 4,.LC66@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L112
	.loc 1 774 0
	lwz 0,80(26)
	ori 0,0,32
	stw 0,80(26)
	b .L112
	.cfi_endproc
.LFE44:
	.size	Mod_LoadMd3Model, .-Mod_LoadMd3Model
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	0
.LC2:
	.4byte	-1082130432
.LC4:
	.4byte	1501560836
.LC5:
	.4byte	1019809755
.LC6:
	.4byte	1203982208
.LC14:
	.4byte	-943501440
.LC15:
	.4byte	1015021568
.LC16:
	.4byte	1120403456
.LC17:
	.4byte	1065353216
.LC18:
	.4byte	1036831949
.LC74:
	.4byte	.LC20
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC7:
	.string	"%s has wrong version number (%i should be %i)"
	.zero	2
.LC8:
	.string	"LoadMd3Model: %s has no frames\n"
.LC9:
	.string	"LoadMd3Model: %s has too many frames"
	.zero	3
.LC10:
	.string	"%s: warning: Model with multiple surfaces\n"
	.zero	1
.LC11:
	.string	"LoadMd3Model: %s has too many vertices (%i)%i"
	.zero	2
.LC12:
	.string	"LoadMd3Model: %s has no triangles"
	.zero	2
.LC13:
	.string	"LoadMd3Model: %s has too many triangles"
.LC20:
	.string	"unnamed"
.LC21:
	.string	"progs/g_shot.mdl"
	.zero	3
.LC22:
	.string	"progs/g_nail.mdl"
	.zero	3
.LC23:
	.string	"progs/g_nail2.mdl"
	.zero	2
.LC24:
	.string	"progs/g_rock.mdl"
	.zero	3
.LC25:
	.string	"progs/g_rock2.mdl"
	.zero	2
.LC26:
	.string	"progs/g_light.mdl"
	.zero	2
.LC27:
	.string	"progs/armor.mdl"
.LC28:
	.string	"progs/backpack.mdl"
	.zero	1
.LC29:
	.string	"progs/w_g_key.mdl"
	.zero	2
.LC30:
	.string	"progs/w_s_key.mdl"
	.zero	2
.LC31:
	.string	"progs/m_g_key.mdl"
	.zero	2
.LC32:
	.string	"progs/m_s_key.mdl"
	.zero	2
.LC33:
	.string	"progs/b_g_key.mdl"
	.zero	2
.LC34:
	.string	"progs/b_s_key.mdl"
	.zero	2
.LC35:
	.string	"progs/quaddama.mdl"
	.zero	1
.LC36:
	.string	"progs/invisibl.mdl"
	.zero	1
.LC37:
	.string	"progs/invulner.mdl"
	.zero	1
.LC38:
	.string	"progs/jetpack.mdl"
	.zero	2
.LC39:
	.string	"progs/cube.mdl"
	.zero	1
.LC40:
	.string	"progs/suit.mdl"
	.zero	1
.LC41:
	.string	"progs/boots.mdl"
.LC42:
	.string	"progs/end1.mdl"
	.zero	1
.LC43:
	.string	"progs/end2.mdl"
	.zero	1
.LC44:
	.string	"progs/end3.mdl"
	.zero	1
.LC45:
	.string	"progs/end4.mdl"
	.zero	1
.LC46:
	.string	"progs/missile.mdl"
	.zero	2
.LC47:
	.string	"progs/gib1.mdl"
	.zero	1
.LC48:
	.string	"progs/gib2.mdl"
	.zero	1
.LC49:
	.string	"progs/gib3.mdl"
	.zero	1
.LC50:
	.string	"progs/h_player.mdl"
	.zero	1
.LC51:
	.string	"progs/h_dog.mdl"
.LC52:
	.string	"progs/h_mega.mdl"
	.zero	3
.LC53:
	.string	"progs/h_guard.mdl"
	.zero	2
.LC54:
	.string	"progs/h_wizard.mdl"
	.zero	1
.LC55:
	.string	"progs/h_knight.mdl"
	.zero	1
.LC56:
	.string	"progs/h_hellkn.mdl"
	.zero	1
.LC57:
	.string	"progs/h_zombie.mdl"
	.zero	1
.LC58:
	.string	"progs/h_shams.mdl"
	.zero	2
.LC59:
	.string	"progs/h_shal.mdl"
	.zero	3
.LC60:
	.string	"progs/h_ogre.mdl"
	.zero	3
.LC61:
	.string	"progs/h_demon.mdl"
	.zero	2
.LC62:
	.string	"progs/grenade.mdl"
	.zero	2
.LC63:
	.string	"progs/w_spike.mdl"
	.zero	2
.LC64:
	.string	"progs/k_spike.mdl"
	.zero	2
.LC65:
	.string	"progs/v_spike.mdl"
	.zero	2
.LC66:
	.string	"progs/zom_gib.mdl"
	.zero	2
.LC67:
	.string	"progs/flame2.mdl"
	.zero	3
.LC68:
	.string	"progs/flame.mdl"
.LC69:
	.string	"progs/lavaball.mdl"
	.zero	1
.LC70:
	.string	"progs/laser.mdl"
.LC71:
	.string	"progs/bolt.mdl"
	.zero	1
.LC72:
	.string	"progs/bolt2.mdl"
.LC73:
	.string	"progs/bolt3.mdl"
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
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/gl_md3.h"
	.file 13 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22ab
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x1
	.4byte	.LASF380
	.4byte	.LASF381
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
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x18d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1b2
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
	.4byte	0x18d
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x1e3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1f3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.4byte	0x20e
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
	.4byte	0x1f3
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x17
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x219
	.4byte	0x23f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x6
	.byte	0xef
	.4byte	0x2f0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xf1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xf2
	.4byte	0x224
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
	.4byte	0x224
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
	.4byte	0x23f
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x30b
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.4byte	0x41
	.4byte	0x31b
	.uleb128 0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30b
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x331
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.4byte	0x376
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x20
	.4byte	0x41d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x21
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x22
	.4byte	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0x23
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x40
	.byte	0x8
	.byte	0xca
	.4byte	0x41d
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
	.4byte	0xfb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0xd2
	.4byte	0x9f5
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
	.4byte	0xfe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd8
	.4byte	0xfe9
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
	.uleb128 0xf
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
	.4byte	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x376
	.uleb128 0x5
	.byte	0x4
	.4byte	0x331
	.uleb128 0x10
	.4byte	.LASF60
	.2byte	0x248
	.byte	0x7
	.byte	0x27
	.4byte	0x697
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
	.4byte	0x2f0
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
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0x31
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.byte	0x32
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x33
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x7
	.byte	0x34
	.4byte	0x972
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.byte	0x35
	.4byte	0x423
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
	.4byte	0x9f5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x48
	.4byte	0x224
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
	.4byte	0xb15
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
	.4byte	0xb1b
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
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x7
	.byte	0x61
	.4byte	0x224
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
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.byte	0x64
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x429
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x7
	.byte	0x24
	.4byte	0x331
	.uleb128 0xa
	.4byte	0x219
	.4byte	0x6be
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF92
	.2byte	0x1a4
	.byte	0x8
	.2byte	0x180
	.4byte	0x972
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x182
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x185
	.4byte	0x1373
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x187
	.4byte	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x18e
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x8
	.2byte	0x18e
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x195
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x195
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x19d
	.4byte	0x137f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x1a0
	.4byte	0xf9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x1a3
	.4byte	0x1385
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x1a6
	.4byte	0x138b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x1a9
	.4byte	0x1391
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x1ac
	.4byte	0x1397
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x1af
	.4byte	0xfa7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x1b2
	.4byte	0xfef
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x1b5
	.4byte	0x139d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x1b8
	.4byte	0x105d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x1bb
	.4byte	0xfe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x1bd
	.4byte	0x13a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x1c0
	.4byte	0x13b3
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x1c9
	.4byte	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6be
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x34
	.byte	0x8
	.byte	0xb6
	.4byte	0x9f5
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
	.4byte	0xfb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0xbe
	.4byte	0x9f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x8
	.byte	0xc1
	.4byte	0xf9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.byte	0xc2
	.4byte	0xfc8
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
	.4byte	0x978
	.uleb128 0x13
	.4byte	.LASF135
	.4byte	0x20030
	.byte	0x9
	.2byte	0xa09
	.4byte	0xb15
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0x9
	.2byte	0xa0f
	.4byte	0xb15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0x9
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0x9
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0x9
	.2byte	0xa17
	.4byte	0x178e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0x9
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0x9
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0x9
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x9
	.2byte	0xa1d
	.4byte	0xb46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x9
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0x9
	.2byte	0xa21
	.4byte	0x178e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0x9
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0x9
	.2byte	0xa2b
	.4byte	0x179a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0x9
	.2byte	0xa2d
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0x9
	.2byte	0xa2f
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0x9
	.2byte	0xa31
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0x9
	.2byte	0xa33
	.4byte	0x17df
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0x9
	.2byte	0xa37
	.4byte	0x17f0
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9fb
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xb2b
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x7
	.byte	0x66
	.4byte	0x429
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xb46
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb2b
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xb5c
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.byte	0x34
	.4byte	0xb71
	.uleb128 0x15
	.4byte	.LASF154
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF155
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0xa
	.byte	0x34
	.4byte	0xb5c
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.4byte	0xb9d
	.uleb128 0xf
	.string	"s"
	.byte	0xa
	.byte	0x56
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"t"
	.byte	0xa
	.byte	0x57
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0xa
	.byte	0x58
	.4byte	0xb7c
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.byte	0x64
	.4byte	0xbcb
	.uleb128 0xf
	.string	"v"
	.byte	0xa
	.byte	0x65
	.4byte	0xbcb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0xa
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xbdb
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0xa
	.byte	0x67
	.4byte	0xba8
	.uleb128 0x8
	.byte	0x10
	.byte	0xa
	.byte	0x6a
	.4byte	0xc09
	.uleb128 0xf
	.string	"v"
	.byte	0xa
	.byte	0x6b
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0xa
	.byte	0x6c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0xa
	.byte	0x6d
	.4byte	0xbe6
	.uleb128 0x8
	.byte	0xc
	.byte	0x8
	.byte	0x3b
	.4byte	0xc2b
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x8
	.byte	0x3d
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x8
	.byte	0x3e
	.4byte	0xc14
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0x14
	.byte	0x8
	.byte	0x52
	.4byte	0xc89
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x8
	.byte	0x54
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF165
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
	.4byte	.LASF166
	.byte	0x8
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.string	"pad"
	.byte	0x8
	.byte	0x58
	.4byte	0xc89
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xc99
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0x8
	.byte	0x59
	.4byte	0xc36
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x48
	.byte	0x8
	.byte	0x5b
	.4byte	0xd59
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x8
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x8
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x8
	.byte	0x61
	.4byte	0xe7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x8
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x8
	.byte	0x64
	.4byte	0xe84
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0x8
	.byte	0x65
	.4byte	0xe84
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0x8
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0x5c
	.byte	0x8
	.byte	0x96
	.4byte	0xe7e
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
	.4byte	0xf9b
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
	.4byte	.LASF181
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
	.4byte	.LASF182
	.byte	0x8
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x8
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x8
	.byte	0xa5
	.4byte	0xfa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x8
	.byte	0xa6
	.4byte	0xe7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x8
	.byte	0xa7
	.4byte	0xe7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x8
	.byte	0xa9
	.4byte	0xfa7
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
	.4byte	.LASF188
	.byte	0x8
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x8
	.byte	0xb0
	.4byte	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0x8
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0x8
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x8
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd59
	.uleb128 0x5
	.byte	0x4
	.4byte	0xca4
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x8
	.byte	0x67
	.4byte	0xca4
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0x78
	.4byte	0xeb8
	.uleb128 0xf
	.string	"v"
	.byte	0x8
	.byte	0x7a
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x8
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x8
	.byte	0x7c
	.4byte	0xe95
	.uleb128 0x8
	.byte	0x2c
	.byte	0x8
	.byte	0x7e
	.4byte	0xf04
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0x8
	.byte	0x80
	.4byte	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x8
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x8
	.byte	0x82
	.4byte	0xf04
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
	.4byte	0xe8a
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0x8
	.byte	0x84
	.4byte	0xec3
	.uleb128 0xc
	.4byte	.LASF200
	.byte	0x1c
	.byte	0x8
	.byte	0x8a
	.4byte	0xf84
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0x8
	.byte	0x8c
	.4byte	0xf84
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0x8
	.byte	0x8d
	.4byte	0xf84
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF203
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
	.4byte	.LASF204
	.byte	0x8
	.byte	0x92
	.4byte	0xf8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x8
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf84
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x8
	.byte	0x94
	.4byte	0xf15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc99
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf90
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf0a
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x8
	.byte	0xb4
	.4byte	0xd59
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0xfc8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x9f5
	.4byte	0xfd8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x8
	.byte	0xc6
	.4byte	0x978
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfef
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfad
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x8
	.byte	0xdd
	.4byte	0x376
	.uleb128 0x8
	.byte	0x28
	.byte	0x8
	.byte	0xe0
	.4byte	0x105d
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x8
	.byte	0xe2
	.4byte	0x105d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x8
	.byte	0xe3
	.4byte	0xf9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0x8
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0x8
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0x8
	.byte	0xe6
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0x8
	.byte	0xe7
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0x8
	.byte	0xe8
	.4byte	0x1000
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0x8
	.2byte	0x11e
	.4byte	0x10e7
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x123
	.4byte	0xbdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x124
	.4byte	0xbdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x127
	.4byte	0x1074
	.uleb128 0x18
	.4byte	.LASF221
	.byte	0x1c
	.byte	0x8
	.2byte	0x13a
	.4byte	0x112e
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x13b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0x8
	.2byte	0x13c
	.4byte	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0x8
	.2byte	0x13d
	.4byte	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x17
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x13e
	.4byte	0x10f3
	.uleb128 0x19
	.2byte	0x53c
	.byte	0x8
	.2byte	0x142
	.4byte	0x131f
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0x8
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x145
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF228
	.byte	0x8
	.2byte	0x146
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0x8
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x148
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x14f
	.4byte	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x153
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x8
	.2byte	0x153
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0x8
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x8
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x15e
	.4byte	0x131f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x15f
	.4byte	0x131f
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x12
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x160
	.4byte	0xb4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x12
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x161
	.4byte	0x1335
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1335
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x10e7
	.4byte	0x1345
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x162
	.4byte	0x113a
	.uleb128 0x1a
	.byte	0x4
	.byte	0x8
	.2byte	0x172
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LASF247
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF248
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF249
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF250
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF251
	.byte	0x8
	.2byte	0x172
	.4byte	0x1351
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0xff5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc2b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xeb8
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfd8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x1063
	.4byte	0x13b3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf04
	.uleb128 0x17
	.4byte	.LASF252
	.byte	0x8
	.2byte	0x1cb
	.4byte	0x6be
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x16
	.4byte	0x13ea
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0xb
	.byte	0x18
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0xb
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF253
	.byte	0xb
	.byte	0x1a
	.4byte	0x13c5
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0x14
	.byte	0x9
	.2byte	0x981
	.4byte	0x1421
	.uleb128 0x12
	.4byte	.LASF255
	.byte	0x9
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x985
	.4byte	0x1421
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13f5
	.uleb128 0x17
	.4byte	.LASF256
	.byte	0x9
	.2byte	0x987
	.4byte	0x13f5
	.uleb128 0x1b
	.4byte	.LASF306
	.byte	0x4
	.byte	0x9
	.2byte	0x98d
	.4byte	0x1471
	.uleb128 0x1c
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1c
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x993
	.4byte	0x219
	.uleb128 0x1c
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF261
	.byte	0x9
	.2byte	0x997
	.4byte	0x1433
	.uleb128 0x11
	.4byte	.LASF262
	.2byte	0x890
	.byte	0x9
	.2byte	0x99d
	.4byte	0x1631
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x9
	.2byte	0x99f
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF263
	.byte	0x9
	.2byte	0x9a1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x9a1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF264
	.byte	0x9
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF265
	.byte	0x9
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF266
	.byte	0x9
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	.LASF267
	.byte	0x9
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.4byte	.LASF268
	.byte	0x9
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x9b1
	.4byte	0x1385
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"vis"
	.byte	0x9
	.2byte	0x9b3
	.4byte	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0x9
	.2byte	0x9b5
	.4byte	0x1631
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x12
	.4byte	.LASF270
	.byte	0x9
	.2byte	0x9b7
	.4byte	0xfe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x12
	.4byte	.LASF271
	.byte	0x9
	.2byte	0x9b9
	.4byte	0x139d
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x12
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x9bb
	.4byte	0x106e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x12
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x12
	.4byte	.LASF274
	.byte	0x9
	.2byte	0x9bf
	.4byte	0x1642
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x12
	.4byte	.LASF275
	.byte	0x9
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x12
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x9c5
	.4byte	0xb46
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x12
	.4byte	.LASF277
	.byte	0x9
	.2byte	0x9c7
	.4byte	0x1427
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x12
	.4byte	.LASF278
	.byte	0x9
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x9cb
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x12
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x12
	.4byte	.LASF280
	.byte	0x9
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x12
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x12
	.4byte	.LASF282
	.byte	0x9
	.2byte	0x9d3
	.4byte	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1642
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1471
	.uleb128 0x17
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x9d5
	.4byte	0x147d
	.uleb128 0x13
	.4byte	.LASF284
	.4byte	0x1e864
	.byte	0x9
	.2byte	0x9db
	.4byte	0x178e
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF286
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF287
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x9e5
	.4byte	0xb46
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x9e7
	.4byte	0x178e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x9e9
	.4byte	0x1794
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF293
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF294
	.byte	0x9
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF295
	.byte	0x9
	.2byte	0x9f3
	.4byte	0x179a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF296
	.byte	0x9
	.2byte	0x9f5
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x12
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x9f7
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x12
	.4byte	.LASF298
	.byte	0x9
	.2byte	0x9f9
	.4byte	0x179a
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x12
	.4byte	.LASF299
	.byte	0x9
	.2byte	0x9fb
	.4byte	0x17b1
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x9ff
	.4byte	0x17c2
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x12
	.4byte	.LASF234
	.byte	0x9
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1345
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1648
	.uleb128 0xa
	.4byte	0x219
	.4byte	0x17b1
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x17c2
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x17d3
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF300
	.byte	0x9
	.2byte	0xa05
	.4byte	0x1654
	.uleb128 0xa
	.4byte	0x13ea
	.4byte	0x17f0
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17d3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13ea
	.uleb128 0x6
	.4byte	.LASF301
	.byte	0xc
	.byte	0x9
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x219
	.4byte	0x181d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF302
	.byte	0x8
	.byte	0xc
	.byte	0x13
	.4byte	0x1846
	.uleb128 0x9
	.4byte	.LASF303
	.byte	0xc
	.byte	0x14
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF304
	.byte	0xc
	.byte	0x16
	.4byte	0x1846
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x17fc
	.4byte	0x1856
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF305
	.byte	0xc
	.byte	0x17
	.4byte	0x181d
	.uleb128 0x1b
	.4byte	.LASF307
	.byte	0x4
	.byte	0xd
	.2byte	0x490
	.4byte	0x18c1
	.uleb128 0x1f
	.string	"U8"
	.byte	0xd
	.2byte	0x492
	.4byte	0x18c1
	.uleb128 0x1f
	.string	"S8"
	.byte	0xd
	.2byte	0x493
	.4byte	0x18c6
	.uleb128 0x1f
	.string	"U16"
	.byte	0xd
	.2byte	0x494
	.4byte	0x18cb
	.uleb128 0x1f
	.string	"S16"
	.byte	0xd
	.2byte	0x495
	.4byte	0x18d0
	.uleb128 0x1f
	.string	"U32"
	.byte	0xd
	.2byte	0x496
	.4byte	0x18d5
	.uleb128 0x1f
	.string	"S32"
	.byte	0xd
	.2byte	0x497
	.4byte	0x18da
	.uleb128 0x1f
	.string	"F32"
	.byte	0xd
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
	.4byte	.LASF308
	.byte	0xd
	.2byte	0x499
	.4byte	0x1861
	.uleb128 0xc
	.4byte	.LASF309
	.byte	0x38
	.byte	0x1
	.byte	0x1f
	.4byte	0x1930
	.uleb128 0x9
	.4byte	.LASF310
	.byte	0x1
	.byte	0x20
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF311
	.byte	0x1
	.byte	0x21
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x1
	.byte	0x22
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.byte	0x23
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF312
	.byte	0x1
	.byte	0x24
	.4byte	0x18eb
	.uleb128 0x8
	.byte	0x44
	.byte	0x1
	.byte	0x26
	.4byte	0x1960
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.byte	0x27
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF313
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x6
	.4byte	.LASF314
	.byte	0x1
	.byte	0x29
	.4byte	0x193b
	.uleb128 0x8
	.byte	0x6c
	.byte	0x1
	.byte	0x2b
	.4byte	0x1a1c
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2e
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF315
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF316
	.byte	0x1
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF317
	.byte	0x1
	.byte	0x34
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF318
	.byte	0x1
	.byte	0x36
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF319
	.byte	0x1
	.byte	0x37
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF320
	.byte	0x1
	.byte	0x39
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF321
	.byte	0x1
	.byte	0x3a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF322
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF323
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF324
	.byte	0x1
	.byte	0x3e
	.4byte	0x196b
	.uleb128 0x8
	.byte	0x6c
	.byte	0x1
	.byte	0x40
	.4byte	0x1ad8
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0x1
	.byte	0x41
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0x1
	.byte	0x42
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.byte	0x44
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x1
	.byte	0x46
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF315
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF325
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF303
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF326
	.byte	0x1
	.byte	0x4c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF327
	.byte	0x1
	.byte	0x4e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF328
	.byte	0x1
	.byte	0x4f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF304
	.byte	0x1
	.byte	0x50
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF323
	.byte	0x1
	.byte	0x51
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF329
	.byte	0x1
	.byte	0x52
	.4byte	0x1a27
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0x54
	.4byte	0x1b08
	.uleb128 0xf
	.string	"xyz"
	.byte	0x1
	.byte	0x55
	.4byte	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x1
	.byte	0x56
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF330
	.byte	0x1
	.byte	0x57
	.4byte	0x1ae3
	.uleb128 0x8
	.byte	0xc
	.byte	0x1
	.byte	0x59
	.4byte	0x1b2a
	.uleb128 0x9
	.4byte	.LASF331
	.byte	0x1
	.byte	0x5a
	.4byte	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF332
	.byte	0x1
	.byte	0x5b
	.4byte	0x1b13
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.4byte	0x1b56
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x5f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF333
	.byte	0x1
	.byte	0x60
	.4byte	0x1b35
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF336
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x1be0
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0x6c
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF334
	.byte	0x1
	.byte	0x6c
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1
	.byte	0x6c
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF239
	.byte	0x1
	.byte	0x6c
	.4byte	0x1be0
	.4byte	.LLST3
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.4byte	.LASF335
	.byte	0x1
	.byte	0x6e
	.4byte	0x1be0
	.4byte	.LLST5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112e
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF337
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST6
	.4byte	0x1cb5
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0x87
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF334
	.byte	0x1
	.byte	0x87
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1
	.byte	0x87
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF239
	.byte	0x1
	.byte	0x87
	.4byte	0x1be0
	.4byte	.LLST9
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x23
	.string	"v0"
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LASF338
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LASF339
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF335
	.byte	0x1
	.byte	0x89
	.4byte	0x1be0
	.4byte	.LLST15
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.4byte	0x1be0
	.uleb128 0x23
	.string	"dup"
	.byte	0x1
	.byte	0x8b
	.4byte	0x9f
	.4byte	.LLST16
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF345
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST17
	.4byte	0x1dab
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb6
	.4byte	0x139d
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb6
	.4byte	0x1dab
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF340
	.byte	0x1
	.byte	0xb6
	.4byte	0x1db1
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF341
	.byte	0x1
	.byte	0xb6
	.4byte	0x1db7
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF342
	.byte	0x1
	.byte	0xb6
	.4byte	0x1db7
	.4byte	.LLST22
	.uleb128 0x23
	.string	"v0"
	.byte	0x1
	.byte	0xb9
	.4byte	0x106e
	.4byte	.LLST23
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.byte	0xb9
	.4byte	0x106e
	.4byte	.LLST24
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.byte	0xb9
	.4byte	0x106e
	.4byte	.LLST25
	.uleb128 0x23
	.string	"st0"
	.byte	0x1
	.byte	0xba
	.4byte	0x106e
	.4byte	.LLST26
	.uleb128 0x23
	.string	"st1"
	.byte	0x1
	.byte	0xba
	.4byte	0x106e
	.4byte	.LLST27
	.uleb128 0x23
	.string	"st2"
	.byte	0x1
	.byte	0xba
	.4byte	0x106e
	.4byte	.LLST28
	.uleb128 0x28
	.4byte	.LASF343
	.byte	0x1
	.byte	0xbb
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.4byte	.LASF344
	.byte	0x1
	.byte	0xbb
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.byte	0xbc
	.4byte	0x1807
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xbd
	.4byte	0x41
	.4byte	.LLST29
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc09
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb9d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x219
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF346
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST30
	.4byte	0x1e40
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.byte	0xde
	.4byte	0x1db7
	.4byte	.LLST31
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.byte	0xde
	.4byte	0x1db7
	.4byte	.LLST32
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.byte	0xde
	.4byte	0x1db7
	.4byte	.LLST33
	.uleb128 0x29
	.string	"res"
	.byte	0x1
	.byte	0xde
	.4byte	0x1db7
	.4byte	.LLST34
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xe0
	.4byte	0x224
	.4byte	.LLST35
	.uleb128 0x24
	.string	"V"
	.byte	0x1
	.byte	0xe0
	.4byte	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.byte	0xe1
	.4byte	0x7a
	.4byte	.LLST36
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.byte	0xe1
	.4byte	0x7a
	.4byte	.LLST37
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF347
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST38
	.4byte	0x1ea1
	.uleb128 0x29
	.string	"v1"
	.byte	0x1
	.byte	0xf8
	.4byte	0x1db7
	.4byte	.LLST39
	.uleb128 0x29
	.string	"v2"
	.byte	0x1
	.byte	0xf8
	.4byte	0x1db7
	.4byte	.LLST40
	.uleb128 0x29
	.string	"res"
	.byte	0x1
	.byte	0xf8
	.4byte	0x1db7
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	.LASF348
	.byte	0x1
	.byte	0xfa
	.4byte	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"iV1"
	.byte	0x1
	.byte	0xfb
	.4byte	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x102
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST42
	.4byte	0x1efc
	.uleb128 0x2b
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x102
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x2b
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x102
	.4byte	0x1db7
	.4byte	.LLST44
	.uleb128 0x2c
	.string	"lat"
	.byte	0x1
	.2byte	0x104
	.4byte	0x7a
	.4byte	.LLST45
	.uleb128 0x2c
	.string	"lng"
	.byte	0x1
	.2byte	0x105
	.4byte	0x7a
	.4byte	.LLST46
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x119
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST47
	.4byte	0x21a8
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.2byte	0x119
	.4byte	0x21a8
	.4byte	.LLST48
	.uleb128 0x2b
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x119
	.4byte	0x5d
	.4byte	.LLST49
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x41
	.4byte	.LLST50
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x41
	.4byte	.LLST53
	.uleb128 0x2e
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x11c
	.4byte	0x21ae
	.4byte	.LLST54
	.uleb128 0x2e
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x11d
	.4byte	0x41
	.4byte	.LLST55
	.uleb128 0x2e
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x11e
	.4byte	0x41
	.4byte	.LLST56
	.uleb128 0x2c
	.string	"end"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x2e
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x11e
	.4byte	0x41
	.4byte	.LLST58
	.uleb128 0x2e
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x11f
	.4byte	0x21b4
	.4byte	.LLST59
	.uleb128 0x2f
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x121
	.4byte	0x224
	.byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c800000
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2f
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x122
	.4byte	0x224
	.byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2e
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x123
	.4byte	0x1dab
	.4byte	.LLST60
	.uleb128 0x2c
	.string	"v"
	.byte	0x1
	.2byte	0x123
	.4byte	0x1dab
	.4byte	.LLST61
	.uleb128 0x2c
	.string	"xyz"
	.byte	0x1
	.2byte	0x124
	.4byte	0x21ba
	.4byte	.LLST62
	.uleb128 0x2e
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x125
	.4byte	0x1be0
	.4byte	.LLST63
	.uleb128 0x2c
	.string	"tri"
	.byte	0x1
	.2byte	0x126
	.4byte	0x21c0
	.4byte	.LLST64
	.uleb128 0x2c
	.string	"st"
	.byte	0x1
	.2byte	0x127
	.4byte	0x21c6
	.4byte	.LLST65
	.uleb128 0x2e
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x128
	.4byte	0x1db1
	.4byte	.LLST66
	.uleb128 0x2e
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x129
	.4byte	0x21cc
	.4byte	.LLST67
	.uleb128 0x2e
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x12a
	.4byte	0x17f6
	.4byte	.LLST68
	.uleb128 0x2e
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x12b
	.4byte	0x139d
	.4byte	.LLST69
	.uleb128 0x30
	.string	"v1"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.string	"v2"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2f
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x12c
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1807
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x12e
	.4byte	0x21d2
	.4byte	.LLST70
	.uleb128 0x2e
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x12e
	.4byte	0x21d2
	.4byte	.LLST71
	.uleb128 0x2e
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x12f
	.4byte	0x21d8
	.4byte	.LLST72
	.uleb128 0x2f
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x130
	.4byte	0x21de
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2f
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x131
	.4byte	0x2fb
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x132
	.4byte	0x21ee
	.4byte	.LLST73
	.uleb128 0x2e
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x133
	.4byte	0x41
	.4byte	.LLST74
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0
	.4byte	0x217d
	.uleb128 0x2f
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x277
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x32
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x2f
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x266
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x2f
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x267
	.4byte	0x224
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13b9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ad8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b08
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b2a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b56
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1930
	.uleb128 0x5
	.byte	0x4
	.4byte	0x224
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1960
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x21ee
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1856
	.uleb128 0xd
	.byte	0x1
	.4byte	0x33
	.4byte	0x2204
	.uleb128 0xe
	.4byte	0x33
	.byte	0
	.uleb128 0x33
	.4byte	.LASF371
	.byte	0x2
	.byte	0x61
	.4byte	0x2211
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21f4
	.uleb128 0x33
	.4byte	.LASF372
	.byte	0x2
	.byte	0x63
	.4byte	0x31b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.4byte	0x7a
	.4byte	0x2234
	.uleb128 0xe
	.4byte	0x7a
	.byte	0
	.uleb128 0x33
	.4byte	.LASF373
	.byte	0x2
	.byte	0x65
	.4byte	0x2241
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2224
	.uleb128 0x34
	.4byte	.LASF374
	.byte	0x8
	.2byte	0x167
	.4byte	0x178e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x2266
	.uleb128 0x1e
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x34
	.4byte	.LASF375
	.byte	0x9
	.2byte	0xa99
	.4byte	0x2255
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF376
	.byte	0x9
	.2byte	0xa9b
	.4byte	0x321
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.4byte	.LASF377
	.byte	0x9
	.2byte	0xc2c
	.4byte	0xfef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x34
	.4byte	.LASF378
	.byte	0xd
	.2byte	0x548
	.4byte	0x22a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	0x22a8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18df
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
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
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
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
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0xf
	.byte	0x7a
	.sleb128 0
	.byte	0x33
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 352
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 352
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL209-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0xd
	.byte	0x84
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x70
	.byte	0x6
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0xf
	.byte	0x84
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x70
	.byte	0x6
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x5
	.byte	0x80
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-1-.Ltext0
	.2byte	0xd
	.byte	0x88
	.sleb128 76
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x53c
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-1-.Ltext0
	.2byte	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x88
	.sleb128 100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL80-1-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x88
	.sleb128 100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL149-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8f
	.sleb128 100
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8f
	.sleb128 88
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8f
	.sleb128 96
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL158-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x88
	.sleb128 92
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x88
	.sleb128 92
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL168-1-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x8
	.byte	0x86
	.sleb128 0
	.byte	0x86
	.sleb128 92
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL216-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF370:
	.string	"binormal"
.LASF306:
	.string	"lightcmd_u"
.LASF365:
	.string	"fake"
.LASF44:
	.string	"efrag_s"
.LASF91:
	.string	"efrag_t"
.LASF133:
	.string	"plane"
.LASF374:
	.string	"pheader"
.LASF217:
	.string	"interval"
.LASF92:
	.string	"model_s"
.LASF252:
	.string	"model_t"
.LASF197:
	.string	"mipadjust"
.LASF334:
	.string	"edgei"
.LASF229:
	.string	"boundingradius"
.LASF354:
	.string	"pinmodel"
.LASF108:
	.string	"planes"
.LASF371:
	.string	"LittleShort"
.LASF246:
	.string	"aliashdr_t"
.LASF249:
	.string	"mod_alias"
.LASF113:
	.string	"edges"
.LASF134:
	.string	"firstsurface"
.LASF150:
	.string	"binomials"
.LASF337:
	.string	"findneighbourmd3"
.LASF264:
	.string	"brightness"
.LASF76:
	.string	"frame_start_time"
.LASF22:
	.string	"numfaces"
.LASF115:
	.string	"nodes"
.LASF353:
	.string	"buffer"
.LASF50:
	.string	"contents"
.LASF86:
	.string	"origin1"
.LASF201:
	.string	"next"
.LASF226:
	.string	"version"
.LASF297:
	.string	"tshalfangles"
.LASF142:
	.string	"lastblend"
.LASF284:
	.string	"aliaslightinstant_s"
.LASF292:
	.string	"lightpos"
.LASF141:
	.string	"lastpose2"
.LASF87:
	.string	"origin2"
.LASF176:
	.string	"anim_max"
.LASF123:
	.string	"clipnodes"
.LASF33:
	.string	"frame"
.LASF21:
	.string	"firstface"
.LASF261:
	.string	"lightcmd_t"
.LASF294:
	.string	"lastframeinstant"
.LASF137:
	.string	"lockframe"
.LASF319:
	.string	"ofsTriangles"
.LASF321:
	.string	"ofsSt"
.LASF241:
	.string	"texcoords"
.LASF62:
	.string	"update_type"
.LASF343:
	.string	"vec1"
.LASF344:
	.string	"vec2"
.LASF152:
	.string	"lightinstant"
.LASF157:
	.string	"fstvert_t"
.LASF328:
	.string	"ofsTags"
.LASF323:
	.string	"ofsEnd"
.LASF314:
	.string	"md3Shader_t"
.LASF97:
	.string	"synctype"
.LASF110:
	.string	"numvertexes"
.LASF158:
	.string	"lightnormalindex"
.LASF61:
	.string	"forcelink"
.LASF55:
	.string	"efrags"
.LASF49:
	.string	"mleaf_s"
.LASF209:
	.string	"mleaf_t"
.LASF182:
	.string	"texturemins"
.LASF312:
	.string	"md3Frame_t"
.LASF89:
	.string	"angles1"
.LASF90:
	.string	"angles2"
.LASF120:
	.string	"numsurfedges"
.LASF315:
	.string	"numFrames"
.LASF118:
	.string	"numsurfaces"
.LASF196:
	.string	"vecs"
.LASF316:
	.string	"numShaders"
.LASF155:
	.string	"ST_RAND"
.LASF218:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF305:
	.string	"alias3data_t"
.LASF32:
	.string	"modelindex"
.LASF162:
	.string	"mvertex_t"
.LASF58:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF210:
	.string	"firstclipnode"
.LASF268:
	.string	"halo"
.LASF125:
	.string	"hulls"
.LASF171:
	.string	"gl_texturenum"
.LASF79:
	.string	"pose1"
.LASF80:
	.string	"pose2"
.LASF35:
	.string	"skin"
.LASF213:
	.string	"clip_maxs"
.LASF231:
	.string	"numskins"
.LASF85:
	.string	"translate_start_time"
.LASF381:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF63:
	.string	"baseline"
.LASF352:
	.string	"Mod_LoadMd3Model"
.LASF336:
	.string	"findneighbourmd3_old"
.LASF68:
	.string	"efrag"
.LASF364:
	.string	"shader"
.LASF272:
	.string	"volumeVerts"
.LASF99:
	.string	"radius"
.LASF291:
	.string	"lastlight"
.LASF276:
	.string	"owner"
.LASF144:
	.string	"lastshadowonly"
.LASF36:
	.string	"effects"
.LASF333:
	.string	"md3St_t"
.LASF361:
	.string	"tris"
.LASF208:
	.string	"mnode_t"
.LASF173:
	.string	"texturechain"
.LASF37:
	.string	"color"
.LASF188:
	.string	"lightmaptexturenum"
.LASF84:
	.string	"leafnums"
.LASF298:
	.string	"colors"
.LASF329:
	.string	"md3Header_t"
.LASF271:
	.string	"volumeCmds"
.LASF174:
	.string	"anim_total"
.LASF369:
	.string	"tangent"
.LASF169:
	.string	"width"
.LASF290:
	.string	"lasthdr"
.LASF281:
	.string	"haloalpha"
.LASF259:
	.string	"asVec"
.LASF358:
	.string	"md3scale"
.LASF307:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF60:
	.string	"entity_s"
.LASF153:
	.string	"entity_t"
.LASF303:
	.string	"numSurfaces"
.LASF104:
	.string	"nummodelsurfaces"
.LASF339:
	.string	"foundj"
.LASF234:
	.string	"numtris"
.LASF98:
	.string	"flags"
.LASF304:
	.string	"ofsSurfaces"
.LASF183:
	.string	"extents"
.LASF177:
	.string	"anim_next"
.LASF253:
	.string	"plane_t"
.LASF18:
	.string	"origin"
.LASF106:
	.string	"submodels"
.LASF198:
	.string	"texture"
.LASF331:
	.string	"indexes"
.LASF107:
	.string	"numplanes"
.LASF130:
	.string	"entities"
.LASF308:
	.string	"WGPipe"
.LASF20:
	.string	"visleafs"
.LASF244:
	.string	"texels"
.LASF67:
	.string	"model"
.LASF45:
	.string	"leaf"
.LASF260:
	.string	"asVoid"
.LASF248:
	.string	"mod_sprite"
.LASF8:
	.string	"char"
.LASF189:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF41:
	.string	"pflags"
.LASF191:
	.string	"cached_dlight"
.LASF342:
	.string	"Binormal"
.LASF325:
	.string	"numTags"
.LASF81:
	.string	"aliasframeinstant"
.LASF30:
	.string	"vec3_t"
.LASF280:
	.string	"cubescale"
.LASF265:
	.string	"visible"
.LASF42:
	.string	"entity_state_t"
.LASF16:
	.string	"mins"
.LASF51:
	.string	"visframe"
.LASF56:
	.string	"firstmarksurface"
.LASF195:
	.string	"medge_t"
.LASF59:
	.string	"ambient_sound_level"
.LASF236:
	.string	"poseverts"
.LASF366:
	.string	"shadername"
.LASF27:
	.string	"data"
.LASF225:
	.string	"ident"
.LASF199:
	.string	"mtexinfo_t"
.LASF156:
	.string	"synctype_t"
.LASF122:
	.string	"numclipnodes"
.LASF245:
	.string	"frames"
.LASF116:
	.string	"numtexinfo"
.LASF48:
	.string	"entnext"
.LASF362:
	.string	"norms"
.LASF69:
	.string	"syncbase"
.LASF340:
	.string	"texcos"
.LASF313:
	.string	"shaderIndex"
.LASF100:
	.string	"clipbox"
.LASF295:
	.string	"extvertices"
.LASF322:
	.string	"ofsXyzNormals"
.LASF121:
	.string	"surfedges"
.LASF377:
	.string	"causticschain"
.LASF351:
	.string	"norm"
.LASF75:
	.string	"topnode"
.LASF78:
	.string	"blend"
.LASF117:
	.string	"texinfo"
.LASF251:
	.string	"modtype_t"
.LASF341:
	.string	"Tangent"
.LASF34:
	.string	"colormap"
.LASF192:
	.string	"samples"
.LASF215:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF285:
	.string	"lasteorg"
.LASF190:
	.string	"cached_light"
.LASF102:
	.string	"clipmaxs"
.LASF349:
	.string	"DecodeNormal"
.LASF345:
	.string	"TangentForTrimd3"
.LASF40:
	.string	"light_lev"
.LASF320:
	.string	"ofsShaders"
.LASF273:
	.string	"numVolumeVerts"
.LASF230:
	.string	"eyeposition"
.LASF301:
	.string	"aliasoffset_t"
.LASF19:
	.string	"headnode"
.LASF26:
	.string	"dclipnode_t"
.LASF194:
	.string	"cachededgeoffset"
.LASF247:
	.string	"mod_brush"
.LASF232:
	.string	"skinwidth"
.LASF227:
	.string	"scale"
.LASF83:
	.string	"numleafs"
.LASF299:
	.string	"triangleVis"
.LASF372:
	.string	"LittleLong"
.LASF132:
	.string	"mnode_s"
.LASF235:
	.string	"size"
.LASF263:
	.string	"baseColor"
.LASF165:
	.string	"dist"
.LASF47:
	.string	"entity"
.LASF172:
	.string	"gl_lumitex"
.LASF168:
	.string	"texture_s"
.LASF193:
	.string	"texture_t"
.LASF288:
	.string	"lastvorg"
.LASF170:
	.string	"height"
.LASF180:
	.string	"msurface_s"
.LASF207:
	.string	"msurface_t"
.LASF330:
	.string	"md3XyzNormal_t"
.LASF127:
	.string	"textures"
.LASF220:
	.string	"maliasframedesc_t"
.LASF376:
	.string	"loadname"
.LASF380:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_md3.c"
.LASF131:
	.string	"cache"
.LASF29:
	.string	"vec_t"
.LASF327:
	.string	"ofsFrames"
.LASF240:
	.string	"binormals"
.LASF160:
	.string	"ftrivertx_t"
.LASF238:
	.string	"commands"
.LASF136:
	.string	"_next"
.LASF187:
	.string	"shadowchain"
.LASF139:
	.string	"paliashdr"
.LASF175:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF348:
	.string	"v2ProjV1"
.LASF71:
	.string	"lightTimestamp"
.LASF159:
	.string	"trivertx_t"
.LASF70:
	.string	"skinnum"
.LASF223:
	.string	"vertindex"
.LASF112:
	.string	"numedges"
.LASF324:
	.string	"md3Surface_t"
.LASF239:
	.string	"triangles"
.LASF277:
	.string	"scizz"
.LASF211:
	.string	"lastclipnode"
.LASF270:
	.string	"visSurf"
.LASF53:
	.string	"parent"
.LASF266:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF146:
	.string	"shadowonly"
.LASF143:
	.string	"lastent"
.LASF255:
	.string	"coords"
.LASF12:
	.string	"long int"
.LASF46:
	.string	"leafnext"
.LASF166:
	.string	"signbits"
.LASF184:
	.string	"light_s"
.LASF185:
	.string	"light_t"
.LASF222:
	.string	"facesfront"
.LASF179:
	.string	"offsets"
.LASF219:
	.string	"bboxmax"
.LASF367:
	.string	"palias3"
.LASF300:
	.string	"aliaslightinstant_t"
.LASF350:
	.string	"quant"
.LASF105:
	.string	"numsubmodels"
.LASF287:
	.string	"lasteangles"
.LASF203:
	.string	"numverts"
.LASF254:
	.string	"screenrect_s"
.LASF256:
	.string	"screenrect_t"
.LASF151:
	.string	"triplanes"
.LASF77:
	.string	"frame_interval"
.LASF346:
	.string	"ClosestPointOnLine"
.LASF178:
	.string	"alternate_anims"
.LASF114:
	.string	"numnodes"
.LASF147:
	.string	"vertices"
.LASF54:
	.string	"compressed_vis"
.LASF93:
	.string	"name"
.LASF355:
	.string	"start"
.LASF289:
	.string	"lastlradius"
.LASF373:
	.string	"LittleFloat"
.LASF4:
	.string	"unsigned int"
.LASF94:
	.string	"needload"
.LASF111:
	.string	"vertexes"
.LASF332:
	.string	"md3Triangle_t"
.LASF257:
	.string	"asInt"
.LASF43:
	.string	"cache_user_s"
.LASF124:
	.string	"marksurfaces"
.LASF221:
	.string	"mtriangle_s"
.LASF224:
	.string	"mtriangle_t"
.LASF7:
	.string	"long unsigned int"
.LASF242:
	.string	"indecies"
.LASF64:
	.string	"msgtime"
.LASF275:
	.string	"numVisSurf"
.LASF318:
	.string	"numTriangles"
.LASF357:
	.string	"surf"
.LASF38:
	.string	"alpha"
.LASF338:
	.string	"found"
.LASF279:
	.string	"rspeed"
.LASF52:
	.string	"minmaxs"
.LASF148:
	.string	"normals"
.LASF200:
	.string	"glpoly_s"
.LASF206:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF286:
	.string	"lastlorg"
.LASF379:
	.string	"GNU C 4.6.3"
.LASF164:
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
.LASF326:
	.string	"numSkins"
.LASF233:
	.string	"skinheight"
.LASF214:
	.string	"hull_t"
.LASF82:
	.string	"brushlightinstant"
.LASF186:
	.string	"polys"
.LASF375:
	.string	"numNormals"
.LASF140:
	.string	"lastpose1"
.LASF368:
	.string	"surfcount"
.LASF212:
	.string	"clip_mins"
.LASF204:
	.string	"neighbours"
.LASF274:
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
.LASF309:
	.string	"md3Frame_s"
.LASF128:
	.string	"visdata"
.LASF317:
	.string	"numVerts"
.LASF262:
	.string	"shadowlight_s"
.LASF283:
	.string	"shadowlight_t"
.LASF126:
	.string	"numtextures"
.LASF145:
	.string	"lastpaliashdr"
.LASF66:
	.string	"msg_angles"
.LASF359:
	.string	"md3origin"
.LASF363:
	.string	"triangle"
.LASF23:
	.string	"dmodel_t"
.LASF72:
	.string	"dlightframe"
.LASF0:
	.string	"signed char"
.LASF228:
	.string	"scale_origin"
.LASF119:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF310:
	.string	"bounds"
.LASF3:
	.string	"short unsigned int"
.LASF129:
	.string	"lightdata"
.LASF302:
	.string	"alias3data_s"
.LASF202:
	.string	"chain"
.LASF296:
	.string	"tslights"
.LASF378:
	.string	"wgPipe"
.LASF31:
	.string	"angles"
.LASF360:
	.string	"verts"
.LASF335:
	.string	"current"
.LASF205:
	.string	"firstvertex"
.LASF154:
	.string	"ST_SYNC"
.LASF356:
	.string	"total"
.LASF293:
	.string	"vieworg"
.LASF237:
	.string	"posedata"
.LASF25:
	.string	"children"
.LASF9:
	.string	"double"
.LASF103:
	.string	"firstmodelsurface"
.LASF278:
	.string	"filtercube"
.LASF347:
	.string	"Orthogonalize"
.LASF243:
	.string	"gl_lumatex"
.LASF282:
	.string	"oldlightorigin"
.LASF258:
	.string	"asFloat"
.LASF250:
	.string	"mod_alias3"
.LASF149:
	.string	"tangents"
.LASF163:
	.string	"mplane_s"
.LASF167:
	.string	"mplane_t"
.LASF73:
	.string	"dlightbits"
.LASF101:
	.string	"clipmins"
.LASF65:
	.string	"msg_origins"
.LASF311:
	.string	"localOrigin"
.LASF267:
	.string	"castShadow"
.LASF161:
	.string	"position"
.LASF216:
	.string	"numposes"
.LASF135:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF181:
	.string	"firstedge"
.LASF269:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
