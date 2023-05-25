	.file	"priorityq.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_pqSortNewPriorityQ
	.type	__gl_pqSortNewPriorityQ, @function
__gl_pqSortNewPriorityQ:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.c"
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 58 0
	li 3,28
.LVL1:
	.loc 1 57 0
	stw 31,20(1)
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 58 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl malloc
.LVL2:
	.loc 1 59 0
	mr. 31,3
	beq- 0,.L2
	.loc 1 61 0
	mr 3,30
.LVL3:
	bl __gl_pqHeapNewPriorityQ
	.loc 1 62 0
	cmpwi 7,3,0
	.loc 1 61 0
	mr 29,3
	stw 3,0(31)
	.loc 1 62 0
	beq- 7,.L5
	.loc 1 67 0
	li 3,128
	bl malloc
	.loc 1 68 0
	cmpwi 7,3,0
	.loc 1 67 0
	stw 3,4(31)
	.loc 1 68 0
	beq- 7,.L7
	.loc 1 74 0
	li 0,0
	.loc 1 75 0
	li 9,32
	.loc 1 74 0
	stw 0,12(31)
	.loc 1 75 0
	stw 9,16(31)
	.loc 1 76 0
	stw 0,20(31)
	.loc 1 77 0
	stw 30,24(31)
.LVL4:
.L2:
	.loc 1 79 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL5:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL6:
.L7:
.LCFI2:
	.cfi_restore_state
	.loc 1 69 0
	mr 3,29
	bl __gl_pqHeapDeletePriorityQ
.L5:
	.loc 1 70 0
	mr 3,31
	.loc 1 71 0
	li 31,0
.LVL7:
	.loc 1 70 0
	bl free
.LVL8:
	.loc 1 71 0
	b .L2
	.cfi_endproc
.LFE0:
	.size	__gl_pqSortNewPriorityQ, .-__gl_pqSortNewPriorityQ
	.align 2
	.globl __gl_pqSortDeletePriorityQ
	.type	__gl_pqSortDeletePriorityQ, @function
__gl_pqSortDeletePriorityQ:
.LFB1:
	.loc 1 83 0
	.cfi_startproc
.LVL9:
	stwu 1,-16(1)
.LCFI3:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 84 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 83 0
	stw 0,20(1)
	.loc 1 84 0
	beq- 0,.L13
	.cfi_offset 65, 4
	.loc 1 85 0
	lwz 3,0(31)
.LVL10:
	cmpwi 7,3,0
	beq- 7,.L10
	.loc 1 85 0 is_stmt 0 discriminator 1
	bl __gl_pqHeapDeletePriorityQ
.L10:
	.loc 1 86 0 is_stmt 1
	lwz 3,8(31)
	cmpwi 7,3,0
	beq- 7,.L11
	.loc 1 86 0 is_stmt 0 discriminator 1
	bl free
.L11:
	.loc 1 87 0 is_stmt 1
	lwz 3,4(31)
	cmpwi 7,3,0
	beq- 7,.L12
	.loc 1 87 0 is_stmt 0 discriminator 1
	bl free
.L12:
	.loc 1 88 0 is_stmt 1
	mr 3,31
	bl free
	.loc 1 89 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL11:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL12:
.L13:
.LCFI5:
	.cfi_restore_state
	.loc 1 84 0 discriminator 1
	lis 3,.LC0@ha
.LVL13:
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 3,.LC0@l(3)
	li 4,84
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	bl __assert_func
	.cfi_endproc
.LFE1:
	.size	__gl_pqSortDeletePriorityQ, .-__gl_pqSortDeletePriorityQ
	.align 2
	.globl __gl_pqSortInit
	.type	__gl_pqSortInit, @function
__gl_pqSortInit:
.LFB2:
	.loc 1 98 0
	.cfi_startproc
.LVL14:
	mflr 0
	stwu 1,-464(1)
.LCFI6:
	.cfi_def_cfa_offset 464
	.cfi_register 65, 0
.LVL15:
	stw 31,460(1)
	stw 0,468(1)
	stw 19,412(1)
	mr 19,3
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 111 0
	lwz 31,12(3)
	.loc 1 98 0
	stw 18,408(1)
	.loc 1 111 0
	addi 3,31,1
.LVL16:
	.loc 1 98 0
	stw 20,416(1)
	.loc 1 110 0
	slwi 3,3,2
	.loc 1 98 0
	stw 21,420(1)
	stw 22,424(1)
	stw 23,428(1)
	stw 24,432(1)
	stw 25,436(1)
	stw 26,440(1)
	stw 27,444(1)
	stw 28,448(1)
	stw 29,452(1)
	stw 30,456(1)
	.loc 1 110 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 18, -56
	bl malloc
	.loc 1 116 0
	cmpwi 7,3,0
	.loc 1 110 0
	stw 3,8(19)
	.loc 1 116 0
	beq- 7,.L35
.LVL17:
	.loc 1 119 0
	addi 0,31,-1
	.loc 1 120 0
	lwz 11,4(19)
	.loc 1 119 0
	slwi 0,0,2
	add 0,3,0
.LVL18:
	.loc 1 120 0
	cmplw 7,3,0
	bgt- 7,.L16
	.loc 1 120 0 is_stmt 0 discriminator 2
	mr 9,3
.LVL19:
.L17:
	.loc 1 121 0 is_stmt 1 discriminator 2
	stw 11,0(9)
	.loc 1 120 0 discriminator 2
	addi 9,9,4
.LVL20:
	cmplw 7,0,9
	addi 11,11,4
.LVL21:
	bge+ 7,.L17
.LVL22:
.L16:
	.loc 1 101 0
	lis 22,0x7830
	.loc 1 132 0
	lis 20,0x5bc1
	.loc 1 127 0
	stw 3,8(1)
	.loc 1 101 0
	ori 22,22,61635
	.loc 1 127 0
	stw 0,12(1)
.LVL23:
	addi 31,1,16
	addi 18,1,8
	.loc 1 132 0
	ori 20,20,40717
.LVL24:
.L46:
	.loc 1 128 0 discriminator 1
	addi 0,31,-8
	cmplw 7,18,0
	bgt- 7,.L47
.LVL25:
.L32:
	.loc 1 129 0
	lwz 25,-8(31)
.LVL26:
	.loc 1 130 0
	mr 23,31
	lwz 24,-4(31)
.LVL27:
	.loc 1 97 0
	addi 31,23,-8
.LVL28:
	addi 21,25,40
	.loc 1 131 0
	cmplw 7,24,21
	ble- 7,.L48
.LVL29:
.L25:
	.loc 1 132 0
	mullw 22,22,20
.LVL30:
	.loc 1 133 0
	subf 9,25,24
	srawi 9,9,2
	addi 0,9,1
	.loc 1 135 0
	lwz 9,0(25)
	.loc 1 138 0
	addi 31,24,4
	.loc 1 132 0
	addi 22,22,1
.LVL31:
	.loc 1 137 0
	addi 27,25,-4
	.loc 1 133 0
	divwu 11,22,0
	mullw 0,11,0
	subf 0,0,22
	slwi 0,0,2
.LVL32:
	.loc 1 134 0
	lwzx 29,25,0
.LVL33:
	.loc 1 135 0
	stwx 9,25,0
	.loc 1 136 0
	stw 29,0(25)
.LVL34:
	.loc 1 134 0
	mr 9,29
.LVL35:
.L20:
.LBB2:
	.loc 1 140 0 discriminator 1
	lwz 3,0(9)
.LBE2:
	.loc 1 138 0 discriminator 1
	mr 26,27
.LBB4:
	.loc 1 140 0 discriminator 1
	lwz 4,0(29)
	mr 30,31
.LBE4:
	.loc 1 97 0 discriminator 1
	mr 28,31
	addi 27,27,4
.LVL36:
.LBB5:
	.loc 1 140 0 discriminator 1
	crxor 6,6,6
	bl LEQ
.LVL37:
	cmpwi 7,3,0
	bne- 7,.L22
.L21:
.LBE5:
	.loc 1 138 0 discriminator 1
	lwz 9,8(26)
	b .L20
.L36:
.LBB6:
	.loc 1 141 0
	mr 28,31
.LVL38:
.L22:
	.loc 1 141 0 is_stmt 0 discriminator 1
	lwzu 9,-4(30)
	addi 31,31,-4
.LVL39:
	lwz 3,0(29)
	lwz 4,0(9)
	crxor 6,6,6
	bl LEQ
	cmpwi 7,3,0
	beq+ 7,.L36
.LBE6:
	.loc 1 143 0 is_stmt 1
	cmplw 7,31,27
.LBB7:
.LBB3:
	.loc 1 142 0
	lwz 0,4(26)
.LVL40:
	lwz 9,-4(28)
	stw 9,4(26)
	stw 0,-4(28)
.LBE3:
.LBE7:
	.loc 1 143 0
	bgt+ 7,.L21
	.loc 1 145 0
	subf 11,25,27
	subf 9,31,24
	srawi 9,9,2
	srawi 11,11,2
	cmpw 7,11,9
.LBB8:
	.loc 1 144 0
	lwz 9,4(26)
.LVL41:
	stw 0,4(26)
	stw 9,-4(28)
.LBE8:
	.loc 1 145 0
	bge- 7,.L23
	.loc 1 146 0
	stw 24,-4(23)
.LVL42:
	mr 24,26
	stw 28,-8(23)
	.loc 1 149 0
	addi 23,23,8
.LVL43:
.L50:
	.loc 1 131 0
	cmplw 7,24,21
	.loc 1 97 0
	addi 31,23,-8
.LVL44:
	.loc 1 131 0
	bgt+ 7,.L25
.LVL45:
.L48:
	.loc 1 154 0
	addi 29,25,4
.LVL46:
	cmplw 7,29,24
	bgt+ 7,.L46
.L39:
.LBB9:
	.loc 1 156 0
	cmplw 7,29,25
	.loc 1 155 0
	lwz 28,0(29)
.LVL47:
	.loc 1 156 0
	mr 30,29
	bgt+ 7,.L40
	b .L28
.LVL48:
.L30:
	.loc 1 157 0 discriminator 1
	lwz 0,-4(30)
	stw 0,0(30)
	.loc 1 156 0 discriminator 1
	addi 30,30,-4
.LVL49:
	cmplw 7,30,25
	ble- 7,.L28
.L40:
	.loc 1 156 0 is_stmt 0 discriminator 2
	lwz 9,-4(30)
	lwz 3,0(28)
	lwz 4,0(9)
	crxor 6,6,6
	bl LEQ
	cmpwi 7,3,0
	beq+ 7,.L30
.L28:
.LBE9:
	.loc 1 154 0 is_stmt 1
	addi 29,29,4
.LVL50:
.LBB10:
	.loc 1 159 0
	stw 28,0(30)
.LBE10:
	.loc 1 154 0
	cmplw 7,29,24
	ble- 7,.L39
.LVL51:
	.loc 1 128 0
	addi 0,31,-8
	cmplw 7,18,0
	ble+ 7,.L32
.LVL52:
.L47:
	.loc 1 162 0
	lwz 0,12(19)
.LVL53:
	.loc 1 164 0
	lwz 3,0(19)
	.loc 1 162 0
	stw 0,16(19)
	.loc 1 163 0
	li 0,1
	stw 0,20(19)
	.loc 1 164 0
	bl __gl_pqHeapInit
	.loc 1 168 0
	lwz 30,12(19)
	.loc 1 167 0
	lwz 31,8(19)
.LVL54:
	.loc 1 168 0
	addi 30,30,-1
	slwi 30,30,2
	add 30,31,30
.LVL55:
	.loc 1 169 0
	cmplw 7,31,30
	bge- 7,.L37
.LVL56:
.L34:
.LBB11:
	.loc 1 170 0
	lwz 11,4(31)
	lwz 9,0(31)
	lwz 3,0(11)
	lwz 4,0(9)
	crxor 6,6,6
	bl LEQ
	cmpwi 7,3,0
	beq- 7,.L49
.LBE11:
	.loc 1 169 0
	addi 31,31,4
.LVL57:
	cmplw 7,30,31
	bgt+ 7,.L34
.L37:
	.loc 1 174 0
	li 3,1
.LVL58:
.L15:
	.loc 1 175 0
	lwz 0,468(1)
	lwz 18,408(1)
	mtlr 0
	lwz 19,412(1)
.LVL59:
	lwz 20,416(1)
	lwz 21,420(1)
	lwz 22,424(1)
	lwz 23,428(1)
	lwz 24,432(1)
	lwz 25,436(1)
	lwz 26,440(1)
	lwz 27,444(1)
	lwz 28,448(1)
	lwz 29,452(1)
	lwz 30,456(1)
	lwz 31,460(1)
	addi 1,1,464
	.cfi_remember_state
.LCFI7:
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
.LVL60:
.L23:
.LCFI8:
	.cfi_restore_state
	.loc 1 149 0
	stw 25,-8(23)
	addi 21,28,40
	stw 26,-4(23)
.LVL61:
	mr 25,28
	addi 23,23,8
.LVL62:
	b .L50
.LVL63:
.L35:
	.loc 1 116 0
	li 3,0
	b .L15
.LVL64:
.L49:
.LBB12:
	.loc 1 170 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	li 4,170
	addi 5,5,28
	la 6,.LC2@l(6)
	bl __assert_func
.LBE12:
	.cfi_endproc
.LFE2:
	.size	__gl_pqSortInit, .-__gl_pqSortInit
	.align 2
	.globl __gl_pqSortInsert
	.type	__gl_pqSortInsert, @function
__gl_pqSortInsert:
.LFB3:
	.loc 1 180 0
	.cfi_startproc
.LVL65:
	mflr 0
	stwu 1,-24(1)
.LCFI9:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 183 0
	lwz 0,20(3)
	.loc 1 180 0
	stw 28,8(1)
	.loc 1 183 0
	cmpwi 7,0,0
	.loc 1 180 0
	stw 30,16(1)
	.loc 1 183 0
	bne- 7,.L56
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.loc 1 186 0
	lwz 30,12(3)
.LVL66:
	.loc 1 187 0
	lwz 4,16(3)
.LVL67:
	addi 0,30,1
	cmpw 7,0,4
	stw 0,12(3)
	bge- 7,.L57
.LVL68:
.L54:
	.loc 1 200 0
	xoris 0,30,0x8000
	cmpwi 7,0,-1
	beq 7,.L58
	.loc 1 201 0
	lwz 9,4(31)
	slwi 0,30,2
	.loc 1 204 0
	nor 3,30,30
	.loc 1 201 0
	stwx 29,9,0
.L53:
	.loc 1 205 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL69:
	lwz 30,16(1)
.LVL70:
	lwz 31,20(1)
.LVL71:
	addi 1,1,24
	.cfi_remember_state
.LCFI10:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL72:
.L57:
.LCFI11:
	.cfi_restore_state
.LBB13:
	.loc 1 191 0
	slwi 0,4,1
	.loc 1 188 0
	lwz 28,4(3)
.LVL73:
	.loc 1 191 0
	stw 0,16(3)
	.loc 1 192 0
	slwi 4,4,3
	mr 3,28
.LVL74:
	bl realloc
.LVL75:
	.loc 1 195 0
	cmpwi 7,3,0
	.loc 1 192 0
	stw 3,4(31)
	.loc 1 195 0
	bne+ 7,.L54
	.loc 1 197 0
	lis 3,0x7fff
	.loc 1 196 0
	stw 28,4(31)
	.loc 1 197 0
	ori 3,3,65535
	b .L53
.LVL76:
.L56:
.LBE13:
	.loc 1 184 0
	lwz 3,0(3)
	bl __gl_pqHeapInsert
	.loc 1 205 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL77:
	lwz 30,16(1)
	lwz 31,20(1)
.LVL78:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI12:
	.cfi_def_cfa_offset 0
	blr
.LVL79:
.L58:
.LCFI13:
	.cfi_restore_state
	.loc 1 200 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	li 4,200
	addi 5,5,44
	la 6,.LC3@l(6)
	bl __assert_func
	.cfi_endproc
.LFE3:
	.size	__gl_pqSortInsert, .-__gl_pqSortInsert
	.align 2
	.globl __gl_pqSortExtractMin
	.type	__gl_pqSortExtractMin, @function
__gl_pqSortExtractMin:
.LFB4:
	.loc 1 209 0
	.cfi_startproc
.LVL80:
	mflr 0
	stwu 1,-16(1)
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 212 0
	lwz 9,12(3)
	cmpwi 7,9,0
	beq- 7,.L63
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 216 0
	lwz 10,0(3)
	.loc 1 215 0
	addi 11,9,-1
	lwz 8,8(3)
	.loc 1 216 0
	lwz 0,8(10)
	cmpwi 7,0,0
	.loc 1 215 0
	slwi 0,11,2
	lwzx 8,8,0
	lwz 30,0(8)
.LVL81:
	.loc 1 216 0
	bne- 7,.L69
.LVL82:
.L62:
	cmpwi 7,11,0
.LBB14:
	.loc 1 208 0 discriminator 1
	addi 9,9,-2
	.loc 1 219 0 discriminator 1
	addi 0,11,1
	slwi 9,9,2
	mtctr 0
	blt- 7,.L70
.L65:
.LBE14:
	.loc 1 224 0 discriminator 1
	bdz .L68
.L64:
	lwz 10,8(31)
	lwzx 10,10,9
	addi 9,9,-4
	lwz 0,0(10)
	cmpwi 7,0,0
	bne- 7,.L68
	addi 11,11,-1
	.loc 1 224 0 is_stmt 0
	bdnz .L64
.L68:
	.loc 1 226 0 is_stmt 1
	lwz 0,20(1)
	mr 3,30
	.loc 1 224 0
	stw 11,12(31)
	.loc 1 226 0
	mtlr 0
	lwz 30,8(1)
.LVL83:
	lwz 31,12(1)
.LVL84:
	addi 1,1,16
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL85:
.L69:
.LCFI16:
	.cfi_restore_state
.LBB15:
	.loc 1 217 0
	lwz 11,0(10)
	.loc 1 218 0
	mr 4,30
	.loc 1 217 0
	lwz 9,4(10)
	lwz 0,4(11)
	slwi 0,0,3
	.loc 1 218 0
	lwzx 3,9,0
.LVL86:
	crxor 6,6,6
	bl LEQ
.LVL87:
	cmpwi 7,3,0
	beq+ 7,.L71
.LVL88:
.L63:
	.loc 1 219 0
	lwz 3,0(31)
	bl __gl_pqHeapExtractMin
.LBE15:
	.loc 1 226 0
	lwz 0,20(1)
.LBB16:
	.loc 1 219 0
	mr 30,3
.LBE16:
	.loc 1 226 0
	lwz 31,12(1)
.LVL89:
	mtlr 0
	mr 3,30
	lwz 30,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
.LVL90:
.L71:
.LCFI18:
	.cfi_restore_state
.LBB17:
	.loc 1 218 0
	lwz 9,12(31)
	addi 11,9,-1
	b .L62
.L70:
	li 0,1
	mtctr 0
	b .L65
.LBE17:
	.cfi_endproc
.LFE4:
	.size	__gl_pqSortExtractMin, .-__gl_pqSortExtractMin
	.align 2
	.globl __gl_pqSortMinimum
	.type	__gl_pqSortMinimum, @function
__gl_pqSortMinimum:
.LFB5:
	.loc 1 230 0
	.cfi_startproc
.LVL91:
	mflr 0
	stwu 1,-16(1)
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 233 0
	lwz 9,12(3)
	cmpwi 7,9,0
	beq- 7,.L76
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 237 0
	lwz 11,0(3)
	.loc 1 236 0
	addi 9,9,-1
	lwz 10,8(3)
	slwi 9,9,2
	.loc 1 237 0
	lwz 0,8(11)
	.loc 1 236 0
	lwzx 9,10,9
	.loc 1 237 0
	cmpwi 7,0,0
	.loc 1 236 0
	lwz 30,0(9)
.LVL92:
	.loc 1 243 0
	mr 31,30
	.loc 1 237 0
	bne- 7,.L77
.LVL93:
.L74:
	.loc 1 244 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL94:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL95:
.L76:
.LCFI21:
	.cfi_restore_state
	.loc 1 234 0
	lwz 9,0(3)
	.loc 1 244 0
	lwz 30,8(1)
	.loc 1 234 0
	lwz 11,0(9)
	lwz 9,4(9)
	lwz 0,4(11)
	slwi 0,0,3
	lwzx 31,9,0
	.loc 1 244 0
	lwz 0,20(1)
	mr 3,31
.LVL96:
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI22:
	.cfi_def_cfa_offset 0
	blr
.LVL97:
.L77:
.LCFI23:
	.cfi_restore_state
.LBB18:
	.loc 1 238 0
	lwz 10,0(11)
	.loc 1 239 0
	mr 4,30
	.loc 1 238 0
	lwz 9,4(11)
	lwz 0,4(10)
	slwi 0,0,3
	lwzx 31,9,0
.LVL98:
	.loc 1 239 0
	mr 3,31
.LVL99:
	crxor 6,6,6
	bl LEQ
.LVL100:
	cmpwi 7,3,0
	bne- 7,.L74
.LBE18:
	.loc 1 244 0
	lwz 0,20(1)
.LBB19:
	.loc 1 243 0
	mr 31,30
.LVL101:
.LBE19:
	.loc 1 244 0
	mr 3,31
	lwz 30,8(1)
.LVL102:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI24:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE5:
	.size	__gl_pqSortMinimum, .-__gl_pqSortMinimum
	.align 2
	.globl __gl_pqSortIsEmpty
	.type	__gl_pqSortIsEmpty, @function
__gl_pqSortIsEmpty:
.LFB6:
	.loc 1 248 0
	.cfi_startproc
.LVL103:
	.loc 1 249 0
	lwz 0,12(3)
	.loc 1 248 0
	mr 9,3
	.loc 1 249 0
	li 3,0
.LVL104:
	cmpwi 7,0,0
	bnelr- 7
	.loc 1 249 0 is_stmt 0 discriminator 1
	lwz 9,0(9)
.LVL105:
	.loc 1 247 0 is_stmt 1 discriminator 1
	lwz 3,8(9)
	cntlzw 3,3
	srwi 3,3,5
	.loc 1 250 0 discriminator 1
	blr
	.cfi_endproc
.LFE6:
	.size	__gl_pqSortIsEmpty, .-__gl_pqSortIsEmpty
	.align 2
	.globl __gl_pqSortDelete
	.type	__gl_pqSortDelete, @function
__gl_pqSortDelete:
.LFB7:
	.loc 1 254 0
	.cfi_startproc
.LVL106:
	mflr 0
	stwu 1,-8(1)
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 255 0
	mr. 0,4
	.cfi_offset 65, 4
	bge- 0,.L90
.LVL107:
	.loc 1 260 0
	lwz 9,16(3)
	.loc 1 259 0
	nor 0,0,0
.LVL108:
	.loc 1 260 0
	cmpw 7,0,9
	bge- 7,.L84
	.loc 1 260 0 is_stmt 0 discriminator 2
	lwz 9,4(3)
	slwi 0,0,2
.LVL109:
	lwzx 11,9,0
	cmpwi 7,11,0
	beq- 7,.L84
	.loc 1 263 0 is_stmt 1
	lwz 10,12(3)
	.loc 1 262 0
	li 11,0
	stwx 11,9,0
	.loc 1 263 0
	cmpwi 7,10,0
	ble- 7,.L81
	lwz 11,8(3)
	addi 9,10,-1
	slwi 0,9,2
	lwzx 8,11,0
	add 11,11,0
	lwz 8,0(8)
	cmpwi 7,8,0
	bne- 7,.L81
	mtctr 10
	bdz .L89
.L86:
	.loc 1 263 0 is_stmt 0 discriminator 2
	lwzu 10,-4(11)
	lwz 0,0(10)
	cmpwi 7,0,0
	bne- 7,.L89
	addi 9,9,-1
	.loc 1 263 0
	bdnz .L86
.L89:
	stw 9,12(3)
.L81:
	.loc 1 266 0 is_stmt 1
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL110:
.L90:
.LCFI27:
	.cfi_restore_state
	.loc 1 256 0
	lwz 3,0(3)
.LVL111:
	bl __gl_pqHeapDelete
.LVL112:
	.loc 1 266 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI28:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL113:
.L84:
.LCFI29:
	.cfi_restore_state
	.loc 1 260 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL114:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC4@ha
	la 3,.LC0@l(3)
	li 4,260
	addi 5,5,64
	la 6,.LC4@l(6)
	bl __assert_func
	.cfi_endproc
.LFE7:
	.size	__gl_pqSortDelete, .-__gl_pqSortDelete
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.1601, @object
	.size	__FUNCTION__.1601, 27
__FUNCTION__.1601:
	.string	"__gl_pqSortDeletePriorityQ"
	.zero	1
	.type	__FUNCTION__.1642, @object
	.size	__FUNCTION__.1642, 16
__FUNCTION__.1642:
	.string	"__gl_pqSortInit"
	.type	__FUNCTION__.1653, @object
	.size	__FUNCTION__.1653, 18
__FUNCTION__.1653:
	.string	"__gl_pqSortInsert"
	.zero	2
	.type	__FUNCTION__.1675, @object
	.size	__FUNCTION__.1675, 18
__FUNCTION__.1675:
	.string	"__gl_pqSortDelete"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.c"
	.zero	3
.LC1:
	.string	"pq != NULL"
	.zero	1
.LC2:
	.string	"LEQ( **(i+1), **i )"
.LC3:
	.string	"curr != LONG_MAX"
	.zero	3
.LC4:
	.string	"curr < pq->max && pq->keys[curr] != NULL"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-sort.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x602
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x60
	.4byte	0x6b
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x61
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x62
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1c
	.byte	0x3
	.byte	0x67
	.4byte	0x10b
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x68
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x69
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF16
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
	.4byte	.LASF17
	.byte	0x3
	.byte	0x6b
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF18
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
	.4byte	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.byte	0x64
	.4byte	0x122
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x64
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x64
	.4byte	0x10b
	.uleb128 0x9
	.byte	0x8
	.byte	0x3
	.byte	0x65
	.4byte	0x152
	.uleb128 0x8
	.string	"key"
	.byte	0x3
	.byte	0x65
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x65
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x65
	.4byte	0x12d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x122
	.uleb128 0xa
	.byte	0x4
	.4byte	0x152
	.uleb128 0xb
	.byte	0x1
	.4byte	0x21
	.4byte	0x17e
	.uleb128 0xc
	.4byte	0x7b
	.uleb128 0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x169
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x64
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x65
	.4byte	0x86
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x66
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1c
	.byte	0x4
	.byte	0x68
	.4byte	0x214
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x69
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x6a
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x6b
	.4byte	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6c
	.4byte	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"max"
	.byte	0x4
	.byte	0x6c
	.4byte	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6d
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"leq"
	.byte	0x4
	.byte	0x6e
	.4byte	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x91
	.uleb128 0xa
	.byte	0x4
	.4byte	0x184
	.uleb128 0xa
	.byte	0x4
	.4byte	0x21a
	.uleb128 0xb
	.byte	0x1
	.4byte	0x21
	.4byte	0x23b
	.uleb128 0xc
	.4byte	0x184
	.uleb128 0xc
	.4byte	0x184
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x226
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x27c
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x27c
	.uleb128 0xe
	.string	"leq"
	.byte	0x1
	.byte	0x38
	.4byte	0x23b
	.4byte	.LLST1
	.uleb128 0xf
	.string	"pq"
	.byte	0x1
	.byte	0x3a
	.4byte	0x27c
	.4byte	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x19a
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST3
	.4byte	0x2ba
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0x52
	.4byte	0x27c
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.1601
	.byte	0
	.uleb128 0x12
	.4byte	0x74
	.4byte	0x2ca
	.uleb128 0x13
	.4byte	0x33
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.4byte	0x2ba
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.4byte	0x41d
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0x61
	.4byte	0x27c
	.4byte	.LLST6
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x63
	.4byte	0x220
	.4byte	.LLST7
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0x63
	.4byte	0x220
	.4byte	.LLST8
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x63
	.4byte	0x220
	.4byte	.LLST9
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x63
	.4byte	0x220
	.4byte	.LLST10
	.uleb128 0xf
	.string	"piv"
	.byte	0x1
	.byte	0x63
	.4byte	0x21a
	.4byte	.LLST11
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.byte	0x64
	.4byte	0x35e
	.uleb128 0x8
	.string	"p"
	.byte	0x1
	.byte	0x64
	.4byte	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"r"
	.byte	0x1
	.byte	0x64
	.4byte	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x64
	.4byte	0x41d
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0xf
	.string	"top"
	.byte	0x1
	.byte	0x64
	.4byte	0x42d
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x65
	.4byte	0x6d
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	0x443
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.1642
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.4byte	0x3d1
	.uleb128 0x18
	.byte	0x1
	.string	"LEQ"
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.byte	0x1
	.4byte	0x3b7
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.4byte	0x21a
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0x3ee
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0x90
	.4byte	0x21a
	.4byte	.LLST15
	.byte	0
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x407
	.uleb128 0x1c
	.byte	0x1
	.string	"LEQ"
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.byte	0x1
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1c
	.byte	0x1
	.string	"LEQ"
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.byte	0x1
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x33d
	.4byte	0x42d
	.uleb128 0x13
	.4byte	0x33
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33d
	.uleb128 0x12
	.4byte	0x74
	.4byte	0x443
	.uleb128 0x13
	.4byte	0x33
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.4byte	0x433
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST16
	.4byte	0x4bb
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0xb3
	.4byte	0x27c
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb3
	.4byte	0x184
	.4byte	.LLST18
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb5
	.4byte	0x3a
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	0x4cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.1653
	.uleb128 0x1a
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbc
	.4byte	0x21a
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x74
	.4byte	0x4cb
	.uleb128 0x13
	.4byte	0x33
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	0x4bb
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.4byte	0x184
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST21
	.4byte	0x52f
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0xd0
	.4byte	0x27c
	.4byte	.LLST22
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd2
	.4byte	0x184
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd2
	.4byte	0x184
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1c
	.byte	0x1
	.string	"LEQ"
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.byte	0x1
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.4byte	0x184
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST25
	.4byte	0x58e
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0xe5
	.4byte	0x27c
	.4byte	.LLST26
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe7
	.4byte	0x184
	.4byte	.LLST27
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe7
	.4byte	0x184
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x1c
	.byte	0x1
	.string	"LEQ"
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.byte	0x1
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5b9
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0xf7
	.4byte	0x27c
	.4byte	.LLST29
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST30
	.4byte	0x600
	.uleb128 0xe
	.string	"pq"
	.byte	0x1
	.byte	0xfd
	.4byte	0x27c
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0xfd
	.4byte	0x18f
	.4byte	.LLST32
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	0x600
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.1675
	.byte	0
	.uleb128 0x14
	.4byte	0x4bb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
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
	.4byte	.LFE0-.Ltext0
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
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 464
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 464
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 -8
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x87
	.sleb128 -8
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 8
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 -4
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x87
	.sleb128 -4
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 8
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 4
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -456
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -448
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x87
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -456
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x7830f0c3
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x7830f0c3
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 4
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 4
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL75-1-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI22-.Ltext0
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
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB7-.Ltext0
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
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	0
	.4byte	0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"keyNew"
.LASF21:
	.string	"node"
.LASF28:
	.string	"order"
.LASF10:
	.string	"size_t"
.LASF36:
	.string	"curr"
.LASF24:
	.string	"PQSortHandle"
.LASF14:
	.string	"nodes"
.LASF40:
	.string	"heapMin"
.LASF42:
	.string	"__gl_pqSortIsEmpty"
.LASF25:
	.string	"PriorityQSort"
.LASF20:
	.string	"PQnode"
.LASF44:
	.string	"__gl_pqSortDelete"
.LASF16:
	.string	"size"
.LASF38:
	.string	"__gl_pqSortExtractMin"
.LASF18:
	.string	"initialized"
.LASF13:
	.string	"PriorityQHeap"
.LASF5:
	.string	"short unsigned int"
.LASF37:
	.string	"saveKey"
.LASF19:
	.string	"handle"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF31:
	.string	"Stack"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"PQSortKey"
.LASF33:
	.string	"__FUNCTION__"
.LASF11:
	.string	"PQHeapKey"
.LASF12:
	.string	"PQHeapHandle"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF26:
	.string	"heap"
.LASF34:
	.string	"__gl_pqSortInsert"
.LASF17:
	.string	"freeList"
.LASF15:
	.string	"handles"
.LASF29:
	.string	"__gl_pqSortNewPriorityQ"
.LASF6:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF46:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.c"
.LASF39:
	.string	"sortMin"
.LASF45:
	.string	"GNU C 4.6.3"
.LASF30:
	.string	"__gl_pqSortInit"
.LASF32:
	.string	"seed"
.LASF22:
	.string	"PQhandleElem"
.LASF1:
	.string	"long int"
.LASF41:
	.string	"__gl_pqSortMinimum"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"keys"
.LASF43:
	.string	"__gl_pqSortDeletePriorityQ"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
