	.file	"priorityq-heap.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	FloatDown, @function
FloatDown:
.LFB2:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.c"
	.loc 1 95 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 1 101 0
	slwi 0,4,2
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 95 0
	stw 31,12(1)
	.loc 1 96 0
	lwz 11,0(3)
.LVL1:
	.loc 1 97 0
	lwz 10,4(3)
.LVL2:
	.loc 1 101 0
	lwzx 30,11,0
.LVL3:
	lwz 5,8(3)
	.loc 1 112 0
	slwi 12,30,3
	.loc 1 101 0
	lwz 31,12(3)
	.cfi_offset 31, -4
	.loc 1 112 0
	add 12,10,12
.LVL4:
.L9:
	.loc 1 103 0
	slwi 9,4,1
.LVL5:
	.loc 1 104 0
	cmpw 7,9,5
	bge- 7,.L2
	.loc 1 104 0 is_stmt 0 discriminator 1
	addi 0,9,1
	slwi 8,4,3
	slwi 7,0,2
	lwzx 8,11,8
	lwzx 7,11,7
	slwi 8,8,3
	slwi 7,7,3
	lwzx 8,10,8
	lwzx 7,10,7
	lfd 0,40(8)
	lfd 13,40(7)
	fcmpu 7,13,0
	blt- 7,.L3
	bne- 7,.L2
	lfd 13,48(7)
	lfd 0,48(8)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L3
.L2:
	.loc 1 109 0 is_stmt 1
	cmpw 7,9,31
	bgt- 7,.L11
	.loc 1 112 0
	cmpw 7,9,5
	.loc 1 111 0
	slwi 0,9,2
	lwzx 8,11,0
.LVL6:
	.loc 1 112 0
	bgt- 7,.L6
	.loc 1 112 0 is_stmt 0 discriminator 1
	slwi 0,8,3
.LVL7:
	lwz 6,0(12)
	lwzx 7,10,0
	add 3,10,0
	lfd 13,40(6)
	lfd 0,40(7)
	fcmpu 7,13,0
	blt- 7,.L6
	bne- 7,.L7
	lfd 13,48(6)
	lfd 0,48(7)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L6
.L7:
	.loc 1 117 0 is_stmt 1
	slwi 0,4,2
	stwx 8,11,0
	.loc 1 118 0
	stw 4,4(3)
.LVL8:
	mr 4,9
	.loc 1 120 0
	b .L9
.LVL9:
.L3:
	.loc 1 106 0
	mr 9,0
.LVL10:
	b .L2
.LVL11:
.L6:
	.loc 1 113 0
	slwi 0,4,2
	.loc 1 121 0
	lwz 31,12(1)
	.loc 1 113 0
	stwx 30,11,0
	.loc 1 121 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL12:
	mtlr 0
	.loc 1 114 0
	stw 4,4(12)
	.loc 1 121 0
	addi 1,1,16
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL13:
.L11:
.LCFI2:
	.cfi_restore_state
	.loc 1 109 0 discriminator 1
	lis 3,.LC0@ha
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 3,.LC0@l(3)
	li 4,109
.LVL14:
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	bl __assert_func
.LVL15:
.LVL16:
.LVL17:
	.cfi_endproc
.LFE2:
	.size	FloatDown, .-FloatDown
	.align 2
	.type	FloatUp.isra.0, @function
FloatUp.isra.0:
.LFB8:
	.loc 1 124 0
	.cfi_startproc
.LVL18:
	.loc 1 133 0
	srawi 0,5,1
	.loc 1 124 0
	stwu 1,-16(1)
.LCFI3:
	.cfi_def_cfa_offset 16
	.loc 1 135 0
	cmpwi 7,0,0
.LVL19:
	.loc 1 131 0
	slwi 9,5,2
	.loc 1 134 0
	slwi 11,0,2
.LVL20:
	.loc 1 124 0
	stw 31,12(1)
	stw 30,8(1)
	.loc 1 131 0
	add 6,3,9
	lwzx 31,3,9
	.cfi_offset 30, -8
	.cfi_offset 31, -4
.LVL21:
	.loc 1 134 0
	lwzx 10,3,11
.LVL22:
	.loc 1 135 0
	beq- 7,.L28
	slwi 7,10,3
	slwi 11,31,3
.LVL23:
	lwzx 8,4,7
	add 30,4,11
	lwzx 12,4,11
	add 7,4,7
	lfd 0,40(8)
	lfd 13,40(12)
	fcmpu 7,0,13
	bnl+ 7,.L25
	b .L31
.LVL24:
.L20:
	slwi 9,10,3
	lwzx 8,4,9
	add 7,4,9
	slwi 9,5,2
	lfd 0,40(8)
	fcmpu 7,0,13
	blt- 7,.L27
	.loc 1 133 0
	mr 0,11
.LVL25:
.L25:
	.loc 1 135 0
	fcmpu 7,0,13
	.loc 1 133 0
	srawi 11,0,1
	.loc 1 135 0
	cmpwi 6,11,0
	.loc 1 134 0
	slwi 6,11,2
	.loc 1 135 0
	bne- 7,.L18
	lfd 12,48(8)
	lfd 0,48(12)
	fcmpu 7,12,0
	cror 30,28,30
	beq- 7,.L30
.L18:
	.loc 1 140 0
	stwx 10,3,9
	.loc 1 141 0
	stw 5,4(7)
.LVL26:
	.loc 1 135 0
	mr 5,0
	.loc 1 134 0
	lwzx 10,3,6
.LVL27:
	.loc 1 135 0
	bne+ 6,.L20
.L27:
	slwi 6,0,2
.LVL28:
	add 6,3,6
.LVL29:
.L14:
	.loc 1 136 0
	stw 31,0(6)
	.loc 1 137 0
	stw 0,4(30)
	.loc 1 144 0
	lwz 31,12(1)
.LVL30:
	lwz 30,8(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL31:
.L30:
.LCFI5:
	.cfi_restore_state
	.loc 1 135 0
	add 6,3,9
	mr 0,5
.LVL32:
	.loc 1 136 0
	stw 31,0(6)
	.loc 1 137 0
	stw 0,4(30)
	.loc 1 144 0
	lwz 31,12(1)
.LVL33:
	lwz 30,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI6:
	.cfi_def_cfa_offset 0
	blr
.LVL34:
.L28:
.LCFI7:
	.cfi_restore_state
	.loc 1 135 0
	slwi 30,31,3
	mr 0,5
.LVL35:
	add 30,4,30
	b .L14
.LVL36:
.L31:
	mr 0,5
.LVL37:
	b .L14
	.cfi_endproc
.LFE8:
	.size	FloatUp.isra.0, .-FloatUp.isra.0
	.align 2
	.globl __gl_pqHeapNewPriorityQ
	.type	__gl_pqHeapNewPriorityQ, @function
__gl_pqHeapNewPriorityQ:
.LFB0:
	.loc 1 57 0
	.cfi_startproc
.LVL38:
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 58 0
	li 3,28
.LVL39:
	.loc 1 57 0
	stw 31,20(1)
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 58 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl malloc
.LVL40:
	.loc 1 59 0
	mr. 31,3
	beq- 0,.L33
	.loc 1 62 0
	li 0,32
	.loc 1 61 0
	li 30,0
	stw 30,8(31)
	.loc 1 63 0
	li 3,132
.LVL41:
	.loc 1 62 0
	stw 0,12(31)
	.loc 1 63 0
	bl malloc
	.loc 1 64 0
	cmpwi 7,3,0
	.loc 1 63 0
	mr 29,3
	stw 3,0(31)
	.loc 1 64 0
	beq- 7,.L36
	.loc 1 69 0
	li 3,264
	bl malloc
	.loc 1 70 0
	cmpwi 7,3,0
	.loc 1 69 0
	stw 3,4(31)
	.loc 1 70 0
	beq- 7,.L37
	.loc 1 80 0
	li 0,1
	.loc 1 76 0
	stw 30,20(31)
	.loc 1 77 0
	stw 30,16(31)
	.loc 1 78 0
	stw 28,24(31)
	.loc 1 80 0
	stw 0,4(29)
	.loc 1 81 0
	stw 30,8(3)
.LVL42:
.L33:
	.loc 1 83 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL43:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL44:
.L37:
.LCFI10:
	.cfi_restore_state
	.loc 1 71 0
	mr 3,29
	bl free
.L36:
	.loc 1 72 0
	mr 3,31
	.loc 1 73 0
	li 31,0
.LVL45:
	.loc 1 72 0
	bl free
.LVL46:
	.loc 1 73 0
	b .L33
	.cfi_endproc
.LFE0:
	.size	__gl_pqHeapNewPriorityQ, .-__gl_pqHeapNewPriorityQ
	.align 2
	.globl __gl_pqHeapDeletePriorityQ
	.type	__gl_pqHeapDeletePriorityQ, @function
__gl_pqHeapDeletePriorityQ:
.LFB1:
	.loc 1 87 0
	.cfi_startproc
.LVL47:
	mflr 0
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 88 0
	lwz 3,4(3)
.LVL48:
	.cfi_offset 65, 4
	bl free
	.loc 1 89 0
	lwz 3,0(31)
	bl free
	.loc 1 90 0
	mr 3,31
	bl free
	.loc 1 91 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL49:
	mtlr 0
	addi 1,1,16
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1:
	.size	__gl_pqHeapDeletePriorityQ, .-__gl_pqHeapDeletePriorityQ
	.align 2
	.globl __gl_pqHeapInit
	.type	__gl_pqHeapInit, @function
__gl_pqHeapInit:
.LFB4:
	.loc 1 148 0
	.cfi_startproc
.LVL50:
	mflr 0
	stwu 1,-24(1)
.LCFI13:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 1 153 0
	lwz 0,8(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	stw 0,8(1)
.LVL51:
	ble- 7,.L40
.LVL52:
.L42:
	.loc 1 154 0 discriminator 2
	lwz 4,8(1)
	mr 3,31
	bl FloatDown
.LVL53:
	.loc 1 153 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L42
.LVL54:
.L40:
	.loc 1 156 0
	li 0,1
	stw 0,20(31)
	.loc 1 157 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL55:
	mtlr 0
	addi 1,1,24
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE4:
	.size	__gl_pqHeapInit, .-__gl_pqHeapInit
	.align 2
	.globl __gl_pqHeapInsert
	.type	__gl_pqHeapInsert, @function
__gl_pqHeapInsert:
.LFB5:
	.loc 1 162 0
	.cfi_startproc
.LVL56:
	mflr 0
	stwu 1,-32(1)
.LCFI15:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	stw 0,36(1)
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 166 0
	lwz 29,8(3)
	.loc 1 167 0
	lwz 0,12(3)
	.loc 1 166 0
	addi 29,29,1
	.loc 1 162 0
	stw 30,24(1)
	.loc 1 167 0
	slwi 9,29,1
	.loc 1 162 0
	stw 27,12(1)
	.loc 1 167 0
	cmpw 7,9,0
	.loc 1 162 0
	stw 31,28(1)
	.loc 1 162 0
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.cfi_offset 30, -8
	.loc 1 166 0
	stw 29,8(3)
.LVL57:
	.loc 1 167 0
	bgt- 7,.L52
.LBB2:
	.loc 1 186 0
	lwz 4,4(3)
.LVL58:
.L48:
.LBE2:
	.loc 1 190 0
	lwz 31,16(30)
	cmpwi 7,31,0
	beq- 7,.L53
.LVL59:
	.loc 1 194 0
	slwi 9,31,3
	.loc 1 197 0
	lwz 3,0(30)
	.loc 1 194 0
	add 9,4,9
	lwz 0,4(9)
	stw 0,16(30)
	.loc 1 201 0
	lwz 0,20(30)
	cmpwi 7,0,0
	.loc 1 197 0
	slwi 0,29,2
	stwx 31,3,0
	.loc 1 198 0
	stw 29,4(9)
	.loc 1 199 0
	stw 28,0(9)
	.loc 1 201 0
	bne- 7,.L54
.LVL60:
.L51:
	.loc 1 204 0
	xoris 0,31,0x8000
	cmpwi 7,0,-1
	beq 7,.L55
.LVL61:
.L47:
	.loc 1 206 0
	lwz 0,36(1)
	mr 3,31
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL62:
	lwz 29,20(1)
.LVL63:
	lwz 30,24(1)
.LVL64:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL65:
.L53:
.LCFI17:
	.cfi_restore_state
	.loc 1 201 0
	lwz 0,20(30)
	.loc 1 190 0
	slwi 9,29,3
	.loc 1 197 0
	lwz 3,0(30)
	.loc 1 190 0
	add 9,4,9
	.loc 1 201 0
	cmpwi 7,0,0
	.loc 1 191 0
	mr 31,29
.LVL66:
	.loc 1 197 0
	slwi 0,29,2
	stwx 31,3,0
	.loc 1 198 0
	stw 29,4(9)
	.loc 1 199 0
	stw 28,0(9)
	.loc 1 201 0
	beq+ 7,.L51
.LVL67:
.L54:
	.loc 1 202 0
	mr 5,29
	bl FloatUp.isra.0
	b .L51
.LVL68:
.L52:
.LBB3:
	.loc 1 172 0
	slwi 9,0,1
	.loc 1 168 0
	lwz 31,0(3)
.LVL69:
	.loc 1 175 0
	addi 4,9,1
	.loc 1 172 0
	stw 9,12(3)
	.loc 1 173 0
	slwi 4,4,2
	mr 3,31
	.loc 1 169 0
	lwz 27,4(30)
.LVL70:
	.loc 1 173 0
	bl realloc
.LVL71:
	.loc 1 176 0
	cmpwi 7,3,0
	.loc 1 173 0
	stw 3,0(30)
	.loc 1 176 0
	beq- 7,.L56
	.loc 1 182 0
	lwz 4,12(30)
	.loc 1 180 0
	lwz 3,4(30)
	.loc 1 182 0
	addi 4,4,1
	.loc 1 180 0
	slwi 4,4,3
	bl realloc
	.loc 1 184 0
	cmpwi 7,3,0
	.loc 1 180 0
	mr 4,3
	stw 3,4(30)
	.loc 1 184 0
	bne+ 7,.L48
	.loc 1 186 0
	lis 31,0x7fff
.LVL72:
	.loc 1 185 0
	stw 27,4(30)
	.loc 1 186 0
	ori 31,31,65535
	b .L47
.LVL73:
.L56:
.LBE3:
	.loc 1 206 0
	lwz 0,36(1)
.LBB4:
	.loc 1 177 0
	stw 31,0(30)
	.loc 1 178 0
	lis 31,0x7fff
.LVL74:
.LBE4:
	.loc 1 206 0
	mtlr 0
.LBB5:
	.loc 1 178 0
	ori 31,31,65535
.LBE5:
	.loc 1 206 0
	mr 3,31
	lwz 27,12(1)
.LVL75:
	lwz 28,16(1)
.LVL76:
	lwz 29,20(1)
.LVL77:
	lwz 30,24(1)
.LVL78:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.LVL79:
.L55:
.LCFI19:
	.cfi_restore_state
	.loc 1 204 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	li 4,204
	addi 5,5,12
	la 6,.LC2@l(6)
	bl __assert_func
	.cfi_endproc
.LFE5:
	.size	__gl_pqHeapInsert, .-__gl_pqHeapInsert
	.align 2
	.globl __gl_pqHeapExtractMin
	.type	__gl_pqHeapExtractMin, @function
__gl_pqHeapExtractMin:
.LFB6:
	.loc 1 210 0
	.cfi_startproc
.LVL80:
	mflr 0
	stwu 1,-16(1)
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 216 0
	lwz 8,8(3)
	.loc 1 211 0
	lwz 10,0(3)
.LVL81:
	.loc 1 216 0
	cmpwi 7,8,0
	.loc 1 212 0
	lwz 11,4(3)
.LVL82:
	.loc 1 213 0
	lwz 7,4(10)
.LVL83:
	.loc 1 214 0
	slwi 0,7,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	add 5,11,0
	lwzx 31,11,0
.LVL84:
	.loc 1 216 0
	ble- 7,.L58
.LVL85:
	.loc 1 224 0
	addi 6,8,-1
	.loc 1 217 0
	slwi 8,8,2
	lwzx 8,10,8
	.loc 1 224 0
	cmpwi 7,6,0
	.loc 1 221 0
	lwz 4,16(3)
	.loc 1 218 0
	slwi 12,8,3
	.loc 1 217 0
	stw 8,4(10)
	.loc 1 218 0
	add 12,11,12
	li 10,1
	stw 10,4(12)
	.loc 1 220 0
	li 10,0
	stwx 10,11,0
	.loc 1 221 0
	stw 4,4(5)
	.loc 1 222 0
	stw 7,16(3)
	.loc 1 224 0
	stw 6,8(3)
	beq- 7,.L58
	.loc 1 225 0
	li 4,1
	bl FloatDown
.LVL86:
.L58:
	.loc 1 229 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL87:
	mtlr 0
	addi 1,1,16
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE6:
	.size	__gl_pqHeapExtractMin, .-__gl_pqHeapExtractMin
	.align 2
	.globl __gl_pqHeapDelete
	.type	__gl_pqHeapDelete, @function
__gl_pqHeapDelete:
.LFB7:
	.loc 1 233 0
	.cfi_startproc
.LVL88:
	stwu 1,-32(1)
.LCFI22:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.loc 1 238 0
	mr. 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 233 0
	stw 0,36(1)
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 30,24(1)
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 234 0
	lwz 3,0(3)
.LVL89:
	.loc 1 235 0
	lwz 30,4(31)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 30, -8
.LVL90:
	.loc 1 238 0
	ble- 0,.L60
	.loc 1 238 0 is_stmt 0 discriminator 2
	lwz 0,12(31)
	cmpw 7,29,0
	bgt- 7,.L60
	.loc 1 238 0 discriminator 1
	slwi 28,29,3
	lwzx 0,30,28
	add 27,30,28
	cmpwi 7,0,0
	beq- 7,.L60
	.loc 1 241 0 is_stmt 1
	lwz 9,8(31)
	.loc 1 240 0
	lwz 5,4(27)
.LVL91:
	.loc 1 244 0
	addi 0,9,-1
	.loc 1 241 0
	slwi 9,9,2
	lwzx 9,3,9
	.loc 1 244 0
	cmpw 7,5,0
	.loc 1 241 0
	slwi 8,5,2
	.loc 1 242 0
	slwi 11,9,3
	.loc 1 241 0
	stwx 9,3,8
	.loc 1 242 0
	add 10,30,11
	stw 5,4(10)
	.loc 1 244 0
	stw 0,8(31)
	bgt- 7,.L62
	.loc 1 245 0
	cmpwi 7,5,1
	ble- 7,.L63
	.loc 1 245 0 is_stmt 0 discriminator 1
	rlwinm 0,5,1,0,29
	lwzx 9,30,11
	lwzx 0,3,0
	lfd 0,40(9)
	slwi 0,0,3
	lwzx 11,30,0
	lfd 13,40(11)
	fcmpu 7,13,0
	blt- 7,.L63
	bne- 7,.L64
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L63
.L64:
	.loc 1 248 0 is_stmt 1
	mr 4,30
.LVL92:
	bl FloatUp.isra.0
.LVL93:
.L62:
	.loc 1 252 0
	lwz 0,16(31)
	.loc 1 251 0
	li 9,0
	stwx 9,30,28
	.loc 1 252 0
	stw 0,4(27)
	.loc 1 254 0
	lwz 0,36(1)
	.loc 1 253 0
	stw 29,16(31)
	.loc 1 254 0
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL94:
	lwz 30,24(1)
.LVL95:
	lwz 31,28(1)
.LVL96:
	addi 1,1,32
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL97:
.L63:
.LCFI24:
	.cfi_restore_state
	.loc 1 246 0
	mr 3,31
.LVL98:
	mr 4,5
.LVL99:
	bl FloatDown
.LVL100:
	.loc 1 252 0
	lwz 0,16(31)
	.loc 1 251 0
	li 9,0
	.loc 1 252 0
	stw 0,4(27)
	.loc 1 254 0
	lwz 0,36(1)
	.loc 1 251 0
	stwx 9,30,28
	.loc 1 254 0
	mtlr 0
	.loc 1 253 0
	stw 29,16(31)
	.loc 1 254 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL101:
	lwz 30,24(1)
.LVL102:
	lwz 31,28(1)
.LVL103:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI25:
	.cfi_def_cfa_offset 0
	blr
.LVL104:
.L60:
.LCFI26:
	.cfi_restore_state
	.loc 1 238 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL105:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	li 4,238
.LVL106:
	addi 5,5,32
	la 6,.LC3@l(6)
	bl __assert_func
.LVL107:
	.cfi_endproc
.LFE7:
	.size	__gl_pqHeapDelete, .-__gl_pqHeapDelete
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.8510, @object
	.size	__FUNCTION__.8510, 10
__FUNCTION__.8510:
	.string	"FloatDown"
	.zero	2
	.type	__FUNCTION__.8539, @object
	.size	__FUNCTION__.8539, 18
__FUNCTION__.8539:
	.string	"__gl_pqHeapInsert"
	.zero	2
	.type	__FUNCTION__.8554, @object
	.size	__FUNCTION__.8554, 18
__FUNCTION__.8554:
	.string	"__gl_pqHeapDelete"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.c"
	.zero	2
.LC1:
	.string	"child <= pq->max"
	.zero	3
.LC2:
	.string	"free != LONG_MAX"
	.zero	3
.LC3:
	.string	"hCurr >= 1 && hCurr <= pq->max && h[hCurr].key != NULL"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6bd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1
	.4byte	.LASF64
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd4
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x60
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x61
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x62
	.4byte	0x64
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x1c
	.byte	0x3
	.byte	0x67
	.4byte	0xd3
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x68
	.4byte	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x69
	.4byte	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x6a
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"max"
	.byte	0x3
	.byte	0x6a
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x6b
	.4byte	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x6c
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"leq"
	.byte	0x3
	.byte	0x6d
	.4byte	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.byte	0x64
	.4byte	0xea
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x64
	.4byte	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x64
	.4byte	0xd3
	.uleb128 0x9
	.byte	0x8
	.byte	0x3
	.byte	0x65
	.4byte	0x11a
	.uleb128 0x8
	.string	"key"
	.byte	0x3
	.byte	0x65
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x65
	.4byte	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x65
	.4byte	0xf5
	.uleb128 0xa
	.byte	0x4
	.4byte	0xea
	.uleb128 0xa
	.byte	0x4
	.4byte	0x11a
	.uleb128 0xb
	.byte	0x1
	.4byte	0x21
	.4byte	0x146
	.uleb128 0xc
	.4byte	0x41
	.uleb128 0xc
	.4byte	0x41
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x131
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x94
	.4byte	0x153
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xa0
	.4byte	0x1a1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x31
	.4byte	0x1b3
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x40
	.byte	0x5
	.byte	0x79
	.4byte	0x22c
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x7a
	.4byte	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x7b
	.4byte	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x7c
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x7d
	.4byte	0x4c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x80
	.4byte	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"s"
	.byte	0x5
	.byte	0x81
	.4byte	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"t"
	.byte	0x5
	.byte	0x81
	.4byte	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x5
	.byte	0x82
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x32
	.4byte	0x237
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x18
	.byte	0x5
	.byte	0x85
	.4byte	0x2a6
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x86
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x87
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x88
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x89
	.4byte	0x4c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.byte	0x8c
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.byte	0x8d
	.4byte	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x8e
	.4byte	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x33
	.4byte	0x2b1
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x20
	.byte	0x5
	.byte	0x91
	.4byte	0x32e
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x92
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Sym"
	.byte	0x5
	.byte	0x93
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x5
	.byte	0x94
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x95
	.4byte	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"Org"
	.byte	0x5
	.byte	0x96
	.4byte	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.byte	0x97
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.byte	0x9a
	.4byte	0x361
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x5
	.byte	0x9b
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x5
	.byte	0x35
	.4byte	0x339
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1a8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2a6
	.uleb128 0xe
	.4byte	0x196
	.4byte	0x35b
	.uleb128 0xf
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x22c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x32e
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.4byte	0x3bd
	.uleb128 0x11
	.string	"pq"
	.byte	0x1
	.byte	0x7c
	.4byte	0x3bd
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x7c
	.4byte	0x3a
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0x7e
	.4byte	0x125
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0x7f
	.4byte	0x12b
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x80
	.4byte	0x4e
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x80
	.4byte	0x4e
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x81
	.4byte	0x3a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x59
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x450
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0x5e
	.4byte	0x3bd
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.byte	0x5e
	.4byte	0x3a
	.4byte	.LLST2
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x60
	.4byte	0x125
	.4byte	.LLST3
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.byte	0x61
	.4byte	0x12b
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x1
	.byte	0x62
	.4byte	0x4e
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.4byte	0x4e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x63
	.4byte	0x3a
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF51
	.4byte	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8510
	.byte	0
	.uleb128 0xe
	.4byte	0x17d
	.4byte	0x460
	.uleb128 0xf
	.4byte	0x33
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	0x450
	.uleb128 0x1c
	.4byte	0x367
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.4byte	0x4ad
	.uleb128 0x1d
	.4byte	0x37e
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	0x389
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	0x392
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	0x39b
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	0x3a6
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	0x3b1
	.4byte	.LLST12
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x3bd
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST13
	.4byte	0x4e8
	.uleb128 0x16
	.string	"leq"
	.byte	0x1
	.byte	0x38
	.4byte	0x146
	.4byte	.LLST14
	.uleb128 0x18
	.string	"pq"
	.byte	0x1
	.byte	0x3a
	.4byte	0x3bd
	.4byte	.LLST15
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST16
	.4byte	0x510
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0x56
	.4byte	0x3bd
	.4byte	.LLST17
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST18
	.4byte	0x545
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0x93
	.4byte	0x3bd
	.4byte	.LLST19
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x95
	.4byte	0x3a
	.4byte	.LLST20
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	0x4e
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST21
	.4byte	0x5d2
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0xa1
	.4byte	0x3bd
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa1
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa3
	.4byte	0x3a
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa4
	.4byte	0x4e
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LASF51
	.4byte	0x5e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8539
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa8
	.4byte	0x125
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa9
	.4byte	0x12b
	.4byte	.LLST27
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x17d
	.4byte	0x5e2
	.uleb128 0xf
	.4byte	0x33
	.byte	0x11
	.byte	0
	.uleb128 0x1b
	.4byte	0x5d2
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST28
	.4byte	0x64b
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0xd1
	.4byte	0x3bd
	.4byte	.LLST29
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xd3
	.4byte	0x125
	.4byte	.LLST30
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.byte	0xd4
	.4byte	0x12b
	.4byte	.LLST31
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd5
	.4byte	0x4e
	.4byte	.LLST32
	.uleb128 0x18
	.string	"min"
	.byte	0x1
	.byte	0xd6
	.4byte	0x41
	.4byte	.LLST33
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST34
	.4byte	0x6bb
	.uleb128 0x16
	.string	"pq"
	.byte	0x1
	.byte	0xe8
	.4byte	0x3bd
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe8
	.4byte	0x4e
	.4byte	.LLST36
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xea
	.4byte	0x125
	.4byte	.LLST37
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.byte	0xeb
	.4byte	0x12b
	.4byte	.LLST38
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xec
	.4byte	0x3a
	.4byte	.LLST39
	.uleb128 0x1a
	.4byte	.LASF51
	.4byte	0x6bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8554
	.byte	0
	.uleb128 0x1b
	.4byte	0x5d2
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
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
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB8-.Ltext0
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
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB4-.Ltext0
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
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL71-1-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 4
	.4byte	.LVL71-1-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL86-1-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL93-1-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"trail"
.LASF65:
	.string	"FloatUp"
.LASF53:
	.string	"__gl_pqHeapInit"
.LASF4:
	.string	"PQHeapHandle"
.LASF42:
	.string	"activeRegion"
.LASF39:
	.string	"Onext"
.LASF27:
	.string	"GLUvertex"
.LASF47:
	.string	"hParent"
.LASF17:
	.string	"short int"
.LASF2:
	.string	"size_t"
.LASF36:
	.string	"marked"
.LASF33:
	.string	"pqHandle"
.LASF54:
	.string	"__gl_pqHeapNewPriorityQ"
.LASF61:
	.string	"hMin"
.LASF28:
	.string	"next"
.LASF7:
	.string	"handles"
.LASF6:
	.string	"nodes"
.LASF46:
	.string	"hCurr"
.LASF48:
	.string	"parent"
.LASF59:
	.string	"saveHandles"
.LASF57:
	.string	"free"
.LASF40:
	.string	"Lnext"
.LASF24:
	.string	"float"
.LASF19:
	.string	"long long int"
.LASF60:
	.string	"__gl_pqHeapExtractMin"
.LASF1:
	.string	"long int"
.LASF52:
	.string	"__gl_pqHeapDeletePriorityQ"
.LASF25:
	.string	"GLdouble"
.LASF55:
	.string	"__gl_pqHeapInsert"
.LASF51:
	.string	"__FUNCTION__"
.LASF37:
	.string	"inside"
.LASF13:
	.string	"node"
.LASF62:
	.string	"__gl_pqHeapDelete"
.LASF30:
	.string	"anEdge"
.LASF43:
	.string	"winding"
.LASF38:
	.string	"GLUhalfEdge"
.LASF16:
	.string	"unsigned char"
.LASF3:
	.string	"PQHeapKey"
.LASF31:
	.string	"data"
.LASF9:
	.string	"freeList"
.LASF15:
	.string	"signed char"
.LASF20:
	.string	"long long unsigned int"
.LASF64:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.c"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"short unsigned int"
.LASF49:
	.string	"hChild"
.LASF22:
	.string	"char"
.LASF44:
	.string	"ActiveRegion"
.LASF45:
	.string	"curr"
.LASF63:
	.string	"GNU C 4.6.3"
.LASF41:
	.string	"Lface"
.LASF21:
	.string	"long unsigned int"
.LASF23:
	.string	"GLboolean"
.LASF26:
	.string	"double"
.LASF56:
	.string	"keyNew"
.LASF50:
	.string	"child"
.LASF11:
	.string	"handle"
.LASF8:
	.string	"size"
.LASF32:
	.string	"coords"
.LASF5:
	.string	"PriorityQHeap"
.LASF34:
	.string	"GLUface"
.LASF58:
	.string	"saveNodes"
.LASF29:
	.string	"prev"
.LASF12:
	.string	"PQnode"
.LASF10:
	.string	"initialized"
.LASF66:
	.string	"FloatDown"
.LASF14:
	.string	"PQhandleElem"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
