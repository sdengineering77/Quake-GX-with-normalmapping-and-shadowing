	.file	"gl_screen.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl SCR_ScreenShot_f
	.type	SCR_ScreenShot_f, @function
SCR_ScreenShot_f:
.LFB55:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_screen.c"
	.loc 1 676 0
	.cfi_startproc
	mflr 0
	stwu 1,-240(1)
.LCFI0:
	.cfi_def_cfa_offset 240
	.cfi_register 65, 0
	.loc 1 696 0
	lis 9,.LC0@ha
	.loc 1 703 0
	lis 4,.LC1@ha
	.loc 1 676 0
	stw 27,220(1)
	.loc 1 696 0
	la 5,.LC0@l(9)
	.loc 1 676 0
	stw 28,224(1)
	.loc 1 703 0
	la 4,.LC1@l(4)
	.loc 1 676 0
	stw 29,228(1)
	.loc 1 703 0
	lis 29,com_gamedir@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 1 676 0
	stw 30,232(1)
	.loc 1 703 0
	la 29,com_gamedir@l(29)
	.loc 1 676 0
	stw 31,236(1)
	.loc 1 703 0
	addi 3,1,88
	.loc 1 676 0
	stw 0,244(1)
	lis 28,.LC2@ha
	.loc 1 696 0
	lwz 31,.LC0@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 708 0
	lis 27,0x1
	.loc 1 696 0
	lwz 6,4(5)
	.loc 1 708 0
	li 30,0
	.loc 1 696 0
	lwz 7,8(5)
	la 28,.LC2@l(28)
	lwz 8,12(5)
	.loc 1 708 0
	ori 27,27,34464
	.loc 1 696 0
	lwz 10,16(5)
	lwz 11,20(5)
	lhz 9,24(5)
	lbz 0,26(5)
	.loc 1 703 0
	mr 5,29
	.loc 1 696 0
	stw 6,12(1)
	stw 7,16(1)
	stw 8,20(1)
	stw 10,24(1)
	stw 11,28(1)
	sth 9,32(1)
	stb 0,34(1)
	stw 31,8(1)
	.loc 1 703 0
	crxor 6,6,6
	bl sprintf
	.loc 1 704 0
	addi 3,1,88
.LBB2:
	.loc 1 721 0
	lis 31,0x6666
.LBE2:
	.loc 1 704 0
	bl Sys_mkdir
	.loc 1 705 0
	addi 3,1,88
	li 4,0
	li 5,128
	bl memset
.LVL0:
.LBB3:
	.loc 1 721 0
	ori 31,31,26215
.LVL1:
.L2:
	.loc 1 721 0 is_stmt 0 discriminator 1
	li 11,5
.LBE3:
	.loc 1 708 0 is_stmt 1 discriminator 1
	addi 10,1,24
.LBB4:
	.loc 1 721 0 discriminator 1
	mtctr 11
.LBE4:
	.loc 1 675 0 discriminator 1
	mr 9,30
	li 0,10000
.LVL2:
.L3:
.LBB5:
	.loc 1 719 0 discriminator 2
	divw 11,9,0
	.loc 1 721 0 discriminator 2
	srawi 8,0,31
	mulhw 7,0,31
	.loc 1 719 0 discriminator 2
	addi 6,11,48
	stbu 6,1(10)
	.loc 1 720 0 discriminator 2
	mullw 11,11,0
	.loc 1 721 0 discriminator 2
	srawi 0,7,2
	subf 0,8,0
	.loc 1 720 0 discriminator 2
	subf 9,11,9
.LVL3:
	.loc 1 718 0 discriminator 2
	bdnz .L3
	.loc 1 724 0
	mr 4,28
	mr 5,29
	addi 6,1,8
	addi 3,1,88
	crxor 6,6,6
	bl sprintf
.LVL4:
	.loc 1 725 0
	addi 3,1,88
	bl Sys_FileTime
	cmpwi 7,3,-1
	beq- 7,.L4
.LBE5:
	.loc 1 708 0
	addi 30,30,1
.LVL5:
	cmpw 7,30,27
	bne+ 7,.L2
	.loc 1 733 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 784 0
	lwz 0,244(1)
	lwz 27,220(1)
	mtlr 0
	lwz 28,224(1)
	lwz 29,228(1)
	lwz 30,232(1)
.LVL6:
	lwz 31,236(1)
	addi 1,1,240
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
.L4:
.LCFI2:
	.cfi_restore_state
	.loc 1 761 0
	lis 27,glwidth@ha
	lis 28,glheight@ha
	lwz 29,glwidth@l(27)
	lwz 30,glheight@l(28)
	mullw 3,29,30
	mulli 3,3,3
	addi 3,3,18
	bl malloc
	.loc 1 770 0
	lis 9,glx@ha
	.loc 1 761 0
	mr 31,3
.LVL7:
	.loc 1 762 0
	li 0,0
	.loc 1 770 0
	lwz 3,glx@l(9)
.LVL8:
	lis 9,gly@ha
	lwz 4,gly@l(9)
	.loc 1 765 0
	srawi 10,29,8
	.loc 1 762 0
	stw 0,0(31)
	.loc 1 767 0
	srawi 11,30,8
	.loc 1 762 0
	sth 0,16(31)
	.loc 1 770 0
	mr 5,29
	.loc 1 762 0
	stw 0,4(31)
	.loc 1 770 0
	mr 6,30
	.loc 1 762 0
	stw 0,8(31)
	.loc 1 763 0
	li 0,2
	stb 0,2(31)
	.loc 1 768 0
	li 0,24
	stb 0,16(31)
	.loc 1 770 0
	li 7,6407
	.loc 1 764 0
	stb 29,12(31)
	.loc 1 770 0
	li 8,5121
	.loc 1 765 0
	stb 10,13(31)
	.loc 1 770 0
	addi 9,31,18
	.loc 1 766 0
	stb 30,14(31)
	.loc 1 767 0
	stb 11,15(31)
	.loc 1 770 0
	bl glReadPixels
	.loc 1 772 0
	lwz 5,glwidth@l(27)
	lwz 0,glheight@l(28)
	mullw 5,5,0
	mulli 5,5,3
	addi 5,5,18
.LVL9:
	.loc 1 773 0
	cmpwi 7,5,18
	ble- 7,.L6
	mr 9,31
	li 11,18
.LVL10:
.L7:
	.loc 1 773 0 is_stmt 0 discriminator 2
	addi 11,11,3
	.loc 1 775 0 is_stmt 1 discriminator 2
	lbz 10,18(9)
.LVL11:
	.loc 1 773 0 discriminator 2
	cmpw 7,5,11
	.loc 1 776 0 discriminator 2
	lbz 0,20(9)
	.loc 1 777 0 discriminator 2
	stb 10,20(9)
	.loc 1 776 0 discriminator 2
	stb 0,18(9)
	.loc 1 773 0 discriminator 2
	addi 9,9,3
	bgt+ 7,.L7
.LVL12:
.L6:
	.loc 1 779 0
	mr 4,31
	addi 3,1,8
	bl COM_WriteFile
.LVL13:
	.loc 1 782 0
	mr 3,31
	bl free
	.loc 1 783 0
	lis 3,.LC3@ha
	addi 4,1,8
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 784 0
	lwz 0,244(1)
	lwz 27,220(1)
	mtlr 0
	lwz 28,224(1)
	lwz 29,228(1)
	lwz 30,232(1)
	lwz 31,236(1)
.LVL14:
	addi 1,1,240
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE55:
	.size	SCR_ScreenShot_f, .-SCR_ScreenShot_f
	.align 2
	.globl SCR_SizeDown_f
	.type	SCR_SizeDown_f, @function
SCR_SizeDown_f:
.LFB44:
	.loc 1 359 0
	.cfi_startproc
	.loc 1 360 0
	lis 9,.LANCHOR0+12@ha
	.loc 1 359 0
	mflr 0
	.loc 1 360 0
	lfs 1,.LANCHOR0+12@l(9)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lis 3,.LC5@ha
	.loc 1 359 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 360 0
	la 3,.LC5@l(3)
	fsubs 1,1,0
	.loc 1 359 0
	stw 0,12(1)
	.loc 1 360 0
	.cfi_offset 65, 4
	bl Cvar_SetValue
	.loc 1 361 0
	li 0,1
	lis 9,vid+36@ha
	stw 0,vid+36@l(9)
	.loc 1 362 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	SCR_SizeDown_f, .-SCR_SizeDown_f
	.align 2
	.globl SCR_SizeUp_f
	.type	SCR_SizeUp_f, @function
SCR_SizeUp_f:
.LFB43:
	.loc 1 345 0
	.cfi_startproc
	.loc 1 346 0
	lis 9,.LANCHOR0+12@ha
	.loc 1 345 0
	mflr 0
	.loc 1 346 0
	lfs 1,.LANCHOR0+12@l(9)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lis 3,.LC5@ha
	.loc 1 345 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 346 0
	la 3,.LC5@l(3)
	fadds 1,1,0
	.loc 1 345 0
	stw 0,12(1)
	.loc 1 346 0
	.cfi_offset 65, 4
	bl Cvar_SetValue
	.loc 1 347 0
	li 0,1
	lis 9,vid+36@ha
	stw 0,vid+36@l(9)
	.loc 1 348 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE43:
	.size	SCR_SizeUp_f, .-SCR_SizeUp_f
	.align 2
	.globl SCR_CenterPrint
	.type	SCR_CenterPrint, @function
SCR_CenterPrint:
.LFB38:
	.loc 1 145 0
	.cfi_startproc
.LVL15:
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 1 146 0
	li 5,1023
	.loc 1 145 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 146 0
	lis 3,scr_centerstring@ha
.LVL16:
	mr 4,31
	la 3,scr_centerstring@l(3)
	.loc 1 145 0
	stw 0,20(1)
	.loc 1 146 0
	.cfi_offset 65, 4
	bl strncpy
	.loc 1 148 0
	lis 9,cl+568@ha
	lfd 0,cl+568@l(9)
	.loc 1 147 0
	lis 9,.LANCHOR0+32@ha
	lwz 0,.LANCHOR0+32@l(9)
	lis 11,scr_centertime_off@ha
	.loc 1 148 0
	frsp 0,0
	.loc 1 151 0
	lis 9,scr_center_lines@ha
	.loc 1 147 0
	stw 0,scr_centertime_off@l(11)
	.loc 1 151 0
	li 0,1
	.loc 1 148 0
	lis 11,scr_centertime_start@ha
	.loc 1 151 0
	stw 0,scr_center_lines@l(9)
	.loc 1 148 0
	stfs 0,scr_centertime_start@l(11)
	.loc 1 152 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne+ 7,.L17
	b .L14
.LVL17:
.L16:
	lbzu 0,1(31)
	cmpwi 7,0,0
	beq- 7,.L14
.L17:
	.loc 1 154 0
	cmpwi 7,0,10
	bne+ 7,.L16
	.loc 1 155 0
	lwz 11,scr_center_lines@l(9)
	addi 0,11,1
	stw 0,scr_center_lines@l(9)
	.loc 1 152 0
	lbzu 0,1(31)
	cmpwi 7,0,0
	bne+ 7,.L17
.L14:
	.loc 1 158 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE38:
	.size	SCR_CenterPrint, .-SCR_CenterPrint
	.align 2
	.globl SCR_DrawCenterString
	.type	SCR_DrawCenterString, @function
SCR_DrawCenterString:
.LFB39:
	.loc 1 162 0
	.cfi_startproc
	mflr 0
	stwu 1,-56(1)
.LCFI10:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	.loc 1 170 0
	lis 9,cl@ha
	la 9,cl@l(9)
	.loc 1 162 0
	stw 27,36(1)
	stw 0,60(1)
	.loc 1 173 0
	li 27,9999
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.loc 1 162 0
	stw 25,28(1)
	.loc 1 170 0
	lwz 0,540(9)
	.loc 1 162 0
	stw 26,32(1)
	.loc 1 170 0
	cmpwi 7,0,0
	.loc 1 162 0
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
	.loc 1 170 0
	beq- 7,.L20
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.loc 1 171 0
	lis 11,scr_centertime_start@ha
	lfd 13,568(9)
	lfs 0,scr_centertime_start@l(11)
	lis 9,.LANCHOR0+52@ha
	fsub 0,13,0
	lfs 13,.LANCHOR0+52@l(9)
	addi 9,1,20
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 27,20(1)
.LVL18:
.L20:
	.loc 1 178 0
	lis 9,scr_center_lines@ha
	.loc 1 179 0
	lis 25,vid@ha
	.loc 1 178 0
	lwz 0,scr_center_lines@l(9)
	.loc 1 175 0
	lis 9,scr_erase_center@ha
	.loc 1 178 0
	cmpwi 7,0,4
	.loc 1 175 0
	li 0,0
	stw 0,scr_erase_center@l(9)
.LVL19:
	.loc 1 178 0
	bgt- 7,.L33
	.loc 1 179 0
	la 25,vid@l(25)
	lis 9,.LC8@ha
	lwz 0,24(25)
	lfs 0,.LC8@l(9)
	lis 9,.LC9@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 13,8(1)
	fsub 13,13,0
	lfd 0,.LC9@l(9)
	addi 9,1,16
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 26,16(1)
.LVL20:
.L21:
	.loc 1 181 0
	lis 29,scr_centerstring@ha
	la 29,scr_centerstring@l(29)
.LVL21:
.L31:
	.loc 1 186 0
	li 0,40
	li 31,0
	mtctr 0
	b .L23
.LVL22:
.L42:
	.loc 1 187 0 discriminator 1
	beq- 6,.L22
	.loc 1 186 0
	addi 31,31,1
.LVL23:
	bdz .L41
.LVL24:
.L23:
	.loc 1 187 0
	lbzx 0,29,31
	cmpwi 7,0,10
	cmpwi 6,0,0
	bne+ 7,.L42
.L22:
	.loc 1 191 0
	cmpwi 7,31,0
	.loc 1 189 0
	lwz 0,20(25)
.LVL25:
	.loc 1 191 0
	beq- 7,.L25
	.loc 1 189 0
	mulli 28,31,-8
	add 0,28,0
	srwi 28,0,1
.LVL26:
.L26:
	.loc 1 187 0
	li 30,0
	b .L28
.LVL27:
.L43:
	.loc 1 191 0
	ble- 6,.L25
.LVL28:
.L28:
	.loc 1 193 0
	lbzx 5,29,30
	mr 3,28
	mr 4,26
	.loc 1 191 0
	addi 30,30,1
	.loc 1 193 0
	bl Draw_Character
.LVL29:
	.loc 1 194 0
	cmpwi 7,27,0
	.loc 1 191 0
	cmpw 6,31,30
	.loc 1 194 0
	addi 27,27,-1
.LVL30:
	.loc 1 191 0
	addi 28,28,8
	.loc 1 194 0
	bne+ 7,.L43
.LVL31:
.L19:
	.loc 1 207 0
	lwz 0,60(1)
	lwz 25,28(1)
	mtlr 0
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL32:
.L25:
.LCFI12:
	.cfi_restore_state
	.loc 1 200 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L19
	cmpwi 7,0,10
	bne+ 7,.L36
	b .L29
.L44:
	.loc 1 200 0 is_stmt 0 discriminator 2
	beq- 6,.L29
.LVL33:
.L36:
	.loc 1 200 0
	lbz 0,1(29)
	.loc 1 201 0 is_stmt 1
	addi 29,29,1
.LVL34:
	.loc 1 200 0
	cmpwi 7,0,0
	cmpwi 6,0,10
	bne+ 7,.L44
	b .L19
.LVL35:
.L41:
	.loc 1 189 0
	lwz 28,20(25)
	addi 28,28,-320
	srwi 28,28,1
.LVL36:
	b .L26
.LVL37:
.L33:
	.loc 1 181 0
	li 26,48
	la 25,vid@l(25)
	b .L21
.LVL38:
.L29:
	.loc 1 198 0
	addi 26,26,8
.LVL39:
	.loc 1 205 0
	addi 29,29,1
.LVL40:
	.loc 1 206 0
	b .L31
	.cfi_endproc
.LFE39:
	.size	SCR_DrawCenterString, .-SCR_DrawCenterString
	.align 2
	.globl SCR_CheckDrawCenterString
	.type	SCR_CheckDrawCenterString, @function
SCR_CheckDrawCenterString:
.LFB40:
	.loc 1 210 0
	.cfi_startproc
	.loc 1 212 0
	lis 11,scr_center_lines@ha
	lis 9,scr_erase_lines@ha
	lwz 0,scr_center_lines@l(11)
	.loc 1 211 0
	li 10,1
	.loc 1 212 0
	lwz 11,scr_erase_lines@l(9)
	cmpw 7,0,11
	.loc 1 211 0
	lis 11,scr_copytop@ha
	stw 10,scr_copytop@l(11)
	.loc 1 212 0
	ble- 7,.L46
	.loc 1 213 0
	stw 0,scr_erase_lines@l(9)
.L46:
	.loc 1 215 0
	lis 9,scr_centertime_off@ha
	lis 11,host_frametime@ha
	lfs 13,scr_centertime_off@l(9)
	lfd 0,host_frametime@l(11)
	.loc 1 217 0
	lis 11,.LC10@ha
	.loc 1 215 0
	fsub 0,13,0
	.loc 1 217 0
	lfs 13,.LC10@l(11)
	.loc 1 215 0
	frsp 0,0
	.loc 1 217 0
	fcmpu 7,0,13
	.loc 1 215 0
	stfs 0,scr_centertime_off@l(9)
	.loc 1 217 0
	cror 30,28,30
	bne- 7,.L47
	.loc 1 217 0 is_stmt 0 discriminator 1
	lis 9,cl+540@ha
	lwz 0,cl+540@l(9)
	cmpwi 7,0,0
	beqlr- 7
.L47:
	.loc 1 219 0 is_stmt 1
	lis 9,key_dest@ha
	lwz 0,key_dest@l(9)
	cmpwi 7,0,0
	bnelr+ 7
	.loc 1 223 0
	.loc 1 222 0
	b SCR_DrawCenterString
	.cfi_endproc
.LFE40:
	.size	SCR_CheckDrawCenterString, .-SCR_CheckDrawCenterString
	.align 2
	.globl CalcFov
	.type	CalcFov, @function
CalcFov:
.LFB41:
	.loc 1 233 0
	.cfi_startproc
.LVL41:
	.loc 1 237 0
	lis 9,.LC11@ha
	.loc 1 233 0
	mflr 0
	.loc 1 237 0
	lfs 0,.LC11@l(9)
	.loc 1 233 0
	stwu 1,-48(1)
.LCFI13:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 237 0
	fcmpu 7,1,0
	.loc 1 233 0
	stfd 27,8(1)
	fmr 27,3
	.cfi_offset 59, -40
	stfd 30,32(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,40(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,52(1)
	stfd 28,16(1)
	stfd 29,24(1)
	.loc 1 237 0
	blt- 7,.L52
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
	.loc 1 237 0 is_stmt 0 discriminator 1
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fcmpu 7,1,0
	bng- 7,.L53
.L52:
	.loc 1 238 0 is_stmt 1
	fmr 1,31
.LVL42:
	lis 3,.LC13@ha
	la 3,.LC13@l(3)
	creqv 6,6,6
	bl Sys_Error
.LVL43:
.L53:
	.loc 1 240 0
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
	lis 9,.LC15@ha
	lfd 29,.LC15@l(9)
	fdivs 31,31,28
.LVL44:
	fmr 1,31
	fmul 1,1,29
	bl tan
.LVL45:
	fdiv 30,30,1
.LVL46:
	frsp 30,30
	.loc 1 242 0
	fdivs 27,27,30
.LVL47:
	fmr 1,27
	bl atan
.LVL48:
	.loc 1 247 0
	lwz 0,52(1)
	.loc 1 242 0
	frsp 1,1
.LVL49:
	.loc 1 247 0
	lfd 27,8(1)
	mtlr 0
	lfd 30,32(1)
	lfd 31,40(1)
	.loc 1 244 0
	fmuls 28,1,28
	fdiv 29,28,29
.LVL50:
	.loc 1 247 0
	lfd 28,16(1)
	frsp 1,29
	lfd 29,24(1)
.LVL51:
	addi 1,1,48
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	blr
	.cfi_endproc
.LFE41:
	.size	CalcFov, .-CalcFov
	.align 2
	.globl SCR_Init
	.type	SCR_Init, @function
SCR_Init:
.LFB45:
	.loc 1 372 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI15:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 374 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR0@l(31)
	.loc 1 372 0
	stw 0,20(1)
	.loc 1 374 0
	addi 3,31,60
	.cfi_offset 65, 4
	bl Cvar_RegisterVariable
	.loc 1 375 0
	mr 3,31
	bl Cvar_RegisterVariable
	.loc 1 376 0
	addi 3,31,80
	bl Cvar_RegisterVariable
	.loc 1 377 0
	addi 3,31,100
	bl Cvar_RegisterVariable
	.loc 1 378 0
	addi 3,31,120
	bl Cvar_RegisterVariable
	.loc 1 379 0
	addi 3,31,140
	bl Cvar_RegisterVariable
	.loc 1 380 0
	addi 3,31,20
	bl Cvar_RegisterVariable
	.loc 1 381 0
	addi 3,31,40
	bl Cvar_RegisterVariable
	.loc 1 382 0
	addi 3,31,160
	bl Cvar_RegisterVariable
	.loc 1 387 0
	lis 3,.LC16@ha
	lis 4,SCR_ScreenShot_f@ha
	la 3,.LC16@l(3)
	la 4,SCR_ScreenShot_f@l(4)
	bl Cmd_AddCommand
	.loc 1 388 0
	lis 3,.LC17@ha
	lis 4,SCR_SizeUp_f@ha
	la 3,.LC17@l(3)
	la 4,SCR_SizeUp_f@l(4)
	bl Cmd_AddCommand
	.loc 1 389 0
	lis 4,SCR_SizeDown_f@ha
	lis 3,.LC18@ha
	la 4,SCR_SizeDown_f@l(4)
	la 3,.LC18@l(3)
	bl Cmd_AddCommand
	.loc 1 391 0
	lis 3,.LC19@ha
	la 3,.LC19@l(3)
	bl Draw_PicFromWad
	lis 9,scr_ram@ha
	stw 3,scr_ram@l(9)
	.loc 1 392 0
	lis 3,.LC20@ha
	la 3,.LC20@l(3)
	bl Draw_PicFromWad
	lis 9,scr_net@ha
	stw 3,scr_net@l(9)
	.loc 1 393 0
	lis 3,.LC21@ha
	la 3,.LC21@l(3)
	bl Draw_PicFromWad
	lis 9,scr_turtle@ha
	.loc 1 395 0
	li 0,1
	.loc 1 393 0
	stw 3,scr_turtle@l(9)
	.loc 1 395 0
	lis 9,scr_initialized@ha
	.loc 1 396 0
	lwz 31,12(1)
	.loc 1 395 0
	stb 0,scr_initialized@l(9)
	.loc 1 396 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
	.cfi_endproc
.LFE45:
	.size	SCR_Init, .-SCR_Init
	.align 2
	.globl SCR_DrawRam
	.type	SCR_DrawRam, @function
SCR_DrawRam:
.LFB46:
	.loc 1 406 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 411 0
	lis 9,r_cache_thrash@ha
	.loc 1 406 0
	stw 0,12(1)
	.loc 1 411 0
	lbz 0,r_cache_thrash@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L56
	.loc 1 414 0
	lis 3,.LC22@ha
	la 3,.LC22@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 416 0
	lis 9,scr_vrect@ha
	la 11,scr_vrect@l(9)
	lwz 3,scr_vrect@l(9)
	lis 9,scr_ram@ha
	lwz 4,4(11)
	lwz 5,scr_ram@l(9)
	addi 3,3,32
	bl Draw_Pic
.L56:
	.loc 1 417 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI18:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE46:
	.size	SCR_DrawRam, .-SCR_DrawRam
	.align 2
	.globl SCR_DrawTurtle
	.type	SCR_DrawTurtle, @function
SCR_DrawTurtle:
.LFB47:
	.loc 1 425 0
	.cfi_startproc
	.loc 1 428 0
	lis 9,.LANCHOR0+132@ha
	.loc 1 425 0
	mflr 0
	.loc 1 428 0
	lfs 13,.LANCHOR0+132@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 425 0
	stwu 1,-8(1)
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 428 0
	fcmpu 7,13,0
	.loc 1 425 0
	stw 0,12(1)
	.loc 1 428 0
	beq- 7,.L58
	.cfi_offset 65, 4
	.loc 1 431 0
	lis 9,host_frametime@ha
	lfd 13,host_frametime@l(9)
	lis 9,.LC23@ha
	lfd 0,.LC23@l(9)
	fcmpu 7,13,0
	blt- 7,.L64
	.loc 1 437 0
	lis 9,.LANCHOR1@ha
	lwz 11,.LANCHOR1@l(9)
	addi 0,11,1
	.loc 1 438 0
	cmpwi 7,0,2
	.loc 1 437 0
	stw 0,.LANCHOR1@l(9)
	.loc 1 438 0
	bgt- 7,.L65
.L58:
	.loc 1 442 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L64:
.LCFI21:
	.cfi_restore_state
	.loc 1 433 0
	li 0,0
	lis 9,.LANCHOR1@ha
	stw 0,.LANCHOR1@l(9)
	.loc 1 442 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI22:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L65:
.LCFI23:
	.cfi_restore_state
	.loc 1 441 0
	lis 11,scr_vrect@ha
	la 9,scr_vrect@l(11)
	lwz 3,scr_vrect@l(11)
	lwz 4,4(9)
	lis 9,scr_turtle@ha
	lwz 5,scr_turtle@l(9)
	bl Draw_Pic
	.loc 1 442 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI24:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE47:
	.size	SCR_DrawTurtle, .-SCR_DrawTurtle
	.align 2
	.globl SCR_DrawNet
	.type	SCR_DrawNet, @function
SCR_DrawNet:
.LFB48:
	.loc 1 450 0
	.cfi_startproc
	.loc 1 451 0
	lis 9,cl+584@ha
	.loc 1 450 0
	mflr 0
	.loc 1 451 0
	lfs 0,cl+584@l(9)
	lis 9,realtime@ha
	lfd 13,realtime@l(9)
	lis 9,.LC24@ha
	.loc 1 450 0
	stwu 1,-8(1)
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 451 0
	fsub 13,13,0
	lfd 0,.LC24@l(9)
	.loc 1 450 0
	stw 0,12(1)
	.loc 1 451 0
	fcmpu 7,13,0
	blt- 7,.L66
	.cfi_offset 65, 4
	.loc 1 453 0
	lis 9,cls+2249@ha
	lbz 0,cls+2249@l(9)
	cmpwi 7,0,0
	beq- 7,.L68
.L66:
	.loc 1 457 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L68:
.LCFI27:
	.cfi_restore_state
	.loc 1 456 0
	lis 9,scr_vrect@ha
	la 11,scr_vrect@l(9)
	lwz 3,scr_vrect@l(9)
	lis 9,scr_net@ha
	lwz 4,4(11)
	lwz 5,scr_net@l(9)
	addi 3,3,64
	bl Draw_Pic
	.loc 1 457 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI28:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE48:
	.size	SCR_DrawNet, .-SCR_DrawNet
	.align 2
	.globl SCR_DrawPause
	.type	SCR_DrawPause, @function
SCR_DrawPause:
.LFB49:
	.loc 1 465 0
	.cfi_startproc
	.loc 1 468 0
	lis 9,.LANCHOR0+152@ha
	.loc 1 465 0
	mflr 0
	.loc 1 468 0
	lfs 13,.LANCHOR0+152@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 465 0
	stwu 1,-8(1)
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 468 0
	fcmpu 7,13,0
	.loc 1 465 0
	stw 0,12(1)
	.loc 1 468 0
	beq- 7,.L69
	.cfi_offset 65, 4
	.loc 1 471 0
	lis 9,cl+536@ha
	lbz 0,cl+536@l(9)
	cmpwi 7,0,0
	bne- 7,.L71
.L69:
	.loc 1 477 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L71:
.LCFI31:
	.cfi_restore_state
	.loc 1 474 0
	lis 3,.LC25@ha
	la 3,.LC25@l(3)
	bl Draw_CachePic
	.loc 1 475 0
	lis 9,vid@ha
	la 9,vid@l(9)
	.loc 1 474 0
	mr 5,3
.LVL52:
	.loc 1 476 0
	lwz 4,24(9)
	.loc 1 475 0
	lwz 3,20(9)
.LVL53:
	.loc 1 476 0
	lwz 0,4(5)
	addi 4,4,-48
	.loc 1 475 0
	lwz 9,0(5)
	.loc 1 476 0
	subf 4,0,4
	.loc 1 475 0
	subf 3,9,3
	srwi 4,4,1
	srwi 3,3,1
	bl Draw_Pic
.LVL54:
	.loc 1 477 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI32:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE49:
	.size	SCR_DrawPause, .-SCR_DrawPause
	.align 2
	.globl SCR_DrawLoading
	.type	SCR_DrawLoading, @function
SCR_DrawLoading:
.LFB50:
	.loc 1 487 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 490 0
	lis 9,scr_drawloading@ha
	.loc 1 487 0
	stw 0,12(1)
	.loc 1 490 0
	lbz 0,scr_drawloading@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L72
	.loc 1 493 0
	lis 3,.LC26@ha
	la 3,.LC26@l(3)
	bl Draw_CachePic
	.loc 1 494 0
	lis 9,vid@ha
	la 9,vid@l(9)
	.loc 1 493 0
	mr 5,3
.LVL55:
	.loc 1 495 0
	lwz 4,24(9)
	.loc 1 494 0
	lwz 3,20(9)
.LVL56:
	.loc 1 495 0
	lwz 0,4(5)
	addi 4,4,-48
	.loc 1 494 0
	lwz 9,0(5)
	.loc 1 495 0
	subf 4,0,4
	.loc 1 494 0
	subf 3,9,3
	srwi 4,4,1
	srwi 3,3,1
	bl Draw_Pic
.LVL57:
.L72:
	.loc 1 496 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI34:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE50:
	.size	SCR_DrawLoading, .-SCR_DrawLoading
	.align 2
	.globl SCR_DrawFPS
	.type	SCR_DrawFPS, @function
SCR_DrawFPS:
.LFB51:
	.loc 1 508 0
	.cfi_startproc
	mflr 0
	stwu 1,-96(1)
.LCFI35:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 516 0
	lis 9,.LC10@ha
	.loc 1 508 0
	stw 31,92(1)
	.loc 1 516 0
	lis 31,sh_debuginfo@ha
	.cfi_offset 31, -4
	.loc 1 508 0
	stw 0,100(1)
	.loc 1 516 0
	la 31,sh_debuginfo@l(31)
	lfs 0,.LC10@l(9)
	lfs 13,12(31)
	.loc 1 508 0
	stw 30,88(1)
	.loc 1 516 0
	fcmpu 7,13,0
	bne- 7,.L81
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	lis 9,sh_fps+12@ha
	lfs 13,sh_fps+12@l(9)
	fcmpu 7,13,0
	bne- 7,.L81
.L74:
	.loc 1 558 0
	lwz 0,100(1)
	lwz 30,88(1)
	mtlr 0
	lwz 31,92(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L81:
.LCFI37:
	.cfi_restore_state
	.loc 1 519 0
	bl Sys_FloatTime
.LVL58:
	.loc 1 520 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	lis 11,.LC11@ha
	lfd 13,8(9)
	lfs 0,.LC11@l(11)
	fsub 13,1,13
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L77
	lwz 5,16(9)
	.loc 1 526 0
	lis 9,.LC10@ha
	lfs 13,12(31)
	.loc 1 528 0
	addi 30,1,8
	.loc 1 526 0
	lfs 0,.LC10@l(9)
	fcmpu 7,13,0
	beq- 7,.L79
.L82:
	.loc 1 528 0
	lis 9,numUsedShadowLights@ha
	lis 4,.LC28@ha
	lwz 6,numUsedShadowLights@l(9)
	lis 9,numClearsSaved@ha
	lwz 7,numClearsSaved@l(9)
	la 4,.LC28@l(4)
	mr 3,30
	crxor 6,6,6
	bl sprintf
.LVL59:
	.loc 1 531 0
	li 3,16
	li 4,0
	mr 5,30
	bl Draw_String
.LVL60:
.L80:
	.loc 1 541 0
	lis 9,.LC10@ha
	lfs 13,12(31)
	lfs 0,.LC10@l(9)
	fcmpu 7,13,0
	beq+ 7,.L74
	.loc 1 544 0
	lis 9,aliasFullCacheHits@ha
	lis 4,.LC30@ha
	lwz 6,aliasFullCacheHits@l(9)
	lis 9,aliasPartialCacheHits@ha
	lwz 7,aliasPartialCacheHits@l(9)
	lis 9,aliasCacheRequests@ha
	lwz 5,aliasCacheRequests@l(9)
	la 4,.LC30@l(4)
	mr 3,30
	crxor 6,6,6
	bl sprintf
.LVL61:
	.loc 1 547 0
	mr 5,30
	li 3,16
	li 4,16
	bl Draw_String
	.loc 1 549 0
	lis 9,brushFullCacheHits@ha
	lwz 6,brushFullCacheHits@l(9)
	lis 9,brushPartialCacheHits@ha
	lwz 7,brushPartialCacheHits@l(9)
	lis 9,brushCacheRequests@ha
	lwz 5,brushCacheRequests@l(9)
	lis 4,.LC31@ha
	la 4,.LC31@l(4)
	mr 3,30
	crxor 6,6,6
	bl sprintf
.LVL62:
	.loc 1 552 0
	mr 5,30
	li 3,16
	li 4,32
	bl Draw_String
	.loc 1 554 0
	lis 9,c_alias_polys@ha
	lwz 5,c_alias_polys@l(9)
	lis 9,c_brush_polys@ha
	lwz 6,c_brush_polys@l(9)
	lis 4,.LC32@ha
	la 4,.LC32@l(4)
	mr 3,30
	crxor 6,6,6
	bl sprintf
.LVL63:
	.loc 1 557 0
	mr 5,30
	li 3,16
	li 4,48
	bl Draw_String
	.loc 1 558 0
	lwz 0,100(1)
	lwz 30,88(1)
	mtlr 0
	lwz 31,92(1)
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI38:
	.cfi_def_cfa_offset 0
	blr
.LVL64:
.L77:
.LCFI39:
	.cfi_restore_state
	.loc 1 521 0
	lis 11,fps_count@ha
	.loc 1 523 0
	stfd 1,8(9)
	.loc 1 521 0
	lwz 5,fps_count@l(11)
	.loc 1 522 0
	li 0,0
	.loc 1 526 0
	lfs 13,12(31)
	.loc 1 528 0
	addi 30,1,8
	.loc 1 521 0
	stw 5,16(9)
	.loc 1 526 0
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 522 0
	stw 0,fps_count@l(11)
	.loc 1 526 0
	fcmpu 7,13,0
	bne- 7,.L82
.L79:
	.loc 1 535 0
	lis 4,.LC29@ha
	mr 3,30
	la 4,.LC29@l(4)
	crxor 6,6,6
	bl sprintf
.LVL65:
	.loc 1 536 0
	lis 9,vid+20@ha
	lwz 3,vid+20@l(9)
	.loc 1 538 0
	li 4,8
	mr 5,30
	addi 3,3,-65
	bl Draw_String
.LVL66:
	b .L80
	.cfi_endproc
.LFE51:
	.size	SCR_DrawFPS, .-SCR_DrawFPS
	.align 2
	.globl SCR_DrawNumLights
	.type	SCR_DrawNumLights, @function
SCR_DrawNumLights:
.LFB52:
	.loc 1 567 0
	.cfi_startproc
	.loc 1 570 0
	lis 9,sh_showlightnum+12@ha
	.loc 1 567 0
	mflr 0
	.loc 1 570 0
	lfs 13,sh_showlightnum+12@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 567 0
	stwu 1,-24(1)
.LCFI40:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 570 0
	fcmpu 7,13,0
	.loc 1 567 0
	stw 0,28(1)
	.loc 1 570 0
	beq+ 7,.L83
	.cfi_offset 65, 4
	.loc 1 571 0
	lis 9,numUsedShadowLights@ha
	lis 4,.LC33@ha
	lwz 5,numUsedShadowLights@l(9)
	la 4,.LC33@l(4)
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
	.loc 1 572 0
	li 3,0
	li 4,0
	addi 5,1,8
	bl Draw_String
.L83:
	.loc 1 575 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI41:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE52:
	.size	SCR_DrawNumLights, .-SCR_DrawNumLights
	.align 2
	.globl SCR_SetUpToDrawConsole
	.type	SCR_SetUpToDrawConsole, @function
SCR_SetUpToDrawConsole:
.LFB53:
	.loc 1 587 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI42:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 0,28(1)
	.loc 1 588 0
	.cfi_offset 65, 4
	bl Con_CheckResize
	.loc 1 590 0
	lis 9,scr_drawloading@ha
	lbz 0,scr_drawloading@l(9)
	cmpwi 7,0,0
	bne- 7,.L85
	.loc 1 594 0
	lis 9,cl+2688@ha
	lwz 9,cl+2688@l(9)
	cmpwi 7,9,0
	beq- 7,.L87
	.loc 1 594 0 is_stmt 0 discriminator 2
	lis 9,cls+2272@ha
	lwz 9,cls+2272@l(9)
	cmpwi 7,9,4
	beq- 7,.L88
.L87:
	.loc 1 598 0 is_stmt 1 discriminator 4
	lis 10,vid@ha
	lis 9,.LC8@ha
	la 10,vid@l(10)
	lfs 0,.LC8@l(9)
	lwz 0,24(10)
	.loc 1 594 0 discriminator 4
	lis 9,con_forcedup@ha
	.loc 1 598 0 discriminator 4
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	.loc 1 594 0 discriminator 4
	li 0,1
	stb 0,con_forcedup@l(9)
	.loc 1 598 0 discriminator 4
	lis 9,scr_conlines@ha
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,scr_conlines@l(9)
	.loc 1 599 0 discriminator 4
	lis 9,scr_con_current@ha
	stfs 0,scr_con_current@l(9)
.L89:
	.loc 1 620 0
	lis 9,clearconsole@ha
	lwz 0,32(10)
	lwz 11,clearconsole@l(9)
	cmpw 7,11,0
	addi 10,11,1
	stw 10,clearconsole@l(9)
	blt- 7,.L103
.L95:
	.loc 1 624 0
	lis 9,clearnotify@ha
	lwz 11,clearnotify@l(9)
	cmpw 7,0,11
	addi 11,11,1
	stw 11,clearnotify@l(9)
	bgt- 7,.L85
	.loc 1 628 0
	li 0,0
	lis 9,con_notifylines@ha
	stw 0,con_notifylines@l(9)
.L85:
	.loc 1 629 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L88:
.LCFI44:
	.cfi_restore_state
	.loc 1 601 0
	lis 9,key_dest@ha
	lwz 9,key_dest@l(9)
	cmpwi 7,9,1
	.loc 1 594 0
	lis 9,con_forcedup@ha
	stb 0,con_forcedup@l(9)
	.loc 1 601 0
	beq- 7,.L104
	.loc 1 604 0
	lis 11,.LC10@ha
	lis 9,scr_con_current@ha
	lfs 0,.LC10@l(11)
	lis 11,scr_conlines@ha
	lfs 13,scr_con_current@l(9)
	lis 10,vid@ha
	stfs 0,scr_conlines@l(11)
	la 10,vid@l(10)
	fcmpu 7,13,0
	mfcr 0
	rlwinm 0,0,30,1
.L90:
	.loc 1 606 0
	cmpwi 7,0,0
	beq- 7,.L91
	.loc 1 608 0
	lis 11,.LANCHOR0+92@ha
	fmr 12,13
	lfs 11,.LANCHOR0+92@l(11)
	lis 11,host_frametime@ha
	.loc 1 586 0
	fneg 13,11
	.loc 1 608 0
	lfd 11,host_frametime@l(11)
	fmadd 13,13,11,12
	frsp 13,13
	.loc 1 609 0
	fcmpu 7,13,0
	.loc 1 608 0
	stfs 13,scr_con_current@l(9)
	.loc 1 609 0
	bnl- 7,.L89
.L102:
	.loc 1 617 0
	lis 9,scr_con_current@ha
	.loc 1 620 0
	lwz 0,32(10)
	.loc 1 617 0
	stfs 0,scr_con_current@l(9)
	.loc 1 620 0
	lis 9,clearconsole@ha
	lwz 11,clearconsole@l(9)
	cmpw 7,11,0
	addi 10,11,1
	stw 10,clearconsole@l(9)
	bge+ 7,.L95
.L103:
	.loc 1 622 0
	bl Sbar_Changed
	.loc 1 629 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L104:
.LCFI46:
	.cfi_restore_state
	.loc 1 602 0
	lis 10,vid@ha
	lis 11,.LC8@ha
	la 10,vid@l(10)
	lfs 0,.LC8@l(11)
	lwz 0,24(10)
	lis 9,scr_con_current@ha
	lis 11,scr_conlines@ha
	srwi 0,0,1
	stw 0,20(1)
	lis 0,0x4330
	stw 0,16(1)
	lfd 13,16(1)
	fsub 0,13,0
	lfs 13,scr_con_current@l(9)
	frsp 0,0
	fcmpu 7,0,13
	stfs 0,scr_conlines@l(11)
	mfcr 0
	rlwinm 0,0,29,1
	b .L90
.L91:
	.loc 1 613 0
	fcmpu 7,13,0
	bnl- 7,.L89
	.loc 1 615 0
	lis 11,.LANCHOR0+92@ha
	fmr 12,13
	lfs 11,.LANCHOR0+92@l(11)
	lis 11,host_frametime@ha
	lfd 13,host_frametime@l(11)
	fmadd 13,11,13,12
	frsp 13,13
	.loc 1 616 0
	fcmpu 7,0,13
	.loc 1 615 0
	stfs 13,scr_con_current@l(9)
	.loc 1 616 0
	bnl- 7,.L89
	b .L102
	.cfi_endproc
.LFE53:
	.size	SCR_SetUpToDrawConsole, .-SCR_SetUpToDrawConsole
	.align 2
	.globl SCR_DrawConsole
	.type	SCR_DrawConsole, @function
SCR_DrawConsole:
.LFB54:
	.loc 1 637 0
	.cfi_startproc
	.loc 1 638 0
	lis 9,scr_con_current@ha
	.loc 1 637 0
	mflr 0
	.loc 1 638 0
	lfs 0,scr_con_current@l(9)
	lis 9,.LC10@ha
	lfs 13,.LC10@l(9)
	.loc 1 637 0
	stwu 1,-16(1)
.LCFI47:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 638 0
	fcmpu 7,0,13
	.loc 1 637 0
	stw 0,20(1)
	.loc 1 638 0
	bne- 7,.L109
	.cfi_offset 65, 4
	.loc 1 646 0
	lis 9,key_dest@ha
	lwz 0,key_dest@l(9)
	cmpwi 7,0,0
	beq- 7,.L108
	.loc 1 646 0 is_stmt 0 discriminator 1
	cmpwi 7,0,2
	beq- 7,.L108
	.loc 1 649 0 is_stmt 1
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI48:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L108:
.LCFI49:
	.cfi_restore_state
	.loc 1 647 0
	bl Con_DrawNotify
	.loc 1 649 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI50:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L109:
.LCFI51:
	.cfi_restore_state
	.loc 1 641 0
	fctiwz 0,0
	addi 9,1,8
	.loc 1 640 0
	li 0,1
	.loc 1 641 0
	li 4,1
	stfiwx 0,0,9
	.loc 1 640 0
	lis 9,scr_copyeverything@ha
	stw 0,scr_copyeverything@l(9)
	.loc 1 641 0
	lwz 3,8(1)
	bl Con_DrawConsole
	.loc 1 642 0
	li 0,0
	lis 9,clearconsole@ha
	stw 0,clearconsole@l(9)
	.loc 1 649 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI52:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE54:
	.size	SCR_DrawConsole, .-SCR_DrawConsole
	.align 2
	.globl SCR_EndLoadingPlaque
	.type	SCR_EndLoadingPlaque, @function
SCR_EndLoadingPlaque:
.LFB57:
	.loc 1 828 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI53:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 829 0
	lis 9,scr_disabled_for_loading@ha
	.loc 1 828 0
	stw 0,12(1)
	.loc 1 829 0
	li 0,0
	.cfi_offset 65, 4
	stb 0,scr_disabled_for_loading@l(9)
	.loc 1 830 0
	li 0,0
	lis 9,scr_fullupdate@ha
	stw 0,scr_fullupdate@l(9)
	.loc 1 831 0
	bl Con_ClearNotify
	.loc 1 832 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI54:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE57:
	.size	SCR_EndLoadingPlaque, .-SCR_EndLoadingPlaque
	.align 2
	.globl SCR_DrawNotifyString
	.type	SCR_DrawNotifyString, @function
SCR_DrawNotifyString:
.LFB58:
	.loc 1 840 0
	.cfi_startproc
	stwu 1,-48(1)
.LCFI55:
	.cfi_def_cfa_offset 48
	mflr 0
	.loc 1 848 0
	lis 9,.LC8@ha
	.loc 1 840 0
	stw 26,24(1)
	.loc 1 848 0
	lis 26,vid@ha
	.cfi_offset 26, -24
	.cfi_register 65, 0
	la 26,vid@l(26)
	.loc 1 840 0
	stw 0,52(1)
	.loc 1 848 0
	lwz 0,24(26)
	.cfi_offset 65, 4
	lfs 0,.LC8@l(9)
	lis 9,.LC9@ha
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	.loc 1 840 0
	stw 31,44(1)
	.loc 1 848 0
	lfd 13,8(1)
	.loc 1 840 0
	stw 27,28(1)
	.loc 1 848 0
	fsub 13,13,0
	lfd 0,.LC9@l(9)
	.loc 1 846 0
	lis 9,scr_notifystring@ha
	.loc 1 840 0
	stw 28,32(1)
	.loc 1 846 0
	lwz 31,scr_notifystring@l(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 31, -4
.LVL67:
	.loc 1 848 0
	addi 9,1,16
	fmul 0,13,0
	.loc 1 840 0
	stw 29,36(1)
	stw 30,40(1)
	.loc 1 848 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 27,16(1)
.LVL68:
.L121:
	.loc 1 853 0
	li 0,40
	li 30,0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	mtctr 0
	b .L113
.LVL69:
.L130:
	.loc 1 854 0 discriminator 1
	beq- 6,.L112
	.loc 1 853 0
	addi 30,30,1
.LVL70:
	bdz .L129
.LVL71:
.L113:
	.loc 1 854 0
	lbzx 0,31,30
	cmpwi 7,0,10
	cmpwi 6,0,0
	bne+ 7,.L130
.L112:
	.loc 1 857 0
	cmpwi 7,30,0
	.loc 1 856 0
	lwz 0,20(26)
.LVL72:
	.loc 1 857 0
	beq- 7,.L115
	.loc 1 856 0
	mulli 28,30,-8
	add 0,28,0
	srwi 28,0,1
.LVL73:
.L116:
	.loc 1 854 0 discriminator 2
	li 29,0
.LVL74:
.L117:
	.loc 1 858 0 discriminator 2
	lbzx 5,31,29
	mr 3,28
	mr 4,27
	.loc 1 857 0 discriminator 2
	addi 29,29,1
	.loc 1 858 0 discriminator 2
	bl Draw_Character
.LVL75:
	.loc 1 857 0 discriminator 2
	cmpw 7,29,30
	addi 28,28,8
.LVL76:
	blt+ 7,.L117
.LVL77:
.L115:
	.loc 1 862 0
	lbz 0,0(31)
	cmpwi 7,0,0
	beq- 7,.L111
	cmpwi 7,0,10
	bne+ 7,.L124
	b .L119
.L131:
	.loc 1 862 0 is_stmt 0 discriminator 2
	beq- 6,.L119
.LVL78:
.L124:
	.loc 1 862 0
	lbz 0,1(31)
	.loc 1 863 0 is_stmt 1
	addi 31,31,1
.LVL79:
	.loc 1 862 0
	cmpwi 7,0,0
	cmpwi 6,0,10
	bne+ 7,.L131
.LVL80:
.L111:
	.loc 1 869 0
	lwz 0,52(1)
	lwz 26,24(1)
	mtlr 0
	lwz 27,28(1)
.LVL81:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI56:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL82:
.L119:
.LCFI57:
	.cfi_restore_state
	.loc 1 860 0
	addi 27,27,8
.LVL83:
	.loc 1 867 0
	addi 31,31,1
.LVL84:
	.loc 1 868 0
	b .L121
.LVL85:
.L129:
	.loc 1 856 0
	lwz 28,20(26)
	addi 28,28,-320
	srwi 28,28,1
.LVL86:
	b .L116
	.cfi_endproc
.LFE58:
	.size	SCR_DrawNotifyString, .-SCR_DrawNotifyString
	.align 2
	.globl SCR_TileClear
	.type	SCR_TileClear, @function
SCR_TileClear:
.LFB61:
	.loc 1 930 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI58:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	.loc 1 931 0
	lis 30,r_refdef@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	lwz 5,r_refdef@l(30)
	.loc 1 930 0
	stw 31,20(1)
	.loc 1 931 0
	la 31,r_refdef@l(30)
	.cfi_offset 31, -4
	cmpwi 7,5,0
	.loc 1 930 0
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	.loc 1 931 0
	bne- 7,.L135
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.L133:
	.loc 1 939 0
	lwz 6,4(31)
	lis 30,r_refdef@ha
	cmpwi 7,6,0
	beq+ 7,.L132
	.loc 1 941 0
	lwz 3,r_refdef@l(30)
	li 4,0
	.loc 1 942 0
	lwz 5,8(31)
	.loc 1 941 0
	add 5,3,5
	bl Draw_TileClear
	.loc 1 948 0
	lis 11,vid+24@ha
	lwz 6,vid+24@l(11)
	lis 11,sb_lines@ha
	.loc 1 946 0
	lwz 4,12(31)
	lwz 9,4(31)
	.loc 1 948 0
	lwz 0,sb_lines@l(11)
	.loc 1 946 0
	add 4,4,9
	.loc 1 945 0
	lwz 3,r_refdef@l(30)
	.loc 1 948 0
	subf 6,0,6
	.loc 1 945 0
	lwz 5,8(31)
	subf 6,4,6
	bl Draw_TileClear
.L132:
	.loc 1 951 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI59:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L135:
.LCFI60:
	.cfi_restore_state
	.loc 1 933 0
	lis 29,vid@ha
	lis 28,sb_lines@ha
	la 29,vid@l(29)
	lwz 0,sb_lines@l(28)
	lwz 6,24(29)
	li 3,0
	li 4,0
	subf 6,0,6
	bl Draw_TileClear
	.loc 1 935 0
	lwz 3,8(31)
	.loc 1 936 0
	lwz 5,20(29)
	.loc 1 935 0
	li 4,0
	lwz 9,r_refdef@l(30)
	.loc 1 937 0
	lwz 6,24(29)
	.loc 1 936 0
	add 5,3,5
	.loc 1 937 0
	lwz 0,sb_lines@l(28)
	.loc 1 935 0
	add 3,3,9
	subf 5,9,5
	subf 6,0,6
	bl Draw_TileClear
	b .L133
	.cfi_endproc
.LFE61:
	.size	SCR_TileClear, .-SCR_TileClear
	.align 2
	.globl SCR_UpdateScreen
	.type	SCR_UpdateScreen, @function
SCR_UpdateScreen:
.LFB62:
	.loc 1 965 0
	.cfi_startproc
	mflr 0
	stwu 1,-80(1)
.LCFI61:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	.loc 1 968 0
	lis 9,block_drawing@ha
	.loc 1 965 0
	stw 28,64(1)
	stw 0,84(1)
	.loc 1 968 0
	lbz 0,block_drawing@l(9)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.loc 1 965 0
	stw 29,68(1)
	.loc 1 968 0
	cmpwi 7,0,0
	.loc 1 965 0
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 968 0
	bne- 7,.L136
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.loc 1 971 0
	lis 31,.LANCHOR0@ha
	lis 11,.LC35@ha
	la 31,.LANCHOR0@l(31)
	lfs 0,.LC35@l(11)
	lfs 13,172(31)
	.loc 1 976 0
	lis 9,scr_disabled_for_loading@ha
	lbz 11,scr_disabled_for_loading@l(9)
	.loc 1 971 0
	lis 30,vid@ha
	fadds 0,13,0
	la 30,vid@l(30)
	.loc 1 976 0
	cmpwi 7,11,0
	.loc 1 971 0
	addi 11,30,32
	.loc 1 974 0
	lis 29,scr_copyeverything@ha
	.loc 1 971 0
	fctiwz 0,0
	.loc 1 974 0
	stw 0,scr_copyeverything@l(29)
	.loc 1 971 0
	stfiwx 0,0,11
	.loc 1 973 0
	lis 11,scr_copytop@ha
	stw 0,scr_copytop@l(11)
	.loc 1 976 0
	bne- 7,.L191
.L138:
	.loc 1 987 0
	lis 9,scr_initialized@ha
	lbz 0,scr_initialized@l(9)
	cmpwi 7,0,0
	beq- 7,.L136
	.loc 1 987 0 is_stmt 0 discriminator 1
	lis 9,con_initialized@ha
	lbz 0,con_initialized@l(9)
	cmpwi 7,0,0
	bne- 7,.L192
.L136:
	.loc 1 1084 0 is_stmt 1
	lwz 0,84(1)
	lwz 28,64(1)
	mtlr 0
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI62:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L191:
.LCFI63:
	.cfi_restore_state
	.loc 1 978 0
	lis 11,scr_disabled_time@ha
	lfs 0,scr_disabled_time@l(11)
	lis 11,realtime@ha
	lfd 13,realtime@l(11)
	lis 11,.LC37@ha
	fsub 13,13,0
	lfs 0,.LC37@l(11)
	fcmpu 7,13,0
	bng+ 7,.L136
	.loc 1 981 0
	lis 3,.LC38@ha
	.loc 1 980 0
	stb 0,scr_disabled_for_loading@l(9)
	.loc 1 981 0
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Con_Printf
	b .L138
.L192:
.LBB10:
.LBB11:
	.loc 1 991 0
	lis 3,glx@ha
	lis 4,gly@ha
	lis 5,glwidth@ha
	lis 6,glheight@ha
	la 3,glx@l(3)
	la 4,gly@l(4)
	la 5,glwidth@l(5)
	la 6,glheight@l(6)
	bl GL_BeginRendering
	.loc 1 996 0
	lis 9,oldfov@ha
	lfs 0,72(31)
	lfs 13,oldfov@l(9)
	fcmpu 7,0,13
	beq- 7,.L140
	.loc 1 999 0
	li 0,1
	.loc 1 998 0
	stfs 0,oldfov@l(9)
	.loc 1 999 0
	stw 0,36(30)
.L140:
	.loc 1 1002 0
	lis 9,oldscreensize@ha
	lfs 0,12(31)
	lfs 13,oldscreensize@l(9)
	fcmpu 7,0,13
	beq- 7,.L141
	.loc 1 1004 0
	stfs 0,oldscreensize@l(9)
.L142:
.LVL87:
.LBB12:
.LBB13:
	.loc 1 264 0
	li 0,0
	lis 9,scr_fullupdate@ha
	.loc 1 265 0
	stw 0,36(30)
	.loc 1 264 0
	stw 0,scr_fullupdate@l(9)
	.loc 1 268 0
	bl Sbar_Changed
	.loc 1 273 0
	lis 9,.LC39@ha
	lfs 0,12(31)
	lfs 13,.LC39@l(9)
	fcmpu 7,0,13
	blt- 7,.L193
.L144:
	.loc 1 275 0
	lis 28,.LC41@ha
	lfs 13,.LC41@l(28)
	fcmpu 7,0,13
	bgt- 7,.L194
.L146:
	.loc 1 279 0
	lis 9,.LC6@ha
	lfs 0,72(31)
	lfs 13,.LC6@l(9)
	fcmpu 7,0,13
	blt- 7,.L195
.L148:
	.loc 1 281 0
	lis 9,.LC45@ha
	lfs 13,.LC45@l(9)
	fcmpu 7,0,13
	bgt- 7,.L196
.L150:
	.loc 1 285 0
	lis 9,cl+540@ha
	lwz 0,cl+540@l(9)
	cmpwi 7,0,0
	bne- 7,.L152
	.loc 1 288 0
	lfs 0,12(31)
.LVL88:
	.loc 1 290 0
	lfs 13,.LC41@l(28)
	fcmpu 6,0,13
	cror 26,25,26
	beq- 6,.L152
	.loc 1 292 0
	lis 9,.LC47@ha
	lfs 13,.LC47@l(9)
	.loc 1 293 0
	lis 9,sb_lines@ha
	.loc 1 292 0
	fcmpu 6,0,13
	cror 26,25,26
	bne- 6,.L189
	.loc 1 293 0
	li 0,24
	stw 0,sb_lines@l(9)
.LVL89:
.L155:
	.loc 1 297 0
	lis 11,.LC34@ha
	lfs 13,.LC34@l(11)
	fcmpu 6,0,13
	cror 26,25,26
	bne- 6,.L190
	.loc 1 299 0
	fmr 0,13
	.loc 1 298 0
	li 6,1
.L158:
.LVL90:
	.loc 1 302 0
	bne- 7,.L160
	lfs 13,.LC34@l(11)
	lwz 8,sb_lines@l(9)
	fdivs 0,0,13
.LVL91:
.L161:
	.loc 1 312 0
	lwz 7,20(30)
	lis 0,0x4330
	stw 0,8(1)
	lis 10,.LC8@ha
	stw 7,12(1)
	lis 11,.LC48@ha
	lfs 13,.LC8@l(10)
	lfd 12,8(1)
	.loc 1 310 0
	lwz 0,24(30)
	.loc 1 312 0
	fsub 13,12,13
	lfs 12,.LC48@l(11)
	.loc 1 310 0
	subf 8,8,0
.LVL92:
	.loc 1 312 0
	frsp 13,13
	fmuls 13,13,0
	fcmpu 7,13,12
	cror 30,29,30
	beq- 7,.L162
	fctiwz 13,13
	addi 9,1,60
	stfiwx 13,0,9
	lwz 9,60(1)
.L163:
	.loc 1 313 0
	cmplwi 7,9,95
	.loc 1 312 0
	lis 28,r_refdef@ha
	la 30,r_refdef@l(28)
	stw 9,8(30)
	.loc 1 313 0
	bgt- 7,.L164
	.loc 1 315 0
	stw 9,20(1)
	lis 9,0x4330
	stw 9,16(1)
	lis 9,.LC50@ha
	lfs 0,.LC8@l(10)
.LVL93:
	lfd 13,16(1)
	fsub 0,13,0
	lfs 13,.LC50@l(9)
	.loc 1 316 0
	li 9,96
	stw 9,8(30)
	.loc 1 315 0
	fdiv 0,13,0
	frsp 0,0
.LVL94:
.L164:
	.loc 1 319 0
	lis 5,0x4330
	stw 0,28(1)
	stw 5,24(1)
	lfs 12,.LC8@l(10)
	lfd 11,24(1)
	lfs 13,.LC48@l(11)
	fsub 12,11,12
	frsp 12,12
	fmuls 0,12,0
.LVL95:
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L165
	fctiwz 0,0
	addi 11,1,52
	stfiwx 0,0,11
	lwz 11,52(1)
.L166:
	.loc 1 320 0
	cmplw 7,8,11
	.loc 1 319 0
	stw 11,12(30)
	.loc 1 320 0
	bge- 7,.L167
	.loc 1 321 0
	stw 8,12(30)
	mr 11,8
.L167:
	.loc 1 322 0
	cmplw 7,0,11
	bge- 7,.L168
	.loc 1 323 0
	stw 0,12(30)
.L168:
	.loc 1 325 0
	cmpwi 7,6,0
	.loc 1 324 0
	subf 0,9,7
	srwi 0,0,1
	stw 0,r_refdef@l(28)
	.loc 1 325 0
	bne- 7,.L197
	.loc 1 328 0
	lwz 0,12(30)
	subf 0,0,8
	srwi 0,0,1
	stw 0,4(30)
.L170:
	.loc 1 331 0
	lwz 11,12(30)
	lis 0,0x4330
	stw 9,36(1)
	stw 0,32(1)
	stw 11,44(1)
	stw 0,40(1)
	lfs 0,.LC8@l(10)
	lfd 2,32(1)
	lfd 3,40(1)
	fsub 2,2,0
	fsub 3,3,0
	.loc 1 330 0
	lfs 0,72(31)
	.loc 1 331 0
	frsp 2,2
	.loc 1 330 0
	stfs 0,136(30)
	.loc 1 331 0
	fmr 1,0
	frsp 3,3
	bl CalcFov
.LVL96:
	.loc 1 333 0
	lis 11,scr_vrect@ha
	lwz 6,r_refdef@l(28)
	la 9,scr_vrect@l(11)
	lwz 7,4(30)
	lwz 8,8(30)
	lwz 10,12(30)
	lwz 0,16(30)
	.loc 1 331 0
	stfs 1,140(30)
	.loc 1 333 0
	stw 6,scr_vrect@l(11)
	stw 7,4(9)
	stw 8,8(9)
	stw 10,12(9)
	stw 0,16(9)
	b .L143
.L141:
.LBE13:
.LBE12:
	.loc 1 1008 0
	lwz 0,36(30)
	cmpwi 7,0,0
	bne- 7,.L142
.L143:
	.loc 1 1014 0
	bl SCR_SetUpToDrawConsole
	.loc 1 1015 0
	bl V_RenderView
	.loc 1 1017 0
	bl GL_Set2D
	.loc 1 1022 0
	lis 9,con_forcedup@ha
	lbz 0,con_forcedup@l(9)
	cmpwi 7,0,0
	bne- 7,.L171
.LVL97:
	.loc 1 1026 0
	lis 28,numUsedShadowLights@ha
	lwz 0,numUsedShadowLights@l(28)
	cmpwi 7,0,0
	ble- 7,.L171
	lis 30,usedshadowlights-4@ha
	li 31,0
	la 30,usedshadowlights-4@l(30)
	la 28,numUsedShadowLights@l(28)
.LVL98:
.L172:
	.loc 1 1027 0
	lwzu 3,4(30)
	.loc 1 1026 0
	addi 31,31,1
	.loc 1 1027 0
	bl R_RenderGlow
.LVL99:
	.loc 1 1026 0
	lwz 0,0(28)
	cmpw 7,31,0
	blt+ 7,.L172
.LVL100:
.L171:
	.loc 1 1038 0
	bl SCR_TileClear
	.loc 1 1040 0
	lis 9,scr_drawdialog@ha
	lbz 0,scr_drawdialog@l(9)
	cmpwi 7,0,0
	bne- 7,.L198
	.loc 1 1047 0
	lis 9,scr_drawloading@ha
	lbz 0,scr_drawloading@l(9)
	cmpwi 7,0,0
	bne- 7,.L199
	.loc 1 1052 0
	lis 9,cl+540@ha
	lwz 0,cl+540@l(9)
	cmpwi 7,0,1
	beq- 7,.L200
	.loc 1 1056 0
	cmpwi 7,0,2
	beq- 7,.L201
.L177:
	.loc 1 1063 0
	lis 9,crosshair+12@ha
	lfs 13,crosshair+12@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	fcmpu 7,13,0
	bne- 7,.L202
.L178:
	.loc 1 1066 0
	bl SCR_DrawRam
	.loc 1 1067 0
	bl SCR_DrawNet
	.loc 1 1068 0
	bl SCR_DrawTurtle
	.loc 1 1070 0
	bl SCR_DrawFPS
	.loc 1 1071 0
	bl SCR_DrawPause
	.loc 1 1072 0
	bl SCR_CheckDrawCenterString
	.loc 1 1073 0
	bl Sbar_Draw
	.loc 1 1074 0
	bl SCR_DrawNumLights
	.loc 1 1076 0
	bl SCR_DrawConsole
	.loc 1 1077 0
	bl M_Draw
.L174:
	.loc 1 1081 0
	bl V_UpdatePalette
	.loc 1 1083 0
	bl GL_EndRendering
.LBE11:
.LBE10:
	.loc 1 1084 0
	lwz 0,84(1)
	lwz 28,64(1)
	mtlr 0
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI64:
	.cfi_def_cfa_offset 0
	blr
.L200:
.LCFI65:
	.cfi_restore_state
.LBB21:
.LBB20:
	.loc 1 1052 0
	lis 9,key_dest@ha
	lwz 0,key_dest@l(9)
	cmpwi 7,0,0
	bne+ 7,.L177
	.loc 1 1054 0
	bl Sbar_IntermissionOverlay
	b .L174
.LVL101:
.L193:
.LBB17:
.LBB14:
	.loc 1 274 0
	lis 3,.LC5@ha
	lis 4,.LC40@ha
	la 3,.LC5@l(3)
	la 4,.LC40@l(4)
	bl Cvar_Set
	lfs 0,12(31)
	b .L144
.LVL102:
.L198:
.LBE14:
.LBE17:
	.loc 1 1042 0
	bl Sbar_Draw
	.loc 1 1043 0
	bl Draw_FadeScreen
	.loc 1 1044 0
	bl SCR_DrawNotifyString
	.loc 1 1045 0
	li 0,1
	stw 0,scr_copyeverything@l(29)
	b .L174
.L199:
	.loc 1 1049 0
	bl SCR_DrawLoading
	.loc 1 1050 0
	bl Sbar_Draw
	b .L174
.LVL103:
.L190:
.LBB18:
.LBB15:
	.loc 1 261 0
	li 6,0
	b .L158
.L152:
	.loc 1 291 0
	lis 9,sb_lines@ha
	li 0,0
	stw 0,sb_lines@l(9)
	lfs 0,12(31)
	b .L155
.LVL104:
.L160:
	.loc 1 306 0
	li 0,0
	li 8,0
	stw 0,sb_lines@l(9)
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	.loc 1 304 0
	li 6,1
	b .L161
.LVL105:
.L201:
.LBE15:
.LBE18:
	.loc 1 1056 0
	lis 9,key_dest@ha
	lwz 0,key_dest@l(9)
	cmpwi 7,0,0
	bne+ 7,.L177
	.loc 1 1058 0
	bl Sbar_FinaleOverlay
	.loc 1 1059 0
	bl SCR_CheckDrawCenterString
	b .L174
.L202:
	.loc 1 1064 0
	lis 11,scr_vrect@ha
	li 5,43
	la 9,scr_vrect@l(11)
	lwz 11,scr_vrect@l(11)
	lwz 3,8(9)
	lwz 4,12(9)
	lwz 0,4(9)
	srwi 3,3,1
	srwi 4,4,1
	add 3,3,11
	add 4,4,0
	bl Draw_Character
	b .L178
.LVL106:
.L197:
.LBB19:
.LBB16:
	.loc 1 326 0
	li 0,0
	stw 0,4(30)
	b .L170
.LVL107:
.L196:
	.loc 1 282 0
	lis 3,.LC43@ha
	lis 4,.LC46@ha
	la 3,.LC43@l(3)
	la 4,.LC46@l(4)
	bl Cvar_Set
	b .L150
.LVL108:
.L162:
	.loc 1 312 0
	fsubs 13,13,12
	addi 9,1,56
	fctiwz 13,13
	stfiwx 13,0,9
	lwz 9,56(1)
	addis 9,9,0x8000
	b .L163
.LVL109:
.L165:
	.loc 1 319 0
	fsubs 0,0,13
	addi 11,1,48
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,48(1)
	addis 11,11,0x8000
	b .L166
.LVL110:
.L195:
	.loc 1 280 0
	lis 3,.LC43@ha
	lis 4,.LC44@ha
	la 3,.LC43@l(3)
	la 4,.LC44@l(4)
	bl Cvar_Set
	lfs 0,72(31)
	b .L148
.L194:
	.loc 1 276 0
	lis 3,.LC5@ha
	lis 4,.LC42@ha
	la 3,.LC5@l(3)
	la 4,.LC42@l(4)
	bl Cvar_Set
	b .L146
.LVL111:
.L189:
	.loc 1 295 0
	li 0,48
	stw 0,sb_lines@l(9)
	b .L155
.LBE16:
.LBE19:
.LBE20:
.LBE21:
	.cfi_endproc
.LFE62:
	.size	SCR_UpdateScreen, .-SCR_UpdateScreen
	.align 2
	.globl SCR_BringDownConsole
	.type	SCR_BringDownConsole, @function
SCR_BringDownConsole:
.LFB60:
	.loc 1 917 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI66:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 920 0
	lis 9,scr_centertime_off@ha
	.loc 1 917 0
	stw 30,16(1)
	lis 30,scr_conlines@ha
	.cfi_offset 30, -8
	stw 0,28(1)
	.loc 1 920 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,scr_centertime_off@l(9)
.LVL112:
	li 0,20
	.loc 1 917 0
	stw 31,20(1)
	lis 31,scr_con_current@ha
	.cfi_offset 31, -4
	.loc 1 920 0
	stw 0,8(1)
	la 30,scr_conlines@l(30)
	la 31,scr_con_current@l(31)
.LVL113:
.L204:
	.loc 1 922 0 discriminator 2
	lfs 13,0(30)
	lfs 0,0(31)
	fcmpu 7,13,0
	beq- 7,.L205
	.loc 1 923 0 discriminator 1
	bl SCR_UpdateScreen
	.loc 1 922 0 discriminator 1
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L204
.L205:
	.loc 1 926 0
	lis 9,host_basepal@ha
	.loc 1 925 0
	li 0,0
	.loc 1 926 0
	lwz 3,host_basepal@l(9)
	.loc 1 925 0
	lis 9,cl@ha
	la 9,cl@l(9)
	stw 0,304(9)
	.loc 1 926 0
	bl VID_SetPalette
	.loc 1 927 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI67:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE60:
	.size	SCR_BringDownConsole, .-SCR_BringDownConsole
	.align 2
	.globl SCR_ModalMessage
	.type	SCR_ModalMessage, @function
SCR_ModalMessage:
.LFB59:
	.loc 1 880 0
	.cfi_startproc
.LVL114:
	mflr 0
	stwu 1,-32(1)
.LCFI68:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 881 0
	lis 9,cls@ha
	.loc 1 880 0
	stw 27,12(1)
	stw 0,36(1)
	.loc 1 881 0
	lwz 0,cls@l(9)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.loc 1 880 0
	stw 28,16(1)
	.loc 1 881 0
	cmpwi 7,0,0
	.loc 1 880 0
	stw 29,20(1)
	stw 30,24(1)
	.loc 1 882 0
	li 0,1
	.loc 1 880 0
	stw 31,28(1)
	.loc 1 881 0
	bne- 7,.L213
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 904 0
	mr 3,0
.LVL115:
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
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
.LVL116:
.L213:
.LCFI70:
	.cfi_restore_state
	.loc 1 887 0
	li 30,0
	.loc 1 888 0
	lis 31,scr_drawdialog@ha
	.loc 1 884 0
	lis 9,scr_notifystring@ha
	.loc 1 887 0
	lis 27,scr_fullupdate@ha
	lis 28,key_lastpress@ha
	lis 29,key_count@ha
	.loc 1 888 0
	stb 0,scr_drawdialog@l(31)
	la 29,key_count@l(29)
	.loc 1 884 0
	stw 3,scr_notifystring@l(9)
	.loc 1 887 0
	stw 30,scr_fullupdate@l(27)
	.loc 1 889 0
	bl SCR_UpdateScreen
.LVL117:
	.loc 1 890 0
	stb 30,scr_drawdialog@l(31)
	.loc 1 892 0
	bl S_ClearBuffer
	la 30,key_lastpress@l(28)
	.loc 1 896 0
	li 31,-1
	b .L210
.L214:
	.loc 1 898 0 discriminator 1
	beq- 6,.L209
	beq- 1,.L209
.L210:
	.loc 1 896 0 discriminator 1
	stw 31,0(29)
	.loc 1 897 0 discriminator 1
	bl Sys_SendKeyEvents
	.loc 1 898 0 discriminator 1
	lwz 0,0(30)
	cmpwi 7,0,121
	cmpwi 6,0,110
	cmpwi 1,0,27
	bne+ 7,.L214
.L209:
	.loc 1 900 0
	li 0,0
	stw 0,scr_fullupdate@l(27)
	.loc 1 901 0
	bl SCR_UpdateScreen
	.loc 1 903 0
	lwz 0,key_lastpress@l(28)
	.loc 1 904 0
	lwz 27,12(1)
	.loc 1 903 0
	xori 0,0,121
	.loc 1 904 0
	lwz 28,16(1)
	.loc 1 903 0
	cntlzw 0,0
	.loc 1 904 0
	lwz 29,20(1)
	.loc 1 903 0
	srwi 0,0,5
	.loc 1 904 0
	lwz 30,24(1)
	mr 3,0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI71:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE59:
	.size	SCR_ModalMessage, .-SCR_ModalMessage
	.align 2
	.globl SCR_BeginLoadingPlaque
	.type	SCR_BeginLoadingPlaque, @function
SCR_BeginLoadingPlaque:
.LFB56:
	.loc 1 797 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI72:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 798 0
	li 3,1
	.loc 1 797 0
	stw 28,8(1)
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 798 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	bl S_StopAllSounds
	.loc 1 800 0
	lis 9,cls@ha
	lwz 0,cls@l(9)
	la 9,cls@l(9)
	cmpwi 7,0,2
	beq- 7,.L217
.L215:
	.loc 1 819 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L217:
.LCFI74:
	.cfi_restore_state
	.loc 1 802 0
	lwz 0,2272(9)
	cmpwi 7,0,4
	bne+ 7,.L215
	.loc 1 806 0
	bl Con_ClearNotify
	.loc 1 807 0
	li 0,0
	lis 9,scr_centertime_off@ha
	.loc 1 811 0
	li 31,0
	.loc 1 807 0
	stw 0,scr_centertime_off@l(9)
	.loc 1 810 0
	lis 28,scr_drawloading@ha
	.loc 1 808 0
	lis 9,scr_con_current@ha
	.loc 1 810 0
	li 29,1
	.loc 1 811 0
	lis 30,scr_fullupdate@ha
	.loc 1 808 0
	stw 0,scr_con_current@l(9)
	.loc 1 810 0
	stb 29,scr_drawloading@l(28)
	.loc 1 811 0
	stw 31,scr_fullupdate@l(30)
	.loc 1 812 0
	bl Sbar_Changed
	.loc 1 813 0
	bl SCR_UpdateScreen
	.loc 1 817 0
	lis 9,realtime@ha
	lfd 0,realtime@l(9)
	.loc 1 816 0
	lis 9,scr_disabled_for_loading@ha
	stb 29,scr_disabled_for_loading@l(9)
	.loc 1 817 0
	lis 9,scr_disabled_time@ha
	frsp 0,0
	.loc 1 814 0
	stb 31,scr_drawloading@l(28)
	.loc 1 818 0
	stw 31,scr_fullupdate@l(30)
	.loc 1 817 0
	stfs 0,scr_disabled_time@l(9)
	b .L215
	.cfi_endproc
.LFE56:
	.size	SCR_BeginLoadingPlaque, .-SCR_BeginLoadingPlaque
	.comm	scr_drawdialog,1,1
	.comm	scr_notifystring,4,4
	.comm	scr_erase_center,4,4
	.comm	scr_erase_lines,4,4
	.comm	scr_center_lines,4,4
	.comm	scr_centertime_off,4,4
	.comm	scr_centertime_start,4,4
	.comm	scr_centerstring,1024,4
	.comm	block_drawing,1,1
	.comm	scr_disabled_time,4,4
	.comm	scr_drawloading,1,1
	.comm	scr_disabled_for_loading,1,1
	.comm	scr_vrect,20,4
	.comm	vid,68,4
	.comm	clearnotify,4,4
	.comm	clearconsole,4,4
	.comm	scr_fullupdate,4,4
	.comm	scr_turtle,4,4
	.comm	scr_net,4,4
	.comm	scr_ram,4,4
	.comm	scr_initialized,1,1
	.globl gl_triplebuffer
	.globl scr_printspeed
	.globl scr_showpause
	.globl scr_showturtle
	.globl scr_showram
	.globl scr_centertime
	.globl scr_conspeed
	.globl scr_fov
	.globl scr_viewsize
	.comm	oldfov,4,4
	.comm	oldscreensize,4,4
	.comm	scr_conlines,4,4
	.comm	scr_con_current,4,4
	.comm	scr_copyeverything,4,4
	.comm	scr_copytop,4,4
	.comm	glheight,4,4
	.comm	glwidth,4,4
	.comm	gly,4,4
	.comm	glx,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.4byte	1092616192
.LC8:
	.4byte	1501560832
.LC10:
	.4byte	0
.LC11:
	.4byte	1065353216
.LC12:
	.4byte	1127415808
.LC14:
	.4byte	1135869952
.LC34:
	.4byte	1120403456
.LC35:
	.4byte	1073741824
.LC37:
	.4byte	1114636288
.LC39:
	.4byte	1106247680
.LC41:
	.4byte	1123024896
.LC45:
	.4byte	1126825984
.LC47:
	.4byte	1121714176
.LC48:
	.4byte	1325400064
.LC50:
	.4byte	1119879168
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC9:
	.4byte	1071015526
	.4byte	1717986918
.LC15:
	.4byte	1074340347
	.4byte	1413754136
.LC23:
	.4byte	1069128089
	.4byte	-1717986918
.LC24:
	.4byte	1070805811
	.4byte	858993459
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	scr_viewsize, @object
	.size	scr_viewsize, 20
scr_viewsize:
	.long	.LC5
	.long	.LC64
	.byte	1
	.zero	11
	.type	scr_centertime, @object
	.size	scr_centertime, 20
scr_centertime:
	.long	.LC59
	.long	.LC60
	.zero	12
	.type	scr_printspeed, @object
	.size	scr_printspeed, 20
scr_printspeed:
	.long	.LC53
	.long	.LC54
	.zero	12
	.type	scr_fov, @object
	.size	scr_fov, 20
scr_fov:
	.long	.LC43
	.long	.LC63
	.zero	12
	.type	scr_conspeed, @object
	.size	scr_conspeed, 20
scr_conspeed:
	.long	.LC61
	.long	.LC62
	.zero	12
	.type	scr_showram, @object
	.size	scr_showram, 20
scr_showram:
	.long	.LC58
	.long	.LC52
	.zero	12
	.type	scr_showturtle, @object
	.size	scr_showturtle, 20
scr_showturtle:
	.long	.LC56
	.long	.LC57
	.zero	12
	.type	scr_showpause, @object
	.size	scr_showpause, 20
scr_showpause:
	.long	.LC55
	.long	.LC52
	.zero	12
	.type	gl_triplebuffer, @object
	.size	gl_triplebuffer, 20
gl_triplebuffer:
	.long	.LC51
	.long	.LC52
	.byte	1
	.zero	11
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"screenshots/quake00000.tga"
	.zero	1
.LC1:
	.string	"%s/screenshots"
	.zero	1
.LC2:
	.string	"%s/%s"
	.zero	2
.LC3:
	.string	"Wrote %s\n"
	.zero	2
.LC4:
	.string	"SCR_ScreenShot_f: Couldn't create a PCX file\n"
	.zero	2
.LC5:
	.string	"viewsize"
	.zero	3
.LC13:
	.string	"Bad fov: %f"
.LC16:
	.string	"screenshot"
	.zero	1
.LC17:
	.string	"sizeup"
	.zero	1
.LC18:
	.string	"sizedown"
	.zero	3
.LC19:
	.string	"ram"
.LC20:
	.string	"net"
.LC21:
	.string	"turtle"
	.zero	1
.LC22:
	.string	"Thrash cache\n"
	.zero	2
.LC25:
	.string	"gfx/pause.lmp"
	.zero	2
.LC26:
	.string	"gfx/loading.lmp"
.LC28:
	.string	"FPS: %d NumLights: %d ClearsSaved %d\n"
	.zero	2
.LC29:
	.string	"FPS: %d \n"
	.zero	2
.LC30:
	.string	"Alias Cache: %d Requests, %d Full Hits,  %d Partial Hits\n"
	.zero	2
.LC31:
	.string	"Brush Cache: %d Requests, %d Full Hits,  %d Partial Hits\n"
	.zero	2
.LC32:
	.string	"Poly counts: %d Alias polys, %d Brush polys\n"
	.zero	3
.LC33:
	.string	"Lights: %i"
	.zero	1
.LC38:
	.string	"load failed.\n"
	.zero	2
.LC40:
	.string	"30"
	.zero	1
.LC42:
	.string	"120"
.LC43:
	.string	"fov"
.LC44:
	.string	"10"
	.zero	1
.LC46:
	.string	"170"
.LC51:
	.string	"gl_triplebuffer"
.LC52:
	.string	"1"
	.zero	2
.LC53:
	.string	"scr_printspeed"
	.zero	1
.LC54:
	.string	"8"
	.zero	2
.LC55:
	.string	"showpause"
	.zero	2
.LC56:
	.string	"showturtle"
	.zero	1
.LC57:
	.string	"0"
	.zero	2
.LC58:
	.string	"showram"
.LC59:
	.string	"scr_centertime"
	.zero	1
.LC60:
	.string	"2"
	.zero	2
.LC61:
	.string	"scr_conspeed"
	.zero	3
.LC62:
	.string	"300"
.LC63:
	.string	"90"
	.zero	1
.LC64:
	.string	"100"
	.section	".bss"
	.align 3
	.set	.LANCHOR1,. + 0
	.type	count.15014, @object
	.size	count.15014, 4
count.15014:
	.zero	4
	.zero	4
	.type	lastframetime.15029, @object
	.size	lastframetime.15029, 8
lastframetime.15029:
	.zero	8
	.type	lastfps.15032, @object
	.size	lastfps.15032, 4
lastfps.15032:
	.zero	4
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
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/wad.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 22 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 23 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 24 "d:/Data/Nintendo/TenebraeGX/src/keys.h"
	.file 25 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 26 "d:/Data/Nintendo/TenebraeGX/src/console.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35c2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF667
	.byte	0x1
	.4byte	.LASF668
	.4byte	.LASF669
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
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x10
	.byte	0x8
	.byte	0x28
	.4byte	0x9be
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x2a
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x8
	.byte	0x2b
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x2c
	.4byte	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x8
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x949
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x8
	.byte	0x2f
	.4byte	0x96b
	.uleb128 0xa
	.byte	0x40
	.byte	0x9
	.byte	0x52
	.4byte	0xa3a
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x9
	.byte	0x54
	.4byte	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x9
	.byte	0x54
	.4byte	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x55
	.4byte	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x56
	.4byte	0xa4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xa4a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xa5a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x9
	.byte	0x59
	.4byte	0x9cf
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xa75
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xa85
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xa95
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0xa5
	.4byte	0xaba
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x9
	.byte	0xa8
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x9
	.byte	0xa9
	.4byte	0xa95
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xadb
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0xaeb
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xafb
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0xa
	.byte	0x1a
	.4byte	0x949
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x14
	.byte	0xa
	.byte	0x1c
	.4byte	0xb55
	.uleb128 0xe
	.string	"x"
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.byte	0x1f
	.4byte	0xb55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb06
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0xa
	.byte	0x20
	.4byte	0xb06
	.uleb128 0xa
	.byte	0x44
	.byte	0xa
	.byte	0x22
	.4byte	0xc5d
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.byte	0x24
	.4byte	0xc5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.byte	0x25
	.4byte	0xc5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xa
	.byte	0x26
	.4byte	0xc63
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xa
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xa
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xa
	.byte	0x2b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xa
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xa
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xa
	.byte	0x2e
	.4byte	0xc5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xa
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xa
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xa
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xa
	.byte	0x34
	.4byte	0xc5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xafb
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xa
	.byte	0x36
	.4byte	0xb66
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xc84
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.4byte	0xc9f
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xb
	.byte	0x71
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xb
	.byte	0x72
	.4byte	0xc84
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xc
	.byte	0x16
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0xc
	.byte	0x17
	.4byte	0xcc0
	.uleb128 0x8
	.4byte	0xcaa
	.4byte	0xcd0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x48
	.byte	0xd
	.byte	0xef
	.4byte	0xd81
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xd
	.byte	0xf1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xd
	.byte	0xf2
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xd
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xd
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xd
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xd
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xd
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xd
	.byte	0xf9
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xd
	.byte	0xfa
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xd
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xd
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xd
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xd
	.byte	0xfe
	.4byte	0xcd0
	.uleb128 0xa
	.byte	0xc
	.byte	0xe
	.byte	0x27
	.4byte	0xdbf
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xe
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xe
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xe
	.byte	0x2a
	.4byte	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0xe
	.byte	0x2b
	.4byte	0xd8c
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x14
	.byte	0xf
	.byte	0x38
	.4byte	0xe2b
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xf
	.byte	0x3a
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xf
	.byte	0x3b
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xf
	.byte	0x3c
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xf
	.byte	0x3d
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xf
	.byte	0x3e
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xf
	.byte	0x3f
	.4byte	0xe2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdca
	.uleb128 0x4
	.4byte	.LASF185
	.byte	0xf
	.byte	0x40
	.4byte	0xdca
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0x10
	.byte	0x10
	.byte	0x16
	.4byte	0xe65
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0x10
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x10
	.byte	0x19
	.4byte	0xe65
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xe75
	.uleb128 0x9
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	.LASF189
	.2byte	0x80a0
	.byte	0x10
	.byte	0x78
	.4byte	0xfc3
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0x10
	.byte	0x7a
	.4byte	0xfc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x10
	.byte	0x7b
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x10
	.byte	0x7c
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x10
	.byte	0x7d
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x10
	.byte	0x7f
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x10
	.byte	0x80
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x10
	.byte	0x81
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x10
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x10
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x10
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0x10
	.byte	0x86
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0x10
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0x10
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0x10
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0x10
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0x10
	.byte	0x8c
	.4byte	0xfc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0x10
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0x10
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0x10
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0x10
	.byte	0x91
	.4byte	0xfc9
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0x10
	.byte	0x93
	.4byte	0xe3c
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x10
	.byte	0x94
	.4byte	0xfda
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe75
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xfda
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xfea
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xffa
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF211
	.byte	0x44
	.byte	0x11
	.byte	0x23
	.4byte	0x1023
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x11
	.byte	0x25
	.4byte	0xfda
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF212
	.byte	0x11
	.byte	0x26
	.4byte	0xc9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF213
	.byte	0x10
	.byte	0x12
	.byte	0x1e
	.4byte	0x1068
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x12
	.byte	0x20
	.4byte	0x110f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x12
	.byte	0x21
	.4byte	0x1115
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x12
	.byte	0x22
	.4byte	0x1389
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x12
	.byte	0x23
	.4byte	0x1115
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF218
	.byte	0x40
	.byte	0x13
	.byte	0xca
	.4byte	0x110f
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x13
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x13
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF221
	.byte	0x13
	.byte	0xd0
	.4byte	0x2303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x13
	.byte	0xd2
	.4byte	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF223
	.byte	0x13
	.byte	0xd5
	.4byte	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x13
	.byte	0xd6
	.4byte	0x232e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x13
	.byte	0xd8
	.4byte	0x2334
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF226
	.byte	0x13
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0x13
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x13
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF228
	.byte	0x13
	.byte	0xdc
	.4byte	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1068
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1023
	.uleb128 0x10
	.4byte	.LASF229
	.2byte	0x248
	.byte	0x12
	.byte	0x27
	.4byte	0x1389
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x12
	.byte	0x29
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x12
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0x12
	.byte	0x2d
	.4byte	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x12
	.byte	0x2f
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x12
	.byte	0x30
	.4byte	0x139a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x12
	.byte	0x31
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0x12
	.byte	0x32
	.4byte	0x139a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x12
	.byte	0x33
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x12
	.byte	0x34
	.4byte	0x1664
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF237
	.byte	0x12
	.byte	0x35
	.4byte	0x1115
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x12
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.4byte	.LASF238
	.byte	0x12
	.byte	0x37
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x12
	.byte	0x38
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x12
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x12
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x12
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x12
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x12
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0x12
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0x12
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.4byte	.LASF244
	.byte	0x12
	.byte	0x44
	.4byte	0x16e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x12
	.byte	0x48
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x12
	.byte	0x49
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x12
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x12
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x12
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.4byte	.LASF245
	.byte	0x12
	.byte	0x50
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x12
	.byte	0x51
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x12
	.byte	0x52
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0x12
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0x12
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF250
	.byte	0x12
	.byte	0x57
	.4byte	0x1807
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.4byte	.LASF251
	.byte	0x12
	.byte	0x58
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0x12
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0x12
	.byte	0x5c
	.4byte	0x180d
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0x12
	.byte	0x5f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0x12
	.byte	0x60
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF256
	.byte	0x12
	.byte	0x61
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF257
	.byte	0x12
	.byte	0x62
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF258
	.byte	0x12
	.byte	0x63
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF259
	.byte	0x12
	.byte	0x64
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x111b
	.uleb128 0x4
	.4byte	.LASF260
	.byte	0x12
	.byte	0x24
	.4byte	0x1023
	.uleb128 0x8
	.4byte	0xcaa
	.4byte	0x13b0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF261
	.2byte	0x1a4
	.byte	0x13
	.2byte	0x180
	.4byte	0x1664
	.uleb128 0x15
	.4byte	.LASF179
	.byte	0x13
	.2byte	0x182
	.4byte	0xfda
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x13
	.2byte	0x183
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x13
	.2byte	0x185
	.4byte	0x2677
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x13
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x13
	.2byte	0x187
	.4byte	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x13
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x13
	.2byte	0x18e
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x13
	.2byte	0x18e
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF267
	.byte	0x13
	.2byte	0x18f
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF268
	.byte	0x13
	.2byte	0x194
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF269
	.byte	0x13
	.2byte	0x195
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF270
	.byte	0x13
	.2byte	0x195
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF271
	.byte	0x13
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF272
	.byte	0x13
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF273
	.byte	0x13
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF274
	.byte	0x13
	.2byte	0x19d
	.4byte	0x2683
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF275
	.byte	0x13
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x13
	.2byte	0x1a0
	.4byte	0x22e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF252
	.byte	0x13
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF277
	.byte	0x13
	.2byte	0x1a3
	.4byte	0x2689
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x15
	.4byte	.LASF278
	.byte	0x13
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF279
	.byte	0x13
	.2byte	0x1a6
	.4byte	0x268f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF280
	.byte	0x13
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF281
	.byte	0x13
	.2byte	0x1a9
	.4byte	0x2695
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x15
	.4byte	.LASF282
	.byte	0x13
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF283
	.byte	0x13
	.2byte	0x1ac
	.4byte	0x269b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x15
	.4byte	.LASF284
	.byte	0x13
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF285
	.byte	0x13
	.2byte	0x1af
	.4byte	0x22f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x15
	.4byte	.LASF286
	.byte	0x13
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x15
	.4byte	.LASF287
	.byte	0x13
	.2byte	0x1b2
	.4byte	0x233a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x15
	.4byte	.LASF288
	.byte	0x13
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF289
	.byte	0x13
	.2byte	0x1b5
	.4byte	0x26a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x15
	.4byte	.LASF290
	.byte	0x13
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x15
	.4byte	.LASF291
	.byte	0x13
	.2byte	0x1b8
	.4byte	0x23a8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x13
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x15
	.4byte	.LASF292
	.byte	0x13
	.2byte	0x1bb
	.4byte	0x2334
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x15
	.4byte	.LASF293
	.byte	0x13
	.2byte	0x1bd
	.4byte	0x26a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x15
	.4byte	.LASF294
	.byte	0x13
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x15
	.4byte	.LASF295
	.byte	0x13
	.2byte	0x1c0
	.4byte	0x26b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x15
	.4byte	.LASF296
	.byte	0x13
	.2byte	0x1c2
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x15
	.4byte	.LASF297
	.byte	0x13
	.2byte	0x1c3
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x15
	.4byte	.LASF298
	.byte	0x13
	.2byte	0x1c4
	.4byte	0x5c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x15
	.4byte	.LASF212
	.byte	0x13
	.2byte	0x1c9
	.4byte	0xc9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x13b0
	.uleb128 0xd
	.4byte	.LASF299
	.byte	0x34
	.byte	0x13
	.byte	0xb6
	.4byte	0x16e7
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x13
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x13
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF221
	.byte	0x13
	.byte	0xbc
	.4byte	0x2303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x13
	.byte	0xbe
	.4byte	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF300
	.byte	0x13
	.byte	0xc1
	.4byte	0x22e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x13
	.byte	0xc2
	.4byte	0x2313
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF301
	.byte	0x13
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF286
	.byte	0x13
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x166a
	.uleb128 0x1e
	.4byte	.LASF302
	.4byte	0x20030
	.byte	0x14
	.2byte	0xa09
	.4byte	0x1807
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x14
	.2byte	0xa0f
	.4byte	0x1807
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF303
	.byte	0x14
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF304
	.byte	0x14
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF305
	.byte	0x14
	.2byte	0xa17
	.4byte	0x2ab2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF306
	.byte	0x14
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF307
	.byte	0x14
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF308
	.byte	0x14
	.2byte	0xa1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF309
	.byte	0x14
	.2byte	0xa1d
	.4byte	0x1a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF310
	.byte	0x14
	.2byte	0xa1f
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF311
	.byte	0x14
	.2byte	0xa21
	.4byte	0x2ab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF312
	.byte	0x14
	.2byte	0xa25
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF313
	.byte	0x14
	.2byte	0xa2b
	.4byte	0x2abe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF314
	.byte	0x14
	.2byte	0xa2d
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x15
	.4byte	.LASF315
	.byte	0x14
	.2byte	0xa2f
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x15
	.4byte	.LASF316
	.byte	0x14
	.2byte	0xa31
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x15
	.4byte	.LASF317
	.byte	0x14
	.2byte	0xa33
	.4byte	0x2b03
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x15
	.4byte	.LASF318
	.byte	0x14
	.2byte	0xa37
	.4byte	0x2b14
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x16ed
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x181d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF319
	.byte	0x12
	.byte	0x66
	.4byte	0x111b
	.uleb128 0xa
	.byte	0x94
	.byte	0x12
	.byte	0x69
	.4byte	0x1992
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x12
	.byte	0x6b
	.4byte	0xb5b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x12
	.byte	0x6d
	.4byte	0xb5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF322
	.byte	0x12
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF323
	.byte	0x12
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x12
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF325
	.byte	0x12
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF326
	.byte	0x12
	.byte	0x70
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF327
	.byte	0x12
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x12
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF329
	.byte	0x12
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x12
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF331
	.byte	0x12
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF332
	.byte	0x12
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF333
	.byte	0x12
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF334
	.byte	0x12
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x12
	.byte	0x78
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF336
	.byte	0x12
	.byte	0x79
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF337
	.byte	0x12
	.byte	0x7a
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF338
	.byte	0x12
	.byte	0x7c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF339
	.byte	0x12
	.byte	0x7d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x12
	.byte	0x7f
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x12
	.byte	0x80
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF342
	.byte	0x12
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x12
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF344
	.byte	0x12
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF345
	.byte	0x12
	.byte	0x85
	.4byte	0x1828
	.uleb128 0xa
	.byte	0x18
	.byte	0x15
	.byte	0x16
	.4byte	0x19de
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x15
	.byte	0x18
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x15
	.byte	0x1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x15
	.byte	0x1c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF348
	.byte	0x15
	.byte	0x1d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF349
	.byte	0x15
	.byte	0x21
	.4byte	0x199d
	.uleb128 0x1f
	.2byte	0x402c
	.byte	0x15
	.byte	0x29
	.4byte	0x1a39
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x15
	.byte	0x2b
	.4byte	0xfea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF350
	.byte	0x15
	.byte	0x2c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF351
	.byte	0x15
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF352
	.byte	0x15
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF353
	.byte	0x15
	.byte	0x2f
	.4byte	0xfc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF354
	.byte	0x15
	.byte	0x30
	.4byte	0x19e9
	.uleb128 0xa
	.byte	0x10
	.byte	0x15
	.byte	0x32
	.4byte	0x1a69
	.uleb128 0xb
	.4byte	.LASF355
	.byte	0x15
	.byte	0x34
	.4byte	0x1a69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF356
	.byte	0x15
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1a79
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF357
	.byte	0x15
	.byte	0x36
	.4byte	0x1a44
	.uleb128 0xf
	.byte	0x4
	.4byte	0x181d
	.uleb128 0x20
	.byte	0x4
	.byte	0x15
	.byte	0x6b
	.4byte	0x1aa5
	.uleb128 0x21
	.4byte	.LASF358
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF359
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF360
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF361
	.byte	0x15
	.byte	0x6f
	.4byte	0x1a8a
	.uleb128 0x1f
	.2byte	0x8f8
	.byte	0x15
	.byte	0x75
	.4byte	0x1ba7
	.uleb128 0xb
	.4byte	.LASF362
	.byte	0x15
	.byte	0x77
	.4byte	0x1aa5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF363
	.byte	0x15
	.byte	0x7a
	.4byte	0xfda
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF364
	.byte	0x15
	.byte	0x7b
	.4byte	0x1ba7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF365
	.byte	0x15
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0x15
	.byte	0x7f
	.4byte	0x1bb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0xb
	.4byte	.LASF367
	.byte	0x15
	.byte	0x83
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c8
	.uleb128 0xb
	.4byte	.LASF368
	.byte	0x15
	.byte	0x84
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c9
	.uleb128 0xb
	.4byte	.LASF369
	.byte	0x15
	.byte	0x85
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8ca
	.uleb128 0xb
	.4byte	.LASF370
	.byte	0x15
	.byte	0x86
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8cc
	.uleb128 0xb
	.4byte	.LASF371
	.byte	0x15
	.byte	0x87
	.4byte	0x1bce
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d0
	.uleb128 0xb
	.4byte	.LASF372
	.byte	0x15
	.byte	0x88
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d4
	.uleb128 0xb
	.4byte	.LASF373
	.byte	0x15
	.byte	0x89
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d8
	.uleb128 0xb
	.4byte	.LASF374
	.byte	0x15
	.byte	0x8a
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x8dc
	.uleb128 0xb
	.4byte	.LASF375
	.byte	0x15
	.byte	0x8e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e0
	.uleb128 0xb
	.4byte	.LASF376
	.byte	0x15
	.byte	0x8f
	.4byte	0xfc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e4
	.uleb128 0xb
	.4byte	.LASF377
	.byte	0x15
	.byte	0x90
	.4byte	0x9c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e8
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1bb8
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1bce
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x93e
	.uleb128 0x4
	.4byte	.LASF378
	.byte	0x15
	.byte	0x92
	.4byte	0x1ab0
	.uleb128 0x1f
	.2byte	0xce8
	.byte	0x15
	.byte	0x9a
	.4byte	0x1e7a
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x15
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0x15
	.byte	0xa0
	.4byte	0x19de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF380
	.byte	0x15
	.byte	0xa3
	.4byte	0x1e7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF381
	.byte	0x15
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF382
	.byte	0x15
	.byte	0xa5
	.4byte	0x1e8a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF383
	.byte	0x15
	.byte	0xa6
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.4byte	.LASF384
	.byte	0x15
	.byte	0xa8
	.4byte	0x1e9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xb
	.4byte	.LASF385
	.byte	0x15
	.byte	0xa9
	.4byte	0x1e9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xb
	.4byte	.LASF386
	.byte	0x15
	.byte	0xaf
	.4byte	0x139a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x15
	.byte	0xb1
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xb
	.4byte	.LASF387
	.byte	0x15
	.byte	0xb3
	.4byte	0x139a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.4byte	.LASF388
	.byte	0x15
	.byte	0xb5
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.4byte	.LASF389
	.byte	0x15
	.byte	0xb7
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xb
	.4byte	.LASF390
	.byte	0x15
	.byte	0xba
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.4byte	.LASF391
	.byte	0x15
	.byte	0xbb
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xb
	.4byte	.LASF392
	.byte	0x15
	.byte	0xbc
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.4byte	.LASF393
	.byte	0x15
	.byte	0xbd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF394
	.byte	0x15
	.byte	0xbe
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF395
	.byte	0x15
	.byte	0xc0
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF396
	.byte	0x15
	.byte	0xc1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF397
	.byte	0x15
	.byte	0xc3
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF398
	.byte	0x15
	.byte	0xc4
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xb
	.4byte	.LASF399
	.byte	0x15
	.byte	0xc5
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xb
	.4byte	.LASF400
	.byte	0x15
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF401
	.byte	0x15
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF402
	.byte	0x15
	.byte	0xca
	.4byte	0x1eaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF403
	.byte	0x15
	.byte	0xcb
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF404
	.byte	0x15
	.byte	0xce
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xb
	.4byte	.LASF405
	.byte	0x15
	.byte	0xd2
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x15
	.byte	0xd7
	.4byte	0x1eba
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xb
	.4byte	.LASF407
	.byte	0x15
	.byte	0xd8
	.4byte	0x1eca
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xb
	.4byte	.LASF408
	.byte	0x15
	.byte	0xda
	.4byte	0x1ee0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xb
	.4byte	.LASF409
	.byte	0x15
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xb
	.4byte	.LASF410
	.byte	0x15
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xb
	.4byte	.LASF411
	.byte	0x15
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xb
	.4byte	.LASF412
	.byte	0x15
	.byte	0xe0
	.4byte	0x1664
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xb
	.4byte	.LASF413
	.byte	0x15
	.byte	0xe1
	.4byte	0x1115
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xb
	.4byte	.LASF414
	.byte	0x15
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xb
	.4byte	.LASF415
	.byte	0x15
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xb
	.4byte	.LASF416
	.byte	0x15
	.byte	0xe4
	.4byte	0x181d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xb
	.4byte	.LASF417
	.byte	0x15
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xb
	.4byte	.LASF418
	.byte	0x15
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xb
	.4byte	.LASF419
	.byte	0x15
	.byte	0xe9
	.4byte	0x1ef0
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xb
	.4byte	.LASF420
	.byte	0x15
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1e8a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x1e9a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x1a79
	.4byte	0x1eaa
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x922
	.4byte	0x1eba
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x1664
	.4byte	0x1eca
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x1eda
	.4byte	0x1eda
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xffa
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1ef0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a39
	.uleb128 0x4
	.4byte	.LASF421
	.byte	0x15
	.byte	0xf3
	.4byte	0x1bdf
	.uleb128 0x20
	.byte	0x4
	.byte	0x16
	.byte	0x34
	.4byte	0x1f16
	.uleb128 0x21
	.4byte	.LASF422
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF423
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF424
	.byte	0x16
	.byte	0x34
	.4byte	0x1f01
	.uleb128 0xa
	.byte	0x4
	.byte	0x16
	.byte	0x64
	.4byte	0x1f44
	.uleb128 0xe
	.string	"v"
	.byte	0x16
	.byte	0x65
	.4byte	0x1f44
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF425
	.byte	0x16
	.byte	0x66
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x1f54
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF426
	.byte	0x16
	.byte	0x67
	.4byte	0x1f21
	.uleb128 0xa
	.byte	0xc
	.byte	0x13
	.byte	0x3b
	.4byte	0x1f76
	.uleb128 0xb
	.4byte	.LASF427
	.byte	0x13
	.byte	0x3d
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF428
	.byte	0x13
	.byte	0x3e
	.4byte	0x1f5f
	.uleb128 0xd
	.4byte	.LASF429
	.byte	0x14
	.byte	0x13
	.byte	0x52
	.4byte	0x1fd4
	.uleb128 0xb
	.4byte	.LASF430
	.byte	0x13
	.byte	0x54
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF431
	.byte	0x13
	.byte	0x55
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF263
	.byte	0x13
	.byte	0x56
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF432
	.byte	0x13
	.byte	0x57
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0x13
	.byte	0x58
	.4byte	0x1fd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x1fe4
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF433
	.byte	0x13
	.byte	0x59
	.4byte	0x1f81
	.uleb128 0xd
	.4byte	.LASF434
	.byte	0x48
	.byte	0x13
	.byte	0x5b
	.4byte	0x20a4
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x13
	.byte	0x5d
	.4byte	0xa65
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x13
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x13
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF435
	.byte	0x13
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF436
	.byte	0x13
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF437
	.byte	0x13
	.byte	0x61
	.4byte	0x21c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF438
	.byte	0x13
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF439
	.byte	0x13
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF440
	.byte	0x13
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF441
	.byte	0x13
	.byte	0x64
	.4byte	0x21cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF442
	.byte	0x13
	.byte	0x65
	.4byte	0x21cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF443
	.byte	0x13
	.byte	0x66
	.4byte	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF444
	.byte	0x5c
	.byte	0x13
	.byte	0x96
	.4byte	0x21c9
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x13
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF300
	.byte	0x13
	.byte	0x9a
	.4byte	0x22e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF266
	.byte	0x13
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF445
	.byte	0x13
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF280
	.byte	0x13
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF446
	.byte	0x13
	.byte	0xa0
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF447
	.byte	0x13
	.byte	0xa1
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF448
	.byte	0x13
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF449
	.byte	0x13
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF450
	.byte	0x13
	.byte	0xa5
	.4byte	0x22ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF437
	.byte	0x13
	.byte	0xa6
	.4byte	0x21c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF451
	.byte	0x13
	.byte	0xa7
	.4byte	0x21c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x13
	.byte	0xa9
	.4byte	0x22f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x13
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0x13
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF452
	.byte	0x13
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF453
	.byte	0x13
	.byte	0xb0
	.4byte	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF454
	.byte	0x13
	.byte	0xb1
	.4byte	0xa4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF455
	.byte	0x13
	.byte	0xb2
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF456
	.byte	0x13
	.byte	0xb3
	.4byte	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x20a4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fef
	.uleb128 0x4
	.4byte	.LASF457
	.byte	0x13
	.byte	0x67
	.4byte	0x1fef
	.uleb128 0xa
	.byte	0x8
	.byte	0x13
	.byte	0x78
	.4byte	0x2203
	.uleb128 0xe
	.string	"v"
	.byte	0x13
	.byte	0x7a
	.4byte	0xadb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF458
	.byte	0x13
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF459
	.byte	0x13
	.byte	0x7c
	.4byte	0x21e0
	.uleb128 0xa
	.byte	0x2c
	.byte	0x13
	.byte	0x7e
	.4byte	0x224f
	.uleb128 0xb
	.4byte	.LASF460
	.byte	0x13
	.byte	0x80
	.4byte	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF461
	.byte	0x13
	.byte	0x81
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF462
	.byte	0x13
	.byte	0x82
	.4byte	0x224f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF266
	.byte	0x13
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x21d5
	.uleb128 0x4
	.4byte	.LASF463
	.byte	0x13
	.byte	0x84
	.4byte	0x220e
	.uleb128 0xd
	.4byte	.LASF464
	.byte	0x1c
	.byte	0x13
	.byte	0x8a
	.4byte	0x22cf
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0x13
	.byte	0x8c
	.4byte	0x22cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF465
	.byte	0x13
	.byte	0x8d
	.4byte	0x22cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF466
	.byte	0x13
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF266
	.byte	0x13
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x13
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF467
	.byte	0x13
	.byte	0x92
	.4byte	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF468
	.byte	0x13
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2260
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22cf
	.uleb128 0x4
	.4byte	.LASF469
	.byte	0x13
	.byte	0x94
	.4byte	0x2260
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fe4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22db
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2255
	.uleb128 0x4
	.4byte	.LASF470
	.byte	0x13
	.byte	0xb4
	.4byte	0x20a4
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x2313
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x16e7
	.4byte	0x2323
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF471
	.byte	0x13
	.byte	0xc6
	.4byte	0x166a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x138f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x233a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22f8
	.uleb128 0x4
	.4byte	.LASF472
	.byte	0x13
	.byte	0xdd
	.4byte	0x1068
	.uleb128 0xa
	.byte	0x28
	.byte	0x13
	.byte	0xe0
	.4byte	0x23a8
	.uleb128 0xb
	.4byte	.LASF291
	.byte	0x13
	.byte	0xe2
	.4byte	0x23a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF276
	.byte	0x13
	.byte	0xe3
	.4byte	0x22e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF473
	.byte	0x13
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF474
	.byte	0x13
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF475
	.byte	0x13
	.byte	0xe6
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF476
	.byte	0x13
	.byte	0xe7
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xaba
	.uleb128 0x4
	.4byte	.LASF477
	.byte	0x13
	.byte	0xe8
	.4byte	0x234b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x929
	.uleb128 0x18
	.byte	0x28
	.byte	0x13
	.2byte	0x11e
	.4byte	0x2432
	.uleb128 0x15
	.4byte	.LASF478
	.byte	0x13
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF479
	.byte	0x13
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF480
	.byte	0x13
	.2byte	0x122
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF481
	.byte	0x13
	.2byte	0x123
	.4byte	0x1f54
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF482
	.byte	0x13
	.2byte	0x124
	.4byte	0x1f54
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x13
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF179
	.byte	0x13
	.2byte	0x126
	.4byte	0xa65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF483
	.byte	0x13
	.2byte	0x127
	.4byte	0x23bf
	.uleb128 0x22
	.2byte	0x53c
	.byte	0x13
	.2byte	0x142
	.4byte	0x2623
	.uleb128 0x15
	.4byte	.LASF484
	.byte	0x13
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF485
	.byte	0x13
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF486
	.byte	0x13
	.2byte	0x145
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF487
	.byte	0x13
	.2byte	0x146
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF488
	.byte	0x13
	.2byte	0x147
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF489
	.byte	0x13
	.2byte	0x148
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF490
	.byte	0x13
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF491
	.byte	0x13
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x13
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF466
	.byte	0x13
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF493
	.byte	0x13
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x13
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x13
	.2byte	0x14f
	.4byte	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x13
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF494
	.byte	0x13
	.2byte	0x151
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x13
	.2byte	0x153
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x13
	.2byte	0x153
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF479
	.byte	0x13
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF495
	.byte	0x13
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF496
	.byte	0x13
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF497
	.byte	0x13
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF498
	.byte	0x13
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x13
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF315
	.byte	0x13
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF499
	.byte	0x13
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF500
	.byte	0x13
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF501
	.byte	0x13
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF435
	.byte	0x13
	.2byte	0x15e
	.4byte	0x2623
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF502
	.byte	0x13
	.2byte	0x15f
	.4byte	0x2623
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x15
	.4byte	.LASF503
	.byte	0x13
	.2byte	0x160
	.4byte	0x1e7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x15
	.4byte	.LASF504
	.byte	0x13
	.2byte	0x161
	.4byte	0x2639
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2639
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x2432
	.4byte	0x2649
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF505
	.byte	0x13
	.2byte	0x162
	.4byte	0x243e
	.uleb128 0x23
	.byte	0x4
	.byte	0x13
	.2byte	0x172
	.4byte	0x2677
	.uleb128 0x21
	.4byte	.LASF506
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF507
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF508
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF509
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF510
	.byte	0x13
	.2byte	0x172
	.4byte	0x2655
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa5a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2340
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f76
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2203
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2323
	.uleb128 0xf
	.byte	0x4
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x23ae
	.4byte	0x26b7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x224f
	.uleb128 0xa
	.byte	0x10
	.byte	0x17
	.byte	0x16
	.4byte	0x26e2
	.uleb128 0xb
	.4byte	.LASF430
	.byte	0x17
	.byte	0x18
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF431
	.byte	0x17
	.byte	0x19
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF511
	.byte	0x17
	.byte	0x1a
	.4byte	0x26bd
	.uleb128 0x20
	.byte	0x4
	.byte	0x18
	.byte	0xa0
	.4byte	0x270e
	.uleb128 0x21
	.4byte	.LASF512
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF513
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF514
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF515
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF516
	.byte	0x18
	.byte	0xa0
	.4byte	0x26ed
	.uleb128 0x17
	.4byte	.LASF517
	.byte	0x14
	.byte	0x14
	.2byte	0x981
	.4byte	0x2745
	.uleb128 0x15
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x983
	.4byte	0xa4a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF184
	.byte	0x14
	.2byte	0x985
	.4byte	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2719
	.uleb128 0x5
	.4byte	.LASF519
	.byte	0x14
	.2byte	0x987
	.4byte	0x2719
	.uleb128 0x24
	.4byte	.LASF562
	.byte	0x4
	.byte	0x14
	.2byte	0x98d
	.4byte	0x2795
	.uleb128 0x1a
	.4byte	.LASF520
	.byte	0x14
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF521
	.byte	0x14
	.2byte	0x991
	.4byte	0x929
	.uleb128 0x1a
	.4byte	.LASF522
	.byte	0x14
	.2byte	0x993
	.4byte	0xcaa
	.uleb128 0x1a
	.4byte	.LASF523
	.byte	0x14
	.2byte	0x995
	.4byte	0xe9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF524
	.byte	0x14
	.2byte	0x997
	.4byte	0x2757
	.uleb128 0x14
	.4byte	.LASF525
	.2byte	0x890
	.byte	0x14
	.2byte	0x99d
	.4byte	0x2955
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x14
	.2byte	0x99f
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF526
	.byte	0x14
	.2byte	0x9a1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0x14
	.2byte	0x9a1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF267
	.byte	0x14
	.2byte	0x9a3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF527
	.byte	0x14
	.2byte	0x9a7
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF528
	.byte	0x14
	.2byte	0x9a9
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF529
	.byte	0x14
	.2byte	0x9ab
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x15
	.4byte	.LASF530
	.byte	0x14
	.2byte	0x9ad
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x15
	.4byte	.LASF531
	.byte	0x14
	.2byte	0x9af
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x15
	.4byte	.LASF214
	.byte	0x14
	.2byte	0x9b1
	.4byte	0x2689
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x25
	.string	"vis"
	.byte	0x14
	.2byte	0x9b3
	.4byte	0x2955
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF532
	.byte	0x14
	.2byte	0x9b5
	.4byte	0x2955
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x15
	.4byte	.LASF533
	.byte	0x14
	.2byte	0x9b7
	.4byte	0x2334
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x15
	.4byte	.LASF534
	.byte	0x14
	.2byte	0x9b9
	.4byte	0x26a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x15
	.4byte	.LASF535
	.byte	0x14
	.2byte	0x9bb
	.4byte	0x23b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x15
	.4byte	.LASF536
	.byte	0x14
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x15
	.4byte	.LASF537
	.byte	0x14
	.2byte	0x9bf
	.4byte	0x2966
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x15
	.4byte	.LASF538
	.byte	0x14
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x14
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x15
	.4byte	.LASF539
	.byte	0x14
	.2byte	0x9c5
	.4byte	0x1a84
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x15
	.4byte	.LASF540
	.byte	0x14
	.2byte	0x9c7
	.4byte	0x274b
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x15
	.4byte	.LASF541
	.byte	0x14
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x14
	.2byte	0x9cb
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x15
	.4byte	.LASF542
	.byte	0x14
	.2byte	0x9cd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x15
	.4byte	.LASF543
	.byte	0x14
	.2byte	0x9cf
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x15
	.4byte	.LASF544
	.byte	0x14
	.2byte	0x9d1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x15
	.4byte	.LASF545
	.byte	0x14
	.2byte	0x9d3
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x2966
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2795
	.uleb128 0x5
	.4byte	.LASF546
	.byte	0x14
	.2byte	0x9d5
	.4byte	0x27a1
	.uleb128 0x1e
	.4byte	.LASF547
	.4byte	0x1e864
	.byte	0x14
	.2byte	0x9db
	.4byte	0x2ab2
	.uleb128 0x15
	.4byte	.LASF303
	.byte	0x14
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF548
	.byte	0x14
	.2byte	0x9e1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF549
	.byte	0x14
	.2byte	0x9e1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF550
	.byte	0x14
	.2byte	0x9e1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF551
	.byte	0x14
	.2byte	0x9e1
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF552
	.byte	0x14
	.2byte	0x9e3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF309
	.byte	0x14
	.2byte	0x9e5
	.4byte	0x1a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF553
	.byte	0x14
	.2byte	0x9e7
	.4byte	0x2ab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF554
	.byte	0x14
	.2byte	0x9e9
	.4byte	0x2ab8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF555
	.byte	0x14
	.2byte	0x9eb
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF340
	.byte	0x14
	.2byte	0x9eb
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF556
	.byte	0x14
	.2byte	0x9ed
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF557
	.byte	0x14
	.2byte	0x9f3
	.4byte	0x2abe
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF558
	.byte	0x14
	.2byte	0x9f5
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x15
	.4byte	.LASF559
	.byte	0x14
	.2byte	0x9f7
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x15
	.4byte	.LASF352
	.byte	0x14
	.2byte	0x9f9
	.4byte	0x2abe
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x15
	.4byte	.LASF560
	.byte	0x14
	.2byte	0x9fb
	.4byte	0x2ad5
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x15
	.4byte	.LASF501
	.byte	0x14
	.2byte	0x9ff
	.4byte	0x2ae6
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x15
	.4byte	.LASF493
	.byte	0x14
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2649
	.uleb128 0xf
	.byte	0x4
	.4byte	0x296c
	.uleb128 0x8
	.4byte	0xcaa
	.4byte	0x2ad5
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x959
	.4byte	0x2ae6
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2af7
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF561
	.byte	0x14
	.2byte	0xa05
	.4byte	0x2978
	.uleb128 0x8
	.4byte	0x26e2
	.4byte	0x2b14
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2af7
	.uleb128 0x24
	.4byte	.LASF563
	.byte	0x4
	.byte	0x19
	.2byte	0x490
	.4byte	0x2b7a
	.uleb128 0x26
	.string	"U8"
	.byte	0x19
	.2byte	0x492
	.4byte	0x2b7a
	.uleb128 0x26
	.string	"S8"
	.byte	0x19
	.2byte	0x493
	.4byte	0x2b7f
	.uleb128 0x26
	.string	"U16"
	.byte	0x19
	.2byte	0x494
	.4byte	0x2b84
	.uleb128 0x26
	.string	"S16"
	.byte	0x19
	.2byte	0x495
	.4byte	0x2b89
	.uleb128 0x26
	.string	"U32"
	.byte	0x19
	.2byte	0x496
	.4byte	0x2b8e
	.uleb128 0x26
	.string	"S32"
	.byte	0x19
	.2byte	0x497
	.4byte	0x2b93
	.uleb128 0x26
	.string	"F32"
	.byte	0x19
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
	.4byte	.LASF564
	.byte	0x19
	.2byte	0x499
	.4byte	0x2b1a
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x3c4
	.byte	0x1
	.byte	0x1
	.4byte	0x2bbe
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x41
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF571
	.byte	0x1
	.2byte	0x2a3
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST0
	.4byte	0x2c69
	.uleb128 0x2a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x9be
	.4byte	.LLST1
	.uleb128 0x2b
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x2c69
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xc74
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x2a
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x41
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x2c79
	.uleb128 0x9
	.4byte	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x166
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST8
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST9
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF572
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST10
	.4byte	0x2cce
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.byte	0x90
	.4byte	0x5c7
	.4byte	.LLST11
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF573
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST12
	.4byte	0x2d3a
	.uleb128 0x31
	.4byte	.LASF574
	.byte	0x1
	.byte	0xa3
	.4byte	0x5c7
	.4byte	.LLST13
	.uleb128 0x32
	.string	"l"
	.byte	0x1
	.byte	0xa4
	.4byte	0x41
	.4byte	.LLST14
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.byte	0xa5
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0xa6
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.byte	0xa6
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x31
	.4byte	.LASF575
	.byte	0x1
	.byte	0xa7
	.4byte	0x41
	.4byte	.LLST18
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF576
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF595
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0x929
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST19
	.4byte	0x2daf
	.uleb128 0x35
	.4byte	.LASF342
	.byte	0x1
	.byte	0xe8
	.4byte	0x929
	.4byte	.LLST20
	.uleb128 0x35
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe8
	.4byte	0x929
	.4byte	.LLST21
	.uleb128 0x35
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe8
	.4byte	0x929
	.4byte	.LLST22
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0xea
	.4byte	0x929
	.4byte	.LLST23
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.byte	0xeb
	.4byte	0x929
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x173
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST24
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x195
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST25
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x1a8
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST26
	.4byte	0x2e08
	.uleb128 0x2b
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	count.15014
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x1c1
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST27
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x1d0
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST28
	.4byte	0x2e49
	.uleb128 0x2c
	.string	"pic"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x2e49
	.4byte	.LLST29
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdbf
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x1e6
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST30
	.4byte	0x2e7a
	.uleb128 0x2c
	.string	"pic"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x2e49
	.4byte	.LLST31
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x1fb
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST32
	.4byte	0x2f00
	.uleb128 0x2b
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x922
	.byte	0x5
	.byte	0x3
	.4byte	lastframetime.15029
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x922
	.4byte	.LLST33
	.uleb128 0x37
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x200
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	lastfps.15032
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.2byte	0x201
	.4byte	0x41
	.4byte	.LLST34
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.2byte	0x201
	.4byte	0x41
	.4byte	.LLST35
	.uleb128 0x38
	.string	"st"
	.byte	0x1
	.2byte	0x202
	.4byte	0x2c69
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x236
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST36
	.4byte	0x2f29
	.uleb128 0x38
	.string	"st"
	.byte	0x1
	.2byte	0x238
	.4byte	0x2f29
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x2f39
	.uleb128 0x9
	.4byte	0x48
	.byte	0xb
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x24a
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST37
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x27c
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST38
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x33b
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST39
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF591
	.byte	0x1
	.2byte	0x347
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST40
	.4byte	0x2fde
	.uleb128 0x2a
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x349
	.4byte	0x5c7
	.4byte	.LLST41
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.2byte	0x34a
	.4byte	0x41
	.4byte	.LLST42
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.2byte	0x34b
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.2byte	0x34c
	.4byte	0x41
	.4byte	.LLST44
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.2byte	0x34c
	.4byte	0x41
	.4byte	.LLST45
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x3a1
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST46
	.uleb128 0x39
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x101
	.byte	0x1
	.byte	0x1
	.4byte	0x3025
	.uleb128 0x3a
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x103
	.4byte	0x929
	.uleb128 0x28
	.string	"h"
	.byte	0x1
	.2byte	0x104
	.4byte	0x41
	.uleb128 0x3a
	.4byte	.LASF593
	.byte	0x1
	.2byte	0x105
	.4byte	0x959
	.byte	0
	.uleb128 0x3b
	.4byte	0x2ba4
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST47
	.4byte	0x3092
	.uleb128 0x3c
	.4byte	0x2bb3
	.uleb128 0x3d
	.4byte	0x2ba4
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x3c4
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x3e
	.4byte	0x2bb3
	.4byte	.LLST48
	.uleb128 0x3d
	.4byte	0x2ff4
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x3f1
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x3e
	.4byte	0x3002
	.4byte	.LLST49
	.uleb128 0x3e
	.4byte	0x300e
	.4byte	.LLST50
	.uleb128 0x3e
	.4byte	0x3018
	.4byte	.LLST51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF594
	.byte	0x1
	.2byte	0x394
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST52
	.4byte	0x30bb
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x396
	.4byte	0x41
	.4byte	.LLST53
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF596
	.byte	0x1
	.2byte	0x36f
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST54
	.4byte	0x30ea
	.uleb128 0x40
	.4byte	.LASF597
	.byte	0x1
	.2byte	0x36f
	.4byte	0x5c7
	.4byte	.LLST55
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x31c
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST56
	.uleb128 0x41
	.4byte	.LASF600
	.byte	0x8
	.byte	0xb1
	.4byte	0xc74
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"vid"
	.byte	0x1
	.byte	0x6d
	.4byte	0xc69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vid
	.uleb128 0x43
	.4byte	.LASF601
	.byte	0x1
	.byte	0x50
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_con_current
	.uleb128 0x43
	.4byte	.LASF602
	.byte	0x1
	.byte	0x51
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_conlines
	.uleb128 0x43
	.4byte	.LASF603
	.byte	0x1
	.byte	0x66
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_fullupdate
	.uleb128 0x41
	.4byte	.LASF604
	.byte	0x1
	.byte	0x6b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF605
	.byte	0x1
	.byte	0x69
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clearnotify
	.uleb128 0x43
	.4byte	.LASF606
	.byte	0x1
	.byte	0x71
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_disabled_for_loading
	.uleb128 0x43
	.4byte	.LASF607
	.byte	0x1
	.byte	0x54
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_viewsize
	.uleb128 0x43
	.4byte	.LASF608
	.byte	0x1
	.byte	0x4d
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_copytop
	.uleb128 0x43
	.4byte	.LASF609
	.byte	0x1
	.byte	0x4e
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_copyeverything
	.uleb128 0x43
	.4byte	.LASF610
	.byte	0x1
	.byte	0x75
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	block_drawing
	.uleb128 0x37
	.4byte	.LASF611
	.byte	0x14
	.2byte	0x23f
	.4byte	0x1992
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF612
	.byte	0x14
	.2byte	0x215
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"cls"
	.byte	0x15
	.byte	0x94
	.4byte	0x1bd4
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"cl"
	.byte	0x15
	.2byte	0x11b
	.4byte	0x1ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF613
	.byte	0x18
	.byte	0xa2
	.4byte	0x270e
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF614
	.byte	0x18
	.byte	0xa5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF615
	.byte	0x18
	.byte	0xa6
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF616
	.byte	0x1a
	.byte	0x1a
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF617
	.byte	0x1a
	.byte	0x1b
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF618
	.byte	0x1a
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"glx"
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glx
	.uleb128 0x42
	.string	"gly"
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gly
	.uleb128 0x43
	.4byte	.LASF619
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glwidth
	.uleb128 0x43
	.4byte	.LASF620
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glheight
	.uleb128 0x37
	.4byte	.LASF621
	.byte	0x14
	.2byte	0x223
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF622
	.byte	0x14
	.2byte	0x223
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF623
	.byte	0x14
	.2byte	0x2bb
	.4byte	0xe31
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF624
	.byte	0x14
	.2byte	0x2bf
	.4byte	0xe31
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF625
	.byte	0x14
	.2byte	0x2c1
	.4byte	0xe31
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF626
	.byte	0x1
	.byte	0x55
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_fov
	.uleb128 0x41
	.4byte	.LASF627
	.byte	0x1
	.byte	0x18
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x2ab8
	.4byte	0x330f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x37
	.4byte	.LASF628
	.byte	0x14
	.2byte	0xa7f
	.4byte	0x32ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF629
	.byte	0x14
	.2byte	0xacb
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF630
	.byte	0x14
	.2byte	0xad5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF631
	.byte	0x14
	.2byte	0xad5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF632
	.byte	0x14
	.2byte	0xad5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF633
	.byte	0x14
	.2byte	0xad7
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF634
	.byte	0x14
	.2byte	0xad7
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF635
	.byte	0x14
	.2byte	0xad7
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF636
	.byte	0x14
	.2byte	0xc2c
	.4byte	0x233a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x37
	.4byte	.LASF637
	.byte	0x19
	.2byte	0x548
	.4byte	0x33a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x33a5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b98
	.uleb128 0x37
	.4byte	.LASF638
	.byte	0xd
	.2byte	0x14c
	.4byte	0x922
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF639
	.byte	0xd
	.2byte	0x14d
	.4byte	0x9be
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF640
	.byte	0xd
	.2byte	0x150
	.4byte	0x922
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF641
	.byte	0x1
	.byte	0x53
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	oldscreensize
	.uleb128 0x43
	.4byte	.LASF642
	.byte	0x1
	.byte	0x53
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	oldfov
	.uleb128 0x43
	.4byte	.LASF643
	.byte	0x1
	.byte	0x56
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_conspeed
	.uleb128 0x43
	.4byte	.LASF644
	.byte	0x1
	.byte	0x57
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_centertime
	.uleb128 0x43
	.4byte	.LASF645
	.byte	0x1
	.byte	0x58
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_showram
	.uleb128 0x43
	.4byte	.LASF646
	.byte	0x1
	.byte	0x59
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_showturtle
	.uleb128 0x43
	.4byte	.LASF647
	.byte	0x1
	.byte	0x5a
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_showpause
	.uleb128 0x43
	.4byte	.LASF648
	.byte	0x1
	.byte	0x5b
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_printspeed
	.uleb128 0x43
	.4byte	.LASF649
	.byte	0x1
	.byte	0x5c
	.4byte	0xe31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_triplebuffer
	.uleb128 0x41
	.4byte	.LASF650
	.byte	0x1
	.byte	0x5e
	.4byte	0xe31
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF651
	.byte	0x1
	.byte	0x60
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_initialized
	.uleb128 0x43
	.4byte	.LASF652
	.byte	0x1
	.byte	0x62
	.4byte	0x2e49
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_ram
	.uleb128 0x43
	.4byte	.LASF653
	.byte	0x1
	.byte	0x63
	.4byte	0x2e49
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_net
	.uleb128 0x43
	.4byte	.LASF654
	.byte	0x1
	.byte	0x64
	.4byte	0x2e49
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_turtle
	.uleb128 0x43
	.4byte	.LASF655
	.byte	0x1
	.byte	0x68
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clearconsole
	.uleb128 0x43
	.4byte	.LASF656
	.byte	0x1
	.byte	0x6f
	.4byte	0xb5b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_vrect
	.uleb128 0x43
	.4byte	.LASF657
	.byte	0x1
	.byte	0x72
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_drawloading
	.uleb128 0x43
	.4byte	.LASF658
	.byte	0x1
	.byte	0x73
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_disabled_time
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x3525
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x43
	.4byte	.LASF659
	.byte	0x1
	.byte	0x81
	.4byte	0x3514
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_centerstring
	.uleb128 0x43
	.4byte	.LASF660
	.byte	0x1
	.byte	0x82
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_centertime_start
	.uleb128 0x43
	.4byte	.LASF661
	.byte	0x1
	.byte	0x83
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_centertime_off
	.uleb128 0x43
	.4byte	.LASF662
	.byte	0x1
	.byte	0x84
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_center_lines
	.uleb128 0x43
	.4byte	.LASF663
	.byte	0x1
	.byte	0x85
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_erase_lines
	.uleb128 0x43
	.4byte	.LASF664
	.byte	0x1
	.byte	0x86
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_erase_center
	.uleb128 0x37
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x344
	.4byte	0x5c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_notifystring
	.uleb128 0x46
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x345
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_drawdialog
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x42
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2710
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB44-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB38-.Ltext0
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
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	scr_centerstring
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	scr_centerstring
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1e
	.byte	0x3
	.4byte	vid+20
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB48-.Ltext0
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
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0xa
	.byte	0x3
	.4byte	vid+20
	.byte	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB52-.Ltext0
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
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB53-.Ltext0
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
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI50-.Ltext0
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
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	scr_notifystring
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL85-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0xf
	.byte	0x8e
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1e
	.byte	0x3
	.4byte	vid+20
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB61-.Ltext0
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
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	scr_viewsize+12
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x42c80000
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL111-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB59-.Ltext0
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
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI73-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
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
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF599:
	.string	"fps_count"
.LASF625:
	.string	"sh_debuginfo"
.LASF194:
	.string	"canSend"
.LASF175:
	.string	"pflags"
.LASF364:
	.string	"spawnparms"
.LASF377:
	.string	"message"
.LASF632:
	.string	"aliasPartialCacheHits"
.LASF665:
	.string	"scr_notifystring"
.LASF517:
	.string	"screenrect_s"
.LASF519:
	.string	"screenrect_t"
.LASF325:
	.string	"aliasvrectbottom"
.LASF460:
	.string	"vecs"
.LASF348:
	.string	"upmove"
.LASF434:
	.string	"texture_s"
.LASF457:
	.string	"texture_t"
.LASF121:
	.string	"_Bool"
.LASF229:
	.string	"entity_s"
.LASF319:
	.string	"entity_t"
.LASF59:
	.string	"_mbstate"
.LASF38:
	.string	"_atexit"
.LASF275:
	.string	"numplanes"
.LASF657:
	.string	"scr_drawloading"
.LASF646:
	.string	"scr_showturtle"
.LASF245:
	.string	"frame_start_time"
.LASF240:
	.string	"lightTimestamp"
.LASF499:
	.string	"binormals"
.LASF28:
	.string	"__tm_mon"
.LASF36:
	.string	"_fntypes"
.LASF425:
	.string	"lightnormalindex"
.LASF66:
	.string	"_inc"
.LASF39:
	.string	"_ind"
.LASF337:
	.string	"horizontalFieldOfView"
.LASF456:
	.string	"samples"
.LASF249:
	.string	"pose2"
.LASF310:
	.string	"lastshadowonly"
.LASF474:
	.string	"lastclipnode"
.LASF217:
	.string	"entnext"
.LASF188:
	.string	"sa_data"
.LASF244:
	.string	"topnode"
.LASF616:
	.string	"con_forcedup"
.LASF428:
	.string	"mvertex_t"
.LASF45:
	.string	"_flags"
.LASF184:
	.string	"next"
.LASF511:
	.string	"plane_t"
.LASF568:
	.string	"counter"
.LASF313:
	.string	"vertices"
.LASF258:
	.string	"angles1"
.LASF259:
	.string	"angles2"
.LASF322:
	.string	"vrectright"
.LASF410:
	.string	"maxclients"
.LASF76:
	.string	"_cvtlen"
.LASF80:
	.string	"_sig_func"
.LASF543:
	.string	"cubescale"
.LASF643:
	.string	"scr_conspeed"
.LASF143:
	.string	"height"
.LASF651:
	.string	"scr_initialized"
.LASF539:
	.string	"owner"
.LASF58:
	.string	"_lock"
.LASF54:
	.string	"_nbuf"
.LASF113:
	.string	"_unused"
.LASF584:
	.string	"SCR_DrawFPS"
.LASF497:
	.string	"commands"
.LASF251:
	.string	"brushlightinstant"
.LASF395:
	.string	"viewheight"
.LASF528:
	.string	"visible"
.LASF261:
	.string	"model_s"
.LASF462:
	.string	"texture"
.LASF69:
	.string	"_current_locale"
.LASF293:
	.string	"hulls"
.LASF223:
	.string	"compressed_vis"
.LASF363:
	.string	"mapstring"
.LASF640:
	.string	"realtime"
.LASF187:
	.string	"sa_family"
.LASF512:
	.string	"key_game"
.LASF538:
	.string	"numVisSurf"
.LASF286:
	.string	"numsurfaces"
.LASF91:
	.string	"_add"
.LASF653:
	.string	"scr_net"
.LASF573:
	.string	"SCR_DrawCenterString"
.LASF411:
	.string	"gametype"
.LASF370:
	.string	"forcetrack"
.LASF602:
	.string	"scr_conlines"
.LASF639:
	.string	"host_basepal"
.LASF164:
	.string	"vec_t"
.LASF272:
	.string	"nummodelsurfaces"
.LASF317:
	.string	"triplanes"
.LASF650:
	.string	"crosshair"
.LASF585:
	.string	"lastframetime"
.LASF604:
	.string	"sb_lines"
.LASF47:
	.string	"_lbfsize"
.LASF622:
	.string	"c_alias_polys"
.LASF408:
	.string	"levelname"
.LASF336:
	.string	"fvrectbottom"
.LASF246:
	.string	"frame_interval"
.LASF463:
	.string	"mtexinfo_t"
.LASF321:
	.string	"aliasvrect"
.LASF119:
	.string	"byte"
.LASF525:
	.string	"shadowlight_s"
.LASF546:
	.string	"shadowlight_t"
.LASF57:
	.string	"_data"
.LASF361:
	.string	"cactive_t"
.LASF465:
	.string	"chain"
.LASF227:
	.string	"index"
.LASF613:
	.string	"key_dest"
.LASF216:
	.string	"entity"
.LASF230:
	.string	"forcelink"
.LASF61:
	.string	"_reent"
.LASF166:
	.string	"angles"
.LASF488:
	.string	"boundingradius"
.LASF228:
	.string	"ambient_sound_level"
.LASF82:
	.string	"__sf"
.LASF265:
	.string	"synctype"
.LASF42:
	.string	"_base"
.LASF250:
	.string	"aliasframeinstant"
.LASF200:
	.string	"ackSequence"
.LASF394:
	.string	"laststop"
.LASF279:
	.string	"vertexes"
.LASF100:
	.string	"_mbtowc_state"
.LASF204:
	.string	"sendMessage"
.LASF349:
	.string	"usercmd_t"
.LASF254:
	.string	"translate_start_time"
.LASF551:
	.string	"lastvorg"
.LASF516:
	.string	"keydest_t"
.LASF330:
	.string	"fvrecty_adj"
.LASF23:
	.string	"__tm"
.LASF577:
	.string	"SCR_Init"
.LASF373:
	.string	"td_startframe"
.LASF161:
	.string	"viddef_t"
.LASF287:
	.string	"surfaces"
.LASF31:
	.string	"__tm_yday"
.LASF190:
	.string	"connecttime"
.LASF174:
	.string	"light_lev"
.LASF130:
	.string	"maxs"
.LASF150:
	.string	"rowbytes"
.LASF263:
	.string	"type"
.LASF505:
	.string	"aliashdr_t"
.LASF359:
	.string	"ca_disconnected"
.LASF283:
	.string	"nodes"
.LASF436:
	.string	"gl_lumitex"
.LASF196:
	.string	"driver"
.LASF329:
	.string	"fvrectx_adj"
.LASF92:
	.string	"_unused_rand"
.LASF569:
	.string	"SCR_SizeDown_f"
.LASF389:
	.string	"punchangle"
.LASF595:
	.string	"CalcFov"
.LASF606:
	.string	"scr_disabled_for_loading"
.LASF611:
	.string	"r_refdef"
.LASF444:
	.string	"msurface_s"
.LASF470:
	.string	"msurface_t"
.LASF238:
	.string	"syncbase"
.LASF140:
	.string	"pixel_t"
.LASF567:
	.string	"temp"
.LASF324:
	.string	"aliasvrectright"
.LASF345:
	.string	"refdef_t"
.LASF409:
	.string	"viewentity"
.LASF630:
	.string	"aliasCacheRequests"
.LASF333:
	.string	"fvrectright_adj"
.LASF544:
	.string	"haloalpha"
.LASF149:
	.string	"fullbright"
.LASF73:
	.string	"_result_k"
.LASF65:
	.string	"_stderr"
.LASF72:
	.string	"_result"
.LASF35:
	.string	"_dso_handle"
.LASF301:
	.string	"firstsurface"
.LASF647:
	.string	"scr_showpause"
.LASF530:
	.string	"castShadow"
.LASF30:
	.string	"__tm_wday"
.LASF587:
	.string	"SCR_DrawNumLights"
.LASF32:
	.string	"__tm_isdst"
.LASF300:
	.string	"plane"
.LASF304:
	.string	"updateframe"
.LASF247:
	.string	"blend"
.LASF357:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"_stdout"
.LASF334:
	.string	"fvrectbottom_adj"
.LASF442:
	.string	"alternate_anims"
.LASF107:
	.string	"_mbsrtowcs_state"
.LASF575:
	.string	"remaining"
.LASF308:
	.string	"lastblend"
.LASF21:
	.string	"_wds"
.LASF561:
	.string	"aliaslightinstant_t"
.LASF115:
	.string	"float"
.LASF169:
	.string	"skin"
.LASF609:
	.string	"scr_copyeverything"
.LASF559:
	.string	"tshalfangles"
.LASF135:
	.string	"numfaces"
.LASF43:
	.string	"_size"
.LASF448:
	.string	"light_s"
.LASF449:
	.string	"light_t"
.LASF510:
	.string	"modtype_t"
.LASF501:
	.string	"indecies"
.LASF383:
	.string	"faceanimtime"
.LASF248:
	.string	"pose1"
.LASF367:
	.string	"demorecording"
.LASF50:
	.string	"_write"
.LASF535:
	.string	"volumeVerts"
.LASF306:
	.string	"lastpose1"
.LASF307:
	.string	"lastpose2"
.LASF381:
	.string	"items"
.LASF123:
	.string	"allowoverflow"
.LASF612:
	.string	"r_cache_thrash"
.LASF126:
	.string	"maxsize"
.LASF366:
	.string	"demos"
.LASF532:
	.string	"entvis"
.LASF476:
	.string	"clip_maxs"
.LASF454:
	.string	"cached_light"
.LASF369:
	.string	"timedemo"
.LASF635:
	.string	"brushPartialCacheHits"
.LASF464:
	.string	"glpoly_s"
.LASF469:
	.string	"glpoly_t"
.LASF29:
	.string	"__tm_year"
.LASF133:
	.string	"visleafs"
.LASF638:
	.string	"host_frametime"
.LASF90:
	.string	"_mult"
.LASF422:
	.string	"ST_SYNC"
.LASF404:
	.string	"oldtime"
.LASF590:
	.string	"SCR_EndLoadingPlaque"
.LASF268:
	.string	"clipbox"
.LASF105:
	.string	"_mbrlen_state"
.LASF518:
	.string	"coords"
.LASF219:
	.string	"contents"
.LASF413:
	.string	"free_efrags"
.LASF375:
	.string	"signon"
.LASF63:
	.string	"_stdin"
.LASF112:
	.string	"_nmalloc"
.LASF631:
	.string	"aliasFullCacheHits"
.LASF656:
	.string	"scr_vrect"
.LASF453:
	.string	"styles"
.LASF237:
	.string	"efrag"
.LASF503:
	.string	"texels"
.LASF311:
	.string	"lastpaliashdr"
.LASF494:
	.string	"size"
.LASF118:
	.string	"FILE"
.LASF617:
	.string	"con_initialized"
.LASF342:
	.string	"fov_x"
.LASF343:
	.string	"fov_y"
.LASF167:
	.string	"modelindex"
.LASF255:
	.string	"origin1"
.LASF502:
	.string	"gl_lumatex"
.LASF302:
	.string	"aliasframeinstant_s"
.LASF440:
	.string	"anim_max"
.LASF95:
	.string	"_localtime_buf"
.LASF12:
	.string	"__count"
.LASF607:
	.string	"scr_viewsize"
.LASF513:
	.string	"key_console"
.LASF628:
	.string	"usedshadowlights"
.LASF600:
	.string	"com_gamedir"
.LASF412:
	.string	"worldmodel"
.LASF549:
	.string	"lastlorg"
.LASF151:
	.string	"aspect"
.LASF540:
	.string	"scizz"
.LASF77:
	.string	"_cvtbuf"
.LASF601:
	.string	"scr_con_current"
.LASF483:
	.string	"maliasframedesc_t"
.LASF281:
	.string	"edges"
.LASF305:
	.string	"paliashdr"
.LASF644:
	.string	"scr_centertime"
.LASF209:
	.string	"addr"
.LASF231:
	.string	"update_type"
.LASF487:
	.string	"scale_origin"
.LASF241:
	.string	"dlightframe"
.LASF11:
	.string	"__wchb"
.LASF106:
	.string	"_mbrtowc_state"
.LASF26:
	.string	"__tm_hour"
.LASF326:
	.string	"vrectrightedge"
.LASF624:
	.string	"sh_fps"
.LASF443:
	.string	"offsets"
.LASF134:
	.string	"firstface"
.LASF256:
	.string	"origin2"
.LASF9:
	.string	"wint_t"
.LASF398:
	.string	"onground"
.LASF78:
	.string	"_new"
.LASF86:
	.string	"_niobs"
.LASF597:
	.string	"text"
.LASF566:
	.string	"checkname"
.LASF560:
	.string	"triangleVis"
.LASF309:
	.string	"lastent"
.LASF62:
	.string	"_errno"
.LASF392:
	.string	"nodrift"
.LASF27:
	.string	"__tm_mday"
.LASF386:
	.string	"mviewangles"
.LASF191:
	.string	"lastMessageTime"
.LASF34:
	.string	"_fnargs"
.LASF153:
	.string	"recalc_refdef"
.LASF515:
	.string	"key_menu"
.LASF666:
	.string	"scr_drawdialog"
.LASF401:
	.string	"completed_time"
.LASF292:
	.string	"marksurfaces"
.LASF424:
	.string	"synctype_t"
.LASF124:
	.string	"overflowed"
.LASF262:
	.string	"needload"
.LASF529:
	.string	"isStatic"
.LASF504:
	.string	"frames"
.LASF452:
	.string	"lightmaptexturenum"
.LASF533:
	.string	"visSurf"
.LASF183:
	.string	"value"
.LASF437:
	.string	"texturechain"
.LASF243:
	.string	"trivial_accept"
.LASF18:
	.string	"_next"
.LASF103:
	.string	"_signal_buf"
.LASF210:
	.string	"address"
.LASF48:
	.string	"_cookie"
.LASF619:
	.string	"glwidth"
.LASF451:
	.string	"shadowchain"
.LASF658:
	.string	"scr_disabled_time"
.LASF473:
	.string	"firstclipnode"
.LASF201:
	.string	"sendSequence"
.LASF446:
	.string	"texturemins"
.LASF239:
	.string	"skinnum"
.LASF24:
	.string	"__tm_sec"
.LASF335:
	.string	"fvrectright"
.LASF33:
	.string	"_on_exit_args"
.LASF588:
	.string	"SCR_SetUpToDrawConsole"
.LASF368:
	.string	"demoplayback"
.LASF439:
	.string	"anim_min"
.LASF108:
	.string	"_wcrtomb_state"
.LASF277:
	.string	"leafs"
.LASF406:
	.string	"model_precache"
.LASF415:
	.string	"num_statics"
.LASF132:
	.string	"headnode"
.LASF269:
	.string	"clipmins"
.LASF397:
	.string	"paused"
.LASF498:
	.string	"triangles"
.LASF390:
	.string	"idealpitch"
.LASF120:
	.string	"qboolean"
.LASF344:
	.string	"ambientlight"
.LASF179:
	.string	"name"
.LASF482:
	.string	"bboxmax"
.LASF583:
	.string	"SCR_DrawLoading"
.LASF16:
	.string	"__ULong"
.LASF514:
	.string	"key_message"
.LASF637:
	.string	"wgPipe"
.LASF218:
	.string	"mleaf_s"
.LASF472:
	.string	"mleaf_t"
.LASF199:
	.string	"driverdata"
.LASF623:
	.string	"sh_showlightnum"
.LASF235:
	.string	"msg_angles"
.LASF534:
	.string	"volumeCmds"
.LASF93:
	.string	"_strtok_last"
.LASF379:
	.string	"movemessages"
.LASF396:
	.string	"crouch"
.LASF419:
	.string	"scores"
.LASF290:
	.string	"numclipnodes"
.LASF591:
	.string	"SCR_DrawNotifyString"
.LASF89:
	.string	"_seed"
.LASF338:
	.string	"xOrigin"
.LASF51:
	.string	"_seek"
.LASF553:
	.string	"lasthdr"
.LASF586:
	.string	"lastfps"
.LASF141:
	.string	"vrect_s"
.LASF145:
	.string	"vrect_t"
.LASF649:
	.string	"gl_triplebuffer"
.LASF3:
	.string	"short unsigned int"
.LASF407:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF347:
	.string	"sidemove"
.LASF273:
	.string	"numsubmodels"
.LASF558:
	.string	"tslights"
.LASF574:
	.string	"start"
.LASF429:
	.string	"mplane_s"
.LASF433:
	.string	"mplane_t"
.LASF661:
	.string	"scr_centertime_off"
.LASF580:
	.string	"count"
.LASF431:
	.string	"dist"
.LASF627:
	.string	"numUsedShadowLights"
.LASF316:
	.string	"binomials"
.LASF655:
	.string	"clearconsole"
.LASF75:
	.string	"_freelist"
.LASF154:
	.string	"conbuffer"
.LASF288:
	.string	"numsurfedges"
.LASF165:
	.string	"vec3_t"
.LASF500:
	.string	"texcoords"
.LASF356:
	.string	"percent"
.LASF294:
	.string	"numtextures"
.LASF215:
	.string	"leafnext"
.LASF225:
	.string	"firstmarksurface"
.LASF56:
	.string	"_offset"
.LASF137:
	.string	"planenum"
.LASF186:
	.string	"qsockaddr"
.LASF362:
	.string	"state"
.LASF455:
	.string	"cached_dlight"
.LASF380:
	.string	"stats"
.LASF41:
	.string	"__sbuf"
.LASF506:
	.string	"mod_brush"
.LASF564:
	.string	"WGPipe"
.LASF102:
	.string	"_l64a_buf"
.LASF484:
	.string	"ident"
.LASF489:
	.string	"eyeposition"
.LASF445:
	.string	"firstedge"
.LASF298:
	.string	"entities"
.LASF570:
	.string	"SCR_SizeUp_f"
.LASF372:
	.string	"td_lastframe"
.LASF579:
	.string	"SCR_DrawTurtle"
.LASF605:
	.string	"clearnotify"
.LASF160:
	.string	"direct"
.LASF393:
	.string	"driftmove"
.LASF524:
	.string	"lightcmd_t"
.LASF562:
	.string	"lightcmd_u"
.LASF94:
	.string	"_asctime_buf"
.LASF233:
	.string	"msgtime"
.LASF531:
	.string	"halo"
.LASF550:
	.string	"lasteangles"
.LASF10:
	.string	"__wch"
.LASF668:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_screen.c"
.LASF109:
	.string	"_wcsrtombs_state"
.LASF520:
	.string	"asInt"
.LASF670:
	.string	"SCR_UpdateScreen"
.LASF122:
	.string	"sizebuf_s"
.LASF128:
	.string	"sizebuf_t"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF403:
	.string	"time"
.LASF660:
	.string	"scr_centertime_start"
.LASF614:
	.string	"key_count"
.LASF127:
	.string	"cursize"
.LASF282:
	.string	"numnodes"
.LASF117:
	.string	"long int"
.LASF101:
	.string	"_wctomb_state"
.LASF341:
	.string	"viewangles"
.LASF295:
	.string	"textures"
.LASF582:
	.string	"SCR_DrawPause"
.LASF571:
	.string	"SCR_ScreenShot_f"
.LASF664:
	.string	"scr_erase_center"
.LASF176:
	.string	"entity_state_t"
.LASF671:
	.string	"SCR_CalcRefdef"
.LASF405:
	.string	"last_received_message"
.LASF87:
	.string	"_iobs"
.LASF67:
	.string	"_emergency"
.LASF481:
	.string	"bboxmin"
.LASF615:
	.string	"key_lastpress"
.LASF346:
	.string	"forwardmove"
.LASF111:
	.string	"_nextf"
.LASF97:
	.string	"_rand_next"
.LASF576:
	.string	"SCR_CheckDrawCenterString"
.LASF555:
	.string	"lightpos"
.LASF226:
	.string	"nummarksurfaces"
.LASF387:
	.string	"mvelocity"
.LASF19:
	.string	"_maxwds"
.LASF480:
	.string	"interval"
.LASF541:
	.string	"filtercube"
.LASF221:
	.string	"minmaxs"
.LASF116:
	.string	"long double"
.LASF332:
	.string	"vrectright_adj_shift20"
.LASF388:
	.string	"velocity"
.LASF414:
	.string	"num_entities"
.LASF264:
	.string	"numframes"
.LASF427:
	.string	"position"
.LASF320:
	.string	"vrect"
.LASF195:
	.string	"sendNext"
.LASF642:
	.string	"oldfov"
.LASF17:
	.string	"long unsigned int"
.LASF417:
	.string	"cdtrack"
.LASF545:
	.string	"oldlightorigin"
.LASF315:
	.string	"tangents"
.LASF178:
	.string	"cvar_s"
.LASF185:
	.string	"cvar_t"
.LASF371:
	.string	"demofile"
.LASF563:
	.string	"_wgpipe"
.LASF458:
	.string	"cachededgeoffset"
.LASF52:
	.string	"_close"
.LASF83:
	.string	"char"
.LASF85:
	.string	"_glue"
.LASF278:
	.string	"numvertexes"
.LASF252:
	.string	"numleafs"
.LASF507:
	.string	"mod_sprite"
.LASF629:
	.string	"numClearsSaved"
.LASF331:
	.string	"vrect_x_adj_shift20"
.LASF526:
	.string	"baseColor"
.LASF479:
	.string	"numposes"
.LASF447:
	.string	"extents"
.LASF610:
	.string	"block_drawing"
.LASF208:
	.string	"receiveMessage"
.LASF312:
	.string	"shadowonly"
.LASF171:
	.string	"color"
.LASF468:
	.string	"firstvertex"
.LASF242:
	.string	"dlightbits"
.LASF22:
	.string	"_Bigint"
.LASF522:
	.string	"asVec"
.LASF211:
	.string	"sfx_s"
.LASF663:
	.string	"scr_erase_lines"
.LASF493:
	.string	"numtris"
.LASF314:
	.string	"normals"
.LASF491:
	.string	"skinwidth"
.LASF79:
	.string	"_atexit0"
.LASF162:
	.string	"cache_user_s"
.LASF163:
	.string	"cache_user_t"
.LASF572:
	.string	"SCR_CenterPrint"
.LASF358:
	.string	"ca_dedicated"
.LASF303:
	.string	"lockframe"
.LASF146:
	.string	"buffer"
.LASF181:
	.string	"archive"
.LASF104:
	.string	"_getdate_err"
.LASF399:
	.string	"inwater"
.LASF296:
	.string	"visdata"
.LASF603:
	.string	"scr_fullupdate"
.LASF214:
	.string	"leaf"
.LASF578:
	.string	"SCR_DrawRam"
.LASF495:
	.string	"poseverts"
.LASF158:
	.string	"maxwarpwidth"
.LASF596:
	.string	"SCR_ModalMessage"
.LASF438:
	.string	"anim_total"
.LASF593:
	.string	"full"
.LASF202:
	.string	"unreliableSendSequence"
.LASF621:
	.string	"c_brush_polys"
.LASF418:
	.string	"looptrack"
.LASF527:
	.string	"brightness"
.LASF492:
	.string	"skinheight"
.LASF420:
	.string	"server_proto_version"
.LASF353:
	.string	"translations"
.LASF55:
	.string	"_blksize"
.LASF339:
	.string	"yOrigin"
.LASF400:
	.string	"intermission"
.LASF177:
	.string	"qpic_t"
.LASF53:
	.string	"_ubuf"
.LASF99:
	.string	"_mblen_state"
.LASF81:
	.string	"__sglue"
.LASF224:
	.string	"efrags"
.LASF71:
	.string	"__cleanup"
.LASF213:
	.string	"efrag_s"
.LASF260:
	.string	"efrag_t"
.LASF144:
	.string	"pnext"
.LASF7:
	.string	"_fpos_t"
.LASF46:
	.string	"_file"
.LASF138:
	.string	"children"
.LASF173:
	.string	"style"
.LASF44:
	.string	"__sFILE"
.LASF114:
	.string	"double"
.LASF40:
	.string	"_fns"
.LASF542:
	.string	"rspeed"
.LASF284:
	.string	"numtexinfo"
.LASF14:
	.string	"_mbstate_t"
.LASF110:
	.string	"_h_errno"
.LASF365:
	.string	"demonum"
.LASF152:
	.string	"numpages"
.LASF355:
	.string	"destcolor"
.LASF537:
	.string	"lightCmds"
.LASF280:
	.string	"numedges"
.LASF318:
	.string	"lightinstant"
.LASF391:
	.string	"pitchvel"
.LASF435:
	.string	"gl_texturenum"
.LASF193:
	.string	"disconnected"
.LASF486:
	.string	"scale"
.LASF459:
	.string	"medge_t"
.LASF374:
	.string	"td_starttime"
.LASF297:
	.string	"lightdata"
.LASF323:
	.string	"vrectbottom"
.LASF159:
	.string	"maxwarpheight"
.LASF147:
	.string	"colormap"
.LASF125:
	.string	"data"
.LASF521:
	.string	"asFloat"
.LASF148:
	.string	"colormap16"
.LASF13:
	.string	"__value"
.LASF662:
	.string	"scr_center_lines"
.LASF416:
	.string	"viewent"
.LASF37:
	.string	"_is_cxa"
.LASF220:
	.string	"visframe"
.LASF441:
	.string	"anim_next"
.LASF156:
	.string	"conwidth"
.LASF352:
	.string	"colors"
.LASF467:
	.string	"neighbours"
.LASF74:
	.string	"_p5s"
.LASF327:
	.string	"fvrectx"
.LASF328:
	.string	"fvrecty"
.LASF276:
	.string	"planes"
.LASF142:
	.string	"width"
.LASF129:
	.string	"mins"
.LASF430:
	.string	"normal"
.LASF198:
	.string	"socket"
.LASF234:
	.string	"msg_origins"
.LASF206:
	.string	"unreliableReceiveSequence"
.LASF634:
	.string	"brushFullCacheHits"
.LASF340:
	.string	"vieworg"
.LASF382:
	.string	"item_gettime"
.LASF669:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF478:
	.string	"firstpose"
.LASF592:
	.string	"SCR_TileClear"
.LASF139:
	.string	"dclipnode_t"
.LASF432:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF222:
	.string	"parent"
.LASF641:
	.string	"oldscreensize"
.LASF96:
	.string	"_gamma_signgam"
.LASF557:
	.string	"extvertices"
.LASF68:
	.string	"_current_category"
.LASF197:
	.string	"landriver"
.LASF384:
	.string	"cshifts"
.LASF461:
	.string	"mipadjust"
.LASF618:
	.string	"con_notifylines"
.LASF581:
	.string	"SCR_DrawNet"
.LASF645:
	.string	"scr_showram"
.LASF360:
	.string	"ca_connected"
.LASF270:
	.string	"clipmaxs"
.LASF70:
	.string	"__sdidinit"
.LASF490:
	.string	"numskins"
.LASF170:
	.string	"effects"
.LASF536:
	.string	"numVolumeVerts"
.LASF350:
	.string	"entertime"
.LASF477:
	.string	"hull_t"
.LASF648:
	.string	"scr_printspeed"
.LASF523:
	.string	"asVoid"
.LASF15:
	.string	"_flock_t"
.LASF351:
	.string	"frags"
.LASF236:
	.string	"model"
.LASF172:
	.string	"alpha"
.LASF466:
	.string	"numverts"
.LASF475:
	.string	"clip_mins"
.LASF155:
	.string	"conrowbytes"
.LASF5:
	.string	"long long int"
.LASF60:
	.string	"_flags2"
.LASF376:
	.string	"netcon"
.LASF426:
	.string	"trivertx_t"
.LASF652:
	.string	"scr_ram"
.LASF594:
	.string	"SCR_BringDownConsole"
.LASF180:
	.string	"string"
.LASF552:
	.string	"lastlradius"
.LASF402:
	.string	"mtime"
.LASF556:
	.string	"lastframeinstant"
.LASF508:
	.string	"mod_alias"
.LASF205:
	.string	"receiveSequence"
.LASF232:
	.string	"baseline"
.LASF620:
	.string	"glheight"
.LASF378:
	.string	"client_static_t"
.LASF509:
	.string	"mod_alias3"
.LASF285:
	.string	"texinfo"
.LASF291:
	.string	"clipnodes"
.LASF659:
	.string	"scr_centerstring"
.LASF157:
	.string	"conheight"
.LASF253:
	.string	"leafnums"
.LASF565:
	.string	"pcxname"
.LASF450:
	.string	"polys"
.LASF608:
	.string	"scr_copytop"
.LASF136:
	.string	"dmodel_t"
.LASF271:
	.string	"firstmodelsurface"
.LASF207:
	.string	"receiveMessageLength"
.LASF421:
	.string	"client_state_t"
.LASF274:
	.string	"submodels"
.LASF84:
	.string	"__FILE"
.LASF598:
	.string	"SCR_BeginLoadingPlaque"
.LASF131:
	.string	"origin"
.LASF203:
	.string	"sendMessageLength"
.LASF20:
	.string	"_sign"
.LASF25:
	.string	"__tm_min"
.LASF554:
	.string	"lastlight"
.LASF212:
	.string	"cache"
.LASF667:
	.string	"GNU C 4.6.3"
.LASF485:
	.string	"version"
.LASF289:
	.string	"surfedges"
.LASF189:
	.string	"qsocket_s"
.LASF423:
	.string	"ST_RAND"
.LASF636:
	.string	"causticschain"
.LASF4:
	.string	"unsigned int"
.LASF299:
	.string	"mnode_s"
.LASF471:
	.string	"mnode_t"
.LASF98:
	.string	"_r48"
.LASF192:
	.string	"lastSendTime"
.LASF654:
	.string	"scr_turtle"
.LASF385:
	.string	"prev_cshifts"
.LASF2:
	.string	"short int"
.LASF626:
	.string	"scr_fov"
.LASF49:
	.string	"_read"
.LASF182:
	.string	"server"
.LASF168:
	.string	"frame"
.LASF88:
	.string	"_rand48"
.LASF548:
	.string	"lasteorg"
.LASF496:
	.string	"posedata"
.LASF354:
	.string	"scoreboard_t"
.LASF266:
	.string	"flags"
.LASF257:
	.string	"rotate_start_time"
.LASF633:
	.string	"brushCacheRequests"
.LASF267:
	.string	"radius"
.LASF547:
	.string	"aliaslightinstant_s"
.LASF589:
	.string	"SCR_DrawConsole"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
