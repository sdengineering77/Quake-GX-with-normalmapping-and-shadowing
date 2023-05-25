	.file	"console.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl Con_MessageMode_f
	.type	Con_MessageMode_f, @function
Con_MessageMode_f:
.LFB41:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/console.c"
	.loc 1 132 0
	.cfi_startproc
	.loc 1 133 0
	li 0,2
	lis 9,key_dest@ha
	stw 0,key_dest@l(9)
	.loc 1 134 0
	li 0,0
	lis 9,team_message@ha
	.loc 1 135 0
	.loc 1 134 0
	stb 0,team_message@l(9)
	.loc 1 135 0
	blr
	.cfi_endproc
.LFE41:
	.size	Con_MessageMode_f, .-Con_MessageMode_f
	.align 2
	.globl Con_MessageMode2_f
	.type	Con_MessageMode2_f, @function
Con_MessageMode2_f:
.LFB42:
	.loc 1 144 0
	.cfi_startproc
	.loc 1 145 0
	li 0,2
	lis 9,key_dest@ha
	stw 0,key_dest@l(9)
	.loc 1 146 0
	li 0,1
	lis 9,team_message@ha
	.loc 1 147 0
	.loc 1 146 0
	stb 0,team_message@l(9)
	.loc 1 147 0
	blr
	.cfi_endproc
.LFE42:
	.size	Con_MessageMode2_f, .-Con_MessageMode2_f
	.align 2
	.globl Con_Clear_f
	.type	Con_Clear_f, @function
Con_Clear_f:
.LFB39:
	.loc 1 103 0
	.cfi_startproc
	.loc 1 104 0
	lis 9,con_text@ha
	.loc 1 103 0
	mflr 0
	.loc 1 104 0
	lwz 3,con_text@l(9)
	.loc 1 103 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 104 0
	cmpwi 7,3,0
	.loc 1 103 0
	stw 0,12(1)
	.loc 1 104 0
	beq- 7,.L3
	.cfi_offset 65, 4
	.loc 1 105 0
	li 4,32
	lis 5,0x1
	bl Q_memset
.L3:
	.loc 1 106 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE39:
	.size	Con_Clear_f, .-Con_Clear_f
	.align 2
	.globl Con_ToggleConsole_f
	.type	Con_ToggleConsole_f, @function
Con_ToggleConsole_f:
.LFB38:
	.loc 1 74 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 75 0
	lis 9,key_dest@ha
	.loc 1 74 0
	stw 0,12(1)
	.loc 1 75 0
	lwz 0,key_dest@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L10
	.loc 1 89 0
	li 0,1
	stw 0,key_dest@l(9)
	.loc 1 91 0
	bl SCR_EndLoadingPlaque
	.loc 1 92 0
	lis 11,con_times@ha
	li 0,0
	la 9,con_times@l(11)
	stw 0,con_times@l(11)
	stw 0,4(9)
	stw 0,8(9)
	stw 0,12(9)
	.loc 1 93 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L10:
.LCFI4:
	.cfi_restore_state
	.loc 1 77 0
	lis 11,cls@ha
	lwz 11,cls@l(11)
	cmpwi 7,11,2
	beq- 7,.L11
	.loc 1 85 0
	bl M_Menu_Main_f
	.loc 1 91 0
	bl SCR_EndLoadingPlaque
	.loc 1 92 0
	lis 11,con_times@ha
	li 0,0
	la 9,con_times@l(11)
	stw 0,4(9)
	stw 0,8(9)
	stw 0,12(9)
	stw 0,con_times@l(11)
	.loc 1 93 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L11:
.LCFI6:
	.cfi_restore_state
	.loc 1 80 0
	lis 11,edit_line@ha
	lis 10,key_lines@ha
	lwz 8,edit_line@l(11)
	la 10,key_lines@l(10)
	.loc 1 79 0
	li 11,0
	.loc 1 80 0
	slwi 8,8,8
	.loc 1 79 0
	stw 11,key_dest@l(9)
	.loc 1 80 0
	add 10,10,8
	.loc 1 81 0
	lis 9,key_linepos@ha
	.loc 1 80 0
	stb 11,1(10)
	.loc 1 81 0
	stw 0,key_linepos@l(9)
	.loc 1 91 0
	bl SCR_EndLoadingPlaque
	.loc 1 92 0
	lis 11,con_times@ha
	li 0,0
	la 9,con_times@l(11)
	stw 0,4(9)
	stw 0,8(9)
	stw 0,12(9)
	stw 0,con_times@l(11)
	.loc 1 93 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE38:
	.size	Con_ToggleConsole_f, .-Con_ToggleConsole_f
	.align 2
	.globl Con_ClearNotify
	.type	Con_ClearNotify, @function
Con_ClearNotify:
.LFB40:
	.loc 1 115 0
	.cfi_startproc
.LVL0:
	.loc 1 119 0
	lis 11,con_times@ha
	li 0,0
	la 9,con_times@l(11)
	stw 0,con_times@l(11)
.LVL1:
	stw 0,4(9)
.LVL2:
	stw 0,8(9)
.LVL3:
	stw 0,12(9)
.LVL4:
	.loc 1 120 0
	blr
	.cfi_endproc
.LFE40:
	.size	Con_ClearNotify, .-Con_ClearNotify
	.align 2
	.globl Con_CheckResize
	.type	Con_CheckResize, @function
Con_CheckResize:
.LFB43:
	.loc 1 159 0
	.cfi_startproc
	mr 12,1
	.loc 1 163 0
	lis 9,vid+20@ha
	.loc 1 159 0
	stw 28,-16(12)
	lis 0,0xfffe
	.loc 1 163 0
	lwz 28,vid+20@l(9)
	.cfi_offset 28, 65576
	.loc 1 165 0
	lis 9,con_linewidth@ha
	.loc 1 159 0
	stw 30,-8(12)
	ori 0,0,65480
	.loc 1 163 0
	srwi 28,28,3
	.loc 1 165 0
	lwz 30,con_linewidth@l(9)
	.cfi_offset 30, 65584
	.loc 1 163 0
	addi 28,28,-2
.LVL5:
	.loc 1 159 0
	stwux 1,1,0
.LCFI8:
	.cfi_def_cfa_offset 65592
	.loc 1 165 0
	cmpw 7,28,30
	.loc 1 159 0
	mflr 0
	stw 21,-44(12)
	stw 22,-40(12)
	stw 0,4(12)
	stw 23,-36(12)
	stw 24,-32(12)
	stw 25,-28(12)
	stw 26,-24(12)
	stw 27,-20(12)
	stw 29,-12(12)
	stw 31,-4(12)
	.loc 1 165 0
	beq- 7,.L13
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	.loc 1 168 0
	cmpwi 6,28,0
	ble- 6,.L27
.LVL6:
	.loc 1 180 0
	lis 0,0x1
	.loc 1 179 0
	lis 27,con_totallines@ha
	.loc 1 180 0
	divw 0,0,28
	.loc 1 179 0
	lwz 31,con_totallines@l(27)
.LVL7:
	.loc 1 178 0
	stw 28,con_linewidth@l(9)
	.loc 1 180 0
	cmpw 6,0,31
	mr 29,0
	stw 0,con_totallines@l(27)
.LVL8:
	bgt- 6,.L28
.LVL9:
	bgt- 7,.L29
.LVL10:
.L18:
	.loc 1 191 0
	lis 26,con_text@ha
	addi 3,1,8
	lwz 4,con_text@l(26)
	lis 5,0x1
	lis 21,con_current@ha
	bl Q_memcpy
.LVL11:
	.loc 1 192 0
	lwz 3,con_text@l(26)
	li 4,32
	lis 5,0x1
	bl Q_memset
.LVL12:
	.loc 1 194 0
	cmpwi 7,29,0
	ble- 7,.L20
	cmpwi 6,28,0
	li 11,0
	mr 22,21
	lis 23,con_totallines@ha
	lis 24,con_linewidth@ha
.LVL13:
.L19:
	.loc 1 196 0 discriminator 1
	ble- 6,.L22
	mtctr 28
	.loc 1 196 0 is_stmt 0
	li 9,0
	la 25,con_current@l(22)
	la 12,con_totallines@l(23)
	la 3,con_linewidth@l(24)
	la 4,con_text@l(26)
.LVL14:
.L21:
	.loc 1 199 0 is_stmt 1 discriminator 2
	lwz 0,0(25)
	addi 8,1,8
	.loc 1 198 0 discriminator 2
	lwz 10,0(12)
	.loc 1 199 0 discriminator 2
	add 6,8,9
	subf 0,11,0
	.loc 1 198 0 discriminator 2
	lwz 5,0(3)
	.loc 1 199 0 discriminator 2
	add 0,0,31
	.loc 1 198 0 discriminator 2
	addi 10,10,-1
	.loc 1 199 0 discriminator 2
	divw 7,0,31
	.loc 1 198 0 discriminator 2
	subf 10,11,10
	lwz 8,0(4)
	add 8,8,9
	.loc 1 196 0 discriminator 2
	addi 9,9,1
.LVL15:
	.loc 1 199 0 discriminator 2
	mullw 7,7,31
	subf 0,7,0
	.loc 1 198 0 discriminator 2
	mullw 10,10,5
	.loc 1 200 0 discriminator 2
	mullw 7,30,0
	.loc 1 199 0 discriminator 2
	lbzx 0,6,7
	.loc 1 198 0 discriminator 2
	stbx 0,8,10
	.loc 1 196 0 discriminator 2
	bdnz .L21
.LVL16:
.L22:
	.loc 1 194 0
	addi 11,11,1
.LVL17:
	cmpw 7,11,29
	bne+ 7,.L19
.LVL18:
.L20:
.LBB4:
.LBB5:
	.loc 1 119 0
	lis 11,con_times@ha
	li 0,0
	la 9,con_times@l(11)
	stw 0,con_times@l(11)
.LVL19:
	stw 0,4(9)
.LVL20:
	stw 0,8(9)
.LVL21:
	stw 0,12(9)
.LVL22:
.L16:
.LBE5:
.LBE4:
	.loc 1 208 0
	lwz 9,con_totallines@l(27)
	.loc 1 207 0
	li 11,0
	.loc 1 208 0
	addi 0,9,-1
	.loc 1 207 0
	lis 9,con_backscroll@ha
	stw 11,con_backscroll@l(9)
	.loc 1 208 0
	stw 0,con_current@l(21)
.L13:
	.loc 1 209 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 21,-44(11)
	mtlr 0
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	mr 1,11
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
	blr
.LVL23:
.L29:
.LCFI10:
	.cfi_restore_state
	.loc 1 180 0
	mr 28,30
.LVL24:
	b .L18
.LVL25:
.L28:
	mr 29,31
.LVL26:
	ble- 7,.L18
	b .L29
.LVL27:
.L27:
	.loc 1 173 0
	lis 11,con_text@ha
	.loc 1 171 0
	li 0,38
	.loc 1 173 0
	lwz 3,con_text@l(11)
	.loc 1 172 0
	lis 27,con_totallines@ha
	.loc 1 171 0
	stw 0,con_linewidth@l(9)
	.loc 1 173 0
	li 4,32
	.loc 1 172 0
	li 0,1724
	.loc 1 173 0
	lis 5,0x1
	.loc 1 172 0
	stw 0,con_totallines@l(27)
	lis 21,con_current@ha
	.loc 1 173 0
	bl Q_memset
	b .L16
	.cfi_endproc
.LFE43:
	.size	Con_CheckResize, .-Con_CheckResize
	.align 2
	.globl Con_Linefeed
	.type	Con_Linefeed, @function
Con_Linefeed:
.LFB45:
	.loc 1 267 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 270 0
	lis 9,con_initialized@ha
	.loc 1 267 0
	stw 0,12(1)
	.loc 1 270 0
	lbz 0,con_initialized@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L30
	.loc 1 273 0
	lis 10,con_current@ha
	.loc 1 274 0
	lis 11,con_totallines@ha
	.loc 1 273 0
	lwz 9,con_current@l(10)
	.loc 1 274 0
	lis 7,con_text@ha
	lwz 11,con_totallines@l(11)
	.loc 1 272 0
	li 6,0
	.loc 1 273 0
	addi 0,9,1
	.loc 1 274 0
	lis 9,con_linewidth@ha
	divw 8,0,11
	lwz 9,con_linewidth@l(9)
	.loc 1 273 0
	stw 0,con_current@l(10)
	.loc 1 274 0
	li 4,32
	mr 5,9
	lwz 3,con_text@l(7)
	.loc 1 272 0
	lis 7,con_x@ha
	stw 6,con_x@l(7)
	.loc 1 274 0
	mullw 11,8,11
	subf 0,11,0
	mullw 9,0,9
	add 3,3,9
	bl Q_memset
.L30:
	.loc 1 276 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE45:
	.size	Con_Linefeed, .-Con_Linefeed
	.align 2
	.globl Con_Print
	.type	Con_Print, @function
Con_Print:
.LFB46:
	.loc 1 290 0
	.cfi_startproc
.LVL28:
	mflr 0
	stwu 1,-64(1)
.LCFI13:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 297 0
	lis 9,con_initialized@ha
	.loc 1 290 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
	.loc 1 297 0
	lbz 0,con_initialized@l(9)
	.cfi_offset 65, 4
	.loc 1 290 0
	stw 18,8(1)
	.loc 1 297 0
	cmpwi 7,0,0
	.loc 1 290 0
	stw 19,12(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	.loc 1 297 0
	beq- 7,.L32
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
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.loc 1 299 0
	li 0,0
	lis 9,con_backscroll@ha
	stw 0,con_backscroll@l(9)
	.loc 1 301 0
	lbz 30,0(3)
	cmpwi 7,30,1
	beq- 7,.L56
	.loc 1 310 0
	cmpwi 7,30,2
	.loc 1 316 0
	li 23,0
	.loc 1 310 0
	beq- 7,.L54
.LVL29:
.L36:
	.loc 1 319 0 discriminator 1
	cmpwi 7,30,0
	.loc 1 327 0 discriminator 1
	lis 28,con_x@ha
	.loc 1 332 0 discriminator 1
	lis 27,.LANCHOR0@ha
	.loc 1 344 0 discriminator 1
	lis 18,con_times@ha
	.loc 1 322 0 discriminator 1
	lis 25,con_linewidth@ha
	.loc 1 323 0 discriminator 1
	li 26,0
	.loc 1 327 0 discriminator 1
	la 28,con_x@l(28)
	.loc 1 332 0 discriminator 1
	la 27,.LANCHOR0@l(27)
	.loc 1 334 0 discriminator 1
	lis 24,con_current@ha
	.loc 1 344 0 discriminator 1
	la 18,con_times@l(18)
	lis 19,realtime@ha
	.loc 1 359 0 discriminator 1
	lis 20,con_totallines@ha
	.loc 1 360 0 discriminator 1
	lis 21,con_text@ha
	.loc 1 355 0 discriminator 1
	li 22,1
.LVL30:
	.loc 1 319 0 discriminator 1
	beq- 7,.L32
.L59:
.LVL31:
	.loc 1 322 0 discriminator 1
	lwz 11,con_linewidth@l(25)
	cmpwi 7,11,0
	ble- 7,.L48
	.loc 1 323 0
	cmplwi 7,30,32
	li 9,0
	mtctr 11
	bgt+ 7,.L49
	b .L51
.LVL32:
.L38:
	lbzx 0,31,9
	cmplwi 7,0,32
	ble- 7,.L40
.LVL33:
.L49:
	.loc 1 322 0
	addi 9,9,1
.LVL34:
	bdnz .L38
.LVL35:
.L39:
	.loc 1 327 0
	lwz 0,0(28)
	mr 29,28
.L41:
.LVL36:
	.loc 1 332 0
	lwz 9,0(27)
	cmpwi 7,9,0
	beq- 7,.L42
	.loc 1 334 0
	lwz 9,con_current@l(24)
	.loc 1 335 0
	stw 26,0(27)
	.loc 1 334 0
	addi 9,9,-1
	stw 9,con_current@l(24)
.L42:
	.loc 1 339 0
	cmpwi 7,0,0
	beq- 7,.L57
.L43:
	.loc 1 347 0
	cmpwi 7,30,10
	beq- 7,.L55
	cmpwi 7,30,13
	beq- 7,.L58
.LVL37:
	.loc 1 359 0
	lwz 0,con_current@l(24)
	.loc 1 360 0
	or 30,30,23
.LVL38:
	.loc 1 359 0
	lwz 9,con_totallines@l(20)
	.loc 1 360 0
	lwz 8,con_linewidth@l(25)
	.loc 1 359 0
	divw 7,0,9
	.loc 1 360 0
	lwz 10,con_text@l(21)
	lwz 11,0(29)
	.loc 1 359 0
	mullw 9,7,9
	subf 0,9,0
	.loc 1 360 0
	mullw 0,0,8
	add 9,10,0
	stbx 30,9,11
	.loc 1 361 0
	lwz 11,0(29)
	.loc 1 362 0
	lwz 9,con_linewidth@l(25)
	.loc 1 361 0
	addi 0,11,1
	.loc 1 362 0
	cmpw 7,0,9
	.loc 1 361 0
	stw 0,0(29)
	.loc 1 362 0
	blt- 7,.L47
.LVL39:
.L55:
	.loc 1 363 0
	stw 26,0(29)
.L47:
	.loc 1 363 0 is_stmt 0 discriminator 1
	lbzu 30,1(31)
.LVL40:
.L60:
	.loc 1 319 0 is_stmt 1
	cmpwi 7,30,0
	bne+ 7,.L59
.LVL41:
.L32:
	.loc 1 368 0
	lwz 0,68(1)
	lwz 18,8(1)
	mtlr 0
	lwz 19,12(1)
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL42:
	addi 1,1,64
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
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	blr
.LVL43:
.L48:
.LCFI15:
	.cfi_restore_state
	.loc 1 327 0
	beq- 7,.L39
.L51:
	li 9,0
.LVL44:
.L40:
	.loc 1 327 0 is_stmt 0 discriminator 1
	lwz 0,0(28)
	mr 29,28
	add 9,0,9
	cmpw 7,11,9
	bge- 7,.L41
	.loc 1 328 0 is_stmt 1
	stw 26,0(28)
	li 0,0
	b .L41
.LVL45:
.L58:
	.loc 1 354 0
	stw 26,0(29)
	.loc 1 355 0
	stw 22,0(27)
	.loc 1 363 0
	lbzu 30,1(31)
.LVL46:
	b .L60
.LVL47:
.L57:
	.loc 1 341 0
	bl Con_Linefeed
	.loc 1 343 0
	lwz 0,con_current@l(24)
	cmpwi 7,0,0
	blt- 7,.L43
	.loc 1 344 0
	lfd 0,realtime@l(19)
	rlwinm 0,0,2,28,29
	frsp 0,0
	stfsx 0,18,0
	b .L43
.LVL48:
.L56:
	.loc 1 305 0
	lis 3,.LC0@ha
.LVL49:
	la 3,.LC0@l(3)
	bl S_LocalSound
.LVL50:
.L54:
	.loc 1 308 0
	lbz 30,1(31)
	.loc 1 303 0
	li 23,128
	.loc 1 308 0
	addi 31,31,1
.LVL51:
	b .L36
	.cfi_endproc
.LFE46:
	.size	Con_Print, .-Con_Print
	.align 2
	.globl Con_DebugLog
	.type	Con_DebugLog, @function
Con_DebugLog:
.LFB47:
	.loc 1 378 0
	.cfi_startproc
.LVL52:
	mflr 0
	stwu 1,-120(1)
.LCFI16:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	stw 31,116(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,124(1)
	stw 30,112(1)
	stw 5,24(1)
	stw 6,28(1)
	stw 7,32(1)
	stw 8,36(1)
	stw 9,40(1)
	stw 10,44(1)
	bne- 1,.L62
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 378 0
	stfd 1,48(1)
	stfd 2,56(1)
	stfd 3,64(1)
	stfd 4,72(1)
	stfd 5,80(1)
	stfd 6,88(1)
	stfd 7,96(1)
	stfd 8,104(1)
.L62:
	.loc 1 383 0
	li 0,2
	.loc 1 390 0
	lis 30,.LANCHOR0@ha
	.loc 1 383 0
	stb 0,8(1)
	.loc 1 390 0
	la 30,.LANCHOR0@l(30)
	.loc 1 383 0
	li 0,0
	.loc 1 390 0
	addi 30,30,4
	.loc 1 383 0
	stb 0,9(1)
	addi 0,1,128
	.loc 1 390 0
	addi 6,1,8
	.loc 1 378 0
	mr 5,4
	.loc 1 383 0
	stw 0,12(1)
	.loc 1 390 0
	li 4,4096
.LVL53:
	.loc 1 383 0
	addi 0,1,16
	.loc 1 390 0
	mr 3,30
.LVL54:
	.loc 1 383 0
	stw 0,16(1)
	.loc 1 390 0
	bl vsnprintf
.LVL55:
	.loc 1 394 0
	li 4,521
	li 5,438
	mr 3,31
	crxor 6,6,6
	bl open
	mr 31,3
.LVL56:
	.loc 1 395 0
	mr 3,30
.LVL57:
	bl strlen
	mr 4,30
	mr 5,3
	mr 3,31
	bl write
	.loc 1 396 0
	mr 3,31
	bl close
	.loc 1 397 0
	lwz 0,124(1)
	lwz 30,112(1)
	mtlr 0
	lwz 31,116(1)
.LVL58:
	addi 1,1,120
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE47:
	.size	Con_DebugLog, .-Con_DebugLog
	.align 2
	.globl Con_Printf
	.type	Con_Printf, @function
Con_Printf:
.LFB48:
	.loc 1 411 0
	.cfi_startproc
.LVL59:
	mflr 0
	stwu 1,-4224(1)
.LCFI18:
	.cfi_def_cfa_offset 4224
	.cfi_register 65, 0
	stw 30,4216(1)
	stw 0,4228(1)
	stw 31,4220(1)
	stw 4,4124(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L64
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 411 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L64:
	.loc 1 416 0
	li 0,1
	.loc 1 429 0
	lis 31,.LC1@ha
	.loc 1 416 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,4232
	.loc 1 411 0
	mr 5,3
	.loc 1 423 0
	li 4,4096
	addi 6,1,8
	.loc 1 416 0
	stw 0,12(1)
	.loc 1 423 0
	addi 3,1,20
.LVL60:
	.loc 1 416 0
	addi 0,1,4120
	.loc 1 429 0
	la 31,.LC1@l(31)
	.loc 1 416 0
	stw 0,16(1)
	.loc 1 423 0
	bl vsnprintf
.LVL61:
	.loc 1 429 0
	mr 3,31
	addi 4,1,20
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 432 0
	lis 9,con_debuglog@ha
	lbz 0,con_debuglog@l(9)
	cmpwi 7,0,0
	bne- 7,.L67
.L65:
	.loc 1 435 0
	lis 9,con_initialized@ha
	lbz 0,con_initialized@l(9)
	cmpwi 7,0,0
	beq- 7,.L63
	.loc 1 438 0
	lis 31,cls@ha
	lwz 0,cls@l(31)
	la 31,cls@l(31)
	cmpwi 7,0,0
	bne- 7,.L68
.L63:
	.loc 1 456 0
	lwz 0,4228(1)
	lwz 30,4216(1)
	mtlr 0
	lwz 31,4220(1)
	addi 1,1,4224
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L68:
.LCFI20:
	.cfi_restore_state
	.loc 1 442 0
	addi 3,1,20
	bl Con_Print
	.loc 1 445 0
	lwz 0,2272(31)
	cmpwi 7,0,4
	beq- 7,.L63
	.loc 1 445 0 is_stmt 0 discriminator 1
	lis 9,scr_disabled_for_loading@ha
	lbz 0,scr_disabled_for_loading@l(9)
	cmpwi 7,0,0
	bne- 7,.L63
	.loc 1 449 0 is_stmt 1
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
	lbz 30,4100(31)
	cmpwi 7,30,0
	bne+ 7,.L63
	.loc 1 451 0
	li 0,1
	stb 0,4100(31)
	.loc 1 452 0
	bl SCR_UpdateScreen
	.loc 1 453 0
	stb 30,4100(31)
	b .L63
.L67:
	.loc 1 433 0
	lis 3,.LC2@ha
	lis 4,com_gamedir@ha
	la 4,com_gamedir@l(4)
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl va
	mr 4,31
	addi 5,1,20
	crxor 6,6,6
	bl Con_DebugLog
	b .L65
	.cfi_endproc
.LFE48:
	.size	Con_Printf, .-Con_Printf
	.align 2
	.globl Con_Init
	.type	Con_Init, @function
Con_Init:
.LFB44:
	.loc 1 219 0
	.cfi_startproc
.LVL62:
	mflr 0
	stwu 1,-1024(1)
.LCFI21:
	.cfi_def_cfa_offset 1024
	.cfi_register 65, 0
	.loc 1 226 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	.loc 1 219 0
	stw 31,1020(1)
	stw 0,1028(1)
	.loc 1 226 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl COM_CheckParm
	cntlzw 3,3
	lis 9,con_debuglog@ha
	srwi 3,3,5
	xori 3,3,1
	.loc 1 228 0
	cmpwi 7,3,0
	.loc 1 226 0
	stb 3,con_debuglog@l(9)
	.loc 1 228 0
	beq- 7,.L70
	.loc 1 230 0
	lis 31,com_gamedir@ha
	la 31,com_gamedir@l(31)
	mr 3,31
	bl strlen
	cmplwi 7,3,986
	ble- 7,.L71
.L70:
	.loc 1 237 0
	lis 4,.LC6@ha
	lis 3,0x1
	la 4,.LC6@l(4)
	.loc 1 250 0
	lis 31,.LANCHOR1@ha
	.loc 1 237 0
	bl Hunk_AllocName
	.loc 1 239 0
	lis 5,0x1
	li 4,32
	.loc 1 237 0
	lis 9,con_text@ha
	stw 3,con_text@l(9)
	.loc 1 239 0
	bl Q_memset
	.loc 1 241 0
	li 0,-1
	lis 9,con_linewidth@ha
	stw 0,con_linewidth@l(9)
	.loc 1 243 0
	bl Con_CheckResize
	.loc 1 245 0
	lis 3,.LC7@ha
	.loc 1 250 0
	la 31,.LANCHOR1@l(31)
	.loc 1 245 0
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 250 0
	mr 3,31
	bl Cvar_RegisterVariable
	.loc 1 251 0
	addi 3,31,20
	bl Cvar_RegisterVariable
	.loc 1 253 0
	lis 3,.LC8@ha
	lis 4,Con_ToggleConsole_f@ha
	la 3,.LC8@l(3)
	la 4,Con_ToggleConsole_f@l(4)
	bl Cmd_AddCommand
	.loc 1 254 0
	lis 3,.LC9@ha
	lis 4,Con_MessageMode_f@ha
	la 3,.LC9@l(3)
	la 4,Con_MessageMode_f@l(4)
	bl Cmd_AddCommand
	.loc 1 255 0
	lis 3,.LC10@ha
	lis 4,Con_MessageMode2_f@ha
	la 3,.LC10@l(3)
	la 4,Con_MessageMode2_f@l(4)
	bl Cmd_AddCommand
	.loc 1 256 0
	lis 3,.LC11@ha
	lis 4,Con_Clear_f@ha
	la 3,.LC11@l(3)
	la 4,Con_Clear_f@l(4)
	bl Cmd_AddCommand
	.loc 1 257 0
	li 0,1
	lis 9,con_initialized@ha
	.loc 1 258 0
	lwz 31,1020(1)
	.loc 1 257 0
	stb 0,con_initialized@l(9)
	.loc 1 258 0
	lwz 0,1028(1)
	addi 1,1,1024
	.cfi_remember_state
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
.L71:
.LCFI23:
	.cfi_restore_state
	.loc 1 232 0
	lis 4,.LC4@ha
	lis 6,.LC5@ha
	addi 3,1,8
	la 4,.LC4@l(4)
	mr 5,31
	la 6,.LC5@l(6)
	crxor 6,6,6
	bl sprintf
	.loc 1 233 0
	addi 3,1,8
	bl unlink
	b .L70
	.cfi_endproc
.LFE44:
	.size	Con_Init, .-Con_Init
	.align 2
	.globl Con_DPrintf
	.type	Con_DPrintf, @function
Con_DPrintf:
.LFB49:
	.loc 1 466 0
	.cfi_startproc
.LVL63:
	mflr 0
	stwu 1,-4232(1)
.LCFI24:
	.cfi_def_cfa_offset 4232
	.cfi_register 65, 0
	stw 29,4220(1)
	stw 0,4236(1)
	stw 30,4224(1)
	stw 31,4228(1)
	stw 4,4124(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L73
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 466 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L73:
	.loc 1 471 0
	lis 9,developer+12@ha
	lfs 13,developer+12@l(9)
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fcmpu 7,13,0
	beq+ 7,.L72
	.loc 1 474 0
	li 0,0
	.loc 1 478 0
	lis 31,scr_disabled_for_loading@ha
	.loc 1 474 0
	stb 0,9(1)
	addi 0,1,4240
	.loc 1 475 0
	mr 4,3
	.loc 1 474 0
	li 30,1
	.loc 1 475 0
	addi 5,1,8
	.loc 1 474 0
	stw 0,12(1)
	.loc 1 475 0
	addi 3,1,20
.LVL64:
	.loc 1 474 0
	addi 0,1,4120
	stw 0,16(1)
	stb 30,8(1)
	.loc 1 475 0
	bl vsprintf
.LVL65:
	.loc 1 478 0
	lbz 29,scr_disabled_for_loading@l(31)
.LVL66:
	.loc 1 480 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	addi 4,1,20
	.loc 1 479 0
	stb 30,scr_disabled_for_loading@l(31)
	.loc 1 480 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 482 0
	stb 29,scr_disabled_for_loading@l(31)
.LVL67:
.L72:
	.loc 1 483 0
	lwz 0,4236(1)
	lwz 29,4220(1)
	mtlr 0
	lwz 30,4224(1)
	lwz 31,4228(1)
	addi 1,1,4232
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE49:
	.size	Con_DPrintf, .-Con_DPrintf
	.align 2
	.globl Con_SafePrintf
	.type	Con_SafePrintf, @function
Con_SafePrintf:
.LFB50:
	.loc 1 494 0
	.cfi_startproc
.LVL68:
	mflr 0
	stwu 1,-1160(1)
.LCFI26:
	.cfi_def_cfa_offset 1160
	.cfi_register 65, 0
	stw 29,1148(1)
	stw 0,1164(1)
	stw 30,1152(1)
	stw 31,1156(1)
	stw 4,1052(1)
	stw 5,1056(1)
	stw 6,1060(1)
	stw 7,1064(1)
	stw 8,1068(1)
	stw 9,1072(1)
	stw 10,1076(1)
	bne- 1,.L76
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 494 0
	stfd 1,1080(1)
	stfd 2,1088(1)
	stfd 3,1096(1)
	stfd 4,1104(1)
	stfd 5,1112(1)
	stfd 6,1120(1)
	stfd 7,1128(1)
	stfd 8,1136(1)
.L76:
	.loc 1 499 0
	li 0,0
	.loc 1 494 0
	mr 4,3
	.loc 1 499 0
	stb 0,9(1)
	addi 0,1,1168
	li 30,1
	.loc 1 500 0
	addi 5,1,8
	.loc 1 499 0
	stw 0,12(1)
	.loc 1 500 0
	addi 3,1,20
.LVL69:
	.loc 1 499 0
	addi 0,1,1048
	stb 30,8(1)
	stw 0,16(1)
	.loc 1 500 0
	bl vsprintf
.LVL70:
	.loc 1 505 0
	lis 3,.LC1@ha
	.loc 1 503 0
	lis 31,scr_disabled_for_loading@ha
	.loc 1 505 0
	addi 4,1,20
	la 3,.LC1@l(3)
	.loc 1 503 0
	lbz 29,scr_disabled_for_loading@l(31)
.LVL71:
	.loc 1 504 0
	stb 30,scr_disabled_for_loading@l(31)
	.loc 1 505 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 507 0
	lwz 0,1164(1)
	.loc 1 506 0
	stb 29,scr_disabled_for_loading@l(31)
	.loc 1 507 0
	mtlr 0
	lwz 29,1148(1)
.LVL72:
	lwz 30,1152(1)
	lwz 31,1156(1)
	addi 1,1,1160
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE50:
	.size	Con_SafePrintf, .-Con_SafePrintf
	.align 2
	.globl Con_DrawInput
	.type	Con_DrawInput, @function
Con_DrawInput:
.LFB51:
	.loc 1 527 0
	.cfi_startproc
	mflr 0
	stwu 1,-48(1)
.LCFI28:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 532 0
	lis 9,key_dest@ha
	.loc 1 527 0
	stw 25,20(1)
	stw 0,52(1)
	.loc 1 532 0
	lwz 0,key_dest@l(9)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	.loc 1 527 0
	stw 26,24(1)
	.loc 1 532 0
	cmpwi 7,0,1
	.loc 1 527 0
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 532 0
	beq- 7,.L78
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 532 0 is_stmt 0 discriminator 1
	lis 9,con_forcedup@ha
	lbz 0,con_forcedup@l(9)
	cmpwi 7,0,0
	beq- 7,.L77
.L78:
	.loc 1 538 0 is_stmt 1
	lis 9,con_cursorspeed@ha
	lis 26,key_linepos@ha
	lfs 13,con_cursorspeed@l(9)
	lis 9,realtime@ha
	lfd 0,realtime@l(9)
	addi 6,1,8
	lwz 11,key_linepos@l(26)
	.loc 1 541 0
	lis 9,con_linewidth@ha
	.loc 1 538 0
	fmul 0,13,0
	.loc 1 541 0
	lwz 10,con_linewidth@l(9)
	.loc 1 535 0
	lis 25,edit_line@ha
	.loc 1 541 0
	addi 8,11,1
	cmpw 7,8,10
	.loc 1 535 0
	lis 27,key_lines@ha
	la 27,key_lines@l(27)
	.loc 1 538 0
	fctiwz 0,0
	stfiwx 0,0,6
	lwz 9,8(1)
	.loc 1 535 0
	lwz 7,edit_line@l(25)
	.loc 1 538 0
	rlwinm 9,9,0,31,31
	.loc 1 535 0
	slwi 7,7,8
	.loc 1 538 0
	addi 0,9,10
	.loc 1 535 0
	add 30,27,7
.LVL73:
	.loc 1 538 0
	stbx 0,30,11
	.loc 1 541 0
	bge- 7,.L80
	.loc 1 542 0 discriminator 2
	subf 6,8,10
	.loc 1 541 0 discriminator 2
	mr 9,8
	.loc 1 542 0 discriminator 2
	mtctr 6
	li 0,32
.LVL74:
.L81:
	stbx 0,30,9
	.loc 1 541 0 discriminator 2
	addi 9,9,1
.LVL75:
	bdnz .L81
.LVL76:
.L80:
	.loc 1 545 0
	cmpw 7,11,10
	bge- 7,.L87
.L82:
.LVL77:
	.loc 1 551 0
	cmpwi 7,10,0
	ble- 7,.L83
	lis 28,con_vislines@ha
	lis 29,con_linewidth@ha
	.loc 1 526 0
	addi 30,30,-1
.LVL78:
	.loc 1 551 0
	li 31,0
	la 28,con_vislines@l(28)
	la 29,con_linewidth@l(29)
.LVL79:
.L84:
	.loc 1 552 0 discriminator 2
	lwz 4,0(28)
	addi 31,31,1
	lbzu 5,1(30)
	slwi 3,31,3
	addi 4,4,-16
	bl Draw_Character
.LVL80:
	.loc 1 551 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,31
	bgt+ 7,.L84
	.loc 1 551 0 is_stmt 0
	lwz 7,edit_line@l(25)
	lwz 11,key_linepos@l(26)
	slwi 7,7,8
.LVL81:
.L83:
	.loc 1 555 0 is_stmt 1
	add 11,7,11
	li 0,0
	stbx 0,27,11
.L77:
	.loc 1 556 0
	lwz 0,52(1)
	lwz 25,20(1)
	mtlr 0
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL82:
.L87:
.LCFI30:
	.cfi_restore_state
	.loc 1 546 0
	subf 8,10,8
	add 30,30,8
.LVL83:
	b .L82
	.cfi_endproc
.LFE51:
	.size	Con_DrawInput, .-Con_DrawInput
	.align 2
	.globl Con_DrawNotify
	.type	Con_DrawNotify, @function
Con_DrawNotify:
.LFB52:
	.loc 1 567 0
	.cfi_startproc
.LVL84:
	stwu 1,-88(1)
.LCFI31:
	.cfi_def_cfa_offset 88
	mflr 0
	.loc 1 582 0
	lis 9,.LC12@ha
	.loc 1 567 0
	stw 26,56(1)
	.loc 1 575 0
	lis 26,con_current@ha
	.cfi_offset 26, -32
	.cfi_register 65, 0
	.loc 1 567 0
	stw 30,72(1)
	.loc 1 575 0
	lwz 30,con_current@l(26)
	.cfi_offset 30, -16
	la 26,con_current@l(26)
	.loc 1 567 0
	stfd 31,80(1)
	stw 25,52(1)
	.loc 1 580 0
	lis 25,con_times@ha
	.cfi_offset 25, -36
	.cfi_offset 63, -8
	.loc 1 567 0
	stw 0,92(1)
	.loc 1 575 0
	addi 30,30,-3
.LVL85:
	.loc 1 567 0
	stw 27,60(1)
	.loc 1 580 0
	la 25,con_times@l(25)
	.loc 1 567 0
	stw 29,68(1)
	stw 31,76(1)
	.loc 1 582 0
	lfs 31,.LC12@l(9)
	.loc 1 567 0
	stw 16,16(1)
	.loc 1 590 0
	lis 16,con_text@ha
	.cfi_offset 16, -72
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 27, -28
	.cfi_offset 65, 4
	.loc 1 567 0
	stw 17,20(1)
	.loc 1 590 0
	lis 17,con_totallines@ha
	.cfi_offset 17, -68
	.loc 1 567 0
	stw 18,24(1)
	.loc 1 592 0
	lis 18,clearnotify@ha
	.cfi_offset 18, -64
	.loc 1 567 0
	stw 19,28(1)
	.loc 1 592 0
	li 19,0
	.cfi_offset 19, -60
	.loc 1 567 0
	stw 20,32(1)
	.loc 1 593 0
	lis 20,scr_copytop@ha
	.cfi_offset 20, -56
	.loc 1 567 0
	stw 21,36(1)
	.loc 1 593 0
	li 21,1
	.cfi_offset 21, -52
	.loc 1 567 0
	stw 22,40(1)
	.loc 1 585 0
	lis 22,realtime@ha
	.cfi_offset 22, -48
	.loc 1 567 0
	stw 23,44(1)
	.loc 1 587 0
	lis 23,.LANCHOR1@ha
	.cfi_offset 23, -44
	.loc 1 567 0
	stw 24,48(1)
	.loc 1 590 0
	lis 24,con_linewidth@ha
	.cfi_offset 24, -40
	.loc 1 567 0
	stw 28,64(1)
	.loc 1 574 0
	li 28,0
	.cfi_offset 28, -24
.LVL86:
.L92:
	.loc 1 577 0
	cmpwi 7,30,0
	blt- 7,.L89
	.loc 1 580 0
	rlwinm 0,30,2,28,29
	lfsx 0,25,0
.LVL87:
	.loc 1 582 0
	fcmpu 7,0,31
	beq- 7,.L89
	.loc 1 585 0
	lfd 13,realtime@l(22)
	.loc 1 587 0
	la 9,.LANCHOR1@l(23)
	.loc 1 585 0
	fsub 0,13,0
.LVL88:
	.loc 1 587 0
	lfs 13,12(9)
	.loc 1 585 0
	frsp 0,0
.LVL89:
	.loc 1 587 0
	fcmpu 7,13,0
	blt- 7,.L89
	.loc 1 590 0
	lwz 9,con_totallines@l(17)
	la 27,con_linewidth@l(24)
	lwz 0,con_linewidth@l(24)
	divw 11,30,9
	lwz 29,con_text@l(16)
	.loc 1 595 0
	cmpwi 7,0,0
	.loc 1 592 0
	stw 19,clearnotify@l(18)
	.loc 1 593 0
	stw 21,scr_copytop@l(20)
	.loc 1 590 0
	mullw 9,11,9
	subf 9,9,30
	mullw 0,9,0
	add 29,29,0
.LVL90:
	.loc 1 595 0
	ble- 7,.L90
	.loc 1 566 0
	addi 29,29,-1
.LVL91:
	.loc 1 595 0
	li 31,0
.LVL92:
.L91:
	.loc 1 596 0 discriminator 2
	addi 31,31,1
	lbzu 5,1(29)
	slwi 3,31,3
	mr 4,28
	bl Draw_Character
.LVL93:
	.loc 1 595 0 discriminator 2
	lwz 0,0(27)
	cmpw 7,0,31
	bgt+ 7,.L91
.LVL94:
.L90:
	.loc 1 598 0
	addi 28,28,8
.LVL95:
.L89:
	.loc 1 575 0
	lwz 0,0(26)
	addi 30,30,1
.LVL96:
	cmpw 7,0,30
	bge+ 7,.L92
	.loc 1 602 0
	lis 9,key_dest@ha
	lwz 0,key_dest@l(9)
	cmpwi 7,0,2
	beq- 7,.L101
.LVL97:
.L93:
	.loc 1 621 0
	lis 9,con_notifylines@ha
	lwz 0,con_notifylines@l(9)
	cmpw 7,28,0
	ble- 7,.L88
	.loc 1 622 0
	stw 28,con_notifylines@l(9)
.L88:
	.loc 1 623 0
	lwz 0,92(1)
	lwz 16,16(1)
	mtlr 0
	lwz 17,20(1)
	lwz 18,24(1)
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
.LVL98:
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI32:
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
	blr
.LVL99:
.L101:
.LCFI33:
	.cfi_restore_state
	.loc 1 604 0
	li 0,0
	lis 9,clearnotify@ha
	.loc 1 609 0
	lis 5,.LC13@ha
	.loc 1 604 0
	stw 0,clearnotify@l(9)
	.loc 1 609 0
	li 3,8
	la 5,.LC13@l(5)
	.loc 1 605 0
	li 0,1
	lis 9,scr_copytop@ha
	.loc 1 609 0
	mr 4,28
	.loc 1 611 0
	lis 30,chat_buffer@ha
.LVL100:
	.loc 1 605 0
	stw 0,scr_copytop@l(9)
.LVL101:
	.loc 1 609 0
	bl Draw_String
	.loc 1 611 0
	lbz 5,chat_buffer@l(30)
	li 3,40
	cmpwi 7,5,0
	beq- 7,.L94
	li 31,0
	la 30,chat_buffer@l(30)
.LVL102:
.L95:
	.loc 1 566 0
	addi 3,31,5
	.loc 1 613 0
	mr 4,28
	slwi 3,3,3
	.loc 1 614 0
	addi 31,31,1
	.loc 1 613 0
	bl Draw_Character
.LVL103:
	.loc 1 611 0
	lbzx 5,30,31
	cmpwi 7,5,0
	bne+ 7,.L95
	addi 3,31,5
	slwi 3,3,3
.LVL104:
.L94:
	.loc 1 617 0
	lis 9,con_cursorspeed@ha
	mr 4,28
	lfs 13,con_cursorspeed@l(9)
	lis 9,realtime@ha
	lfd 0,realtime@l(9)
	addi 9,1,8
	.loc 1 618 0
	addi 28,28,8
.LVL105:
	.loc 1 617 0
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 5,8(1)
	rlwinm 5,5,0,31,31
	addi 5,5,10
	bl Draw_Character
.LVL106:
	b .L93
	.cfi_endproc
.LFE52:
	.size	Con_DrawNotify, .-Con_DrawNotify
	.align 2
	.globl Con_DrawConsole
	.type	Con_DrawConsole, @function
Con_DrawConsole:
.LFB53:
	.loc 1 634 0
	.cfi_startproc
.LVL107:
	stwu 1,-48(1)
.LCFI34:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 31,44(1)
	.loc 1 640 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 634 0
	stw 22,8(1)
	mr 22,4
	.cfi_offset 22, -40
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	.loc 1 640 0
	ble- 0,.L102
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	.loc 1 644 0
	lis 9,.LANCHOR1+32@ha
	lfs 13,.LANCHOR1+32@l(9)
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fcmpu 7,13,0
	bne- 7,.L113
	.loc 1 647 0
	bl Draw_ConsoleBackground
.LVL108:
.L105:
	.loc 1 655 0
	lis 26,con_current@ha
	.loc 1 652 0
	addi 0,31,-16
	.loc 1 655 0
	lwz 11,con_current@l(26)
	.loc 1 652 0
	srawi 9,0,3
.LVL109:
	.loc 1 655 0
	subf 27,9,11
	addi 27,27,1
.LVL110:
	cmpw 7,11,27
	.loc 1 650 0
	lis 11,con_vislines@ha
	stw 31,con_vislines@l(11)
	.loc 1 655 0
	blt- 7,.L106
	.loc 1 653 0
	slwi 9,9,3
.LVL111:
	lis 23,con_backscroll@ha
	lis 28,con_linewidth@ha
	lis 24,con_text@ha
	lis 25,con_totallines@ha
	subf 29,9,0
	la 23,con_backscroll@l(23)
	la 28,con_linewidth@l(28)
	la 24,con_text@l(24)
	la 25,con_totallines@l(25)
	la 26,con_current@l(26)
.LVL112:
.L110:
	.loc 1 657 0
	lwz 0,0(23)
	.loc 1 660 0
	lwz 11,0(25)
	.loc 1 657 0
	subf 0,0,27
.LVL113:
	.loc 1 660 0
	lwz 30,0(24)
	nor 9,0,0
	srawi 9,9,31
	and 9,0,9
	lwz 0,0(28)
.LVL114:
	divw 10,9,11
	.loc 1 662 0
	cmpwi 7,0,0
	.loc 1 660 0
	mullw 11,10,11
	subf 9,11,9
	mullw 0,9,0
	add 30,30,0
.LVL115:
	.loc 1 662 0
	ble- 7,.L108
	.loc 1 633 0
	addi 30,30,-1
.LVL116:
	.loc 1 662 0
	li 31,0
.LVL117:
.L109:
	.loc 1 663 0 discriminator 2
	addi 31,31,1
	lbzu 5,1(30)
	slwi 3,31,3
	mr 4,29
	bl Draw_Character
.LVL118:
	.loc 1 662 0 discriminator 2
	lwz 0,0(28)
	cmpw 7,0,31
	bgt+ 7,.L109
.LVL119:
.L108:
	.loc 1 655 0
	lwz 0,0(26)
	addi 27,27,1
.LVL120:
	addi 29,29,8
.LVL121:
	cmpw 7,0,27
	bge+ 7,.L110
.LVL122:
.L106:
	.loc 1 667 0
	cmpwi 7,22,0
	beq+ 7,.L102
	.loc 1 669 0
	lwz 0,52(1)
	lwz 22,8(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL123:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI35:
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
	.loc 1 668 0
	b Con_DrawInput
.L102:
.LCFI36:
	.cfi_restore_state
	.loc 1 669 0
	lwz 0,52(1)
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
	addi 1,1,48
	.cfi_remember_state
.LCFI37:
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
.LVL124:
.L113:
.LCFI38:
	.cfi_restore_state
	.loc 1 645 0
	bl Draw_SpiralConsoleBackground
.LVL125:
	b .L105
	.cfi_endproc
.LFE53:
	.size	Con_DrawConsole, .-Con_DrawConsole
	.align 2
	.globl Con_NotifyBox
	.type	Con_NotifyBox, @function
Con_NotifyBox:
.LFB54:
	.loc 1 678 0
	.cfi_startproc
.LVL126:
	stwu 1,-32(1)
.LCFI39:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -12
	.cfi_register 65, 0
	.loc 1 682 0
	lis 3,.LC14@ha
.LVL127:
	.loc 1 678 0
	stw 0,36(1)
	.loc 1 682 0
	la 3,.LC14@l(3)
	.loc 1 678 0
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 689 0
	lis 29,key_count@ha
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 65, 4
	.loc 1 678 0
	stfd 31,24(1)
	.loc 1 682 0
	.cfi_offset 63, -8
	crxor 6,6,6
	bl Con_Printf
	.loc 1 684 0
	mr 3,31
	.loc 1 690 0
	lis 30,key_dest@ha
	.loc 1 684 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 686 0
	lis 3,.LC15@ha
	la 3,.LC15@l(3)
	lis 31,realtime@ha
.LVL128:
	crxor 6,6,6
	bl Con_Printf
	.loc 1 687 0
	lis 3,.LC16@ha
	la 3,.LC16@l(3)
	la 31,realtime@l(31)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 689 0
	li 0,-2
	stw 0,key_count@l(29)
	.loc 1 690 0
	li 0,1
	stw 0,key_dest@l(30)
	la 29,key_count@l(29)
.L115:
	.loc 1 694 0 discriminator 1
	bl Sys_FloatTime
	fmr 31,1
.LVL129:
	.loc 1 695 0 discriminator 1
	bl SCR_UpdateScreen
.LVL130:
	.loc 1 696 0 discriminator 1
	bl Sys_SendKeyEvents
	.loc 1 697 0 discriminator 1
	bl Sys_FloatTime
.LVL131:
	.loc 1 699 0 discriminator 1
	lwz 0,0(29)
	.loc 1 698 0 discriminator 1
	fsub 31,1,31
.LVL132:
	lfd 0,0(31)
	.loc 1 699 0 discriminator 1
	cmpwi 7,0,0
	.loc 1 698 0 discriminator 1
	fadd 31,31,0
	stfd 31,0(31)
	.loc 1 699 0 discriminator 1
	blt+ 7,.L115
	.loc 1 701 0
	lis 3,.LC17@ha
	la 3,.LC17@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL133:
	.loc 1 702 0
	li 0,0
	stw 0,key_dest@l(30)
	.loc 1 703 0
	lis 9,.LC18@ha
	.loc 1 704 0
	lwz 0,36(1)
	.loc 1 703 0
	lfd 0,.LC18@l(9)
	.loc 1 704 0
	mtlr 0
	lwz 29,12(1)
	.loc 1 703 0
	stfd 0,0(31)
	.loc 1 704 0
	lwz 30,16(1)
	lwz 31,20(1)
	lfd 31,24(1)
	addi 1,1,32
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE54:
	.size	Con_NotifyBox, .-Con_NotifyBox
	.comm	con_notifylines,4,4
	.comm	con_initialized,1,1
	.comm	con_debuglog,1,1
	.comm	con_vislines,4,4
	.comm	con_times,16,4
	.globl con_spiral
	.globl con_notifytime
	.globl con_text
	.comm	con_x,4,4
	.comm	con_current,4,4
	.comm	con_backscroll,4,4
	.comm	con_totallines,4,4
	.comm	con_forcedup,1,1
	.globl con_cursorspeed
	.comm	con_linewidth,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC12:
	.4byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC18:
	.4byte	0
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	con_notifytime, @object
	.size	con_notifytime, 20
con_notifytime:
	.long	.LC21
	.long	.LC22
	.zero	12
	.type	con_spiral, @object
	.size	con_spiral, 20
con_spiral:
	.long	.LC19
	.long	.LC20
	.byte	1
	.zero	11
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"misc/talk.wav"
	.zero	2
.LC1:
	.string	"%s"
	.zero	1
.LC2:
	.string	"%s/qconsole.log"
.LC3:
	.string	"-condebug"
	.zero	2
.LC4:
	.string	"%s%s"
	.zero	3
.LC5:
	.string	"/qconsole.log"
	.zero	2
.LC6:
	.string	"context"
.LC7:
	.string	"Console initialized.\n"
	.zero	2
.LC8:
	.string	"toggleconsole"
	.zero	2
.LC9:
	.string	"messagemode"
.LC10:
	.string	"messagemode2"
	.zero	3
.LC11:
	.string	"clear"
	.zero	2
.LC13:
	.string	"say:"
	.zero	3
.LC14:
	.string	"\n\n\035\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\037\n"
	.zero	3
.LC15:
	.string	"Press a key.\n"
	.zero	2
.LC16:
	.string	"\035\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\037\n"
	.zero	1
.LC17:
	.string	"\n"
	.zero	2
.LC19:
	.string	"con_spiral"
	.zero	1
.LC20:
	.string	"0"
	.zero	2
.LC21:
	.string	"con_notifytime"
	.zero	1
.LC22:
	.string	"3"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	con_text, @object
	.size	con_text, 4
con_text:
	.zero	4
	.section	.sdata,"aw",@progbits
	.align 2
	.type	con_cursorspeed, @object
	.size	con_cursorspeed, 4
con_cursorspeed:
	.long	1082130432
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	cr.15310, @object
	.size	cr.15310, 4
cr.15310:
	.zero	4
	.type	data.15327, @object
	.size	data.15327, 4096
data.15327:
	.zero	4096
	.type	inupdate.15334, @object
	.size	inupdate.15334, 1
inupdate.15334:
	.zero	1
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stdarg.h"
	.file 8 "<built-in>"
	.file 9 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/keys.h"
	.file 18 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/screen.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b09
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF326
	.byte	0x1
	.4byte	.LASF327
	.4byte	.LASF328
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xd
	.byte	0x4
	.4byte	0xff
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x15
	.4byte	0xf2
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x18
	.byte	0x6
	.byte	0x2c
	.4byte	0x170
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2e
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x111
	.uleb128 0x8
	.4byte	0x106
	.4byte	0x186
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x24
	.byte	0x6
	.byte	0x34
	.4byte	0x211
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x36
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x38
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x25a
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x48
	.4byte	0x25a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x49
	.4byte	0x25a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4b
	.4byte	0x106
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4e
	.4byte	0x106
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0x8
	.4byte	0xe9
	.4byte	0x26a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x2b1
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x5a
	.4byte	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x5d
	.4byte	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5e
	.4byte	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x26a
	.uleb128 0x8
	.4byte	0x2c9
	.4byte	0x2c7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c7
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2f8
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x6a
	.4byte	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x6b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x70
	.byte	0x6
	.byte	0xa9
	.4byte	0x458
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xad
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0xae
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb0
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb7
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.4byte	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbb
	.4byte	0x60b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbd
	.4byte	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbe
	.4byte	0x64b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc6
	.4byte	0x651
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc7
	.4byte	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xce
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd1
	.4byte	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd5
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd7
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF62
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
	.4byte	0x477
	.uleb128 0x13
	.4byte	0x477
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0xf9
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x14
	.4byte	.LASF63
	.2byte	0x440
	.byte	0x6
	.2byte	0x244
	.4byte	0x5db
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x246
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x24d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x24e
	.4byte	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x250
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x251
	.4byte	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x253
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x255
	.4byte	0x8f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x258
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x259
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x25a
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25b
	.4byte	0x8fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x25e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x25f
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x282
	.4byte	0x8b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x285
	.4byte	0x2b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x286
	.4byte	0x26a
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x289
	.4byte	0x90d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x28e
	.4byte	0x67d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x28f
	.4byte	0x919
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x458
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x600
	.uleb128 0x13
	.4byte	0x477
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x600
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x606
	.uleb128 0x16
	.4byte	0xff
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e1
	.uleb128 0x12
	.byte	0x1
	.4byte	0x5d
	.4byte	0x630
	.uleb128 0x13
	.4byte	0x477
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5d
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x611
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x64b
	.uleb128 0x13
	.4byte	0x477
	.uleb128 0x13
	.4byte	0xe9
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x636
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x661
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x671
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x111
	.4byte	0x2fe
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0xc
	.byte	0x6
	.2byte	0x115
	.4byte	0x6b8
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x117
	.4byte	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x118
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x119
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x67d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x671
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x6ff
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x132
	.4byte	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x133
	.4byte	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x134
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x70f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x6
	.2byte	0x263
	.4byte	0x83f
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x265
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x266
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x267
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x268
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x269
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x26a
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x26b
	.4byte	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x26c
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x26d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x26e
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x26f
	.4byte	0x84f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x270
	.4byte	0x85f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x271
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x272
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x273
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x274
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x275
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x276
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x277
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x84f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x85f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x86f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x6
	.2byte	0x27c
	.4byte	0x897
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x27f
	.4byte	0x897
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x280
	.4byte	0x8a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x2f8
	.4byte	0x8a7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x8b7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x6
	.2byte	0x261
	.4byte	0x8d9
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x278
	.4byte	0x70f
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x281
	.4byte	0x86f
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x8e9
	.uleb128 0x9
	.4byte	0x48
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x8f5
	.uleb128 0x13
	.4byte	0x477
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8e9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x170
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x90d
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x913
	.uleb128 0xd
	.byte	0x4
	.4byte	0x901
	.uleb128 0x8
	.4byte	0x671
	.4byte	0x929
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF115
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF116
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF117
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0x28
	.4byte	0x949
	.uleb128 0x8
	.4byte	0x959
	.4byte	0x959
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xc
	.byte	0x8
	.byte	0
	.4byte	0x9ac
	.uleb128 0xf
	.string	"gpr"
	.byte	0x8
	.byte	0
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"fpr"
	.byte	0x8
	.byte	0
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x8
	.byte	0
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x8
	.byte	0
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x8
	.byte	0
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x7
	.byte	0x66
	.4byte	0x93e
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x9
	.byte	0x32
	.4byte	0x671
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0xa
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	0x930
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0xa
	.byte	0x22
	.4byte	0x9dd
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF127
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x10
	.byte	0xa
	.byte	0x28
	.4byte	0xa37
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xa
	.byte	0x2a
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xa
	.byte	0x2b
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xa
	.byte	0x2c
	.4byte	0xa37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xa
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9c2
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0xa
	.byte	0x2f
	.4byte	0x9e4
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xa58
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0xa68
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xa78
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xa88
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x930
	.4byte	0xa9e
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x9c2
	.4byte	0xaae
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xb
	.byte	0x1a
	.4byte	0x9c2
	.uleb128 0xa
	.byte	0x44
	.byte	0xb
	.byte	0x22
	.4byte	0xbb0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xb
	.byte	0x24
	.4byte	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xb
	.byte	0x25
	.4byte	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xb
	.byte	0x26
	.4byte	0xbb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xb
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xb
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xb
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xb
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xb
	.byte	0x2b
	.4byte	0x930
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xb
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xb
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xb
	.byte	0x2e
	.4byte	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xb
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xb
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xb
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xb
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xb
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xb
	.byte	0x34
	.4byte	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xaae
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0xb
	.byte	0x36
	.4byte	0xab9
	.uleb128 0x8
	.4byte	0xff
	.4byte	0xbd7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xc
	.byte	0x16
	.4byte	0x930
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0xc
	.byte	0x17
	.4byte	0xbed
	.uleb128 0x8
	.4byte	0xbd7
	.4byte	0xbfd
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x930
	.4byte	0xc0d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x14
	.byte	0xd
	.byte	0x38
	.4byte	0xc6e
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xd
	.byte	0x3a
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xd
	.byte	0x3b
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xd
	.byte	0x3c
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xd
	.byte	0x3d
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xd
	.byte	0x3e
	.4byte	0x930
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xd
	.byte	0x3f
	.4byte	0xc6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc0d
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xd
	.byte	0x40
	.4byte	0xc0d
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0x10
	.byte	0xe
	.byte	0x16
	.4byte	0xca8
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xe
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xe
	.byte	0x19
	.4byte	0xca8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xcb8
	.uleb128 0x9
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.2byte	0x80a0
	.byte	0xe
	.byte	0x78
	.4byte	0xe06
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xe
	.byte	0x7a
	.4byte	0xe06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xe
	.byte	0x7b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xe
	.byte	0x7c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xe
	.byte	0x7d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xe
	.byte	0x7f
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xe
	.byte	0x80
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xe
	.byte	0x81
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xe
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xe
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xe
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xe
	.byte	0x86
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xe
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xe
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xe
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xe
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xe
	.byte	0x8c
	.4byte	0xe0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xe
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xe
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xe
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xe
	.byte	0x91
	.4byte	0xe0c
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xe
	.byte	0x93
	.4byte	0xc7f
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xe
	.byte	0x94
	.4byte	0xe1d
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xcb8
	.uleb128 0x8
	.4byte	0x9c2
	.4byte	0xe1d
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0xe2d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0xf
	.byte	0x6b
	.4byte	0xe48
	.uleb128 0x1f
	.4byte	.LASF189
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF190
	.sleb128 1
	.uleb128 0x1f
	.4byte	.LASF191
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF192
	.byte	0xf
	.byte	0x6f
	.4byte	0xe2d
	.uleb128 0x20
	.2byte	0x8f8
	.byte	0xf
	.byte	0x75
	.4byte	0xf4a
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xf
	.byte	0x77
	.4byte	0xe48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xf
	.byte	0x7a
	.4byte	0xe1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xf
	.byte	0x7b
	.4byte	0xf4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xf
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xf
	.byte	0x7f
	.4byte	0xf5b
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xf
	.byte	0x83
	.4byte	0x9d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c8
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xf
	.byte	0x84
	.4byte	0x9d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c9
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xf
	.byte	0x85
	.4byte	0x9d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x8ca
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xf
	.byte	0x86
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8cc
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0xf
	.byte	0x87
	.4byte	0xf71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d0
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0xf
	.byte	0x88
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d4
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xf
	.byte	0x89
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d8
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0xf
	.byte	0x8a
	.4byte	0x930
	.byte	0x3
	.byte	0x23
	.uleb128 0x8dc
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0xf
	.byte	0x8e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e0
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0xf
	.byte	0x8f
	.4byte	0xe06
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e4
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0xf
	.byte	0x90
	.4byte	0xa3d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e8
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0xf5b
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0xf71
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9b7
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0xf
	.byte	0x92
	.4byte	0xe53
	.uleb128 0xe
	.4byte	.LASF210
	.byte	0x14
	.byte	0x10
	.byte	0x52
	.4byte	0xfd5
	.uleb128 0xb
	.4byte	.LASF211
	.byte	0x10
	.byte	0x54
	.4byte	0xbe2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF212
	.byte	0x10
	.byte	0x55
	.4byte	0x930
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x56
	.4byte	0x9c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x10
	.byte	0x57
	.4byte	0x9c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.string	"pad"
	.byte	0x10
	.byte	0x58
	.4byte	0xfd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x9c2
	.4byte	0xfe5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x10
	.byte	0x59
	.4byte	0xf82
	.uleb128 0xe
	.4byte	.LASF216
	.byte	0x48
	.byte	0x10
	.byte	0x5b
	.4byte	0x10a5
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x10
	.byte	0x5d
	.4byte	0xa58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x10
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x10
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x10
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x10
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x10
	.byte	0x61
	.4byte	0x11ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x10
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF221
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF223
	.byte	0x10
	.byte	0x64
	.4byte	0x11d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x10
	.byte	0x65
	.4byte	0x11d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x10
	.byte	0x66
	.4byte	0xa68
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LASF226
	.byte	0x5c
	.byte	0x10
	.byte	0x96
	.4byte	0x11ca
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x10
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF228
	.byte	0x10
	.byte	0x9a
	.4byte	0x12b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x10
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x10
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x10
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0x10
	.byte	0xa0
	.4byte	0xa78
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x10
	.byte	0xa1
	.4byte	0xa78
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x10
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0x10
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x10
	.byte	0xa5
	.4byte	0x12bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x10
	.byte	0xa6
	.4byte	0x11ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF237
	.byte	0x10
	.byte	0xa7
	.4byte	0x11ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF238
	.byte	0x10
	.byte	0xa9
	.4byte	0x12c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x10
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x10
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x10
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0x10
	.byte	0xb0
	.4byte	0xa9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0x10
	.byte	0xb1
	.4byte	0xa48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF244
	.byte	0x10
	.byte	0xb2
	.4byte	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF245
	.byte	0x10
	.byte	0xb3
	.4byte	0xa37
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x10a5
	.uleb128 0xd
	.byte	0x4
	.4byte	0xff0
	.uleb128 0x4
	.4byte	.LASF246
	.byte	0x10
	.byte	0x67
	.4byte	0xff0
	.uleb128 0xa
	.byte	0x2c
	.byte	0x10
	.byte	0x7e
	.4byte	0x1222
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x10
	.byte	0x80
	.4byte	0xa88
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0x10
	.byte	0x81
	.4byte	0x930
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0x10
	.byte	0x82
	.4byte	0x1222
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x10
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11d6
	.uleb128 0x4
	.4byte	.LASF250
	.byte	0x10
	.byte	0x84
	.4byte	0x11e1
	.uleb128 0xe
	.4byte	.LASF251
	.byte	0x1c
	.byte	0x10
	.byte	0x8a
	.4byte	0x12a2
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x10
	.byte	0x8c
	.4byte	0x12a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0x10
	.byte	0x8d
	.4byte	0x12a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0x10
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x10
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0x10
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0x10
	.byte	0x92
	.4byte	0x12a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF256
	.byte	0x10
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1233
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12a2
	.uleb128 0x4
	.4byte	.LASF257
	.byte	0x10
	.byte	0x94
	.4byte	0x1233
	.uleb128 0xd
	.byte	0x4
	.4byte	0xfe5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12ae
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1228
	.uleb128 0x4
	.4byte	.LASF258
	.byte	0x10
	.byte	0xb4
	.4byte	0x10a5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12cb
	.uleb128 0x1e
	.byte	0x4
	.byte	0x11
	.byte	0xa0
	.4byte	0x12fd
	.uleb128 0x1f
	.4byte	.LASF259
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF260
	.sleb128 1
	.uleb128 0x1f
	.4byte	.LASF261
	.sleb128 2
	.uleb128 0x1f
	.4byte	.LASF262
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF263
	.byte	0x11
	.byte	0xa0
	.4byte	0x12dc
	.uleb128 0x21
	.4byte	.LASF329
	.byte	0x4
	.byte	0x12
	.2byte	0x490
	.4byte	0x1368
	.uleb128 0x22
	.string	"U8"
	.byte	0x12
	.2byte	0x492
	.4byte	0x1368
	.uleb128 0x22
	.string	"S8"
	.byte	0x12
	.2byte	0x493
	.4byte	0x136d
	.uleb128 0x22
	.string	"U16"
	.byte	0x12
	.2byte	0x494
	.4byte	0x1372
	.uleb128 0x22
	.string	"S16"
	.byte	0x12
	.2byte	0x495
	.4byte	0x1377
	.uleb128 0x22
	.string	"U32"
	.byte	0x12
	.2byte	0x496
	.4byte	0x137c
	.uleb128 0x22
	.string	"S32"
	.byte	0x12
	.2byte	0x497
	.4byte	0x1381
	.uleb128 0x22
	.string	"F32"
	.byte	0x12
	.2byte	0x498
	.4byte	0x9cd
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
	.4byte	.LASF264
	.byte	0x12
	.2byte	0x499
	.4byte	0x1308
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF330
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.4byte	0x13aa
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x74
	.4byte	0x41
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF265
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF266
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF268
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	0x1392
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x141a
	.uleb128 0x28
	.4byte	0x13a0
	.4byte	.LLST2
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF275
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST3
	.4byte	0x14cc
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF270
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x2b
	.4byte	.LASF271
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LASF272
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LASF273
	.byte	0x1
	.byte	0xa1
	.4byte	0x14cc
	.byte	0x4
	.byte	0x91
	.sleb128 -65584
	.uleb128 0x2d
	.4byte	0x1392
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xcc
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x28
	.4byte	0x13a0
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x14dd
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0xffff
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST12
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST13
	.4byte	0x1569
	.uleb128 0x31
	.string	"txt"
	.byte	0x1
	.2byte	0x121
	.4byte	0xf9
	.4byte	.LLST14
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.2byte	0x123
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.2byte	0x124
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x32
	.string	"l"
	.byte	0x1
	.2byte	0x124
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x33
	.string	"cr"
	.byte	0x1
	.2byte	0x125
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	cr.15310
	.uleb128 0x34
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x126
	.4byte	0x41
	.4byte	.LLST18
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x179
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST19
	.4byte	0x15d6
	.uleb128 0x35
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x179
	.4byte	0xf9
	.4byte	.LLST20
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.2byte	0x179
	.4byte	0xf9
	.4byte	.LLST21
	.uleb128 0x36
	.uleb128 0x37
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x17b
	.4byte	0x9ac
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x37
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x17c
	.4byte	0x15d6
	.byte	0x5
	.byte	0x3
	.4byte	data.15327
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x41
	.4byte	.LLST22
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x15e7
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0xfff
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x19a
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST23
	.4byte	0x1645
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xf9
	.4byte	.LLST24
	.uleb128 0x36
	.uleb128 0x37
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x19c
	.4byte	0x9ac
	.byte	0x3
	.byte	0x91
	.sleb128 -4216
	.uleb128 0x33
	.string	"msg"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x15d6
	.byte	0x3
	.byte	0x91
	.sleb128 -4204
	.uleb128 0x37
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x19e
	.4byte	0x9d2
	.byte	0x5
	.byte	0x3
	.4byte	inupdate.15334
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF283
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST25
	.4byte	0x167f
	.uleb128 0x2c
	.4byte	.LASF284
	.byte	0x1
	.byte	0xdf
	.4byte	0x167f
	.byte	0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.byte	0xe0
	.4byte	0xf9
	.byte	0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x1690
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3e8
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x1d1
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST26
	.4byte	0x16ec
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xf9
	.4byte	.LLST27
	.uleb128 0x36
	.uleb128 0x37
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x9ac
	.byte	0x3
	.byte	0x91
	.sleb128 -4224
	.uleb128 0x33
	.string	"msg"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x15d6
	.byte	0x3
	.byte	0x91
	.sleb128 -4212
	.uleb128 0x34
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x41
	.4byte	.LLST28
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST29
	.4byte	0x1748
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0xf9
	.4byte	.LLST30
	.uleb128 0x36
	.uleb128 0x37
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x9ac
	.byte	0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x33
	.string	"msg"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x1748
	.byte	0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x34
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x41
	.4byte	.LLST31
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x1759
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x20e
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST32
	.4byte	0x17a0
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.2byte	0x210
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x211
	.4byte	0x41
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x212
	.4byte	0xf9
	.4byte	.LLST35
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x236
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST36
	.4byte	0x1813
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.2byte	0x238
	.4byte	0x41
	.4byte	.LLST37
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.2byte	0x238
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x34
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x239
	.4byte	0xf9
	.4byte	.LLST39
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x41
	.4byte	.LLST40
	.uleb128 0x34
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x23b
	.4byte	0x930
	.4byte	.LLST41
	.uleb128 0x39
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x23c
	.4byte	0x1813
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x181e
	.uleb128 0x3a
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x279
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST42
	.4byte	0x18ad
	.uleb128 0x35
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x279
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x35
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x279
	.4byte	0x9d2
	.4byte	.LLST44
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x27b
	.4byte	0x41
	.4byte	.LLST45
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.2byte	0x27b
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.2byte	0x27b
	.4byte	0x41
	.4byte	.LLST47
	.uleb128 0x34
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x27c
	.4byte	0x41
	.4byte	.LLST48
	.uleb128 0x34
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x27d
	.4byte	0xf9
	.4byte	.LLST49
	.uleb128 0x3b
	.string	"j"
	.byte	0x1
	.2byte	0x27e
	.4byte	0x41
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x2a5
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST50
	.4byte	0x18f6
	.uleb128 0x35
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x2a5
	.4byte	0xf9
	.4byte	.LLST51
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x929
	.4byte	.LLST52
	.uleb128 0x32
	.string	"t2"
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x929
	.4byte	.LLST53
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF297
	.byte	0xa
	.byte	0xb1
	.4byte	0xbc7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"vid"
	.byte	0xb
	.byte	0x38
	.4byte	0xbbc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF298
	.byte	0x13
	.byte	0x2b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF299
	.byte	0x13
	.byte	0x2c
	.4byte	0x9d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF300
	.byte	0x13
	.byte	0x34
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cls"
	.byte	0xf
	.byte	0x94
	.4byte	0xf77
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF301
	.byte	0x11
	.byte	0xa2
	.4byte	0x12fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF302
	.byte	0x11
	.byte	0xa5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF303
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_totallines
	.uleb128 0x3e
	.4byte	.LASF304
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_backscroll
	.uleb128 0x3e
	.4byte	.LASF305
	.byte	0x1
	.byte	0x27
	.4byte	0x9d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_forcedup
	.uleb128 0x3e
	.4byte	.LASF306
	.byte	0x1
	.byte	0x3e
	.4byte	0x9d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_initialized
	.uleb128 0x3e
	.4byte	.LASF307
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_notifylines
	.uleb128 0x3f
	.4byte	.LASF308
	.byte	0x14
	.2byte	0xc2c
	.4byte	0x12d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x39
	.4byte	.LASF309
	.byte	0x12
	.2byte	0x548
	.4byte	0x19d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x19de
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1386
	.uleb128 0x39
	.4byte	.LASF310
	.byte	0x15
	.2byte	0x149
	.4byte	0xc74
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF311
	.byte	0x15
	.2byte	0x150
	.4byte	0x929
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF312
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_linewidth
	.uleb128 0x3e
	.4byte	.LASF313
	.byte	0x1
	.byte	0x23
	.4byte	0x930
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_cursorspeed
	.uleb128 0x3e
	.4byte	.LASF314
	.byte	0x1
	.byte	0x2a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_current
	.uleb128 0x3e
	.4byte	.LASF315
	.byte	0x1
	.byte	0x2b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_x
	.uleb128 0x3e
	.4byte	.LASF316
	.byte	0x1
	.byte	0x2c
	.4byte	0xf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_text
	.uleb128 0x3e
	.4byte	.LASF317
	.byte	0x1
	.byte	0x2e
	.4byte	0xc74
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_notifytime
	.uleb128 0x3e
	.4byte	.LASF318
	.byte	0x1
	.byte	0x2f
	.4byte	0xc74
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_spiral
	.uleb128 0x3e
	.4byte	.LASF319
	.byte	0x1
	.byte	0x32
	.4byte	0xbfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_times
	.uleb128 0x3e
	.4byte	.LASF320
	.byte	0x1
	.byte	0x35
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_vislines
	.uleb128 0x3e
	.4byte	.LASF321
	.byte	0x1
	.byte	0x37
	.4byte	0x9d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_debuglog
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x1aca
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF322
	.byte	0x1
	.byte	0x3a
	.4byte	0x1ab4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF323
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF324
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF325
	.byte	0x1
	.byte	0x81
	.4byte	0x9d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x23c
	.4byte	0x1813
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 65592
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 65592
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_linewidth
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_linewidth
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_linewidth
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_totallines
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_totallines
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	con_linewidth
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB45-.Ltext0
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
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x12
	.byte	0x3
	.4byte	con_current
	.byte	0x6
	.byte	0x3
	.4byte	con_totallines
	.byte	0x6
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4224
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4224
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1024
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1024
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4232
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x7
	.byte	0x8d
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1160
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x7
	.byte	0x8d
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	con_vislines
	.byte	0x6
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106-1-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-1-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-1-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
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
.LASF197:
	.string	"demos"
.LASF15:
	.string	"_flock_t"
.LASF228:
	.string	"plane"
.LASF327:
	.string	"d:/Data/Nintendo/TenebraeGX/src/console.c"
.LASF248:
	.string	"mipadjust"
.LASF21:
	.string	"_maxwds"
.LASF261:
	.string	"key_message"
.LASF273:
	.string	"tbuf"
.LASF270:
	.string	"oldtotallines"
.LASF35:
	.string	"_on_exit_args"
.LASF302:
	.string	"key_count"
.LASF311:
	.string	"realtime"
.LASF208:
	.string	"message"
.LASF229:
	.string	"flags"
.LASF136:
	.string	"buffer"
.LASF202:
	.string	"demofile"
.LASF164:
	.string	"qsockaddr"
.LASF104:
	.string	"_signal_buf"
.LASF313:
	.string	"con_cursorspeed"
.LASF162:
	.string	"next"
.LASF275:
	.string	"Con_CheckResize"
.LASF260:
	.string	"key_console"
.LASF45:
	.string	"_size"
.LASF49:
	.string	"_lbfsize"
.LASF47:
	.string	"_flags"
.LASF76:
	.string	"_p5s"
.LASF64:
	.string	"_errno"
.LASF280:
	.string	"argptr"
.LASF262:
	.string	"key_menu"
.LASF62:
	.string	"_flags2"
.LASF222:
	.string	"anim_max"
.LASF209:
	.string	"client_static_t"
.LASF168:
	.string	"connecttime"
.LASF135:
	.string	"pixel_t"
.LASF300:
	.string	"scr_copytop"
.LASF61:
	.string	"_mbstate"
.LASF51:
	.string	"_read"
.LASF236:
	.string	"polys"
.LASF19:
	.string	"__ULong"
.LASF179:
	.string	"sendSequence"
.LASF106:
	.string	"_mbrlen_state"
.LASF152:
	.string	"direct"
.LASF66:
	.string	"_stdout"
.LASF7:
	.string	"_fpos_t"
.LASF207:
	.string	"netcon"
.LASF42:
	.string	"_fns"
.LASF285:
	.string	"Con_DPrintf"
.LASF50:
	.string	"_cookie"
.LASF305:
	.string	"con_forcedup"
.LASF232:
	.string	"texturemins"
.LASF24:
	.string	"_Bigint"
.LASF294:
	.string	"rows"
.LASF32:
	.string	"__tm_wday"
.LASF74:
	.string	"_result"
.LASF28:
	.string	"__tm_hour"
.LASF272:
	.string	"numchars"
.LASF69:
	.string	"_emergency"
.LASF65:
	.string	"_stdin"
.LASF195:
	.string	"spawnparms"
.LASF247:
	.string	"vecs"
.LASF12:
	.string	"__count"
.LASF116:
	.string	"float"
.LASF140:
	.string	"rowbytes"
.LASF149:
	.string	"conheight"
.LASF287:
	.string	"Con_DrawInput"
.LASF108:
	.string	"_mbsrtowcs_state"
.LASF301:
	.string	"key_dest"
.LASF121:
	.string	"overflow_arg_area"
.LASF150:
	.string	"maxwarpwidth"
.LASF217:
	.string	"gl_texturenum"
.LASF6:
	.string	"long long unsigned int"
.LASF279:
	.string	"file"
.LASF89:
	.string	"_rand48"
.LASF46:
	.string	"__sFILE"
.LASF23:
	.string	"_wds"
.LASF99:
	.string	"_r48"
.LASF292:
	.string	"lines"
.LASF265:
	.string	"Con_MessageMode_f"
.LASF293:
	.string	"drawinput"
.LASF85:
	.string	"__FILE"
.LASF111:
	.string	"_h_errno"
.LASF58:
	.string	"_offset"
.LASF132:
	.string	"maxsize"
.LASF55:
	.string	"_ubuf"
.LASF290:
	.string	"time"
.LASF172:
	.string	"canSend"
.LASF243:
	.string	"cached_light"
.LASF161:
	.string	"value"
.LASF278:
	.string	"Con_DebugLog"
.LASF219:
	.string	"texturechain"
.LASF320:
	.string	"con_vislines"
.LASF323:
	.string	"edit_line"
.LASF147:
	.string	"conrowbytes"
.LASF241:
	.string	"lightmaptexturenum"
.LASF118:
	.string	"__gnuc_va_list"
.LASF318:
	.string	"con_spiral"
.LASF276:
	.string	"Con_Print"
.LASF173:
	.string	"sendNext"
.LASF220:
	.string	"anim_total"
.LASF298:
	.string	"clearnotify"
.LASF141:
	.string	"width"
.LASF26:
	.string	"__tm_sec"
.LASF95:
	.string	"_asctime_buf"
.LASF133:
	.string	"cursize"
.LASF33:
	.string	"__tm_yday"
.LASF68:
	.string	"_inc"
.LASF127:
	.string	"_Bool"
.LASF14:
	.string	"_mbstate_t"
.LASF148:
	.string	"conwidth"
.LASF306:
	.string	"con_initialized"
.LASF169:
	.string	"lastMessageTime"
.LASF20:
	.string	"_next"
.LASF283:
	.string	"Con_Init"
.LASF330:
	.string	"Con_ClearNotify"
.LASF182:
	.string	"sendMessage"
.LASF183:
	.string	"receiveSequence"
.LASF249:
	.string	"texture"
.LASF139:
	.string	"fullbright"
.LASF13:
	.string	"__value"
.LASF138:
	.string	"colormap16"
.LASF167:
	.string	"qsocket_s"
.LASF264:
	.string	"WGPipe"
.LASF198:
	.string	"demorecording"
.LASF170:
	.string	"lastSendTime"
.LASF110:
	.string	"_wcsrtombs_state"
.LASF100:
	.string	"_mblen_state"
.LASF304:
	.string	"con_backscroll"
.LASF185:
	.string	"receiveMessageLength"
.LASF18:
	.string	"char"
.LASF29:
	.string	"__tm_mday"
.LASF82:
	.string	"_sig_func"
.LASF107:
	.string	"_mbrtowc_state"
.LASF81:
	.string	"_atexit0"
.LASF244:
	.string	"cached_dlight"
.LASF201:
	.string	"forcetrack"
.LASF158:
	.string	"string"
.LASF130:
	.string	"overflowed"
.LASF227:
	.string	"visframe"
.LASF288:
	.string	"text"
.LASF75:
	.string	"_result_k"
.LASF250:
	.string	"mtexinfo_t"
.LASF4:
	.string	"unsigned int"
.LASF10:
	.string	"__wch"
.LASF174:
	.string	"driver"
.LASF54:
	.string	"_close"
.LASF314:
	.string	"con_current"
.LASF143:
	.string	"aspect"
.LASF315:
	.string	"con_x"
.LASF308:
	.string	"causticschain"
.LASF289:
	.string	"Con_DrawNotify"
.LASF151:
	.string	"maxwarpheight"
.LASF123:
	.string	"va_list"
.LASF137:
	.string	"colormap"
.LASF245:
	.string	"samples"
.LASF97:
	.string	"_gamma_signgam"
.LASF266:
	.string	"Con_MessageMode2_f"
.LASF5:
	.string	"long long int"
.LASF112:
	.string	"_nextf"
.LASF281:
	.string	"Con_Printf"
.LASF44:
	.string	"_base"
.LASF77:
	.string	"_freelist"
.LASF91:
	.string	"_mult"
.LASF239:
	.string	"dlightframe"
.LASF92:
	.string	"_add"
.LASF129:
	.string	"allowoverflow"
.LASF299:
	.string	"scr_disabled_for_loading"
.LASF109:
	.string	"_wcrtomb_state"
.LASF48:
	.string	"_file"
.LASF155:
	.string	"vec3_t"
.LASF175:
	.string	"landriver"
.LASF199:
	.string	"demoplayback"
.LASF73:
	.string	"__cleanup"
.LASF282:
	.string	"inupdate"
.LASF159:
	.string	"archive"
.LASF189:
	.string	"ca_dedicated"
.LASF212:
	.string	"dist"
.LASF34:
	.string	"__tm_isdst"
.LASF218:
	.string	"gl_lumitex"
.LASF216:
	.string	"texture_s"
.LASF246:
	.string	"texture_t"
.LASF277:
	.string	"mask"
.LASF317:
	.string	"con_notifytime"
.LASF142:
	.string	"height"
.LASF226:
	.string	"msurface_s"
.LASF41:
	.string	"_ind"
.LASF286:
	.string	"Con_SafePrintf"
.LASF154:
	.string	"vec_t"
.LASF240:
	.string	"dlightbits"
.LASF131:
	.string	"data"
.LASF128:
	.string	"sizebuf_s"
.LASF30:
	.string	"__tm_mon"
.LASF237:
	.string	"shadowchain"
.LASF221:
	.string	"anim_min"
.LASF117:
	.string	"long double"
.LASF191:
	.string	"ca_connected"
.LASF268:
	.string	"Con_ToggleConsole_f"
.LASF43:
	.string	"__sbuf"
.LASF254:
	.string	"lightTimestamp"
.LASF233:
	.string	"extents"
.LASF52:
	.string	"_write"
.LASF171:
	.string	"disconnected"
.LASF160:
	.string	"server"
.LASF186:
	.string	"receiveMessage"
.LASF40:
	.string	"_atexit"
.LASF267:
	.string	"Con_Clear_f"
.LASF153:
	.string	"viddef_t"
.LASF296:
	.string	"chat_buffer"
.LASF2:
	.string	"short int"
.LASF295:
	.string	"Con_NotifyBox"
.LASF16:
	.string	"long int"
.LASF322:
	.string	"key_lines"
.LASF214:
	.string	"signbits"
.LASF234:
	.string	"light_s"
.LASF235:
	.string	"light_t"
.LASF225:
	.string	"offsets"
.LASF329:
	.string	"_wgpipe"
.LASF84:
	.string	"__sf"
.LASF22:
	.string	"_sign"
.LASF146:
	.string	"conbuffer"
.LASF284:
	.string	"temp"
.LASF291:
	.string	"Con_DrawConsole"
.LASF71:
	.string	"_current_locale"
.LASF59:
	.string	"_data"
.LASF253:
	.string	"numverts"
.LASF11:
	.string	"__wchb"
.LASF231:
	.string	"numedges"
.LASF134:
	.string	"sizebuf_t"
.LASF325:
	.string	"team_message"
.LASF31:
	.string	"__tm_year"
.LASF119:
	.string	"__va_list_tag"
.LASF316:
	.string	"con_text"
.LASF176:
	.string	"socket"
.LASF224:
	.string	"alternate_anims"
.LASF312:
	.string	"con_linewidth"
.LASF96:
	.string	"_localtime_buf"
.LASF242:
	.string	"styles"
.LASF114:
	.string	"_unused"
.LASF80:
	.string	"_new"
.LASF319:
	.string	"con_times"
.LASF78:
	.string	"_cvtlen"
.LASF157:
	.string	"name"
.LASF103:
	.string	"_l64a_buf"
.LASF238:
	.string	"texinfo"
.LASF70:
	.string	"_current_category"
.LASF180:
	.string	"unreliableSendSequence"
.LASF72:
	.string	"__sdidinit"
.LASF57:
	.string	"_blksize"
.LASF25:
	.string	"__tm"
.LASF60:
	.string	"_lock"
.LASF223:
	.string	"anim_next"
.LASF205:
	.string	"td_starttime"
.LASF17:
	.string	"long unsigned int"
.LASF188:
	.string	"address"
.LASF181:
	.string	"sendMessageLength"
.LASF87:
	.string	"_niobs"
.LASF9:
	.string	"wint_t"
.LASF122:
	.string	"reg_save_area"
.LASF328:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF27:
	.string	"__tm_min"
.LASF251:
	.string	"glpoly_s"
.LASF257:
	.string	"glpoly_t"
.LASF37:
	.string	"_dso_handle"
.LASF125:
	.string	"byte"
.LASF303:
	.string	"con_totallines"
.LASF297:
	.string	"com_gamedir"
.LASF211:
	.string	"normal"
.LASF256:
	.string	"firstvertex"
.LASF190:
	.string	"ca_disconnected"
.LASF213:
	.string	"type"
.LASF79:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF156:
	.string	"cvar_s"
.LASF163:
	.string	"cvar_t"
.LASF326:
	.string	"GNU C 4.6.3"
.LASF196:
	.string	"demonum"
.LASF321:
	.string	"con_debuglog"
.LASF178:
	.string	"ackSequence"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF255:
	.string	"neighbours"
.LASF204:
	.string	"td_startframe"
.LASF310:
	.string	"developer"
.LASF307:
	.string	"con_notifylines"
.LASF187:
	.string	"addr"
.LASF193:
	.string	"state"
.LASF86:
	.string	"_glue"
.LASF258:
	.string	"msurface_t"
.LASF144:
	.string	"numpages"
.LASF39:
	.string	"_is_cxa"
.LASF83:
	.string	"__sglue"
.LASF105:
	.string	"_getdate_err"
.LASF94:
	.string	"_strtok_last"
.LASF101:
	.string	"_mbtowc_state"
.LASF177:
	.string	"driverdata"
.LASF36:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF165:
	.string	"sa_family"
.LASF63:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF145:
	.string	"recalc_refdef"
.LASF252:
	.string	"chain"
.LASF309:
	.string	"wgPipe"
.LASF194:
	.string	"mapstring"
.LASF200:
	.string	"timedemo"
.LASF120:
	.string	"reserved"
.LASF38:
	.string	"_fntypes"
.LASF271:
	.string	"numlines"
.LASF115:
	.string	"double"
.LASF192:
	.string	"cactive_t"
.LASF102:
	.string	"_wctomb_state"
.LASF274:
	.string	"Con_Linefeed"
.LASF56:
	.string	"_nbuf"
.LASF93:
	.string	"_unused_rand"
.LASF124:
	.string	"FILE"
.LASF324:
	.string	"key_linepos"
.LASF210:
	.string	"mplane_s"
.LASF215:
	.string	"mplane_t"
.LASF263:
	.string	"keydest_t"
.LASF206:
	.string	"signon"
.LASF259:
	.string	"key_game"
.LASF90:
	.string	"_seed"
.LASF98:
	.string	"_rand_next"
.LASF269:
	.string	"oldwidth"
.LASF166:
	.string	"sa_data"
.LASF53:
	.string	"_seek"
.LASF203:
	.string	"td_lastframe"
.LASF67:
	.string	"_stderr"
.LASF113:
	.string	"_nmalloc"
.LASF88:
	.string	"_iobs"
.LASF184:
	.string	"unreliableReceiveSequence"
.LASF126:
	.string	"qboolean"
.LASF230:
	.string	"firstedge"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
