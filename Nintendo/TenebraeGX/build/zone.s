	.file	"zone.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl Cache_Report
	.type	Cache_Report, @function
Cache_Report:
.LFB62:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/zone.c"
	.loc 1 789 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 790 0
	lis 9,hunk_size@ha
	lis 3,.LC0@ha
	lwz 11,hunk_size@l(9)
	lis 9,hunk_high_used@ha
	.loc 1 789 0
	stw 0,20(1)
	.loc 1 790 0
	la 3,.LC0@l(3)
	lwz 0,hunk_high_used@l(9)
	.cfi_offset 65, 4
	lis 9,hunk_low_used@ha
	lwz 9,hunk_low_used@l(9)
	subf 0,0,11
	subf 0,9,0
	lis 9,.LC2@ha
	xoris 0,0,0x8000
	lfs 0,.LC2@l(9)
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lis 9,.LC3@ha
	lfd 1,8(1)
	fsub 1,1,0
	lfs 0,.LC3@l(9)
	frsp 1,1
	fmuls 1,1,0
	creqv 6,6,6
	bl Con_Printf
	.loc 1 791 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE62:
	.size	Cache_Report, .-Cache_Report
	.align 2
	.globl Z_ClearZone
	.type	Z_ClearZone, @function
Z_ClearZone:
.LFB38:
	.loc 1 75 0
	.cfi_startproc
.LVL0:
	.loc 1 83 0
	li 0,0
	.loc 1 80 0
	addi 9,3,32
.LVL1:
	.loc 1 83 0
	stw 0,12(3)
	.loc 1 87 0
	addi 11,3,4
	.loc 1 84 0
	stw 0,4(3)
	.loc 1 90 0
	addi 4,4,-32
.LVL2:
	.loc 1 88 0
	stw 0,36(3)
	.loc 1 89 0
	lis 0,0x1d
	.loc 1 82 0
	li 10,1
	.loc 1 89 0
	ori 0,0,18961
	.loc 1 80 0
	stw 9,20(3)
	.loc 1 91 0
	.loc 1 80 0
	stw 9,16(3)
	.loc 1 82 0
	stw 10,8(3)
	.loc 1 85 0
	stw 9,28(3)
	.loc 1 87 0
	stw 11,44(3)
	stw 11,48(3)
	.loc 1 89 0
	stw 0,40(3)
	.loc 1 90 0
	stw 4,32(3)
	.loc 1 91 0
	blr
	.cfi_endproc
.LFE38:
	.size	Z_ClearZone, .-Z_ClearZone
	.align 2
	.globl Z_Free
	.type	Z_Free, @function
Z_Free:
.LFB39:
	.loc 1 100 0
	.cfi_startproc
.LVL3:
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 103 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 100 0
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 103 0
	beq- 0,.L12
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL4:
.L4:
	.loc 1 107 0
	lwz 9,-16(31)
	lis 0,0x1d
	ori 0,0,18961
	.loc 1 106 0
	addi 30,31,-24
.LVL5:
	.loc 1 107 0
	cmpw 7,9,0
	beq- 7,.L5
	.loc 1 108 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl Sys_Error
.L5:
	.loc 1 109 0
	lwz 0,-20(31)
	cmpwi 7,0,0
	beq- 7,.L13
.L6:
	.loc 1 112 0
	li 0,0
	.loc 1 114 0
	lwz 11,-8(31)
.LVL6:
	.loc 1 112 0
	stw 0,-20(31)
	.loc 1 115 0
	lwz 0,4(11)
	cmpwi 7,0,0
	beq- 7,.L7
	lwz 9,-12(31)
.LVL7:
.L8:
	.loc 1 126 0
	lwz 0,4(9)
	cmpwi 7,0,0
	bne- 7,.L3
	.loc 1 131 0
	lis 11,mainzone@ha
	.loc 1 128 0
	lwz 0,0(9)
	.loc 1 131 0
	lwz 11,mainzone@l(11)
	.loc 1 128 0
	lwz 10,0(30)
	.loc 1 131 0
	lwz 8,28(11)
	.loc 1 128 0
	add 0,10,0
	.loc 1 131 0
	cmpw 7,8,9
	.loc 1 129 0
	lwz 9,12(9)
.LVL8:
	.loc 1 128 0
	stw 0,0(30)
	.loc 1 129 0
	stw 9,12(30)
	.loc 1 130 0
	stw 30,16(9)
	.loc 1 131 0
	beq- 7,.L14
.L3:
	.loc 1 134 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL9:
	mtlr 0
	lwz 31,12(1)
.LVL10:
	addi 1,1,16
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL11:
.L7:
.LCFI4:
	.cfi_restore_state
	.loc 1 120 0
	lis 9,mainzone@ha
	.loc 1 117 0
	lwz 8,0(11)
	.loc 1 120 0
	lwz 10,mainzone@l(9)
	.loc 1 117 0
	lwz 0,-24(31)
	.loc 1 120 0
	lwz 9,28(10)
	.loc 1 117 0
	add 0,8,0
	.loc 1 120 0
	cmpw 7,9,30
	.loc 1 118 0
	lwz 9,-12(31)
	.loc 1 117 0
	stw 0,0(11)
	.loc 1 118 0
	stw 9,12(11)
	.loc 1 119 0
	stw 11,16(9)
	.loc 1 120 0
	beq- 7,.L15
	mr 30,11
.LVL12:
	b .L8
.LVL13:
.L13:
	.loc 1 110 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L6
.L14:
	.loc 1 134 0
	lwz 0,20(1)
	.loc 1 132 0
	stw 30,28(11)
	.loc 1 134 0
	mtlr 0
	lwz 30,8(1)
.LVL14:
	lwz 31,12(1)
.LVL15:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL16:
.L15:
.LCFI6:
	.cfi_restore_state
	.loc 1 121 0
	stw 11,28(10)
	mr 30,11
.LVL17:
	b .L8
.LVL18:
.L12:
	.loc 1 104 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L4
	.cfi_endproc
.LFE39:
	.size	Z_Free, .-Z_Free
	.align 2
	.globl Z_TagMalloc
	.type	Z_TagMalloc, @function
Z_TagMalloc:
.LFB41:
	.loc 1 156 0
	.cfi_startproc
.LVL19:
	stwu 1,-16(1)
.LCFI7:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 160 0
	mr. 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 156 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 160 0
	beq- 0,.L27
	.cfi_offset 65, 4
.LVL20:
.L17:
	.loc 1 171 0
	lis 9,mainzone@ha
	.loc 1 169 0
	addi 31,31,35
	.loc 1 171 0
	lwz 7,mainzone@l(9)
	.loc 1 169 0
	rlwinm 31,31,0,0,28
.LVL21:
	.loc 1 177 0
	li 3,0
	.loc 1 171 0
	lwz 9,28(7)
.LVL22:
	.loc 1 172 0
	lwz 10,16(9)
.LVL23:
	.loc 1 176 0
	mr 11,9
	cmpw 7,9,10
	beq- 7,.L18
.LVL24:
.L20:
	.loc 1 178 0
	lwz 0,4(9)
	.loc 1 179 0
	lwz 9,12(9)
.LVL25:
	.loc 1 178 0
	cmpwi 7,0,0
	beq- 7,.L22
.LVL26:
	.loc 1 179 0
	mr 11,9
.LVL27:
.L22:
	.loc 1 182 0
	lwz 0,4(11)
	.loc 1 176 0
	cmpw 6,9,10
	.loc 1 182 0
	cmpwi 7,0,0
	bne- 7,.L23
	.loc 1 182 0 is_stmt 0 discriminator 1
	lwz 8,0(11)
	cmpw 7,31,8
	ble- 7,.L28
.L23:
	.loc 1 176 0 is_stmt 1
	bne+ 6,.L20
	.loc 1 177 0
	li 3,0
.L18:
	.loc 1 211 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL28:
	mtlr 0
	lwz 31,12(1)
.LVL29:
	addi 1,1,16
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL30:
.L28:
.LCFI9:
	.cfi_restore_state
	.loc 1 187 0
	subf 8,31,8
.LVL31:
	.loc 1 188 0
	cmpwi 7,8,64
	ble- 7,.L24
	.loc 1 190 0
	add 9,11,31
.LVL32:
	.loc 1 195 0
	lwz 10,12(11)
	.loc 1 192 0
	stw 0,4(9)
	.loc 1 194 0
	lis 0,0x1d
	ori 0,0,18961
	.loc 1 191 0
	stwx 8,11,31
	.loc 1 193 0
	stw 11,16(9)
	.loc 1 195 0
	stw 10,12(9)
	.loc 1 194 0
	stw 0,8(9)
	.loc 1 196 0
	stw 9,16(10)
	.loc 1 197 0
	stw 9,12(11)
	.loc 1 198 0
	stw 31,0(11)
.LVL33:
.L24:
	.loc 1 208 0
	lwz 9,0(11)
	.loc 1 205 0
	lis 0,0x1d
	.loc 1 203 0
	lwz 10,12(11)
	.loc 1 205 0
	ori 0,0,18961
	.loc 1 208 0
	add 9,11,9
	.loc 1 201 0
	stw 30,4(11)
	.loc 1 203 0
	stw 10,28(7)
	.loc 1 210 0
	addi 3,11,24
	.loc 1 205 0
	stw 0,8(11)
	.loc 1 208 0
	stw 0,-4(9)
	.loc 1 211 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL34:
	mtlr 0
	lwz 31,12(1)
.LVL35:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
.LVL36:
.L27:
.LCFI11:
	.cfi_restore_state
	.loc 1 161 0
	lis 3,.LC7@ha
.LVL37:
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL38:
	b .L17
	.cfi_endproc
.LFE41:
	.size	Z_TagMalloc, .-Z_TagMalloc
	.align 2
	.globl Z_Print
	.type	Z_Print, @function
Z_Print:
.LFB42:
	.loc 1 220 0
	.cfi_startproc
.LVL39:
	mflr 0
	stwu 1,-32(1)
.LCFI12:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 223 0
	lis 9,mainzone@ha
	lwz 5,mainzone@l(9)
	.loc 1 220 0
	stw 0,36(1)
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 223 0
	lwz 4,0(5)
	lis 3,.LC8@ha
.LVL40:
	la 3,.LC8@l(3)
	.loc 1 220 0
	stw 26,8(1)
	stw 27,12(1)
	.loc 1 237 0
	lis 26,.LC12@ha
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 220 0
	stw 28,16(1)
	lis 28,.LC9@ha
	.cfi_offset 28, -16
	stw 30,24(1)
	la 28,.LC9@l(28)
	stw 31,28(1)
	.loc 1 223 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	crxor 6,6,6
	bl Con_Printf
	.loc 1 225 0
	lwz 31,16(29)
.LVL41:
	.loc 1 227 0
	mr 3,28
	addi 29,29,4
.LVL42:
	.loc 1 233 0
	lis 30,.LC10@ha
	.loc 1 225 0
	lwz 6,4(31)
	.loc 1 227 0
	mr 4,31
	lwz 5,0(31)
	.loc 1 233 0
	la 30,.LC10@l(30)
	.loc 1 235 0
	lis 27,.LC11@ha
	.loc 1 237 0
	la 26,.LC12@l(26)
	.loc 1 227 0
	crxor 6,6,6
	bl Con_Printf
.LVL43:
	.loc 1 230 0
	lwz 9,12(31)
	.loc 1 235 0
	la 27,.LC11@l(27)
	.loc 1 233 0
	mr 3,30
	.loc 1 230 0
	cmpw 7,9,29
	beq- 7,.L29
.LVL44:
.L37:
	.loc 1 232 0
	lwz 0,0(31)
	add 0,31,0
	cmpw 7,9,0
	beq- 7,.L31
	.loc 1 233 0
	crxor 6,6,6
	bl Con_Printf
	lwz 9,12(31)
.L31:
	.loc 1 234 0
	lwz 0,16(9)
	.loc 1 235 0
	mr 3,27
	.loc 1 234 0
	cmpw 7,0,31
	beq- 7,.L32
	.loc 1 235 0
	crxor 6,6,6
	bl Con_Printf
	lwz 9,12(31)
.L32:
	.loc 1 236 0
	lwz 0,4(31)
	lwz 6,4(9)
	cmpwi 7,0,0
	bne- 7,.L34
	.loc 1 236 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	beq- 7,.L36
.L34:
.LVL45:
	.loc 1 225 0 is_stmt 1
	mr 31,9
.L38:
	.loc 1 227 0
	lwz 5,0(31)
	mr 3,28
	mr 4,31
	crxor 6,6,6
	bl Con_Printf
.LVL46:
	.loc 1 230 0
	lwz 9,12(31)
	.loc 1 233 0
	mr 3,30
	.loc 1 230 0
	cmpw 7,9,29
	bne+ 7,.L37
.L29:
	.loc 1 239 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL47:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL48:
	addi 1,1,32
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL49:
.L36:
.LCFI14:
	.cfi_restore_state
	.loc 1 237 0
	mr 3,26
	crxor 6,6,6
	bl Con_Printf
	lwz 9,12(31)
	lwz 6,4(9)
.LVL50:
	.loc 1 225 0
	mr 31,9
.LVL51:
	b .L38
	.cfi_endproc
.LFE42:
	.size	Z_Print, .-Z_Print
	.align 2
	.globl Z_CheckHeap
	.type	Z_CheckHeap, @function
Z_CheckHeap:
.LFB43:
	.loc 1 248 0
	.cfi_startproc
	stwu 1,-32(1)
.LCFI15:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.loc 1 251 0
	lis 28,mainzone@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 248 0
	stw 0,36(1)
	.loc 1 251 0
	lwz 9,mainzone@l(28)
	.loc 1 248 0
	stw 31,28(1)
	.loc 1 251 0
	lwz 31,16(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL52:
	.loc 1 253 0
	addi 9,9,4
	.loc 1 248 0
	stw 27,12(1)
	.loc 1 253 0
	lwz 0,12(31)
	.loc 1 248 0
	stw 29,20(1)
	.loc 1 253 0
	cmpw 7,0,9
	.loc 1 248 0
	stw 30,24(1)
	.loc 1 253 0
	beq- 7,.L39
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.loc 1 256 0
	lis 29,.LC13@ha
	.loc 1 258 0
	lis 30,.LC14@ha
	.loc 1 260 0
	lis 27,.LC15@ha
	la 28,mainzone@l(28)
	.loc 1 256 0
	la 29,.LC13@l(29)
	.loc 1 258 0
	la 30,.LC14@l(30)
	.loc 1 260 0
	la 27,.LC15@l(27)
.LVL53:
.L44:
	.loc 1 255 0
	lwz 9,0(31)
	.loc 1 256 0
	mr 3,29
	.loc 1 255 0
	add 9,31,9
	cmpw 7,0,9
	beq- 7,.L41
	.loc 1 256 0
	crxor 6,6,6
	bl Sys_Error
.L41:
	.loc 1 257 0
	lwz 9,12(31)
	.loc 1 258 0
	mr 3,30
	.loc 1 257 0
	lwz 0,16(9)
	cmpw 7,0,31
	beq- 7,.L42
	.loc 1 258 0
	crxor 6,6,6
	bl Sys_Error
	lwz 9,12(31)
.L42:
	.loc 1 259 0
	lwz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L46
	.loc 1 259 0 is_stmt 0 discriminator 1
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L48
.L46:
	.loc 1 259 0
	mr 31,9
.LVL54:
.L43:
	.loc 1 253 0 is_stmt 1
	lwz 9,0(28)
	lwz 0,12(31)
	addi 9,9,4
	cmpw 7,0,9
	bne+ 7,.L44
.L39:
	.loc 1 262 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL55:
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
.LVL56:
.L48:
.LCFI17:
	.cfi_restore_state
	.loc 1 260 0
	mr 3,27
	crxor 6,6,6
	bl Sys_Error
	lwz 31,12(31)
.LVL57:
	b .L43
	.cfi_endproc
.LFE43:
	.size	Z_CheckHeap, .-Z_CheckHeap
	.align 2
	.globl Z_Malloc
	.type	Z_Malloc, @function
Z_Malloc:
.LFB40:
	.loc 1 143 0
	.cfi_startproc
.LVL58:
	stwu 1,-16(1)
.LCFI18:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 146 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl Z_CheckHeap
.LVL59:
	.loc 1 147 0
	mr 3,30
	li 4,1
	bl Z_TagMalloc
.LVL60:
	.loc 1 148 0
	mr. 31,3
	beq- 0,.L51
	.loc 1 150 0
	mr 3,31
	mr 5,30
	li 4,0
	bl Q_memset
.LVL61:
	.loc 1 153 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL62:
	mtlr 0
	lwz 31,12(1)
.LVL63:
	addi 1,1,16
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL64:
.L51:
.LCFI20:
	.cfi_restore_state
	.loc 1 149 0
	lis 3,.LC16@ha
.LVL65:
	mr 4,30
	la 3,.LC16@l(3)
	crxor 6,6,6
	bl Sys_Error
	.loc 1 150 0
	mr 3,31
	mr 5,30
	li 4,0
	bl Q_memset
	.loc 1 153 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL66:
	mtlr 0
	lwz 31,12(1)
.LVL67:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI21:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE40:
	.size	Z_Malloc, .-Z_Malloc
	.align 2
	.globl Hunk_Check
	.type	Hunk_Check, @function
Hunk_Check:
.LFB44:
	.loc 1 294 0
	.cfi_startproc
	stwu 1,-40(1)
.LCFI22:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 26,16(1)
	.loc 1 297 0
	lis 26,hunk_low_used@ha
	.cfi_offset 26, -24
	.cfi_register 65, 0
	.loc 1 294 0
	stw 0,44(1)
	.loc 1 297 0
	lwz 0,hunk_low_used@l(26)
	.cfi_offset 65, 4
	.loc 1 294 0
	stw 30,32(1)
	.loc 1 297 0
	lis 30,hunk_base@ha
	.cfi_offset 30, -8
	cmpwi 7,0,0
	.loc 1 294 0
	stw 31,36(1)
	stw 25,12(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 297 0
	lwz 31,hunk_base@l(30)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 31, -4
.LVL68:
	beq- 7,.L52
	.loc 1 299 0
	lis 27,0x1df0
	.loc 1 300 0
	lis 28,.LC17@ha
	.loc 1 302 0
	lis 29,.LC18@ha
	la 30,hunk_base@l(30)
	la 26,hunk_low_used@l(26)
	.loc 1 299 0
	ori 27,27,493
	.loc 1 300 0
	la 28,.LC17@l(28)
	.loc 1 302 0
	la 29,.LC18@l(29)
	.loc 1 301 0
	lis 25,hunk_size@ha
	b .L57
.LVL69:
.L58:
	mr 31,9
.LVL70:
	.loc 1 297 0
	lwz 9,0(26)
.LVL71:
	add 0,0,9
	cmpw 7,31,0
	beq- 7,.L52
.L57:
	.loc 1 299 0
	lwz 0,0(31)
	.loc 1 300 0
	mr 3,28
	.loc 1 299 0
	cmpw 7,0,27
	beq- 7,.L54
	.loc 1 300 0
	crxor 6,6,6
	bl Sys_Error
.L54:
	.loc 1 301 0
	lwz 0,4(31)
	.loc 1 302 0
	mr 3,29
	.loc 1 301 0
	cmpwi 7,0,15
	add 9,31,0
	ble- 7,.L55
	.loc 1 301 0 is_stmt 0 discriminator 1
	lwz 0,0(30)
	lwz 11,hunk_size@l(25)
	subf 10,0,9
	cmpw 7,10,11
	ble- 7,.L58
.L55:
	.loc 1 302 0 is_stmt 1
	crxor 6,6,6
	bl Sys_Error
	lwz 9,4(31)
	lwz 0,0(30)
	add 31,31,9
.LVL72:
	.loc 1 297 0
	lwz 9,0(26)
	add 0,0,9
	cmpw 7,31,0
	bne+ 7,.L57
.L52:
	.loc 1 305 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL73:
	addi 1,1,40
.LCFI23:
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
.LFE44:
	.size	Hunk_Check, .-Hunk_Check
	.align 2
	.globl Hunk_Print
	.type	Hunk_Print, @function
Hunk_Print:
.LFB45:
	.loc 1 316 0
	.cfi_startproc
.LVL74:
	stwu 1,-112(1)
.LCFI24:
	.cfi_def_cfa_offset 112
	mflr 0
	mfcr 12
	stw 16,48(1)
	.loc 1 329 0
	lis 16,hunk_high_used@ha
	.cfi_offset 16, -64
	.cfi_register 70, 12
	.cfi_register 65, 0
	.loc 1 316 0
	stw 24,80(1)
	.loc 1 329 0
	lis 24,hunk_size@ha
	.cfi_offset 24, -32
	.loc 1 316 0
	stw 14,40(1)
	stw 17,52(1)
	.loc 1 328 0
	lis 17,hunk_low_used@ha
	.cfi_offset 17, -60
	.cfi_offset 14, -72
	.loc 1 316 0
	stw 23,76(1)
	.loc 1 327 0
	lis 23,hunk_base@ha
	.cfi_offset 23, -36
	.loc 1 316 0
	stw 26,88(1)
	.loc 1 329 0
	lwz 14,hunk_high_used@l(16)
	lwz 26,hunk_size@l(24)
	.cfi_offset 26, -24
	.loc 1 327 0
	lwz 9,hunk_base@l(23)
	.loc 1 316 0
	stw 20,64(1)
	.loc 1 333 0
	lis 20,.LC20@ha
	.cfi_offset 20, -48
	.loc 1 316 0
	stw 27,92(1)
	.loc 1 332 0
	mr 4,26
	.loc 1 316 0
	stw 31,108(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.loc 1 328 0
	lwz 27,hunk_low_used@l(17)
	.loc 1 332 0
	lis 3,.LC19@ha
.LVL75:
	.loc 1 316 0
	stw 0,116(1)
	.loc 1 329 0
	subf 14,14,26
	.loc 1 322 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 332 0
	la 3,.LC19@l(3)
	.loc 1 333 0
	la 20,.LC20@l(20)
	.loc 1 328 0
	add 27,9,27
	.loc 1 329 0
	add 14,9,14
	.loc 1 330 0
	add 26,9,26
	.loc 1 332 0
	stw 9,24(1)
	.loc 1 371 0
	cmpwi 4,31,0
	.loc 1 316 0
	stw 15,44(1)
	.loc 1 343 0
	lis 15,.LC21@ha
	.cfi_offset 15, -68
	.loc 1 316 0
	stw 18,56(1)
	.loc 1 381 0
	lis 18,.LC23@ha
	.cfi_offset 18, -56
	.loc 1 316 0
	stw 19,60(1)
	.loc 1 372 0
	lis 19,.LC22@ha
	.cfi_offset 19, -52
	.loc 1 316 0
	stw 21,68(1)
	.loc 1 358 0
	lis 21,.LC17@ha
	.cfi_offset 21, -44
	.loc 1 316 0
	stw 22,72(1)
	.loc 1 360 0
	lis 22,.LC18@ha
	.cfi_offset 22, -40
	.loc 1 316 0
	stw 25,84(1)
	.loc 1 357 0
	lis 25,0x1df0
	.cfi_offset 25, -28
	.loc 1 316 0
	stw 28,96(1)
	.loc 1 343 0
	la 15,.LC21@l(15)
	.loc 1 316 0
	stw 30,104(1)
	.loc 1 325 0
	li 28,0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.loc 1 316 0
	stw 12,36(1)
	.loc 1 324 0
	li 30,0
	.loc 1 322 0
	stb 0,16(1)
.LVL76:
	.loc 1 357 0
	ori 25,25,493
	.loc 1 316 0
	stw 29,100(1)
	.loc 1 332 0
	.cfi_offset 29, -12
	.cfi_offset 70, -76
	crxor 6,6,6
	bl Con_Printf
.LVL77:
	.loc 1 333 0
	mr 3,20
	.loc 1 358 0
	la 21,.LC17@l(21)
	.loc 1 333 0
	crxor 6,6,6
	bl Con_Printf
	lwz 9,24(1)
.LVL78:
	.loc 1 360 0
	la 22,.LC18@l(22)
	.loc 1 372 0
	la 19,.LC22@l(19)
	.loc 1 340 0
	cmpw 7,9,27
	.loc 1 381 0
	la 18,.LC23@l(18)
	.loc 1 340 0
	beq- 7,.L71
.LVL79:
.L62:
	.loc 1 351 0
	cmpw 7,9,26
	beq- 7,.L63
.L74:
	.loc 1 357 0
	lwz 0,0(9)
	cmpw 7,0,25
	beq- 7,.L64
	.loc 1 358 0
	mr 3,21
	stw 9,24(1)
	crxor 6,6,6
	bl Sys_Error
.LVL80:
	lwz 9,24(1)
.L64:
	.loc 1 359 0
	lwz 0,4(9)
	cmpwi 7,0,15
	ble- 7,.L65
	.loc 1 359 0 is_stmt 0 discriminator 1
	lwz 10,hunk_base@l(23)
	add 31,9,0
	lwz 11,hunk_size@l(24)
	subf 10,10,31
	cmpw 7,10,11
	ble- 7,.L66
.L65:
	.loc 1 360 0 is_stmt 1
	mr 3,22
	stw 9,24(1)
	crxor 6,6,6
	bl Sys_Error
	lwz 9,24(1)
	lwz 0,4(9)
	add 31,9,0
.L66:
.LVL81:
	.loc 1 370 0
	addi 29,9,8
	lwz 10,8(9)
	lwz 11,4(29)
	.loc 1 364 0
	addi 28,28,1
.LVL82:
	.loc 1 365 0
	add 30,30,0
.LVL83:
	.loc 1 370 0
	stw 10,8(1)
	stw 11,12(1)
	.loc 1 371 0
	bne- 4,.L72
.L67:
	.loc 1 377 0
	cmpw 7,27,31
	beq- 7,.L68
	.loc 1 377 0 is_stmt 0 discriminator 1
	cmpw 7,26,31
	beq- 7,.L68
	.loc 1 378 0 is_stmt 1 discriminator 1
	mr 3,29
	addi 4,31,8
	li 5,8
	bl strncmp
	.loc 1 377 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L69
.L68:
	.loc 1 380 0
	beq- 4,.L73
	.loc 1 383 0
	li 30,0
.LVL84:
.L69:
	mr 9,31
.L75:
.LVL85:
	.loc 1 340 0
	cmpw 7,9,27
	bne+ 7,.L62
.LVL86:
.L71:
	.loc 1 342 0
	mr 3,20
	crxor 6,6,6
	bl Con_Printf
.LVL87:
	.loc 1 343 0
	lwz 9,hunk_low_used@l(17)
	lwz 4,hunk_size@l(24)
	mr 3,15
	lwz 0,hunk_high_used@l(16)
	subf 4,9,4
	subf 4,0,4
	crxor 6,6,6
	bl Con_Printf
	.loc 1 344 0
	mr 3,20
	crxor 6,6,6
	bl Con_Printf
.LVL88:
	.loc 1 345 0
	mr 9,14
	.loc 1 351 0
	cmpw 7,9,26
	bne+ 7,.L74
.LVL89:
.L63:
	.loc 1 389 0
	mr 3,20
	crxor 6,6,6
	bl Con_Printf
.LVL90:
	.loc 1 390 0
	lis 3,.LC24@ha
	mr 4,28
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 392 0
	lwz 0,116(1)
	lwz 12,36(1)
	mtlr 0
	lwz 14,40(1)
.LVL91:
	lwz 15,44(1)
	mtcrf 8,12
	lwz 16,48(1)
	lwz 17,52(1)
	lwz 18,56(1)
	lwz 19,60(1)
	lwz 20,64(1)
	lwz 21,68(1)
	lwz 22,72(1)
	lwz 23,76(1)
	lwz 24,80(1)
	lwz 25,84(1)
	lwz 26,88(1)
.LVL92:
	lwz 27,92(1)
.LVL93:
	lwz 28,96(1)
.LVL94:
	lwz 29,100(1)
	lwz 30,104(1)
.LVL95:
	lwz 31,108(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI25:
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
	.cfi_restore 14
	blr
.LVL96:
.L72:
.LCFI26:
	.cfi_restore_state
	.loc 1 372 0
	lwz 5,4(9)
	mr 4,9
	mr 3,19
	addi 6,1,8
	crxor 6,6,6
	bl Con_Printf
	b .L67
.L73:
	.loc 1 381 0
	mr 4,30
	mr 3,18
	addi 5,1,8
	.loc 1 383 0
	li 30,0
.LVL97:
	.loc 1 381 0
	crxor 6,6,6
	bl Con_Printf
.LVL98:
	.loc 1 383 0
	mr 9,31
	b .L75
	.cfi_endproc
.LFE45:
	.size	Hunk_Print, .-Hunk_Print
	.align 2
	.globl Hunk_LowMark
	.type	Hunk_LowMark, @function
Hunk_LowMark:
.LFB48:
	.loc 1 440 0
	.cfi_startproc
	.loc 1 441 0
	lis 9,hunk_low_used@ha
	.loc 1 442 0
	lwz 3,hunk_low_used@l(9)
	blr
	.cfi_endproc
.LFE48:
	.size	Hunk_LowMark, .-Hunk_LowMark
	.align 2
	.globl Hunk_FreeToLowMark
	.type	Hunk_FreeToLowMark, @function
Hunk_FreeToLowMark:
.LFB49:
	.loc 1 445 0
	.cfi_startproc
.LVL99:
	stwu 1,-16(1)
.LCFI27:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 446 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 445 0
	stw 30,8(1)
	lis 30,hunk_low_used@ha
	.cfi_offset 30, -8
	stw 0,20(1)
	.loc 1 446 0
	blt- 0,.L78
	.cfi_offset 65, 4
	.loc 1 446 0 is_stmt 0 discriminator 1
	lwz 5,hunk_low_used@l(30)
	cmpw 7,31,5
	ble- 7,.L79
.L78:
	.loc 1 447 0 is_stmt 1
	lis 3,.LC25@ha
.LVL100:
	mr 4,31
	la 3,.LC25@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 5,hunk_low_used@l(30)
.L79:
	.loc 1 448 0
	lis 9,hunk_base@ha
	subf 5,31,5
	lwz 3,hunk_base@l(9)
	li 4,0
	add 3,3,31
	bl memset
	.loc 1 450 0
	lwz 0,20(1)
	.loc 1 449 0
	stw 31,hunk_low_used@l(30)
	.loc 1 450 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL101:
	addi 1,1,16
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE49:
	.size	Hunk_FreeToLowMark, .-Hunk_FreeToLowMark
	.align 2
	.globl Hunk_FreeToHighMark
	.type	Hunk_FreeToHighMark, @function
Hunk_FreeToHighMark:
.LFB51:
	.loc 1 464 0
	.cfi_startproc
.LVL102:
	mflr 0
	stwu 1,-16(1)
.LCFI29:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 465 0
	lis 9,hunk_tempactive@ha
	.loc 1 464 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 465 0
	lbz 0,hunk_tempactive@l(9)
	.cfi_offset 65, 4
	.loc 1 464 0
	stw 30,8(1)
	.loc 1 465 0
	cmpwi 7,0,0
	bne- 7,.L88
	.cfi_offset 30, -8
.LVL103:
.L83:
	.loc 1 470 0
	cmpwi 7,31,0
	lis 30,hunk_high_used@ha
	blt- 7,.L84
	.loc 1 470 0 is_stmt 0 discriminator 1
	lwz 5,hunk_high_used@l(30)
	cmpw 7,31,5
	ble- 7,.L85
.L84:
	.loc 1 471 0 is_stmt 1
	lis 3,.LC26@ha
	mr 4,31
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 5,hunk_high_used@l(30)
.L85:
	.loc 1 472 0
	lis 9,hunk_size@ha
	li 4,0
	lwz 0,hunk_size@l(9)
	lis 9,hunk_base@ha
	lwz 3,hunk_base@l(9)
	subf 0,5,0
	subf 5,31,5
	add 3,3,0
	bl memset
	.loc 1 474 0
	lwz 0,20(1)
	.loc 1 473 0
	stw 31,hunk_high_used@l(30)
	.loc 1 474 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL104:
	addi 1,1,16
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL105:
.L88:
.LCFI31:
	.cfi_restore_state
	.loc 1 468 0
	lis 11,hunk_tempmark@ha
	.loc 1 467 0
	li 0,0
	.loc 1 468 0
	lwz 3,hunk_tempmark@l(11)
.LVL106:
	.loc 1 467 0
	stb 0,hunk_tempactive@l(9)
	.loc 1 468 0
	bl Hunk_FreeToHighMark
	b .L83
	.cfi_endproc
.LFE51:
	.size	Hunk_FreeToHighMark, .-Hunk_FreeToHighMark
	.align 2
	.globl Hunk_HighMark
	.type	Hunk_HighMark, @function
Hunk_HighMark:
.LFB50:
	.loc 1 453 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI32:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 454 0
	lis 9,hunk_tempactive@ha
	.loc 1 453 0
	stw 0,12(1)
	.loc 1 454 0
	lbz 0,hunk_tempactive@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L90
	.loc 1 457 0
	lis 11,hunk_tempmark@ha
	.loc 1 456 0
	li 0,0
	.loc 1 457 0
	lwz 3,hunk_tempmark@l(11)
	.loc 1 456 0
	stb 0,hunk_tempactive@l(9)
	.loc 1 457 0
	bl Hunk_FreeToHighMark
.L90:
	.loc 1 461 0
	lwz 0,12(1)
	.loc 1 460 0
	lis 9,hunk_high_used@ha
	.loc 1 461 0
	lwz 3,hunk_high_used@l(9)
	mtlr 0
	addi 1,1,8
.LCFI33:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE50:
	.size	Hunk_HighMark, .-Hunk_HighMark
	.align 2
	.globl Cache_UnlinkLRU
	.type	Cache_UnlinkLRU, @function
Cache_UnlinkLRU:
.LFB57:
	.loc 1 651 0
	.cfi_startproc
.LVL107:
	mflr 0
	stwu 1,-16(1)
.LCFI34:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 652 0
	lwz 9,36(3)
	cmpwi 7,9,0
	beq- 7,.L92
	.cfi_offset 65, 4
	.loc 1 652 0 is_stmt 0 discriminator 1
	lwz 0,32(3)
	cmpwi 7,0,0
	beq- 7,.L92
	.loc 1 655 0 is_stmt 1
	stw 0,32(9)
	.loc 1 658 0
	li 0,0
	.loc 1 656 0
	lwz 11,32(31)
	.loc 1 658 0
	stw 0,32(31)
	.loc 1 656 0
	stw 9,36(11)
	.loc 1 658 0
	stw 0,36(31)
	.loc 1 659 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L92:
.LCFI36:
	.cfi_restore_state
	.loc 1 653 0
	lis 3,.LC27@ha
.LVL108:
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 9,36(31)
	lwz 0,32(31)
	.loc 1 655 0
	stw 0,32(9)
	.loc 1 658 0
	li 0,0
	.loc 1 656 0
	lwz 11,32(31)
	.loc 1 658 0
	stw 0,32(31)
	.loc 1 656 0
	stw 9,36(11)
	.loc 1 658 0
	stw 0,36(31)
	.loc 1 659 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL109:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI37:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE57:
	.size	Cache_UnlinkLRU, .-Cache_UnlinkLRU
	.align 2
	.globl Cache_MakeLRU
	.type	Cache_MakeLRU, @function
Cache_MakeLRU:
.LFB58:
	.loc 1 662 0
	.cfi_startproc
.LVL110:
	mflr 0
	stwu 1,-16(1)
.LCFI38:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 663 0
	lwz 0,36(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L97
.L95:
	.loc 1 664 0
	lis 3,.LC28@ha
.LVL111:
	la 3,.LC28@l(3)
	crxor 6,6,6
	bl Sys_Error
.L96:
	.loc 1 670 0
	lwz 0,20(1)
	.loc 1 666 0
	lis 9,cache_head@ha
	la 9,cache_head@l(9)
	.loc 1 670 0
	mtlr 0
	.loc 1 666 0
	lwz 11,36(9)
	stw 31,32(11)
	.loc 1 667 0
	stw 11,36(31)
	.loc 1 668 0
	stw 9,32(31)
	.loc 1 669 0
	stw 31,36(9)
	.loc 1 670 0
	lwz 31,12(1)
.LVL112:
	addi 1,1,16
	.cfi_remember_state
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL113:
.L97:
.LCFI40:
	.cfi_restore_state
	.loc 1 663 0 discriminator 1
	lwz 0,32(3)
	cmpwi 7,0,0
	bne+ 7,.L95
	b .L96
	.cfi_endproc
.LFE58:
	.size	Cache_MakeLRU, .-Cache_MakeLRU
	.align 2
	.globl Cache_TryAlloc
	.type	Cache_TryAlloc, @function
Cache_TryAlloc:
.LFB59:
	.loc 1 681 0
	.cfi_startproc
.LVL114:
	.loc 1 686 0
	cmpwi 1,4,0
	.loc 1 681 0
	stwu 1,-32(1)
.LCFI41:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.loc 1 686 0
	lis 29,cache_head@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 681 0
	stw 28,16(1)
	.loc 1 686 0
	la 29,cache_head@l(29)
	.loc 1 681 0
	stw 0,36(1)
	mr 28,3
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	stw 27,12(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 686 0
	bne- 1,.L99
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.loc 1 686 0 is_stmt 0 discriminator 1
	lwz 0,24(29)
	cmpw 7,0,29
	beq- 7,.L110
.L99:
	.loc 1 704 0 is_stmt 1
	lis 9,hunk_base@ha
	lwz 11,hunk_base@l(9)
	lis 9,hunk_low_used@ha
	lwz 30,hunk_low_used@l(9)
	.loc 1 705 0
	lwz 9,28(29)
	.loc 1 704 0
	add 30,11,30
.LVL115:
	.loc 1 705 0
	mr 31,9
.LVL116:
.L104:
	.loc 1 711 0
	subf 0,30,31
	.loc 1 709 0
	cmpw 6,31,9
	.loc 1 711 0
	cmpw 7,28,0
	.loc 1 709 0
	beq- 1,.L102
	.loc 1 709 0 is_stmt 0 discriminator 1
	beq- 6,.L103
.L102:
	.loc 1 711 0 is_stmt 1
	ble- 7,.L109
.L103:
	.loc 1 728 0
	lwz 30,0(31)
.LVL117:
	add 30,31,30
.LVL118:
	.loc 1 729 0
	lwz 31,28(31)
.LVL119:
	.loc 1 731 0
	cmpw 7,31,29
	bne+ 7,.L104
	.loc 1 734 0
	lis 9,hunk_size@ha
	lis 10,hunk_high_used@ha
	lwz 9,hunk_size@l(9)
	lwz 0,hunk_high_used@l(10)
	subf 0,0,9
	add 11,11,0
	subf 11,30,11
	cmpw 7,28,11
	bgt- 7,.L105
.L109:
	.loc 1 736 0
	mr 3,30
.LVL120:
	li 4,0
.LVL121:
	li 5,40
	bl memset
	.loc 1 740 0
	lwz 0,24(31)
	.loc 1 739 0
	stw 31,28(30)
	.loc 1 744 0
	mr 3,30
	.loc 1 740 0
	stw 0,24(30)
	.loc 1 737 0
	stw 28,0(30)
	.loc 1 741 0
	lwz 9,24(31)
	.loc 1 742 0
	stw 30,24(31)
	.loc 1 741 0
	stw 30,28(9)
	.loc 1 744 0
	bl Cache_MakeLRU
.LVL122:
.L101:
	.loc 1 750 0
	lwz 0,36(1)
	mr 3,30
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL123:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL124:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL125:
.L110:
.LCFI43:
	.cfi_restore_state
	.loc 1 688 0
	lis 9,hunk_size@ha
	lis 11,hunk_high_used@ha
	lis 30,hunk_low_used@ha
	lwz 9,hunk_size@l(9)
	lwz 0,hunk_high_used@l(11)
	lwz 31,hunk_low_used@l(30)
	subf 0,0,9
	subf 0,31,0
	cmpw 7,0,3
	blt- 7,.L111
.LVL126:
.L100:
	.loc 1 691 0
	lis 9,hunk_base@ha
	.loc 1 692 0
	li 4,0
	.loc 1 691 0
	lwz 27,hunk_base@l(9)
	.loc 1 692 0
	li 5,40
	.loc 1 691 0
	add 30,27,31
.LVL127:
	.loc 1 692 0
	mr 3,30
	bl memset
	.loc 1 695 0
	stw 30,28(29)
	stw 30,24(29)
	.loc 1 698 0
	mr 3,30
	.loc 1 693 0
	stwx 28,27,31
	.loc 1 696 0
	stw 29,28(30)
	stw 29,24(30)
	.loc 1 698 0
	bl Cache_MakeLRU
	.loc 1 699 0
	b .L101
.LVL128:
.L105:
	.loc 1 750 0
	lwz 0,36(1)
	.loc 1 749 0
	li 30,0
.LVL129:
	.loc 1 750 0
	mr 3,30
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL130:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL131:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI44:
	.cfi_def_cfa_offset 0
	blr
.LVL132:
.L111:
.LCFI45:
	.cfi_restore_state
	.loc 1 689 0
	lis 3,.LC29@ha
.LVL133:
	mr 4,28
.LVL134:
	la 3,.LC29@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 31,hunk_low_used@l(30)
	b .L100
	.cfi_endproc
.LFE59:
	.size	Cache_TryAlloc, .-Cache_TryAlloc
	.align 2
	.globl Cache_Print
	.type	Cache_Print, @function
Cache_Print:
.LFB61:
	.loc 1 773 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI46:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	.loc 1 776 0
	lis 30,cache_head@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,cache_head@l(30)
	.loc 1 773 0
	stw 31,20(1)
	.loc 1 776 0
	lwz 31,28(30)
	.cfi_offset 31, -4
.LVL135:
	.loc 1 773 0
	stw 0,28(1)
	.loc 1 776 0
	cmpw 7,31,30
	.loc 1 773 0
	stw 29,12(1)
	.loc 1 776 0
	beq- 7,.L112
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	lis 29,.LC30@ha
	la 29,.LC30@l(29)
.LVL136:
.L114:
	.loc 1 778 0 discriminator 2
	lwz 4,0(31)
	addi 5,31,8
	mr 3,29
	crxor 6,6,6
	bl Con_Printf
	.loc 1 776 0 discriminator 2
	lwz 31,28(31)
.LVL137:
	cmpw 7,31,30
	bne+ 7,.L114
.L112:
	.loc 1 780 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL138:
	addi 1,1,24
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE61:
	.size	Cache_Print, .-Cache_Print
	.align 2
	.globl Cache_Compact
	.type	Cache_Compact, @function
Cache_Compact:
.LFB63:
	.loc 1 800 0
	.cfi_startproc
	.loc 1 801 0
	blr
	.cfi_endproc
.LFE63:
	.size	Cache_Compact, .-Cache_Compact
	.align 2
	.globl Cache_Init
	.type	Cache_Init, @function
Cache_Init:
.LFB64:
	.loc 1 810 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 811 0
	lis 9,cache_head@ha
	.loc 1 814 0
	lis 3,.LC31@ha
	.loc 1 811 0
	la 9,cache_head@l(9)
	.loc 1 814 0
	lis 4,Cache_Flush@ha
	.loc 1 810 0
	stw 0,12(1)
	.loc 1 814 0
	la 3,.LC31@l(3)
	.loc 1 811 0
	stw 9,24(9)
	.loc 1 814 0
	la 4,Cache_Flush@l(4)
	.loc 1 811 0
	stw 9,28(9)
	.loc 1 812 0
	stw 9,32(9)
	stw 9,36(9)
	.loc 1 814 0
	.cfi_offset 65, 4
	bl Cmd_AddCommand
	.loc 1 815 0
	lis 3,.LC32@ha
	lis 4,Cache_Report@ha
	la 3,.LC32@l(3)
	la 4,Cache_Report@l(4)
	bl Cmd_AddCommand
	.loc 1 816 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI49:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE64:
	.size	Cache_Init, .-Cache_Init
	.align 2
	.globl Cache_Free
	.type	Cache_Free, @function
Cache_Free:
.LFB65:
	.loc 1 826 0
	.cfi_startproc
.LVL139:
	mflr 0
	stwu 1,-16(1)
.LCFI50:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 829 0
	lwz 9,0(3)
	cmpwi 7,9,0
	beq- 7,.L120
	.cfi_offset 65, 4
.LVL140:
	.loc 1 834 0
	lwz 11,-16(9)
	.loc 1 836 0
	li 0,0
	.loc 1 834 0
	lwz 10,-12(9)
	.loc 1 840 0
	addi 3,9,-40
.LVL141:
	.loc 1 834 0
	stw 10,28(11)
	.loc 1 835 0
	lwz 10,-12(9)
	.loc 1 836 0
	stw 0,-12(9)
	.loc 1 835 0
	stw 11,24(10)
	.loc 1 836 0
	stw 0,-16(9)
	.loc 1 838 0
	stw 0,0(31)
	.loc 1 841 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL142:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 840 0
	b Cache_UnlinkLRU
.LVL143:
.L120:
.LCFI52:
	.cfi_restore_state
	.loc 1 830 0
	lis 3,.LC33@ha
.LVL144:
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 9,0(31)
.LVL145:
	.loc 1 836 0
	li 0,0
	.loc 1 834 0
	lwz 11,-16(9)
	.loc 1 840 0
	addi 3,9,-40
	.loc 1 834 0
	lwz 10,-12(9)
	stw 10,28(11)
	.loc 1 835 0
	lwz 10,-12(9)
	.loc 1 836 0
	stw 0,-12(9)
	.loc 1 835 0
	stw 11,24(10)
	.loc 1 836 0
	stw 0,-16(9)
	.loc 1 838 0
	stw 0,0(31)
	.loc 1 841 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL146:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI53:
	.cfi_def_cfa_offset 0
	.loc 1 840 0
	b Cache_UnlinkLRU
.LVL147:
	.cfi_endproc
.LFE65:
	.size	Cache_Free, .-Cache_Free
	.align 2
	.globl Cache_Flush
	.type	Cache_Flush, @function
Cache_Flush:
.LFB60:
	.loc 1 760 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI54:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.loc 1 761 0
	lis 31,cache_head@ha
	.cfi_offset 31, -4
	.loc 1 760 0
	stw 0,20(1)
	.loc 1 761 0
	la 31,cache_head@l(31)
	lwz 9,28(31)
	cmpw 7,9,31
	beq- 7,.L121
	.cfi_offset 65, 4
.L124:
	.loc 1 762 0
	lwz 3,4(9)
	bl Cache_Free
	.loc 1 761 0
	lwz 9,28(31)
	cmpw 7,9,31
	bne+ 7,.L124
.L121:
	.loc 1 763 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE60:
	.size	Cache_Flush, .-Cache_Flush
	.align 2
	.globl Cache_Move
	.type	Cache_Move, @function
Cache_Move:
.LFB54:
	.loc 1 576 0
	.cfi_startproc
.LVL148:
	mflr 0
	stwu 1,-24(1)
.LCFI56:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 580 0
	li 4,1
	.loc 1 576 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 580 0
	lwz 3,0(3)
.LVL149:
	.loc 1 576 0
	stw 29,12(1)
	.loc 1 580 0
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl Cache_TryAlloc
.LVL150:
	.loc 1 581 0
	mr. 30,3
	beq- 0,.L127
	.loc 1 585 0
	lwz 5,0(31)
	addi 29,30,40
	mr 3,29
.LVL151:
	addi 4,31,40
	addi 5,5,-40
	bl Q_memcpy
	.loc 1 586 0
	lwz 0,4(31)
	.loc 1 587 0
	addi 3,30,8
	addi 4,31,8
	.loc 1 586 0
	stw 0,4(30)
	.loc 1 587 0
	li 5,16
	bl Q_memcpy
	.loc 1 588 0
	lwz 3,4(31)
	bl Cache_Free
	.loc 1 597 0
	lwz 0,28(1)
	.loc 1 589 0
	lwz 9,4(30)
	.loc 1 597 0
	mtlr 0
	lwz 30,16(1)
.LVL152:
	.loc 1 589 0
	stw 29,0(9)
	.loc 1 597 0
	lwz 31,20(1)
.LVL153:
	lwz 29,12(1)
.LVL154:
	addi 1,1,24
	.cfi_remember_state
.LCFI57:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL155:
.L127:
.LCFI58:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 595 0
	lwz 3,4(31)
.LVL156:
	.loc 1 597 0
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL157:
	lwz 31,20(1)
.LVL158:
	addi 1,1,24
.LCFI59:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 1 595 0
	b Cache_Free
	.cfi_endproc
.LFE54:
	.size	Cache_Move, .-Cache_Move
	.align 2
	.globl Cache_FreeLow
	.type	Cache_FreeLow, @function
Cache_FreeLow:
.LFB55:
	.loc 1 607 0
	.cfi_startproc
.LVL159:
	mflr 0
	stwu 1,-24(1)
.LCFI60:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 1 612 0
	lis 31,cache_head@ha
	.cfi_offset 31, -4
	.loc 1 607 0
	stw 0,28(1)
	.loc 1 612 0
	la 31,cache_head@l(31)
	.loc 1 607 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 612 0
	lwz 0,28(31)
.LVL160:
	.loc 1 607 0
	stw 29,12(1)
	.loc 1 613 0
	cmpw 7,0,31
	beq- 7,.L129
	.cfi_offset 29, -12
	.loc 1 615 0
	lis 29,hunk_base@ha
	lwz 9,hunk_base@l(29)
	add 9,9,3
	cmplw 7,0,9
	blt+ 7,.L134
	b .L129
.LVL161:
.L133:
	lwz 9,hunk_base@l(29)
	add 9,9,30
	cmplw 7,0,9
	bge- 7,.L129
.L134:
	.loc 1 617 0
	mr 3,0
	bl Cache_Move
.LVL162:
	.loc 1 612 0
	lwz 0,28(31)
.LVL163:
	.loc 1 613 0
	cmpw 7,0,31
	bne+ 7,.L133
.LVL164:
.L129:
	.loc 1 619 0
	lwz 0,28(1)
.LVL165:
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL166:
	lwz 31,20(1)
	addi 1,1,24
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE55:
	.size	Cache_FreeLow, .-Cache_FreeLow
	.align 2
	.globl Hunk_AllocName
	.type	Hunk_AllocName, @function
Hunk_AllocName:
.LFB46:
	.loc 1 400 0
	.cfi_startproc
.LVL167:
	stwu 1,-32(1)
.LCFI62:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 30,24(1)
	.loc 1 407 0
	mr. 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 400 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 0,36(1)
	stw 26,8(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.loc 1 407 0
	blt- 0,.L138
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LVL168:
.L136:
	.loc 1 412 0
	lis 9,hunk_size@ha
	lis 26,hunk_low_used@ha
	lwz 0,hunk_size@l(9)
	lis 9,hunk_high_used@ha
	lwz 31,hunk_low_used@l(26)
	.loc 1 410 0
	addi 30,30,15
.LVL169:
	.loc 1 412 0
	lwz 9,hunk_high_used@l(9)
	.loc 1 410 0
	rlwinm 30,30,0,0,27
.LVL170:
	.loc 1 412 0
	subf 0,31,0
	.loc 1 410 0
	addi 30,30,16
.LVL171:
	.loc 1 412 0
	subf 0,9,0
	cmpw 7,30,0
	ble+ 7,.L137
	.loc 1 413 0
	lis 3,.LC35@ha
	mr 4,30
	la 3,.LC35@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 31,hunk_low_used@l(26)
.L137:
	.loc 1 415 0
	lis 9,hunk_base@ha
	.loc 1 416 0
	add 0,30,31
	.loc 1 415 0
	lwz 28,hunk_base@l(9)
	.loc 1 418 0
	mr 3,0
	.loc 1 416 0
	stw 0,hunk_low_used@l(26)
	.loc 1 418 0
	bl Cache_FreeLow
	.loc 1 415 0
	add 29,28,31
.LVL172:
	.loc 1 420 0
	mr 5,30
	mr 3,29
	li 4,0
	bl memset
	.loc 1 423 0
	lis 0,0x1df0
	ori 0,0,493
	.loc 1 422 0
	stw 30,4(29)
	.loc 1 423 0
	stwx 0,28,31
	.loc 1 424 0
	addi 3,29,8
	mr 4,27
	li 5,8
	bl Q_strncpy
	.loc 1 427 0
	lwz 0,36(1)
	addi 3,29,16
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL173:
	lwz 28,16(1)
	lwz 29,20(1)
.LVL174:
	lwz 30,24(1)
.LVL175:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL176:
.L138:
.LCFI64:
	.cfi_restore_state
	.loc 1 408 0
	lis 3,.LC34@ha
.LVL177:
	mr 4,30
.LVL178:
	la 3,.LC34@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L136
	.cfi_endproc
.LFE46:
	.size	Hunk_AllocName, .-Hunk_AllocName
	.align 2
	.globl Hunk_Alloc
	.type	Hunk_Alloc, @function
Hunk_Alloc:
.LFB47:
	.loc 1 435 0
	.cfi_startproc
.LVL179:
	.loc 1 436 0
	lis 4,.LC36@ha
	.loc 1 437 0
	.loc 1 436 0
	la 4,.LC36@l(4)
	b Hunk_AllocName
.LVL180:
	.cfi_endproc
.LFE47:
	.size	Hunk_Alloc, .-Hunk_Alloc
	.align 2
	.globl Cache_FreeHigh
	.type	Cache_FreeHigh, @function
Cache_FreeHigh:
.LFB56:
	.loc 1 629 0
	.cfi_startproc
.LVL181:
	stwu 1,-32(1)
.LCFI65:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 632 0
	li 9,0
	.loc 1 629 0
	stw 30,24(1)
	lis 30,cache_head@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,cache_head@l(30)
	stw 31,28(1)
	.loc 1 635 0
	lwz 31,24(30)
	.cfi_offset 31, -4
	.loc 1 629 0
	stw 27,12(1)
	mr 27,3
	.cfi_offset 27, -20
	.loc 1 636 0
	cmpw 7,31,30
	.loc 1 629 0
	stw 28,16(1)
	stw 29,20(1)
	.loc 1 638 0
	lis 28,hunk_base@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 629 0
	stw 0,36(1)
	.loc 1 638 0
	lis 29,hunk_size@ha
.LVL182:
	.loc 1 640 0
	cmpw 6,31,9
	.loc 1 644 0
	mr 3,31
.LVL183:
	.loc 1 636 0
	beq- 7,.L140
	.cfi_offset 65, 4
.LVL184:
.L146:
	.loc 1 638 0
	lwz 0,hunk_size@l(29)
	lwz 11,0(31)
	lwz 10,hunk_base@l(28)
	subf 0,27,0
	add 11,31,11
	add 0,10,0
	cmplw 7,11,0
	ble- 7,.L140
	.loc 1 640 0
	beq- 6,.L145
	.loc 1 644 0
	bl Cache_Move
.LVL185:
	.loc 1 632 0
	mr 9,31
.LVL186:
.L147:
	.loc 1 635 0
	lwz 31,24(30)
.LVL187:
	.loc 1 636 0
	cmpw 7,31,30
	.loc 1 640 0
	cmpw 6,31,9
	.loc 1 644 0
	mr 3,31
	.loc 1 636 0
	bne+ 7,.L146
.LVL188:
.L140:
	.loc 1 648 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL189:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI66:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL190:
.L145:
.LCFI67:
	.cfi_restore_state
	.loc 1 641 0
	lwz 3,4(9)
.LVL191:
	bl Cache_Free
.LVL192:
	.loc 1 632 0
	mr 9,31
	b .L147
	.cfi_endproc
.LFE56:
	.size	Cache_FreeHigh, .-Cache_FreeHigh
	.align 2
	.globl Hunk_HighAllocName
	.type	Hunk_HighAllocName, @function
Hunk_HighAllocName:
.LFB52:
	.loc 1 483 0
	.cfi_startproc
.LVL193:
	stwu 1,-32(1)
.LCFI68:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	.loc 1 486 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 483 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	.loc 1 486 0
	blt- 0,.L153
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL194:
.L149:
	.loc 1 489 0
	lis 30,hunk_tempactive@ha
	lbz 0,hunk_tempactive@l(30)
	cmpwi 7,0,0
	bne- 7,.L154
	.loc 1 501 0
	lis 29,hunk_size@ha
	lis 9,hunk_low_used@ha
	lis 30,hunk_high_used@ha
	lwz 11,hunk_size@l(29)
	lwz 9,hunk_low_used@l(9)
	.loc 1 499 0
	addi 31,31,15
.LVL195:
	.loc 1 501 0
	lwz 0,hunk_high_used@l(30)
	.loc 1 499 0
	rlwinm 31,31,0,0,27
.LVL196:
	.loc 1 501 0
	subf 9,9,11
	.loc 1 499 0
	addi 31,31,16
.LVL197:
	.loc 1 501 0
	subf 9,0,9
	cmpw 7,31,9
	bgt- 7,.L155
.L151:
	.loc 1 507 0
	add 0,31,0
	.loc 1 508 0
	mr 3,0
	.loc 1 507 0
	stw 0,hunk_high_used@l(30)
	.loc 1 508 0
	bl Cache_FreeHigh
	.loc 1 510 0
	lwz 0,hunk_high_used@l(30)
	lis 9,hunk_base@ha
	lwz 29,hunk_size@l(29)
	lwz 28,hunk_base@l(9)
	.loc 1 512 0
	mr 5,31
	.loc 1 510 0
	subf 29,0,29
	.loc 1 512 0
	li 4,0
	.loc 1 510 0
	add 30,28,29
.LVL198:
	.loc 1 512 0
	mr 3,30
	bl memset
	.loc 1 514 0
	lis 0,0x1df0
	ori 0,0,493
	.loc 1 513 0
	stw 31,4(30)
	.loc 1 514 0
	stwx 0,28,29
	.loc 1 515 0
	addi 3,30,8
	mr 4,27
	li 5,8
	bl Q_strncpy
	.loc 1 518 0
	lwz 0,36(1)
	.loc 1 517 0
	addi 3,30,16
	.loc 1 518 0
	lwz 27,12(1)
.LVL199:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL200:
	lwz 31,28(1)
.LVL201:
	addi 1,1,32
	.cfi_remember_state
.LCFI69:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL202:
.L154:
.LCFI70:
	.cfi_restore_state
	.loc 1 491 0
	lis 9,hunk_tempmark@ha
	.loc 1 501 0
	lis 29,hunk_size@ha
	.loc 1 491 0
	lwz 3,hunk_tempmark@l(9)
	.loc 1 499 0
	addi 31,31,15
.LVL203:
	rlwinm 31,31,0,0,27
.LVL204:
	.loc 1 491 0
	bl Hunk_FreeToHighMark
	.loc 1 492 0
	li 0,0
	.loc 1 501 0
	lis 9,hunk_low_used@ha
	.loc 1 492 0
	stb 0,hunk_tempactive@l(30)
	.loc 1 501 0
	lwz 11,hunk_size@l(29)
	lis 30,hunk_high_used@ha
	lwz 9,hunk_low_used@l(9)
	.loc 1 499 0
	addi 31,31,16
.LVL205:
	.loc 1 501 0
	lwz 0,hunk_high_used@l(30)
	subf 9,9,11
	subf 9,0,9
	cmpw 7,31,9
	ble+ 7,.L151
.L155:
	.loc 1 503 0
	lis 3,.LC38@ha
	mr 4,31
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 518 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL206:
	.loc 1 504 0
	li 3,0
	.loc 1 518 0
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL207:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI71:
	.cfi_def_cfa_offset 0
	blr
.LVL208:
.L153:
.LCFI72:
	.cfi_restore_state
	.loc 1 487 0
	lis 3,.LC37@ha
.LVL209:
	mr 4,31
.LVL210:
	la 3,.LC37@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L149
	.cfi_endproc
.LFE52:
	.size	Hunk_HighAllocName, .-Hunk_HighAllocName
	.align 2
	.globl Hunk_TempAlloc
	.type	Hunk_TempAlloc, @function
Hunk_TempAlloc:
.LFB53:
	.loc 1 529 0
	.cfi_startproc
.LVL211:
	stwu 1,-24(1)
.LCFI73:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 532 0
	addi 3,3,15
.LVL212:
	.loc 1 529 0
	stw 31,20(1)
	.loc 1 534 0
	lis 31,hunk_tempactive@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 529 0
	stw 0,28(1)
	.loc 1 534 0
	lbz 0,hunk_tempactive@l(31)
	.cfi_offset 65, 4
	.loc 1 529 0
	stw 29,12(1)
	lis 29,hunk_tempmark@ha
	.cfi_offset 29, -12
	.loc 1 534 0
	cmpwi 7,0,0
	.loc 1 529 0
	stw 30,16(1)
	.loc 1 532 0
	rlwinm 30,3,0,0,27
	.cfi_offset 30, -8
.LVL213:
	.loc 1 534 0
	beq+ 7,.L157
	.loc 1 536 0
	lwz 3,hunk_tempmark@l(29)
	bl Hunk_FreeToHighMark
	.loc 1 537 0
	li 0,0
	stb 0,hunk_tempactive@l(31)
.L157:
	.loc 1 540 0
	bl Hunk_HighMark
	.loc 1 542 0
	lis 4,.LC39@ha
	.loc 1 540 0
	stw 3,hunk_tempmark@l(29)
	.loc 1 542 0
	la 4,.LC39@l(4)
	mr 3,30
	bl Hunk_HighAllocName
.LVL214:
	.loc 1 544 0
	li 0,1
	stb 0,hunk_tempactive@l(31)
	.loc 1 547 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL215:
	lwz 31,20(1)
	addi 1,1,24
.LCFI74:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE53:
	.size	Hunk_TempAlloc, .-Hunk_TempAlloc
	.align 2
	.globl Cache_Check
	.type	Cache_Check, @function
Cache_Check:
.LFB66:
	.loc 1 851 0
	.cfi_startproc
.LVL216:
	mflr 0
	stwu 1,-16(1)
.LCFI75:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 851 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 854 0
	lwz 30,0(3)
	.loc 1 855 0
	li 3,0
.LVL217:
	.loc 1 854 0
	cmpwi 7,30,0
	beq- 7,.L160
	.loc 1 857 0
	addi 30,30,-40
.LVL218:
	.loc 1 860 0
	mr 3,30
	bl Cache_UnlinkLRU
	.loc 1 861 0
	mr 3,30
	bl Cache_MakeLRU
	.loc 1 863 0
	lwz 3,0(31)
.LVL219:
.L160:
	.loc 1 864 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL220:
	addi 1,1,16
.LCFI76:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE66:
	.size	Cache_Check, .-Cache_Check
	.align 2
	.globl Cache_Alloc
	.type	Cache_Alloc, @function
Cache_Alloc:
.LFB67:
	.loc 1 873 0
	.cfi_startproc
.LVL221:
	mflr 0
	stwu 1,-32(1)
.LCFI77:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 0,36(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 876 0
	lwz 0,0(3)
	.loc 1 873 0
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
	.loc 1 876 0
	cmpwi 7,0,0
	.loc 1 873 0
	stw 26,8(1)
	stw 28,16(1)
	stw 29,20(1)
	.loc 1 876 0
	beq- 7,.L163
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.loc 1 877 0
	lis 3,.LC40@ha
.LVL222:
	la 3,.LC40@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL223:
.L163:
	.loc 1 879 0
	cmpwi 7,31,0
	ble- 7,.L168
.L164:
	.loc 1 882 0
	addi 31,31,55
.LVL224:
	.loc 1 897 0
	lis 29,cache_head@ha
	.loc 1 898 0
	lis 26,.LC42@ha
	.loc 1 882 0
	rlwinm 28,31,0,0,27
.LVL225:
	.loc 1 897 0
	la 29,cache_head@l(29)
	.loc 1 898 0
	la 26,.LC42@l(26)
	b .L167
.LVL226:
.L165:
	.loc 1 897 0
	lwz 9,32(29)
	cmpw 7,9,29
	beq- 7,.L169
.LVL227:
.L166:
	.loc 1 900 0
	lwz 3,4(9)
	bl Cache_Free
.LVL228:
.L167:
	.loc 1 887 0
	li 4,0
	mr 3,28
	bl Cache_TryAlloc
.LVL229:
	.loc 1 888 0
	mr. 31,3
	beq+ 0,.L165
	.loc 1 890 0
	addi 3,31,8
.LVL230:
	mr 4,27
	li 5,15
	bl strncpy
	.loc 1 891 0
	addi 0,31,40
	stw 0,0(30)
	.loc 1 903 0
	mr 3,30
	.loc 1 904 0
	lwz 0,36(1)
	.loc 1 892 0
	stw 30,4(31)
	.loc 1 904 0
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL231:
	lwz 28,16(1)
.LVL232:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL233:
	lwz 31,28(1)
.LVL234:
	addi 1,1,32
	.cfi_remember_state
.LCFI78:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.loc 1 903 0
	b Cache_Check
.LVL235:
.L169:
.LCFI79:
	.cfi_restore_state
	.loc 1 898 0
	mr 3,26
.LVL236:
	crxor 6,6,6
	bl Sys_Error
	lwz 9,32(29)
	b .L166
.LVL237:
.L168:
	.loc 1 880 0
	lis 3,.LC41@ha
	mr 4,31
	la 3,.LC41@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L164
	.cfi_endproc
.LFE67:
	.size	Cache_Alloc, .-Cache_Alloc
	.align 2
	.globl Memory_Init
	.type	Memory_Init, @function
Memory_Init:
.LFB68:
	.loc 1 915 0
	.cfi_startproc
.LVL238:
	mflr 0
	stwu 1,-16(1)
.LCFI80:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 919 0
	lis 9,hunk_base@ha
	stw 3,hunk_base@l(9)
	.loc 1 920 0
	lis 9,hunk_size@ha
	stw 4,hunk_size@l(9)
	.loc 1 921 0
	lis 9,hunk_low_used@ha
	.loc 1 915 0
	stw 0,20(1)
	.loc 1 921 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,hunk_low_used@l(9)
	.loc 1 922 0
	lis 9,hunk_high_used@ha
	.loc 1 915 0
	stw 30,8(1)
	.loc 1 917 0
	li 30,0
	.cfi_offset 30, -8
	.loc 1 915 0
	stw 31,12(1)
	.loc 1 926 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 922 0
	stw 0,hunk_high_used@l(9)
	.loc 1 924 0
	bl Cache_Init
.LVL239:
	.loc 1 925 0
	lis 3,.LC43@ha
	.loc 1 926 0
	ori 31,31,49120
	.loc 1 925 0
	la 3,.LC43@l(3)
	.loc 1 917 0
	ori 30,30,49152
	.loc 1 925 0
	bl COM_CheckParm
.LVL240:
	.loc 1 926 0
	cmpwi 0,3,0
	beq- 0,.L171
	.loc 1 928 0
	lis 9,com_argc@ha
	lwz 9,com_argc@l(9)
	addi 0,9,-1
	cmpw 7,3,0
	blt- 7,.L174
	.loc 1 931 0
	lis 3,.LC44@ha
.LVL241:
	la 3,.LC44@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL242:
.L171:
	.loc 1 933 0
	lis 4,.LC45@ha
	mr 3,30
	la 4,.LC45@l(4)
	bl Hunk_AllocName
.LBB4:
.LBB5:
	.loc 1 83 0
	li 0,0
	stw 0,12(3)
.LBE5:
.LBE4:
	.loc 1 933 0
	lis 10,mainzone@ha
.LBB10:
.LBB6:
	.loc 1 84 0
	stw 0,4(3)
	.loc 1 80 0
	addi 9,3,32
	.loc 1 88 0
	stw 0,36(3)
	.loc 1 89 0
	lis 0,0x1d
	ori 0,0,18961
	.loc 1 87 0
	addi 11,3,4
	.loc 1 89 0
	stw 0,40(3)
.LBE6:
.LBE10:
	.loc 1 935 0
	lwz 0,20(1)
	.loc 1 933 0
	stw 3,mainzone@l(10)
.LVL243:
.LBB11:
.LBB7:
	.loc 1 82 0
	li 10,1
.LBE7:
.LBE11:
	.loc 1 935 0
	mtlr 0
.LBB12:
.LBB8:
	.loc 1 90 0
	stw 31,32(3)
.LBE8:
.LBE12:
	.loc 1 935 0
	lwz 30,8(1)
.LVL244:
	lwz 31,12(1)
.LBB13:
.LBB9:
	.loc 1 80 0
	stw 9,20(3)
	stw 9,16(3)
	.loc 1 82 0
	stw 10,8(3)
	.loc 1 85 0
	stw 9,28(3)
	.loc 1 87 0
	stw 11,44(3)
	stw 11,48(3)
.LBE9:
.LBE13:
	.loc 1 935 0
	addi 1,1,16
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL245:
.L174:
.LCFI82:
	.cfi_restore_state
	.loc 1 929 0
	lis 9,com_argv@ha
	addi 3,3,1
.LVL246:
	lwz 9,com_argv@l(9)
	slwi 3,3,2
.LVL247:
	lwzx 3,9,3
	bl Q_atoi
	slwi 30,3,10
.LVL248:
	addi 31,30,-32
	b .L171
	.cfi_endproc
.LFE68:
	.size	Memory_Init, .-Memory_Init
	.comm	cache_head,40,4
	.comm	hunk_tempmark,4,4
	.comm	hunk_tempactive,1,1
	.comm	hunk_high_used,4,4
	.comm	hunk_low_used,4,4
	.comm	hunk_size,4,4
	.comm	hunk_base,4,4
	.comm	mainzone,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1501560836
.LC3:
	.4byte	897581056
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"%4.1f megabyte data cache\n"
	.zero	1
.LC4:
	.string	"Z_Free: NULL pointer"
	.zero	3
.LC5:
	.string	"Z_Free: freed a pointer without ZONEID"
	.zero	1
.LC6:
	.string	"Z_Free: freed a freed pointer"
	.zero	2
.LC7:
	.string	"Z_TagMalloc: tried to use a 0 tag"
	.zero	2
.LC8:
	.string	"zone size: %i  location: %p\n"
	.zero	3
.LC9:
	.string	"block:%p    size:%7i    tag:%3i\n"
	.zero	3
.LC10:
	.string	"ERROR: block size does not touch the next block\n"
	.zero	3
.LC11:
	.string	"ERROR: next block doesn't have proper back link\n"
	.zero	3
.LC12:
	.string	"ERROR: two consecutive free blocks\n"
.LC13:
	.string	"Z_CheckHeap: block size does not touch the next block\n"
	.zero	1
.LC14:
	.string	"Z_CheckHeap: next block doesn't have proper back link\n"
	.zero	1
.LC15:
	.string	"Z_CheckHeap: two consecutive free blocks\n"
	.zero	2
.LC16:
	.string	"Z_Malloc: failed on allocation of %i bytes"
	.zero	1
.LC17:
	.string	"Hunk_Check: trahsed sentinal"
	.zero	3
.LC18:
	.string	"Hunk_Check: bad size"
	.zero	3
.LC19:
	.string	"          :%8i total hunk size\n"
.LC20:
	.string	"-------------------------\n"
	.zero	1
.LC21:
	.string	"          :%8i REMAINING\n"
	.zero	2
.LC22:
	.string	"%8p :%8i %8s\n"
	.zero	2
.LC23:
	.string	"          :%8i %8s (TOTAL)\n"
.LC24:
	.string	"%8i total blocks\n"
	.zero	2
.LC25:
	.string	"Hunk_FreeToLowMark: bad mark %i"
.LC26:
	.string	"Hunk_FreeToHighMark: bad mark %i"
	.zero	3
.LC27:
	.string	"Cache_UnlinkLRU: NULL link"
	.zero	1
.LC28:
	.string	"Cache_MakeLRU: active link"
	.zero	1
.LC29:
	.string	"Cache_TryAlloc: %i is greater then free hunk"
	.zero	3
.LC30:
	.string	"%8i : %s\n"
	.zero	2
.LC31:
	.string	"flush"
	.zero	2
.LC32:
	.string	"cache_report"
	.zero	3
.LC33:
	.string	"Cache_Free: not allocated"
	.zero	2
.LC34:
	.string	"Hunk_Alloc: bad size: %i"
	.zero	3
.LC35:
	.string	"Hunk_Alloc: failed on %i bytes"
	.zero	1
.LC36:
	.string	"unknown"
.LC37:
	.string	"Hunk_HighAllocName: bad size: %i"
	.zero	3
.LC38:
	.string	"Hunk_HighAlloc: failed on %i bytes\n"
.LC39:
	.string	"temp"
	.zero	3
.LC40:
	.string	"Cache_Alloc: allready allocated"
.LC41:
	.string	"Cache_Alloc: size %i"
	.zero	3
.LC42:
	.string	"Cache_Alloc: out of memory"
	.zero	1
.LC43:
	.string	"-zone"
	.zero	2
.LC44:
	.string	"Memory_Init: you must specify a size in KB after -zone"
	.zero	1
.LC45:
	.string	"zone"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf66
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.4byte	.LASF148
	.4byte	.LASF149
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
	.uleb128 0x6
	.4byte	0x6c
	.4byte	0x83
	.uleb128 0x7
	.4byte	0x48
	.byte	0x7
	.byte	0
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
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x9
	.4byte	0x8a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x66
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x6
	.4byte	0x41
	.4byte	0xdd
	.uleb128 0x7
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x6c
	.4byte	0xed
	.uleb128 0x7
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x48
	.4byte	0xfd
	.uleb128 0x7
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x33
	.4byte	0x10d
	.uleb128 0x7
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x123
	.uleb128 0x7
	.4byte	0x48
	.byte	0x1
	.uleb128 0x7
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x133
	.uleb128 0x7
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3
	.byte	0x6f
	.4byte	0x14e
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x72
	.4byte	0x133
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x16
	.4byte	0x8a
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x17
	.4byte	0x16f
	.uleb128 0x6
	.4byte	0x159
	.4byte	0x17f
	.uleb128 0x7
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x14
	.byte	0x5
	.byte	0x52
	.4byte	0x1d2
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x54
	.4byte	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x55
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x56
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x57
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.string	"pad"
	.byte	0x5
	.byte	0x58
	.4byte	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x59
	.4byte	0x17f
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x48
	.byte	0x5
	.byte	0x5b
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x5d
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x61
	.4byte	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x64
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x65
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x66
	.4byte	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x5c
	.byte	0x5
	.byte	0x96
	.4byte	0x3c7
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x9a
	.4byte	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0xa0
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0xa1
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xa5
	.4byte	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0xa6
	.4byte	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa7
	.4byte	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa9
	.4byte	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xb0
	.4byte	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xb1
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xb2
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xb3
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x5
	.byte	0x67
	.4byte	0x1ed
	.uleb128 0xd
	.byte	0x2c
	.byte	0x5
	.byte	0x7e
	.4byte	0x41f
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0x80
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0x81
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0x82
	.4byte	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3d3
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5
	.byte	0x84
	.4byte	0x3de
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1c
	.byte	0x5
	.byte	0x8a
	.4byte	0x49f
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0x8c
	.4byte	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0x8d
	.4byte	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x5
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x5
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x5
	.byte	0x92
	.4byte	0x4a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x5
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x430
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49f
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x5
	.byte	0x94
	.4byte	0x430
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4ab
	.uleb128 0x5
	.byte	0x4
	.4byte	0x425
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x5
	.byte	0xb4
	.4byte	0x2a2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c8
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x539
	.uleb128 0xf
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x539
	.uleb128 0xf
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x53e
	.uleb128 0xf
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x543
	.uleb128 0xf
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x548
	.uleb128 0xf
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0x54d
	.uleb128 0xf
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x552
	.uleb128 0xf
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.4byte	0x2c
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x9
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x33
	.uleb128 0x9
	.4byte	0x48
	.uleb128 0x9
	.4byte	0x41
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x499
	.4byte	0x4d9
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x18
	.byte	0x1
	.byte	0x1d
	.4byte	0x5c3
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"id"
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x1
	.byte	0x22
	.4byte	0x5c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x1
	.byte	0x22
	.4byte	0x5c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"pad"
	.byte	0x1
	.byte	0x23
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x563
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x1
	.byte	0x24
	.4byte	0x563
	.uleb128 0xd
	.byte	0x20
	.byte	0x1
	.byte	0x26
	.4byte	0x607
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1
	.byte	0x29
	.4byte	0x5c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2a
	.4byte	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5c9
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2b
	.4byte	0x5d4
	.uleb128 0x11
	.byte	0x10
	.byte	0x1
	.2byte	0x10c
	.4byte	0x64f
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x10e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x110
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x111
	.4byte	0x618
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x28
	.byte	0x1
	.2byte	0x22d
	.4byte	0x6d2
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x22f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x230
	.4byte	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x231
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x232
	.4byte	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x232
	.4byte	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x233
	.4byte	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x233
	.4byte	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65b
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x234
	.4byte	0x65b
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.4byte	0x71a
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0x4a
	.4byte	0x71a
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4c
	.4byte	0x607
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60d
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x314
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	0x6ea
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x762
	.uleb128 0x19
	.4byte	0x6f8
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	0x703
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	0x70e
	.byte	0x1
	.byte	0x59
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST2
	.4byte	0x7a9
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0x63
	.4byte	0x5d
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x65
	.4byte	0x607
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x1
	.byte	0x65
	.4byte	0x607
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST6
	.4byte	0x830
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0x9b
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"tag"
	.byte	0x1
	.byte	0x9b
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0x9d
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0x9e
	.4byte	0x607
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9e
	.4byte	0x607
	.4byte	.LLST11
	.uleb128 0x21
	.string	"new"
	.byte	0x1
	.byte	0x9e
	.4byte	0x607
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x1
	.byte	0x9e
	.4byte	0x607
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST14
	.4byte	0x868
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0xdb
	.4byte	0x71a
	.4byte	.LLST15
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0xdd
	.4byte	0x607
	.4byte	.LLST16
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST17
	.4byte	0x891
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0xf9
	.4byte	0x607
	.4byte	.LLST18
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST19
	.4byte	0x8cd
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8e
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0x90
	.4byte	0x5d
	.4byte	.LLST21
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST22
	.4byte	0x8f6
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.2byte	0x127
	.4byte	0x8f6
	.4byte	.LLST23
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x13b
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST24
	.4byte	0x9b5
	.uleb128 0x24
	.string	"all"
	.byte	0x1
	.2byte	0x13b
	.4byte	0xb5
	.4byte	.LLST25
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f6
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f6
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f6
	.4byte	.LLST28
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f6
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f6
	.4byte	.LLST30
	.uleb128 0x25
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x13e
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x23
	.string	"sum"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x25
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x13f
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x140
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x6
	.4byte	0x6c
	.4byte	0x9c5
	.uleb128 0x7
	.4byte	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1b7
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST34
	.4byte	0xa09
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x41
	.4byte	.LLST35
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1cf
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST36
	.4byte	0xa34
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x41
	.4byte	.LLST37
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1c4
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST38
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x28a
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST39
	.4byte	0xa78
	.uleb128 0x24
	.string	"cs"
	.byte	0x1
	.2byte	0x28a
	.4byte	0xa78
	.4byte	.LLST40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6de
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x295
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST41
	.4byte	0xaa8
	.uleb128 0x24
	.string	"cs"
	.byte	0x1
	.2byte	0x295
	.4byte	0xa78
	.4byte	.LLST42
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2a8
	.byte	0x1
	.4byte	0xa78
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST43
	.4byte	0xb06
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x41
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xb5
	.4byte	.LLST45
	.uleb128 0x23
	.string	"cs"
	.byte	0x1
	.2byte	0x2aa
	.4byte	0xa78
	.4byte	.LLST46
	.uleb128 0x23
	.string	"new"
	.byte	0x1
	.2byte	0x2aa
	.4byte	0xa78
	.4byte	.LLST47
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x304
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST48
	.4byte	0xb30
	.uleb128 0x23
	.string	"cd"
	.byte	0x1
	.2byte	0x306
	.4byte	0xa78
	.4byte	.LLST49
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x31f
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x329
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST50
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x339
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST51
	.4byte	0xb93
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x339
	.4byte	0x6d2
	.4byte	.LLST52
	.uleb128 0x23
	.string	"cs"
	.byte	0x1
	.2byte	0x33b
	.4byte	0xa78
	.4byte	.LLST53
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x2f7
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST54
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST55
	.4byte	0xbe2
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0xa78
	.4byte	.LLST56
	.uleb128 0x23
	.string	"new"
	.byte	0x1
	.2byte	0x241
	.4byte	0xa78
	.4byte	.LLST57
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x25e
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST58
	.4byte	0xc1b
	.uleb128 0x28
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x25e
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.2byte	0x260
	.4byte	0xa78
	.4byte	.LLST60
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x18f
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST61
	.4byte	0xc68
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x18f
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x18f
	.4byte	0x66
	.4byte	.LLST63
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.2byte	0x191
	.4byte	0x8f6
	.4byte	.LLST64
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc96
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x41
	.4byte	.LLST65
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x274
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST66
	.4byte	0xcdf
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x274
	.4byte	0x41
	.4byte	.LLST67
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.2byte	0x276
	.4byte	0xa78
	.4byte	.LLST68
	.uleb128 0x25
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x276
	.4byte	0xa78
	.4byte	.LLST69
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1e2
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST70
	.4byte	0xd2c
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x28
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x66
	.4byte	.LLST72
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x8f6
	.4byte	.LLST73
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x210
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST74
	.4byte	0xd69
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x210
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x212
	.4byte	0x5d
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x352
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST76
	.4byte	0xda5
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x352
	.4byte	0x6d2
	.4byte	.LLST77
	.uleb128 0x23
	.string	"cs"
	.byte	0x1
	.2byte	0x354
	.4byte	0xa78
	.4byte	.LLST78
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x368
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST79
	.4byte	0xe01
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.2byte	0x368
	.4byte	0x6d2
	.4byte	.LLST80
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x368
	.4byte	0x41
	.4byte	.LLST81
	.uleb128 0x28
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x368
	.4byte	0x66
	.4byte	.LLST82
	.uleb128 0x23
	.string	"cs"
	.byte	0x1
	.2byte	0x36a
	.4byte	0xa78
	.4byte	.LLST83
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x392
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST84
	.4byte	0xe8c
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x392
	.4byte	0x5d
	.4byte	.LLST85
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x392
	.4byte	0x41
	.4byte	.LLST86
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x394
	.4byte	0x41
	.4byte	.LLST87
	.uleb128 0x25
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x395
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x2e
	.4byte	0x6ea
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x3a6
	.uleb128 0x1a
	.4byte	0x703
	.4byte	.LLST89
	.uleb128 0x1a
	.4byte	0x6f8
	.4byte	.LLST90
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x30
	.4byte	0x70e
	.4byte	.LLST91
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF135
	.byte	0x2
	.byte	0x9a
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF136
	.byte	0x2
	.byte	0x9b
	.4byte	0xaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x7
	.2byte	0xc2c
	.4byte	0x4d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x548
	.4byte	0xec7
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	0xecc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x557
	.uleb128 0x35
	.4byte	.LASF139
	.byte	0x1
	.byte	0x40
	.4byte	0x71a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mainzone
	.uleb128 0x32
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x113
	.4byte	0xc7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_base
	.uleb128 0x32
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x114
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_size
	.uleb128 0x32
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x116
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_low_used
	.uleb128 0x32
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x117
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_high_used
	.uleb128 0x32
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x119
	.4byte	0xb5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_tempactive
	.uleb128 0x32
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x11a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hunk_tempmark
	.uleb128 0x32
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x238
	.4byte	0x6de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cache_head
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.4byte	.LFB62-.Ltext0
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
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 -8
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0xb
	.byte	0x3
	.4byte	mainzone
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	mainzone
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	mainzone
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 12
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 12
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	mainzone
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI19-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-1-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	hunk_base
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	hunk_base
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB51-.Ltext0
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
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	cache_head+36
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+28
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB61-.Ltext0
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
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+28
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB60-.Ltext0
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
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+28
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+28
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+28
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL190-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+24
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cache_head+24
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL192-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL209-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB53-.Ltext0
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
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI76-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL223-1-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -55
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL237-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL223-1-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL235-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-1-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xc000
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xc000
	.byte	0x9f
	.4byte	.LVL248-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"count"
.LASF127:
	.string	"Cache_FreeHigh"
.LASF110:
	.string	"Hunk_LowMark"
.LASF124:
	.string	"new_low_hunk"
.LASF140:
	.string	"hunk_base"
.LASF101:
	.string	"Hunk_Print"
.LASF77:
	.string	"prev"
.LASF98:
	.string	"Z_TagMalloc"
.LASF70:
	.string	"neighbours"
.LASF24:
	.string	"type"
.LASF111:
	.string	"Hunk_HighMark"
.LASF131:
	.string	"Cache_Check"
.LASF6:
	.string	"long long unsigned int"
.LASF42:
	.string	"plane"
.LASF58:
	.string	"cached_dlight"
.LASF37:
	.string	"anim_next"
.LASF66:
	.string	"next"
.LASF47:
	.string	"extents"
.LASF112:
	.string	"Cache_UnlinkLRU"
.LASF107:
	.string	"Hunk_FreeToLowMark"
.LASF55:
	.string	"lightmaptexturenum"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF108:
	.string	"mark"
.LASF91:
	.string	"other"
.LASF117:
	.string	"Cache_Report"
.LASF75:
	.string	"memblock_s"
.LASF78:
	.string	"memblock_t"
.LASF46:
	.string	"texturemins"
.LASF147:
	.string	"GNU C 4.6.3"
.LASF150:
	.string	"_wgpipe"
.LASF141:
	.string	"hunk_size"
.LASF12:
	.string	"long int"
.LASF149:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF65:
	.string	"glpoly_s"
.LASF72:
	.string	"glpoly_t"
.LASF87:
	.string	"lru_next"
.LASF79:
	.string	"blocklist"
.LASF132:
	.string	"Cache_Alloc"
.LASF106:
	.string	"totalblocks"
.LASF148:
	.string	"d:/Data/Nintendo/TenebraeGX/src/zone.c"
.LASF9:
	.string	"double"
.LASF100:
	.string	"Hunk_Check"
.LASF52:
	.string	"texinfo"
.LASF50:
	.string	"polys"
.LASF81:
	.string	"memzone_t"
.LASF20:
	.string	"mplane_s"
.LASF26:
	.string	"mplane_t"
.LASF14:
	.string	"qboolean"
.LASF13:
	.string	"byte"
.LASF121:
	.string	"Cache_Flush"
.LASF34:
	.string	"anim_total"
.LASF19:
	.string	"cache_user_s"
.LASF16:
	.string	"cache_user_t"
.LASF122:
	.string	"Cache_Move"
.LASF145:
	.string	"hunk_tempmark"
.LASF88:
	.string	"cache_system_t"
.LASF84:
	.string	"cache_system_s"
.LASF143:
	.string	"hunk_high_used"
.LASF90:
	.string	"block"
.LASF4:
	.string	"unsigned int"
.LASF63:
	.string	"texture"
.LASF119:
	.string	"Cache_Init"
.LASF33:
	.string	"texturechain"
.LASF48:
	.string	"light_s"
.LASF49:
	.string	"light_t"
.LASF7:
	.string	"long unsigned int"
.LASF114:
	.string	"Cache_TryAlloc"
.LASF80:
	.string	"rover"
.LASF28:
	.string	"name"
.LASF102:
	.string	"endlow"
.LASF29:
	.string	"width"
.LASF21:
	.string	"data"
.LASF62:
	.string	"mipadjust"
.LASF76:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF95:
	.string	"Z_Free"
.LASF134:
	.string	"zonesize"
.LASF135:
	.string	"com_argc"
.LASF51:
	.string	"shadowchain"
.LASF82:
	.string	"sentinal"
.LASF116:
	.string	"Cache_Print"
.LASF44:
	.string	"firstedge"
.LASF25:
	.string	"signbits"
.LASF142:
	.string	"hunk_low_used"
.LASF136:
	.string	"com_argv"
.LASF94:
	.string	"base"
.LASF133:
	.string	"Memory_Init"
.LASF59:
	.string	"samples"
.LASF53:
	.string	"dlightframe"
.LASF32:
	.string	"gl_lumitex"
.LASF54:
	.string	"dlightbits"
.LASF69:
	.string	"lightTimestamp"
.LASF68:
	.string	"numverts"
.LASF86:
	.string	"lru_prev"
.LASF83:
	.string	"hunk_t"
.LASF113:
	.string	"Cache_MakeLRU"
.LASF99:
	.string	"Z_Malloc"
.LASF56:
	.string	"styles"
.LASF120:
	.string	"Cache_Free"
.LASF22:
	.string	"normal"
.LASF10:
	.string	"float"
.LASF151:
	.string	"Z_ClearZone"
.LASF85:
	.string	"user"
.LASF40:
	.string	"msurface_s"
.LASF73:
	.string	"msurface_t"
.LASF17:
	.string	"vec_t"
.LASF15:
	.string	"_Bool"
.LASF130:
	.string	"Hunk_TempAlloc"
.LASF1:
	.string	"unsigned char"
.LASF123:
	.string	"Cache_FreeLow"
.LASF31:
	.string	"gl_texturenum"
.LASF2:
	.string	"short int"
.LASF138:
	.string	"wgPipe"
.LASF71:
	.string	"firstvertex"
.LASF57:
	.string	"cached_light"
.LASF38:
	.string	"alternate_anims"
.LASF67:
	.string	"chain"
.LASF96:
	.string	"Z_Print"
.LASF18:
	.string	"vec3_t"
.LASF11:
	.string	"long double"
.LASF125:
	.string	"Hunk_AllocName"
.LASF8:
	.string	"char"
.LASF97:
	.string	"Z_CheckHeap"
.LASF109:
	.string	"Hunk_FreeToHighMark"
.LASF61:
	.string	"vecs"
.LASF104:
	.string	"endhigh"
.LASF64:
	.string	"mtexinfo_t"
.LASF137:
	.string	"causticschain"
.LASF89:
	.string	"zone"
.LASF115:
	.string	"nobottom"
.LASF126:
	.string	"Hunk_Alloc"
.LASF23:
	.string	"dist"
.LASF39:
	.string	"offsets"
.LASF139:
	.string	"mainzone"
.LASF128:
	.string	"new_high_hunk"
.LASF74:
	.string	"WGPipe"
.LASF118:
	.string	"Cache_Compact"
.LASF146:
	.string	"cache_head"
.LASF36:
	.string	"anim_max"
.LASF43:
	.string	"flags"
.LASF41:
	.string	"visframe"
.LASF35:
	.string	"anim_min"
.LASF92:
	.string	"extra"
.LASF129:
	.string	"Hunk_HighAllocName"
.LASF27:
	.string	"texture_s"
.LASF60:
	.string	"texture_t"
.LASF93:
	.string	"start"
.LASF30:
	.string	"height"
.LASF103:
	.string	"starthigh"
.LASF144:
	.string	"hunk_tempactive"
.LASF45:
	.string	"numedges"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
