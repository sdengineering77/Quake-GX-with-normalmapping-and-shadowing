	.file	"sys_ogc.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl direntp_compare
	.type	direntp_compare, @function
direntp_compare:
.LFB73:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/sys_ogc.c"
	.loc 1 66 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 68 0
	li 5,768
	.loc 1 66 0
	stw 0,12(1)
	.loc 1 68 0
	lwz 3,0(3)
.LVL1:
	lwz 4,0(4)
.LVL2:
	addi 3,3,5
	addi 4,4,5
	.cfi_offset 65, 4
	bl strncmp
	.loc 1 69 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE73:
	.size	direntp_compare, .-direntp_compare
	.align 2
	.globl uxdata_free
	.type	uxdata_free, @function
uxdata_free:
.LFB72:
	.loc 1 61 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 63 0
	lwz 3,16(3)
.LVL4:
	.cfi_offset 65, 4
	bl Z_Free
	.loc 1 64 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE72:
	.size	uxdata_free, .-uxdata_free
	.align 2
	.globl Sys_Findnext
	.type	Sys_Findnext, @function
Sys_Findnext:
.LFB75:
	.loc 1 163 0
	.cfi_startproc
.LVL5:
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	.loc 1 166 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 163 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 166 0
	beq- 0,.L4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 167 0
	lwz 30,128(31)
.LVL6:
	.loc 1 168 0
	cmpwi 7,30,0
	beq- 7,.L8
	.loc 1 169 0
	lwz 11,4(30)
	.loc 1 171 0
	lwz 9,8(30)
	.loc 1 169 0
	addi 0,11,1
	.loc 1 171 0
	cmplw 7,0,9
	.loc 1 169 0
	stw 0,4(30)
	.loc 1 171 0
	bge- 7,.L13
	.loc 1 172 0
	lwz 9,16(30)
	slwi 0,0,2
	lwz 5,0(30)
	lwzx 4,9,0
	add 3,31,5
.LVL7:
	subfic 5,5,128
	addi 4,4,5
	bl strncpy
.LVL8:
.L4:
	.loc 1 185 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL9:
.L13:
.LCFI6:
	.cfi_restore_state
	.loc 1 177 0 discriminator 1
	cmpwi 7,9,0
	li 0,0
	li 29,0
	beq- 7,.L7
.LVL10:
.L10:
	.loc 1 178 0 discriminator 2
	lwz 9,16(30)
	slwi 0,0,2
	.loc 1 177 0 discriminator 2
	addi 29,29,1
	.loc 1 178 0 discriminator 2
	lwzx 3,9,0
	bl Z_Free
.LVL11:
	.loc 1 177 0 discriminator 2
	lwz 9,8(30)
	mr 0,29
	cmplw 7,29,9
	blt+ 7,.L10
	.loc 1 177 0 is_stmt 0
	lwz 30,128(31)
.LVL12:
.L7:
.LBB15:
.LBB16:
	.loc 1 63 0 is_stmt 1
	lwz 3,16(30)
	bl Z_Free
.LBE16:
.LBE15:
	.loc 1 181 0
	li 0,0
	stw 0,128(31)
	.loc 1 184 0
	li 31,0
.LVL13:
	.loc 1 185 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL14:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
.LVL15:
.L8:
.LCFI8:
	.cfi_restore_state
	.loc 1 184 0
	li 31,0
	b .L4
	.cfi_endproc
.LFE75:
	.size	Sys_Findnext, .-Sys_Findnext
	.align 2
	.globl Sys_Findclose
	.type	Sys_Findclose, @function
Sys_Findclose:
.LFB76:
	.loc 1 188 0
	.cfi_startproc
.LVL16:
	stwu 1,-16(1)
.LCFI9:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 190 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 188 0
	stw 0,20(1)
	.loc 1 190 0
	beq- 0,.L14
	.cfi_offset 65, 4
	.loc 1 191 0
	lwz 9,128(31)
.LVL17:
	.loc 1 192 0
	cmpwi 7,9,0
	beq- 7,.L14
.LVL18:
.LBB17:
.LBB18:
	.loc 1 63 0
	lwz 3,16(9)
.LVL19:
	bl Z_Free
.LVL20:
.LBE18:
.LBE17:
	.loc 1 194 0
	li 0,0
	stw 0,128(31)
.L14:
	.loc 1 197 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL21:
	mtlr 0
	addi 1,1,16
.LCFI10:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE76:
	.size	Sys_Findclose, .-Sys_Findclose
	.align 2
	.globl filelength
	.type	filelength, @function
filelength:
.LFB78:
	.loc 1 228 0
	.cfi_startproc
.LVL22:
	mflr 0
	stwu 1,-24(1)
.LCFI11:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 228 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 232 0
	bl ftell
.LVL23:
	.loc 1 233 0
	li 5,0
	.loc 1 232 0
	mr 30,3
.LVL24:
	.loc 1 233 0
	li 6,0
	li 7,2
	mr 3,31
.LVL25:
	bl fseek
	.loc 1 234 0
	mr 3,31
	bl ftell
	.loc 1 235 0
	srawi 5,30,31
	.loc 1 234 0
	mr 29,3
.LVL26:
	.loc 1 235 0
	mr 6,30
	mr 3,31
.LVL27:
	li 7,0
	bl fseek
	.loc 1 239 0
	lwz 0,28(1)
	mr 3,29
	lwz 30,16(1)
.LVL28:
	mtlr 0
	lwz 29,12(1)
.LVL29:
	lwz 31,20(1)
.LVL30:
	addi 1,1,24
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE78:
	.size	filelength, .-filelength
	.align 2
	.globl filelengthByPath
	.type	filelengthByPath, @function
filelengthByPath:
.LFB79:
	.loc 1 241 0
	.cfi_startproc
.LVL31:
	stwu 1,-88(1)
.LCFI13:
	.cfi_def_cfa_offset 88
	mflr 0
	.loc 1 243 0
	addi 4,1,8
	.loc 1 241 0
	stw 0,92(1)
	.loc 1 243 0
	.cfi_offset 65, 4
	bl stat
.LVL32:
	cmpwi 7,3,0
	.loc 1 244 0
	li 3,-1
	.loc 1 243 0
	bne- 7,.L18
	.loc 1 246 0
	lwz 3,36(1)
.L18:
	.loc 1 247 0
	lwz 0,92(1)
	addi 1,1,88
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE79:
	.size	filelengthByPath, .-filelengthByPath
	.align 2
	.globl Sys_FileClose
	.type	Sys_FileClose, @function
Sys_FileClose:
.LFB82:
	.loc 1 284 0
	.cfi_startproc
.LVL33:
	stwu 1,-16(1)
.LCFI15:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 285 0
	lis 30,sys_handles@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 284 0
	stw 31,12(1)
	.loc 1 285 0
	la 30,sys_handles@l(30)
	slwi 31,3,2
	.cfi_offset 31, -4
	.loc 1 284 0
	stw 0,20(1)
	.loc 1 285 0
	lwzx 3,30,31
.LVL34:
	.cfi_offset 65, 4
	bl fclose
	.loc 1 286 0
	li 0,0
	stwx 0,30,31
	.loc 1 287 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE82:
	.size	Sys_FileClose, .-Sys_FileClose
	.align 2
	.globl Sys_FileSeek
	.type	Sys_FileSeek, @function
Sys_FileSeek:
.LFB83:
	.loc 1 290 0
	.cfi_startproc
.LVL35:
	mflr 0
	stwu 1,-8(1)
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 291 0
	lis 9,sys_handles@ha
	slwi 3,3,2
.LVL36:
	la 9,sys_handles@l(9)
	.loc 1 290 0
	mr 6,4
	stw 0,12(1)
	.loc 1 291 0
	srawi 5,4,31
	li 7,0
	lwzx 3,9,3
	.cfi_offset 65, 4
	bl fseek
.LVL37:
	.loc 1 292 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI18:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE83:
	.size	Sys_FileSeek, .-Sys_FileSeek
	.align 2
	.globl Sys_FileRead
	.type	Sys_FileRead, @function
Sys_FileRead:
.LFB84:
	.loc 1 295 0
	.cfi_startproc
.LVL38:
	mflr 0
	stwu 1,-8(1)
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 296 0
	lis 9,sys_handles@ha
	slwi 3,3,2
.LVL39:
	la 9,sys_handles@l(9)
	.loc 1 295 0
	stw 0,12(1)
	.loc 1 296 0
	lwzx 6,9,3
	mr 3,4
	li 4,1
.LVL40:
	.cfi_offset 65, 4
	bl fread
.LVL41:
	.loc 1 299 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE84:
	.size	Sys_FileRead, .-Sys_FileRead
	.align 2
	.globl Sys_FileWrite
	.type	Sys_FileWrite, @function
Sys_FileWrite:
.LFB85:
	.loc 1 302 0
	.cfi_startproc
.LVL42:
	mflr 0
	stwu 1,-8(1)
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 303 0
	lis 9,sys_handles@ha
	slwi 3,3,2
.LVL43:
	la 9,sys_handles@l(9)
	.loc 1 302 0
	stw 0,12(1)
	.loc 1 303 0
	lwzx 6,9,3
	mr 3,4
	li 4,1
.LVL44:
	.cfi_offset 65, 4
	bl fwrite
.LVL45:
	.loc 1 304 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI22:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE85:
	.size	Sys_FileWrite, .-Sys_FileWrite
	.align 2
	.globl Sys_FileTime
	.type	Sys_FileTime, @function
Sys_FileTime:
.LFB86:
	.loc 1 307 0
	.cfi_startproc
.LVL46:
	mflr 0
	stwu 1,-8(1)
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 310 0
	lis 4,.LC0@ha
	la 4,.LC0@l(4)
	.loc 1 307 0
	stw 0,12(1)
	.loc 1 310 0
	.cfi_offset 65, 4
	bl fopen
.LVL47:
	.loc 1 311 0
	cmpwi 7,3,0
	.loc 1 317 0
	li 0,-1
	.loc 1 311 0
	beq- 7,.L25
	.loc 1 313 0
	bl fclose
.LVL48:
	.loc 1 314 0
	li 0,1
.L25:
	.loc 1 318 0
	mr 3,0
	lwz 0,12(1)
	addi 1,1,8
.LCFI24:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE86:
	.size	Sys_FileTime, .-Sys_FileTime
	.align 2
	.globl Sys_mkdir
	.type	Sys_mkdir, @function
Sys_mkdir:
.LFB87:
	.loc 1 320 0
	.cfi_startproc
.LVL49:
	.loc 1 321 0
	blr
	.cfi_endproc
.LFE87:
	.size	Sys_mkdir, .-Sys_mkdir
	.align 2
	.globl Sys_MakeCodeWriteable
	.type	Sys_MakeCodeWriteable, @function
Sys_MakeCodeWriteable:
.LFB88:
	.loc 1 333 0
	.cfi_startproc
.LVL50:
	.loc 1 334 0
	blr
	.cfi_endproc
.LFE88:
	.size	Sys_MakeCodeWriteable, .-Sys_MakeCodeWriteable
	.align 2
	.globl Sys_Printf
	.type	Sys_Printf, @function
Sys_Printf:
.LFB91:
	.loc 1 393 0
	.cfi_startproc
.LVL51:
	stwu 1,-128(1)
.LCFI25:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 31,124(1)
	mr 31,1
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LCFI26:
	.cfi_def_cfa_register 31
	stw 0,132(1)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	stw 8,44(31)
	stw 9,48(31)
	stw 10,52(31)
	bne- 1,.L30
	.cfi_offset 65, 4
	.loc 1 393 0
	stfd 1,56(31)
	stfd 2,64(31)
	stfd 3,72(31)
	stfd 4,80(31)
	stfd 5,88(31)
	stfd 6,96(31)
	stfd 7,104(31)
	stfd 8,112(31)
.L30:
.LVL52:
	.loc 1 396 0
	lwz 0,0(1)
	.loc 1 393 0
	mr 5,3
	.loc 1 399 0
	addi 6,31,8
	li 4,4095
	.loc 1 396 0
	stwu 0,-4112(1)
	.loc 1 398 0
	li 0,1
	stb 0,8(31)
	li 0,0
	stb 0,9(31)
	.loc 1 396 0
	addi 3,1,23
.LVL53:
	.loc 1 398 0
	addi 0,31,136
	.loc 1 399 0
	rlwinm 3,3,0,0,27
.LVL54:
	.loc 1 398 0
	stw 0,12(31)
	addi 0,31,24
	stw 0,16(31)
	.loc 1 399 0
	bl vsnprintf
.LVL55:
	.loc 1 407 0
	addi 11,31,128
	lwz 0,4(11)
	lwz 31,-4(11)
.LCFI27:
	.cfi_def_cfa 11, 0
	mtlr 0
	mr 1,11
.LCFI28:
	.cfi_def_cfa_register 1
	.cfi_restore 31
.LVL56:
	blr
	.cfi_endproc
.LFE91:
	.size	Sys_Printf, .-Sys_Printf
	.align 2
	.globl Sys_WaitPress
	.type	Sys_WaitPress, @function
Sys_WaitPress:
.LFB89:
	.loc 1 343 0
	.cfi_startproc
.LVL57:
	stwu 1,-24(1)
.LCFI29:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
.LBB19:
	.loc 1 353 0
	lis 29,.LC1@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE19:
	.loc 1 343 0
	stw 28,8(1)
.LBB20:
	.loc 1 353 0
	la 29,.LC1@l(29)
.LBE20:
	.loc 1 343 0
	stw 0,28(1)
	.loc 1 344 0
	li 28,300
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.loc 1 343 0
	stw 30,16(1)
	stw 31,20(1)
	b .L35
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL58:
.L33:
.LBB21:
	.loc 1 356 0
	or. 0,30,31
	bne- 0,.L31
.L36:
	.loc 1 357 0
	bl VIDEO_WaitVSync
.LVL59:
.L35:
	.loc 1 347 0
	bl PAD_ScanPads
	.loc 1 348 0
	bl WPAD_ScanPads
	.loc 1 350 0
	li 3,0
	bl PAD_ButtonsDown
	mr 30,3
	li 3,1
	bl PAD_ButtonsDown
	or 30,3,30
	li 3,2
	bl PAD_ButtonsDown
	rlwinm 30,30,0,0xffff
	or 30,30,3
	li 3,3
	bl PAD_ButtonsDown
	rlwinm 30,30,0,0xffff
	or 30,30,3
	.loc 1 351 0
	li 3,0
	bl WPAD_ButtonsDown
	.loc 1 350 0
	rlwinm 30,30,0,0xffff
.LVL60:
	.loc 1 351 0
	mr 31,3
	li 3,1
	bl WPAD_ButtonsDown
	or 31,3,31
	li 3,2
	bl WPAD_ButtonsDown
	or 31,31,3
	li 3,3
	bl WPAD_ButtonsDown
	.loc 1 352 0
	cmpwi 7,28,301
	.loc 1 351 0
	or 31,31,3
.LVL61:
	.loc 1 352 0
	addi 28,28,1
.LVL62:
	bne+ 7,.L33
	.loc 1 353 0
	mr 3,29
	mr 4,30
	mr 5,31
	.loc 1 354 0
	li 28,0
.LVL63:
	.loc 1 353 0
	crxor 6,6,6
	bl Sys_Printf
.LVL64:
	.loc 1 356 0
	or. 0,30,31
	beq+ 0,.L36
.L31:
.LBE21:
	.loc 1 359 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL65:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL66:
	lwz 31,20(1)
.LVL67:
	addi 1,1,24
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE89:
	.size	Sys_WaitPress, .-Sys_WaitPress
	.align 2
	.globl Sys_Error
	.type	Sys_Error, @function
Sys_Error:
.LFB90:
	.loc 1 366 0
	.cfi_startproc
.LVL68:
	stwu 1,-128(1)
.LCFI31:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 31,124(1)
	mr 31,1
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LCFI32:
	.cfi_def_cfa_register 31
	stw 0,132(1)
	stw 30,120(1)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	stw 8,44(31)
	stw 9,48(31)
	stw 10,52(31)
	bne- 1,.L38
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 366 0
	stfd 1,56(31)
	stfd 2,64(31)
	stfd 3,72(31)
	stfd 4,80(31)
	stfd 5,88(31)
	stfd 6,96(31)
	stfd 7,104(31)
	stfd 8,112(31)
.L38:
.LVL69:
	.loc 1 369 0
	lwz 0,0(1)
	.loc 1 366 0
	mr 5,3
	.loc 1 372 0
	addi 6,31,8
	li 4,4095
	.loc 1 369 0
	stwu 0,-4112(1)
	.loc 1 371 0
	li 0,1
	stb 0,8(31)
	li 0,0
	.loc 1 369 0
	addi 30,1,23
	.loc 1 371 0
	stb 0,9(31)
	.loc 1 369 0
	rlwinm 30,30,0,0,27
.LVL70:
	.loc 1 371 0
	addi 0,31,136
	stw 0,12(31)
	.loc 1 372 0
	mr 3,30
.LVL71:
	.loc 1 371 0
	addi 0,31,24
	stw 0,16(31)
	.loc 1 372 0
	bl vsnprintf
.LVL72:
	.loc 1 378 0
	lis 3,.LC2@ha
	mr 4,30
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 382 0
	bl Sys_WaitPress
	.loc 1 383 0
	li 3,3
	li 4,0
	li 5,0
	bl SYS_ResetSystem
	.loc 1 384 0
	li 3,1
	bl exit
	.cfi_endproc
.LFE90:
	.size	Sys_Error, .-Sys_Error
	.align 2
	.globl findhandle
	.type	findhandle, @function
findhandle:
.LFB77:
	.loc 1 212 0
	.cfi_startproc
.LVL73:
	mflr 0
	stwu 1,-8(1)
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 215 0
	lis 9,sys_handles@ha
	li 3,1
	la 9,sys_handles@l(9)
	.loc 1 212 0
	stw 0,12(1)
	.loc 1 215 0
	li 0,9
	.cfi_offset 65, 4
	mtctr 0
.LVL74:
.L41:
	.loc 1 216 0
	lwzu 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L43
	.loc 1 215 0
	addi 3,3,1
.LVL75:
	bdnz .L41
	.loc 1 218 0
	lis 3,.LC3@ha
.LVL76:
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl Sys_Error
.L43:
	.loc 1 220 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI34:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE77:
	.size	findhandle, .-findhandle
	.align 2
	.globl Sys_FileOpenRead
	.type	Sys_FileOpenRead, @function
Sys_FileOpenRead:
.LFB80:
	.loc 1 250 0
	.cfi_startproc
.LVL77:
	mflr 0
	stwu 1,-24(1)
.LCFI35:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 1 254 0
	.cfi_offset 31, -4
	bl findhandle
.LVL78:
	.loc 1 256 0
	lis 4,.LC0@ha
	.loc 1 254 0
	mr 31,3
.LVL79:
	.loc 1 256 0
	la 4,.LC0@l(4)
	mr 3,30
.LVL80:
	bl fopen
.LVL81:
	.loc 1 257 0
	mr. 0,3
	beq- 0,.L47
	.loc 1 262 0
	lis 11,sys_handles@ha
	slwi 9,31,2
	la 11,sys_handles@l(11)
	.loc 1 266 0
	lwz 30,16(1)
.LVL82:
	.loc 1 262 0
	stwx 0,11,9
	.loc 1 266 0
	lwz 0,28(1)
	.loc 1 263 0
	stw 31,0(29)
	.loc 1 266 0
	mtlr 0
	lwz 29,12(1)
.LVL83:
	lwz 31,20(1)
.LVL84:
	addi 1,1,24
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 1 265 0
	b filelength
.LVL85:
.L47:
.LCFI37:
	.cfi_restore_state
	.loc 1 259 0
	li 0,-1
.LVL86:
	.loc 1 266 0
	lwz 30,16(1)
.LVL87:
	.loc 1 259 0
	stw 0,0(29)
	.loc 1 266 0
	li 3,-1
.LVL88:
	lwz 0,28(1)
	lwz 29,12(1)
.LVL89:
	mtlr 0
	lwz 31,20(1)
.LVL90:
	addi 1,1,24
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE80:
	.size	Sys_FileOpenRead, .-Sys_FileOpenRead
	.align 2
	.globl Sys_FileOpenWrite
	.type	Sys_FileOpenWrite, @function
Sys_FileOpenWrite:
.LFB81:
	.loc 1 269 0
	.cfi_startproc
.LVL91:
	mflr 0
	stwu 1,-16(1)
.LCFI39:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 273 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl findhandle
.LVL92:
	.loc 1 275 0
	lis 4,.LC4@ha
	.loc 1 273 0
	mr 31,3
.LVL93:
	.loc 1 275 0
	la 4,.LC4@l(4)
	mr 3,30
.LVL94:
	bl fopen
.LVL95:
	.loc 1 276 0
	cmpwi 0,3,0
	beq- 0,.L50
	.loc 1 278 0
	lis 9,sys_handles@ha
	slwi 0,31,2
	la 9,sys_handles@l(9)
	.loc 1 281 0
	lwz 30,8(1)
.LVL96:
	.loc 1 278 0
	stwx 3,9,0
	.loc 1 281 0
	mr 3,31
.LVL97:
	lwz 0,20(1)
.LVL98:
	lwz 31,12(1)
.LVL99:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL100:
.L50:
.LCFI41:
	.cfi_restore_state
	.loc 1 277 0
	bl __errno
.LVL101:
	lwz 3,0(3)
	bl strerror
	mr 4,30
	mr 5,3
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl Sys_Error
	.cfi_endproc
.LFE81:
	.size	Sys_FileOpenWrite, .-Sys_FileOpenWrite
	.align 2
	.globl Sys_Findfirst
	.type	Sys_Findfirst, @function
Sys_Findfirst:
.LFB74:
	.loc 1 76 0
	.cfi_startproc
.LVL102:
	stwu 1,-176(1)
.LCFI42:
	.cfi_def_cfa_offset 176
	mflr 0
	stw 26,152(1)
	mr 26,3
	.cfi_offset 26, -24
	.cfi_register 65, 0
	stw 28,160(1)
	.loc 1 85 0
	lis 3,.LC6@ha
.LVL103:
	.loc 1 76 0
	mr 28,4
	.cfi_offset 28, -16
	stw 27,156(1)
	.loc 1 85 0
	la 3,.LC6@l(3)
	.loc 1 76 0
	mr 27,5
	.cfi_offset 27, -20
	.loc 1 85 0
	mr 4,26
.LVL104:
	mr 5,28
.LVL105:
	.loc 1 76 0
	stw 0,180(1)
	stw 22,136(1)
	stw 23,140(1)
	stw 24,144(1)
	stw 25,148(1)
	stw 29,164(1)
	stw 30,168(1)
	stw 31,172(1)
	.loc 1 85 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 86 0
	cmpwi 7,27,0
	beq- 7,.L52
	.loc 1 86 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L64
	.loc 1 87 0 is_stmt 1
	mr 3,26
	bl strlen
	.loc 1 88 0
	cmpwi 7,3,126
	.loc 1 87 0
	mr 24,3
.LVL106:
	.loc 1 88 0
	bgt- 7,.L64
	.loc 1 90 0
	mr 4,26
	li 5,128
	mr 3,27
.LVL107:
	bl strncpy
	.loc 1 91 0
	mr 3,27
	bl opendir
.LVL108:
	.loc 1 92 0
	mr. 25,3
	beq- 0,.L64
	.loc 1 95 0
	li 3,20
.LVL109:
.LBB22:
	.loc 1 116 0
	lis 23,.LC7@ha
.LBE22:
	.loc 1 95 0
	bl Z_Malloc
	.loc 1 96 0
	li 0,0
	stw 0,4(3)
	.loc 1 98 0
	li 0,10
	.loc 1 97 0
	stw 24,0(3)
	.loc 1 95 0
	mr 31,3
.LVL110:
	.loc 1 98 0
	stw 0,8(3)
	.loc 1 99 0
	li 3,40
.LVL111:
.LBB23:
	.loc 1 116 0
	la 23,.LC7@l(23)
.LBE23:
	.loc 1 99 0
	bl Z_Malloc
	.loc 1 100 0
	stw 25,12(31)
	.loc 1 99 0
	stw 3,16(31)
.L68:
	.loc 1 102 0 discriminator 1
	mr 3,25
	bl readdir
.LVL112:
	mr. 29,3
	beq- 0,.L70
.L58:
.LBB24:
	.loc 1 106 0
	lwz 9,8(31)
	lwz 0,4(31)
	cmpw 7,9,0
	beq- 7,.L71
.LVL113:
.L54:
	.loc 1 114 0
	addi 22,29,5
	li 5,127
	mr 4,22
	addi 3,1,8
	bl strncpy
	.loc 1 115 0
	addi 3,1,8
	bl strlwr
	li 5,0
	mr 4,3
	mr 3,28
	bl fnmatch
	.loc 1 116 0
	addi 4,1,8
	.loc 1 115 0
	mr 30,3
.LVL114:
	.loc 1 116 0
	mr 5,22
	mr 3,23
.LVL115:
	mr 6,30
	mr 7,29
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 117 0
	cmpwi 7,30,0
	bne- 7,.L72
	.loc 1 119 0
	lwz 30,4(31)
.LVL116:
	li 3,776
	lwz 22,16(31)
	bl Z_Malloc
	slwi 30,30,2
	.loc 1 120 0
	lwz 0,4(31)
	.loc 1 119 0
	stwx 3,22,30
	.loc 1 120 0
	mr 4,29
	slwi 0,0,2
	li 5,776
	lwz 9,16(31)
	lwzx 3,9,0
	bl memcpy
	.loc 1 121 0
	lwz 9,4(31)
.LBE24:
	.loc 1 102 0
	mr 3,25
.LBB25:
	.loc 1 121 0
	addi 0,9,1
	stw 0,4(31)
.LBE25:
	.loc 1 102 0
	bl readdir
.LVL117:
	mr. 29,3
	bne+ 0,.L58
.L70:
	.loc 1 132 0
	mr 3,25
.LVL118:
	bl closedir
	.loc 1 134 0
	lwz 4,4(31)
	cmpwi 7,4,0
	beq- 7,.L59
.LBB26:
	.loc 1 135 0
	stw 4,8(31)
	.loc 1 138 0
	lis 6,direntp_compare@ha
	.loc 1 136 0
	stw 29,4(31)
	.loc 1 138 0
	li 5,4
	lwz 3,16(31)
	la 6,direntp_compare@l(6)
	.loc 1 139 0
	add 26,26,24
.LVL119:
	.loc 1 138 0
	bl qsort
	.loc 1 139 0
	lbz 0,-1(26)
	cmpwi 7,0,47
	beq- 7,.L60
	.loc 1 140 0
	li 0,47
	stbx 0,27,24
	.loc 1 141 0
	lwz 9,0(31)
	addi 0,9,1
	stw 0,0(31)
	.loc 1 142 0
	stbx 29,27,0
.L60:
	.loc 1 144 0
	lwz 9,16(31)
	lwz 3,0(31)
	lwz 4,0(9)
	subfic 5,3,128
	add 3,27,3
	addi 4,4,5
	bl strncpy
	.loc 1 145 0
	stw 25,12(31)
	.loc 1 147 0
	lis 3,.LC9@ha
	.loc 1 146 0
	stw 31,128(27)
	.loc 1 147 0
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl Sys_Printf
.LVL120:
	.loc 1 149 0
	lwz 0,8(31)
	cmpwi 7,0,0
	beq- 7,.L52
	lis 29,.LC10@ha
.LVL121:
	li 0,0
	li 30,0
	la 29,.LC10@l(29)
.LVL122:
.L61:
	.loc 1 150 0 discriminator 2
	lwz 9,16(31)
	slwi 0,0,2
	mr 3,29
	.loc 1 149 0 discriminator 2
	addi 30,30,1
	.loc 1 150 0 discriminator 2
	lwzx 4,9,0
	addi 4,4,5
	crxor 6,6,6
	bl Sys_Printf
.LVL123:
	.loc 1 149 0 discriminator 2
	lwz 0,8(31)
	cmplw 7,30,0
	mr 0,30
	blt+ 7,.L61
.LVL124:
.L52:
.LBE26:
	.loc 1 160 0
	lwz 0,180(1)
	mr 3,27
	lwz 22,136(1)
	mtlr 0
	lwz 23,140(1)
	lwz 24,144(1)
	lwz 25,148(1)
	lwz 26,152(1)
	lwz 27,156(1)
	lwz 28,160(1)
.LVL125:
	lwz 29,164(1)
	lwz 30,168(1)
	lwz 31,172(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI43:
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
.LVL126:
.L72:
.LCFI44:
	.cfi_restore_state
.LBB27:
	.loc 1 117 0
	cmpwi 7,30,1
	beq- 7,.L68
	.loc 1 126 0
	bl __errno
	lwz 4,0(3)
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL127:
.L71:
	.loc 1 107 0
	addi 9,9,10
	stw 9,8(31)
	slwi 3,9,2
.LVL128:
	bl Z_Malloc
	.loc 1 108 0
	lwz 4,16(31)
	lwz 5,4(31)
	.loc 1 107 0
	mr 30,3
.LVL129:
	.loc 1 108 0
	bl memcpy
.LVL130:
	.loc 1 109 0
	lwz 3,16(31)
	bl Z_Free
	.loc 1 110 0
	stw 30,16(31)
	b .L54
.LVL131:
.L64:
.LBE27:
	.loc 1 160 0
	lwz 0,180(1)
	.loc 1 93 0
	li 27,0
.LVL132:
	.loc 1 160 0
	mr 3,27
	lwz 22,136(1)
	mtlr 0
	lwz 23,140(1)
	lwz 24,144(1)
	lwz 25,148(1)
	lwz 26,152(1)
.LVL133:
	lwz 27,156(1)
	lwz 28,160(1)
.LVL134:
	lwz 29,164(1)
	lwz 30,168(1)
	lwz 31,172(1)
	addi 1,1,176
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
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
.LVL135:
.L59:
.LCFI46:
	.cfi_restore_state
.LBB28:
.LBB29:
	.loc 1 63 0
	lwz 3,16(31)
.LBE29:
.LBE28:
	.loc 1 159 0
	li 27,0
.LVL136:
.LBB31:
.LBB30:
	.loc 1 63 0
	bl Z_Free
.LBE30:
.LBE31:
	.loc 1 156 0
	lis 3,.LC11@ha
	la 3,.LC11@l(3)
	crxor 6,6,6
	bl Sys_Printf
	b .L52
	.cfi_endproc
.LFE74:
	.size	Sys_Findfirst, .-Sys_Findfirst
	.align 2
	.globl Sys_Quit
	.type	Sys_Quit, @function
Sys_Quit:
.LFB92:
	.loc 1 410 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI47:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 411 0
	li 3,3
	li 4,0
	li 5,0
	.loc 1 410 0
	stw 0,12(1)
	.loc 1 411 0
	.cfi_offset 65, 4
	bl SYS_ResetSystem
	.loc 1 412 0
	li 3,0
	bl exit
	.cfi_endproc
.LFE92:
	.size	Sys_Quit, .-Sys_Quit
	.globl __floatdidf
	.align 2
	.globl Sys_FloatTime
	.type	Sys_FloatTime, @function
Sys_FloatTime:
.LFB93:
	.loc 1 418 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 419 0
	.cfi_offset 65, 4
	bl gettime
	.loc 1 420 0
	bl __floatdidf
	.loc 1 422 0
	lwz 0,12(1)
	.loc 1 420 0
	lis 9,.LC12@ha
	.loc 1 422 0
	mtlr 0
	.loc 1 420 0
	lfd 0,.LC12@l(9)
	.loc 1 422 0
	addi 1,1,8
.LCFI49:
	.cfi_def_cfa_offset 0
	fmul 1,1,0
	blr
	.cfi_endproc
.LFE93:
	.size	Sys_FloatTime, .-Sys_FloatTime
	.align 2
	.type	quakeMain, @function
quakeMain:
.LFB105:
	.loc 1 571 0
	.cfi_startproc
.LVL137:
	mflr 0
	stwu 1,-56(1)
.LCFI50:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 30,32(1)
	.loc 1 577 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -24
	.loc 1 571 0
	stw 0,60(1)
	stw 31,36(1)
	.loc 1 577 0
	la 31,.LANCHOR0@l(30)
	.cfi_offset 31, -20
	.cfi_offset 65, 4
	.loc 1 571 0
	stw 25,12(1)
.LBB32:
	.loc 1 585 0
	li 25,0
	.cfi_offset 25, -44
.LBE32:
	.loc 1 571 0
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stfd 30,40(1)
	stfd 31,48(1)
	stw 24,8(1)
	stw 26,16(1)
	.loc 1 577 0
	lwz 28,.LANCHOR0@l(30)
	.cfi_offset 26, -40
	.cfi_offset 24, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
.LVL138:
	.loc 1 578 0
	lwz 29,4(31)
.LVL139:
	.loc 1 580 0
	bl SYS_GetArena1Lo
.LVL140:
	mr 27,3
.LVL141:
	.loc 1 581 0
	bl SYS_GetArena1Hi
.LVL142:
	mr 5,3
.LVL143:
	.loc 1 582 0
	lis 3,.LC13@ha
.LVL144:
	mr 4,27
	la 3,.LC13@l(3)
	subf 6,27,5
	crxor 6,6,6
	bl Sys_Printf
.LVL145:
.LBB33:
	.loc 1 585 0
	mr 9,25
	mr 0,25
 # 585 "d:/Data/Nintendo/TenebraeGX/src/sys_ogc.c" 1
	mfmsr 9
rlwinm 0,9,0,17,15
mtmsr 0
extrwi 9,9,1,16
 # 0 "" 2
.LVL146:
	mr 26,9
.LVL147:
.LBE33:
	.loc 1 588 0
	bl AINST_InitMem
.LVL148:
	.loc 1 589 0
	bl BINST_InitMem
	.loc 1 591 0
	bl SYS_GetArena2Lo
	mr 24,3
.LVL149:
	.loc 1 592 0
	bl SYS_GetArena2Lo
.LVL150:
	addis 27,3,0x180
.LVL151:
	.loc 1 594 0
	bl SYS_GetArena2Hi
	cmplw 7,27,3
	ble- 7,.L76
.LVL152:
.LBB34:
	.loc 1 596 0
 # 596 "d:/Data/Nintendo/TenebraeGX/src/sys_ogc.c" 1
	    cmpwi 26,0
    beq 1f
    mfmsr 25
    ori 25,25,0x8000
    mtmsr 25
1:
 # 0 "" 2
.LVL153:
.LBE34:
	.loc 1 597 0
	lis 3,.LC14@ha
	la 3,.LC14@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL154:
.L76:
.LBB35:
.LBB36:
	.loc 1 528 0
	addi 0,24,31
.LBE36:
.LBE35:
	.loc 1 601 0
	mr 3,27
.LBB38:
.LBB37:
	.loc 1 528 0
	rlwinm 27,0,0,0,26
.LVL155:
.LBE37:
.LBE38:
	.loc 1 601 0
	bl SYS_SetArena2Lo
.LVL156:
.LBB39:
	.loc 1 602 0
 # 602 "d:/Data/Nintendo/TenebraeGX/src/sys_ogc.c" 1
	    cmpwi 26,0
    beq 1f
    mfmsr 25
    ori 25,25,0x8000
    mtmsr 25
1:
 # 0 "" 2
.LVL157:
.LBE39:
	.loc 1 605 0
	lis 11,0x180
	.loc 1 607 0
	lwz 9,.LANCHOR0@l(30)
	.loc 1 608 0
	lwz 0,4(31)
	.loc 1 611 0
	lis 3,.LC16@ha
	.loc 1 605 0
	stw 11,28(31)
	.loc 1 606 0
	lis 11,.LC15@ha
	la 11,.LC15@l(11)
	.loc 1 607 0
	stw 9,16(31)
	.loc 1 606 0
	stw 11,8(31)
	.loc 1 611 0
	lis 5,0x180
	.loc 1 608 0
	stw 0,20(31)
	.loc 1 611 0
	la 3,.LC16@l(3)
	.loc 1 609 0
	stw 27,24(31)
	.loc 1 611 0
	mr 4,27
	.loc 1 576 0
	li 30,0
	.loc 1 611 0
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 613 0
	mr 4,29
	mr 3,28
	bl COM_InitArgv
	.loc 1 616 0
	lis 11,com_argv@ha
	.loc 1 615 0
	lis 9,com_argc@ha
	.loc 1 616 0
	lwz 0,com_argv@l(11)
	.loc 1 615 0
	lwz 9,com_argc@l(9)
	.loc 1 618 0
	addi 3,31,8
	.loc 1 616 0
	stw 0,20(31)
	.loc 1 615 0
	stw 9,16(31)
	lis 31,.LC20@ha
	la 31,.LC20@l(31)
	.loc 1 618 0
	bl Host_Init
	.loc 1 619 0
	lis 3,.LC17@ha
	la 3,.LC17@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 620 0
	bl Sys_FloatTime
	lis 9,.LC19@ha
	lfs 30,.LC19@l(9)
	fsub 30,1,30
.LVL158:
	.loc 1 622 0
	bl Sys_FloatTime
	fmr 31,1
.LVL159:
	.loc 1 623 0
	fsub 1,1,30
.LVL160:
	.loc 1 627 0
	frsp 1,1
	bl Host_Frame
.LVL161:
	.loc 1 629 0
	cmpwi 7,30,60
	ble- 7,.L78
.LVL162:
.L80:
	fmr 30,31
	.loc 1 630 0
	bl Sys_FloatTime
	mr 3,31
	.loc 1 631 0
	li 30,0
	.loc 1 630 0
	creqv 6,6,6
	bl Con_Printf
.LVL163:
.L81:
	.loc 1 622 0
	bl Sys_FloatTime
	fmr 31,1
.LVL164:
	.loc 1 623 0
	fsub 1,1,30
.LVL165:
	.loc 1 627 0
	frsp 1,1
	bl Host_Frame
.LVL166:
	.loc 1 629 0
	cmpwi 7,30,60
	bgt- 7,.L80
.LVL167:
.L78:
	addi 30,30,1
	fmr 30,31
	b .L81
	.cfi_endproc
.LFE105:
	.size	quakeMain, .-quakeMain
	.align 2
	.globl Sys_ConsoleInput
	.type	Sys_ConsoleInput, @function
Sys_ConsoleInput:
.LFB94:
	.loc 1 426 0
	.cfi_startproc
	.loc 1 428 0
	li 3,0
	blr
	.cfi_endproc
.LFE94:
	.size	Sys_ConsoleInput, .-Sys_ConsoleInput
	.align 2
	.globl Sys_Sleep
	.type	Sys_Sleep, @function
Sys_Sleep:
.LFB95:
	.loc 1 431 0
	.cfi_startproc
	.loc 1 432 0
	blr
	.cfi_endproc
.LFE95:
	.size	Sys_Sleep, .-Sys_Sleep
	.align 2
	.globl Sys_SendKeyEvents
	.type	Sys_SendKeyEvents, @function
Sys_SendKeyEvents:
.LFB96:
	.loc 1 435 0
	.cfi_startproc
	.loc 1 436 0
	blr
	.cfi_endproc
.LFE96:
	.size	Sys_SendKeyEvents, .-Sys_SendKeyEvents
	.align 2
	.globl Sys_HighFPPrecision
	.type	Sys_HighFPPrecision, @function
Sys_HighFPPrecision:
.LFB97:
	.loc 1 439 0
	.cfi_startproc
	.loc 1 440 0
	blr
	.cfi_endproc
.LFE97:
	.size	Sys_HighFPPrecision, .-Sys_HighFPPrecision
	.align 2
	.globl Sys_LowFPPrecision
	.type	Sys_LowFPPrecision, @function
Sys_LowFPPrecision:
.LFB98:
	.loc 1 443 0
	.cfi_startproc
	.loc 1 444 0
	blr
	.cfi_endproc
.LFE98:
	.size	Sys_LowFPPrecision, .-Sys_LowFPPrecision
	.align 2
	.globl Sys_Strtime
	.type	Sys_Strtime, @function
Sys_Strtime:
.LFB99:
	.loc 1 449 0
	.cfi_startproc
.LVL168:
	stwu 1,-16(1)
.LCFI51:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 453 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,.LANCHOR0@l(30)
	.loc 1 449 0
	stw 31,12(1)
	.loc 1 453 0
	addi 30,30,32
	.loc 1 449 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 453 0
	mr 3,30
.LVL169:
	.loc 1 449 0
	stw 0,20(1)
	.loc 1 453 0
	.cfi_offset 65, 4
	bl time
	.loc 1 454 0
	mr 3,30
	bl gmtime
.LVL170:
	.loc 1 456 0
	lis 4,.LC21@ha
	lwz 5,8(3)
	la 4,.LC21@l(4)
	lwz 6,4(3)
	lwz 7,0(3)
	mr 3,31
.LVL171:
	crxor 6,6,6
	bl sprintf
	.loc 1 458 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL172:
	addi 1,1,16
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE99:
	.size	Sys_Strtime, .-Sys_Strtime
	.align 2
	.globl Sys_AcceptLogTerminal
	.type	Sys_AcceptLogTerminal, @function
Sys_AcceptLogTerminal:
.LFB100:
	.loc 1 470 0
	.cfi_startproc
	mflr 0
	stwu 1,-88(1)
.LCFI53:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 479 0
	li 6,1
	.loc 1 470 0
	stw 31,84(1)
	.loc 1 479 0
	addi 4,1,12
	.loc 1 473 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 470 0
	stw 0,92(1)
	.loc 1 479 0
	addi 5,1,28
	.loc 1 471 0
	li 0,16
	.cfi_offset 65, 4
	.loc 1 479 0
	addi 3,1,44
	.loc 1 471 0
	stw 0,8(1)
.LVL173:
	.loc 1 470 0
	stw 29,76(1)
	.loc 1 484 0
	lis 29,sock@ha
	.cfi_offset 29, -12
	.loc 1 470 0
	stw 30,80(1)
	.loc 1 473 0
	stw 31,44(1)
	stw 31,48(1)
	stw 31,52(1)
	stw 31,56(1)
	.loc 1 474 0
	stw 31,28(1)
	stw 31,32(1)
	stw 31,36(1)
	stw 31,40(1)
	.loc 1 475 0
	stw 31,12(1)
	stw 31,16(1)
	stw 31,20(1)
	stw 31,24(1)
	.loc 1 479 0
	.cfi_offset 30, -8
	bl if_config
	.loc 1 484 0
	li 4,1
	li 5,0
	li 3,2
	bl net_socket
	.loc 1 486 0
	lis 10,server@ha
	la 9,server@l(10)
	.loc 1 489 0
	li 0,2
	.loc 1 486 0
	stw 31,server@l(10)
	.loc 1 487 0
	lis 11,client@ha
	.loc 1 489 0
	stb 0,1(9)
	.loc 1 490 0
	li 0,80
	.loc 1 486 0
	stw 31,4(9)
	.loc 1 487 0
	la 30,client@l(11)
	.loc 1 486 0
	stw 31,8(9)
	.loc 1 493 0
	mr 4,9
	.loc 1 486 0
	stw 31,12(9)
	.loc 1 493 0
	li 5,16
	.loc 1 490 0
	sth 0,2(9)
	.loc 1 487 0
	stw 31,client@l(11)
	stw 31,4(30)
	stw 31,8(30)
	stw 31,12(30)
	.loc 1 484 0
	stw 3,sock@l(29)
	.loc 1 493 0
	bl net_bind
	.loc 1 495 0
	lwz 3,sock@l(29)
	li 4,5
	bl net_listen
	.loc 1 498 0
	lwz 3,sock@l(29)
	mr 4,30
	addi 5,1,8
	bl net_accept
	.loc 1 505 0
	lwz 0,92(1)
	.loc 1 498 0
	lis 9,csock@ha
	.loc 1 505 0
	lwz 29,76(1)
	mtlr 0
	lwz 30,80(1)
	lwz 31,84(1)
	.loc 1 498 0
	stw 3,csock@l(9)
	.loc 1 505 0
	addi 1,1,88
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE100:
	.size	Sys_AcceptLogTerminal, .-Sys_AcceptLogTerminal
	.align 2
	.globl Sys_CloseLogTerminal
	.type	Sys_CloseLogTerminal, @function
Sys_CloseLogTerminal:
.LFB101:
	.loc 1 508 0
	.cfi_startproc
	mflr 0
	.loc 1 509 0
	lis 9,csock@ha
	.loc 1 508 0
	stwu 1,-8(1)
.LCFI55:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 509 0
	lwz 3,csock@l(9)
	.loc 1 508 0
	stw 0,12(1)
	.loc 1 509 0
	.cfi_offset 65, 4
	bl net_close
	.loc 1 510 0
	lis 9,sock@ha
	lwz 3,sock@l(9)
	bl net_close
	.loc 1 511 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI56:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE101:
	.size	Sys_CloseLogTerminal, .-Sys_CloseLogTerminal
	.align 2
	.globl Sys_WriteSocket
	.type	Sys_WriteSocket, @function
Sys_WriteSocket:
.LFB102:
	.loc 1 514 0
	.cfi_startproc
.LVL174:
	mflr 0
	stwu 1,-16(1)
.LCFI57:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 515 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl strlen
.LVL175:
	lis 31,csock@ha
	mr 5,3
	lwz 3,csock@l(31)
	mr 4,30
	li 6,0
	bl net_send
	.loc 1 516 0
	lwz 3,csock@l(31)
	lis 4,.LC22@ha
	li 5,1
	la 4,.LC22@l(4)
	li 6,0
	bl net_send
	.loc 1 517 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL176:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI58:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE102:
	.size	Sys_WriteSocket, .-Sys_WriteSocket
	.align 2
	.globl align32
	.type	align32, @function
align32:
.LFB103:
	.loc 1 527 0
	.cfi_startproc
.LVL177:
	.loc 1 528 0
	addi 3,3,31
.LVL178:
	.loc 1 529 0
	rlwinm 3,3,0,0,26
.LVL179:
	blr
	.cfi_endproc
.LFE103:
	.size	align32, .-align32
	.align 2
	.globl testRead
	.type	testRead, @function
testRead:
.LFB104:
	.loc 1 531 0
	.cfi_startproc
.LVL180:
	mflr 0
	stwu 1,-40(1)
.LCFI59:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 549 0
	lis 3,.LC23@ha
.LVL181:
	lis 4,.LC0@ha
	la 3,.LC23@l(3)
	la 4,.LC0@l(4)
	.loc 1 531 0
	stw 0,44(1)
	stw 31,36(1)
	stw 30,32(1)
	.loc 1 549 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl fopen
.LVL182:
	.loc 1 554 0
	mr. 31,3
	li 0,101
	stw 0,24(1)
	beq- 0,.L98
	.loc 1 556 0 discriminator 1
	lis 30,.LC25@ha
	la 30,.LC25@l(30)
	b .L97
.LVL183:
.L99:
	.loc 1 555 0 discriminator 2
	lwz 0,24(1)
	addic. 9,0,-1
	stw 9,24(1)
	beq- 0,.L94
	.loc 1 556 0
	lwz 6,8(1)
	mr 3,30
.LVL184:
	rlwinm 5,6,0,0xff
	crxor 6,6,6
	bl printf
.LVL185:
.L97:
	.loc 1 555 0 discriminator 1
	li 4,1
	addi 3,1,8
	li 5,1
	mr 6,31
	bl fread
.LVL186:
	mr. 4,3
	bge+ 0,.L99
.L94:
	.loc 1 559 0
	mr 3,31
.LVL187:
	bl fclose
.LVL188:
	.loc 1 560 0
	lis 3,.LC26@ha
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 561 0
	lis 3,.LC27@ha
	la 3,.LC27@l(3)
	bl puts
	.loc 1 562 0
	bl Sys_WaitPress
	.loc 1 563 0
	lwz 0,44(1)
	lwz 30,32(1)
	mtlr 0
	lwz 31,36(1)
.LVL189:
	addi 1,1,40
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL190:
.L98:
.LCFI61:
	.cfi_restore_state
	.loc 1 554 0 discriminator 1
	lis 3,.LC24@ha
.LVL191:
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Sys_Error
	.cfi_endproc
.LFE104:
	.size	testRead, .-testRead
	.globl __eabi
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
.LFB106:
	.loc 1 642 0
	.cfi_startproc
.LVL192:
	mflr 0
	stwu 1,-40(1)
.LCFI62:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,44(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,36(1)
	.loc 1 642 0
	.cfi_offset 31, -4
	bl __eabi
.LVL193:
	.loc 1 645 0
	bl VID_Setup
	.loc 1 646 0
	lis 3,0x10
	bl malloc
	lis 9,.LANCHOR0@ha
	la 31,.LANCHOR0@l(9)
	.loc 1 658 0
	stw 30,.LANCHOR0@l(9)
	.loc 1 646 0
	stw 3,36(31)
	.loc 1 659 0
	stw 29,4(31)
	.loc 1 662 0
	bl VIDEO_WaitVSync
	.loc 1 663 0
	bl PAD_Init
	.loc 1 664 0
	bl WPAD_Init
	.loc 1 665 0
	bl VIDEO_WaitVSync
	.loc 1 668 0
	bl fatInitDefault
	cmpwi 7,3,0
	beq- 7,.L102
	.loc 1 673 0
	lwz 6,36(31)
	lis 4,quakeMain@ha
	la 4,quakeMain@l(4)
	li 5,0
	lis 7,0x10
	li 8,64
	addi 3,31,40
	bl LWP_CreateThread
	.loc 1 677 0
	lwz 3,40(31)
	addi 4,1,8
	bl LWP_JoinThread
	.loc 1 680 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL194:
	li 3,0
	mtlr 0
	lwz 30,32(1)
.LVL195:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL196:
.L102:
.LCFI64:
	.cfi_restore_state
	.loc 1 669 0
	lis 3,.LC28@ha
	la 3,.LC28@l(3)
	crxor 6,6,6
	bl Sys_Error
	.cfi_endproc
.LFE106:
	.size	main, .-main
	.comm	server,16,4
	.comm	client,16,4
	.comm	csock,4,4
	.comm	sock,4,4
	.comm	sys_handles,40,4
	.globl isDedicated
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC19:
	.4byte	1036831949
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC12:
	.4byte	1045540029
	.4byte	1020022141
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"rb"
	.zero	1
.LC1:
	.string	"Press button %d %d \n"
	.zero	3
.LC2:
	.string	"Sys_Error: %s\n"
	.zero	1
.LC3:
	.string	"out of handles"
	.zero	1
.LC4:
	.string	"wb"
	.zero	1
.LC5:
	.string	"Error opening %s: %s"
	.zero	3
.LC6:
	.string	"1) FindFirst %s %s\n"
.LC7:
	.string	"fnmatch %s (%s)result %d %p\n"
	.zero	3
.LC8:
	.string	"Sys_Glob_select : fnmatch call (%d)\n"
	.zero	3
.LC9:
	.string	"return dirdata\n"
.LC10:
	.string	"entry: %s\n"
	.zero	1
.LC11:
	.string	"No entries in system"
	.zero	3
.LC13:
	.string	">>>>> arena 1 memory: lo %d hi %d size %d\n"
	.zero	1
.LC14:
	.string	"heap + real_heap_size > (u32)SYS_GetArena2Hi()"
	.zero	1
.LC15:
	.string	"/apps/TenebraeGX"
	.zero	3
.LC16:
	.string	"main membase %p, size %d\n"
	.zero	2
.LC17:
	.string	"main loop\n"
	.zero	1
.LC20:
	.string	"time: %f\n"
	.zero	2
.LC21:
	.string	"%02d:%02d:%02d"
	.zero	1
.LC22:
	.string	"\r"
	.zero	2
.LC23:
	.string	"/apps/TenebraeGX/id1/PAK1.PAK"
	.zero	2
.LC24:
	.string	"Error!"
	.zero	1
.LC25:
	.string	"%5d %02X -%c -"
	.zero	1
.LC26:
	.string	"END testRead()\n"
.LC27:
	.string	"no fail"
.LC28:
	.string	"fatInitDefault failure\n"
	.section	.sbss,"aw",@nobits
	.type	isDedicated, @object
	.size	isDedicated, 1
isDedicated:
	.zero	1
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	local_argc, @object
	.size	local_argc, 4
local_argc:
	.zero	4
	.type	local_argv, @object
	.size	local_argv, 4
local_argv:
	.zero	4
	.type	parms, @object
	.size	parms, 24
parms:
	.zero	24
	.type	t_.19199, @object
	.size	t_.19199, 4
t_.19199:
	.zero	4
	.type	stack, @object
	.size	stack, 4
stack:
	.zero	4
	.type	thread, @object
	.size	thread, 4
thread:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/lwp.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 8 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 9 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 10 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 11 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 12 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/time.h"
	.file 13 "c:/utils/devkitPro/libogc/include/network.h"
	.file 14 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stdarg.h"
	.file 15 "<built-in>"
	.file 16 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 17 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/stat.h"
	.file 18 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/iosupport.h"
	.file 19 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/dirent.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/src/sys.h"
	.file 22 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 23 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 24 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 25 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f56
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF359
	.byte	0x1
	.4byte	.LASF360
	.4byte	.LASF361
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x98
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2a
	.4byte	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x71
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x50
	.4byte	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.string	"u8"
	.byte	0x3
	.byte	0x11
	.4byte	0x3b
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x12
	.4byte	0x54
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x13
	.4byte	0x78
	.uleb128 0x5
	.string	"s8"
	.byte	0x3
	.byte	0x16
	.4byte	0x29
	.uleb128 0x5
	.string	"s32"
	.byte	0x3
	.byte	0x18
	.4byte	0x66
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x6
	.4byte	0x83
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3e
	.4byte	0xad
	.uleb128 0xa
	.4byte	.LASF362
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x17b
	.uleb128 0xb
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0x17b
	.uleb128 0xb
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x180
	.uleb128 0xb
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0x185
	.uleb128 0xb
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x18a
	.uleb128 0xb
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0xfb
	.uleb128 0xb
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x18f
	.uleb128 0xb
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0xdb
	.byte	0
	.uleb128 0x6
	.4byte	0x46
	.uleb128 0x6
	.4byte	0x34
	.uleb128 0x6
	.4byte	0x5f
	.uleb128 0x6
	.4byte	0x4d
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x499
	.4byte	0x11b
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0xd
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x7
	.4byte	0x71
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x8
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1d
	.4byte	0x5f
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x8
	.byte	0x20
	.4byte	0x5f
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x9
	.2byte	0x161
	.4byte	0x83
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.4byte	0x20d
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x8
	.byte	0x48
	.4byte	0x1e2
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x8
	.byte	0x49
	.4byte	0x20d
	.byte	0
	.uleb128 0xf
	.4byte	0x46
	.4byte	0x21d
	.uleb128 0x10
	.4byte	0x83
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x43
	.4byte	0x242
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x8
	.byte	0x45
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4a
	.4byte	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4b
	.4byte	0x21d
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4f
	.4byte	0x1b6
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa
	.byte	0x15
	.4byte	0x109
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x18
	.byte	0xa
	.byte	0x2c
	.4byte	0x2c2
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0xa
	.byte	0x2e
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"_k"
	.byte	0xa
	.byte	0x2f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0xa
	.byte	0x2f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0xa
	.byte	0x2f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0xa
	.byte	0x2f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"_x"
	.byte	0xa
	.byte	0x30
	.4byte	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x263
	.uleb128 0xf
	.4byte	0x258
	.4byte	0x2d8
	.uleb128 0x10
	.4byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x24
	.byte	0xa
	.byte	0x34
	.4byte	0x363
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0xa
	.byte	0x36
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0xa
	.byte	0x37
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0xa
	.byte	0x38
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0xa
	.byte	0x39
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0xa
	.byte	0x3a
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0xa
	.byte	0x3b
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xa
	.byte	0x3c
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0xa
	.byte	0x3d
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xa
	.byte	0x3e
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF48
	.2byte	0x108
	.byte	0xa
	.byte	0x47
	.4byte	0x3ac
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0xa
	.byte	0x48
	.4byte	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xa
	.byte	0x49
	.4byte	0x3ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0xa
	.byte	0x4b
	.4byte	0x258
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0xa
	.byte	0x4e
	.4byte	0x258
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0xf
	.4byte	0x100
	.4byte	0x3bc
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF53
	.2byte	0x190
	.byte	0xa
	.byte	0x59
	.4byte	0x403
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0xa
	.byte	0x5a
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xa
	.byte	0x5b
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xa
	.byte	0x5d
	.4byte	0x409
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0xa
	.byte	0x5e
	.4byte	0x363
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3bc
	.uleb128 0xf
	.4byte	0xf3
	.4byte	0x419
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa
	.byte	0x69
	.4byte	0x442
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0xa
	.byte	0x6a
	.4byte	0x442
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xa
	.byte	0x6b
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x46
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x70
	.byte	0xa
	.byte	0xa9
	.4byte	0x5a2
	.uleb128 0x14
	.string	"_p"
	.byte	0xa
	.byte	0xaa
	.4byte	0x442
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"_r"
	.byte	0xa
	.byte	0xab
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"_w"
	.byte	0xa
	.byte	0xac
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xa
	.byte	0xad
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xa
	.byte	0xae
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.string	"_bf"
	.byte	0xa
	.byte	0xaf
	.4byte	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xa
	.byte	0xb0
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0xa
	.byte	0xb7
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0xa
	.byte	0xb9
	.4byte	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0xa
	.byte	0xbb
	.4byte	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xa
	.byte	0xbd
	.4byte	0x77a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0xa
	.byte	0xbe
	.4byte	0x795
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"_ub"
	.byte	0xa
	.byte	0xc1
	.4byte	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"_up"
	.byte	0xa
	.byte	0xc2
	.4byte	0x442
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"_ur"
	.byte	0xa
	.byte	0xc3
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0xa
	.byte	0xc6
	.4byte	0x79b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0xa
	.byte	0xc7
	.4byte	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x14
	.string	"_lb"
	.byte	0xa
	.byte	0xca
	.4byte	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0xa
	.byte	0xcd
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xa
	.byte	0xce
	.4byte	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0xa
	.byte	0xd1
	.4byte	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0xa
	.byte	0xd5
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0xa
	.byte	0xd7
	.4byte	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0xa
	.byte	0xd8
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	0x71
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	0x100
	.uleb128 0x17
	.4byte	0xe0
	.uleb128 0x17
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0x18
	.4byte	.LASF76
	.2byte	0x440
	.byte	0xa
	.2byte	0x244
	.4byte	0x725
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x246
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x24b
	.4byte	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x24b
	.4byte	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x24b
	.4byte	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x24d
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x24e
	.4byte	0xa23
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0xa
	.2byte	0x250
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x251
	.4byte	0x74a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x253
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x255
	.4byte	0xa3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x258
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x259
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x25a
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x25b
	.4byte	0xa45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x25e
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x25f
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x282
	.4byte	0xa01
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0xa
	.2byte	0x285
	.4byte	0x403
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x286
	.4byte	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x289
	.4byte	0xa57
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x28e
	.4byte	0x7c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x28f
	.4byte	0xa63
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5a2
	.uleb128 0x16
	.byte	0x1
	.4byte	0x71
	.4byte	0x74a
	.uleb128 0x17
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	0x100
	.uleb128 0x17
	.4byte	0x74a
	.uleb128 0x17
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x750
	.uleb128 0x1a
	.4byte	0xe6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x72b
	.uleb128 0x16
	.byte	0x1
	.4byte	0x1a0
	.4byte	0x77a
	.uleb128 0x17
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	0x100
	.uleb128 0x17
	.4byte	0x1a0
	.uleb128 0x17
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x75b
	.uleb128 0x16
	.byte	0x1
	.4byte	0x71
	.4byte	0x795
	.uleb128 0x17
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	0x100
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x780
	.uleb128 0xf
	.4byte	0x46
	.4byte	0x7ab
	.uleb128 0x10
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	0x46
	.4byte	0x7bb
	.uleb128 0x10
	.4byte	0x83
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x111
	.4byte	0x448
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0xc
	.byte	0xa
	.2byte	0x115
	.4byte	0x802
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0xa
	.2byte	0x117
	.4byte	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x118
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x119
	.4byte	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7c7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7bb
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0xe
	.byte	0xa
	.2byte	0x131
	.4byte	0x849
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x132
	.4byte	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x133
	.4byte	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x134
	.4byte	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.4byte	0x5f
	.4byte	0x859
	.uleb128 0x10
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.byte	0xd0
	.byte	0xa
	.2byte	0x263
	.4byte	0x989
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x265
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x266
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x267
	.4byte	0x989
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x268
	.4byte	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x269
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x26a
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x26b
	.4byte	0x80e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x26c
	.4byte	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x26d
	.4byte	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x26e
	.4byte	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x26f
	.4byte	0x999
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x270
	.4byte	0x9a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x271
	.4byte	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x272
	.4byte	0x242
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x273
	.4byte	0x242
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x274
	.4byte	0x242
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x275
	.4byte	0x242
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x276
	.4byte	0x242
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x277
	.4byte	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x999
	.uleb128 0x10
	.4byte	0x83
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x9a9
	.uleb128 0x10
	.4byte	0x83
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x9b9
	.uleb128 0x10
	.4byte	0x83
	.byte	0x17
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0xa
	.2byte	0x27c
	.4byte	0x9e1
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x27f
	.4byte	0x9e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x280
	.4byte	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xf
	.4byte	0x442
	.4byte	0x9f1
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.4byte	0x83
	.4byte	0xa01
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.byte	0xf0
	.byte	0xa
	.2byte	0x261
	.4byte	0xa23
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x278
	.4byte	0x859
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x281
	.4byte	0x9b9
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0xa33
	.uleb128 0x10
	.4byte	0x83
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	0xa3f
	.uleb128 0x17
	.4byte	0x5c1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa33
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0x1f
	.byte	0x1
	.4byte	0xa57
	.uleb128 0x17
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa5d
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa4b
	.uleb128 0xf
	.4byte	0x7bb
	.4byte	0xa73
	.uleb128 0x10
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x9
	.byte	0xd4
	.4byte	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF129
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xb
	.byte	0x6e
	.4byte	0xa7e
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xb
	.byte	0x86
	.4byte	0x83
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xb
	.byte	0xa3
	.4byte	0x1ab
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xb
	.byte	0xa4
	.4byte	0x1c1
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xb
	.byte	0xa5
	.4byte	0x1cc
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xb
	.byte	0xa6
	.4byte	0x1d7
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xb
	.byte	0xc4
	.4byte	0x83
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xb
	.byte	0xc9
	.4byte	0x5f
	.uleb128 0x20
	.string	"tm"
	.byte	0x24
	.byte	0xc
	.byte	0x21
	.4byte	0xb67
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xc
	.byte	0x23
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xc
	.byte	0x24
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xc
	.byte	0x25
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xc
	.byte	0x26
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xc
	.byte	0x27
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xc
	.byte	0x28
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xc
	.byte	0x29
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xc
	.byte	0x2a
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xc
	.byte	0x2b
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x71
	.uleb128 0x1a
	.4byte	0x71
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x4
	.byte	0xd
	.byte	0xd3
	.4byte	0xb8d
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xd
	.byte	0xd4
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x10
	.byte	0xd
	.byte	0xd8
	.4byte	0xbe0
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xd
	.byte	0xd9
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xd
	.byte	0xda
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xd
	.byte	0xdb
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xd
	.byte	0xdc
	.4byte	0xb72
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xd
	.byte	0xdd
	.4byte	0xbe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.4byte	0xb8
	.4byte	0xbf0
	.uleb128 0x10
	.4byte	0x83
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.4byte	.LASF155
	.byte	0x10
	.byte	0xd
	.byte	0xe0
	.4byte	0xc27
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xd
	.byte	0xe1
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xd
	.byte	0xe2
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xd
	.byte	0xe3
	.4byte	0xc27
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.4byte	0xb8
	.4byte	0xc37
	.uleb128 0x10
	.4byte	0x83
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xe
	.byte	0x28
	.4byte	0xc42
	.uleb128 0xf
	.4byte	0xc52
	.4byte	0xc52
	.uleb128 0x10
	.4byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0xc
	.byte	0xf
	.byte	0
	.4byte	0xca5
	.uleb128 0x14
	.string	"gpr"
	.byte	0xf
	.byte	0
	.4byte	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"fpr"
	.byte	0xf
	.byte	0
	.4byte	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xf
	.byte	0
	.4byte	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xf
	.byte	0
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xf
	.byte	0
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x10
	.byte	0x32
	.4byte	0x7bb
	.uleb128 0x13
	.4byte	.LASF165
	.byte	0x48
	.byte	0x11
	.byte	0x19
	.4byte	0xdab
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0x11
	.byte	0x1b
	.4byte	0xaa6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0x11
	.byte	0x1c
	.4byte	0xa90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x11
	.byte	0x1d
	.4byte	0xac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0x11
	.byte	0x1e
	.4byte	0xad2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0x11
	.byte	0x1f
	.4byte	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0x11
	.byte	0x20
	.4byte	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0x11
	.byte	0x21
	.4byte	0xaa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0x11
	.byte	0x22
	.4byte	0xa9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0x11
	.byte	0x30
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0x11
	.byte	0x31
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0x11
	.byte	0x32
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0x11
	.byte	0x33
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0x11
	.byte	0x34
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0x11
	.byte	0x35
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0x11
	.byte	0x36
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0x11
	.byte	0x37
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0x11
	.byte	0x38
	.4byte	0xdab
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xf
	.4byte	0xa7e
	.4byte	0xdbb
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x12
	.byte	0x1c
	.4byte	0xde0
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0x12
	.byte	0x1d
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0x12
	.byte	0x1e
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0x12
	.byte	0x1f
	.4byte	0xdbb
	.uleb128 0x7
	.byte	0x4
	.4byte	0xde0
	.uleb128 0x15
	.4byte	.LASF186
	.2byte	0x308
	.byte	0x13
	.byte	0x1e
	.4byte	0xe29
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0x13
	.byte	0x1f
	.4byte	0xa90
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0x13
	.byte	0x20
	.4byte	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0x13
	.byte	0x21
	.4byte	0xe29
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0xe3a
	.uleb128 0x21
	.4byte	0x83
	.2byte	0x2ff
	.byte	0
	.uleb128 0x22
	.2byte	0x310
	.byte	0x13
	.byte	0x24
	.4byte	0xe6e
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x13
	.byte	0x25
	.4byte	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x13
	.byte	0x26
	.4byte	0xdeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0x13
	.byte	0x27
	.4byte	0xdf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.string	"DIR"
	.byte	0x13
	.byte	0x28
	.4byte	0xe3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF193
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0xe
	.byte	0x66
	.4byte	0xc37
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x14
	.byte	0x17
	.4byte	0x46
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x14
	.byte	0x22
	.4byte	0x102
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe8b
	.uleb128 0xf
	.4byte	0x71
	.4byte	0xeb7
	.uleb128 0x10
	.4byte	0x83
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0xec7
	.uleb128 0x10
	.4byte	0x83
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0x83
	.4byte	0xed7
	.uleb128 0x10
	.4byte	0x83
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0x4d
	.4byte	0xee7
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	0xcd
	.4byte	0xefd
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1
	.uleb128 0x10
	.4byte	0x83
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0xe8b
	.4byte	0xf0d
	.uleb128 0x10
	.4byte	0x83
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x84
	.byte	0x15
	.byte	0x4c
	.4byte	0xf33
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0x15
	.byte	0x4e
	.4byte	0xf33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0x15
	.byte	0x4f
	.4byte	0x100
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0xf43
	.uleb128 0x10
	.4byte	0x83
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x15
	.byte	0x50
	.4byte	0xf0d
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x16
	.byte	0x16
	.4byte	0xcd
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x16
	.byte	0x17
	.4byte	0xf64
	.uleb128 0xf
	.4byte	0xf4e
	.4byte	0xf74
	.uleb128 0x10
	.4byte	0x83
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xca5
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0x14
	.byte	0x17
	.byte	0x52
	.4byte	0xfcd
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0x17
	.byte	0x54
	.4byte	0xf59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0x17
	.byte	0x55
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0x17
	.byte	0x56
	.4byte	0xe8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0x17
	.byte	0x57
	.4byte	0xe8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x14
	.string	"pad"
	.byte	0x17
	.byte	0x58
	.4byte	0xfcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xf
	.4byte	0xe8b
	.4byte	0xfdd
	.uleb128 0x10
	.4byte	0x83
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0x17
	.byte	0x59
	.4byte	0xf7a
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x48
	.byte	0x17
	.byte	0x5b
	.4byte	0x109d
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0x17
	.byte	0x5d
	.4byte	0xeb7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF210
	.byte	0x17
	.byte	0x5e
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0x17
	.byte	0x5e
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF212
	.byte	0x17
	.byte	0x5f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0x17
	.byte	0x60
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x17
	.byte	0x61
	.4byte	0x11c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x17
	.byte	0x62
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x17
	.byte	0x63
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x17
	.byte	0x63
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF218
	.byte	0x17
	.byte	0x64
	.4byte	0x11c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0x17
	.byte	0x65
	.4byte	0x11c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF220
	.byte	0x17
	.byte	0x66
	.4byte	0xec7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x13
	.4byte	.LASF221
	.byte	0x5c
	.byte	0x17
	.byte	0x96
	.4byte	0x11c2
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0x17
	.byte	0x98
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0x17
	.byte	0x9a
	.4byte	0x12b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0x17
	.byte	0x9b
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0x17
	.byte	0x9d
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0x17
	.byte	0x9e
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF227
	.byte	0x17
	.byte	0xa0
	.4byte	0xed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF228
	.byte	0x17
	.byte	0xa1
	.4byte	0xed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0x17
	.byte	0xa3
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF230
	.byte	0x17
	.byte	0xa3
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF231
	.byte	0x17
	.byte	0xa5
	.4byte	0x12b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x17
	.byte	0xa6
	.4byte	0x11c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF232
	.byte	0x17
	.byte	0xa7
	.4byte	0x11c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF233
	.byte	0x17
	.byte	0xa9
	.4byte	0x12bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF234
	.byte	0x17
	.byte	0xac
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF235
	.byte	0x17
	.byte	0xad
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x17
	.byte	0xaf
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x17
	.byte	0xb0
	.4byte	0xefd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x17
	.byte	0xb1
	.4byte	0xea7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF239
	.byte	0x17
	.byte	0xb2
	.4byte	0xe96
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF240
	.byte	0x17
	.byte	0xb3
	.4byte	0xea1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x109d
	.uleb128 0x7
	.byte	0x4
	.4byte	0xfe8
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x17
	.byte	0x67
	.4byte	0xfe8
	.uleb128 0x11
	.byte	0x2c
	.byte	0x17
	.byte	0x7e
	.4byte	0x121a
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x17
	.byte	0x80
	.4byte	0xee7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x17
	.byte	0x81
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF244
	.byte	0x17
	.byte	0x82
	.4byte	0x121a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0x17
	.byte	0x83
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11ce
	.uleb128 0x2
	.4byte	.LASF245
	.byte	0x17
	.byte	0x84
	.4byte	0x11d9
	.uleb128 0x13
	.4byte	.LASF246
	.byte	0x1c
	.byte	0x17
	.byte	0x8a
	.4byte	0x129a
	.uleb128 0x12
	.4byte	.LASF247
	.byte	0x17
	.byte	0x8c
	.4byte	0x129a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF248
	.byte	0x17
	.byte	0x8d
	.4byte	0x129a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF249
	.byte	0x17
	.byte	0x8e
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0x17
	.byte	0x8f
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF250
	.byte	0x17
	.byte	0x90
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF251
	.byte	0x17
	.byte	0x92
	.4byte	0x12a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF252
	.byte	0x17
	.byte	0x93
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x122b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x129a
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x17
	.byte	0x94
	.4byte	0x122b
	.uleb128 0x7
	.byte	0x4
	.4byte	0xfdd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12a6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1220
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x17
	.byte	0xb4
	.4byte	0x109d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12c3
	.uleb128 0x1c
	.byte	0x18
	.byte	0x18
	.2byte	0x12e
	.4byte	0x1338
	.uleb128 0x19
	.4byte	.LASF255
	.byte	0x18
	.2byte	0x130
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF256
	.byte	0x18
	.2byte	0x134
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF257
	.byte	0x18
	.2byte	0x135
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF258
	.byte	0x18
	.2byte	0x136
	.4byte	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF259
	.byte	0x18
	.2byte	0x137
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF260
	.byte	0x18
	.2byte	0x138
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF261
	.byte	0x18
	.2byte	0x139
	.4byte	0x12d4
	.uleb128 0x11
	.byte	0x14
	.byte	0x1
	.byte	0x2f
	.4byte	0x1393
	.uleb128 0x12
	.4byte	.LASF262
	.byte	0x1
	.byte	0x30
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF263
	.byte	0x1
	.byte	0x31
	.4byte	0xa73
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF264
	.byte	0x1
	.byte	0x32
	.4byte	0xa73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"dir"
	.byte	0x1
	.byte	0x33
	.4byte	0x1393
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF265
	.byte	0x1
	.byte	0x34
	.4byte	0x1399
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe6e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x139f
	.uleb128 0x7
	.byte	0x4
	.4byte	0xdf1
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x1
	.byte	0x35
	.4byte	0x1344
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF337
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.4byte	0x13c9
	.uleb128 0x24
	.string	"ud"
	.byte	0x1
	.byte	0x3d
	.4byte	0x13c9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x13a5
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x20e
	.byte	0x1
	.4byte	0x100
	.byte	0x1
	.4byte	0x13ed
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x100
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF267
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST0
	.4byte	0x1427
	.uleb128 0x28
	.string	"p1"
	.byte	0x1
	.byte	0x42
	.4byte	0x1399
	.4byte	.LLST1
	.uleb128 0x28
	.string	"p2"
	.byte	0x1
	.byte	0x42
	.4byte	0x1399
	.4byte	.LLST2
	.byte	0
	.uleb128 0x29
	.4byte	0x13b0
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST3
	.4byte	0x1446
	.uleb128 0x2a
	.4byte	0x13be
	.4byte	.LLST4
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF268
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	0x14a8
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST5
	.4byte	0x14a8
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.byte	0xa2
	.4byte	0x14a8
	.4byte	.LLST6
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.4byte	0x71
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF270
	.byte	0x1
	.byte	0xa5
	.4byte	0x13c9
	.4byte	.LLST8
	.uleb128 0x2e
	.4byte	0x13b0
	.4byte	.LBB15
	.4byte	.LBE15
	.byte	0x1
	.byte	0xb4
	.uleb128 0x2a
	.4byte	0x13be
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xf43
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF275
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST10
	.4byte	0x14ff
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.byte	0xbb
	.4byte	0x14a8
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	.LASF270
	.byte	0x1
	.byte	0xbd
	.4byte	0x13c9
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	0x13b0
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0x1
	.byte	0xc1
	.uleb128 0x2a
	.4byte	0x13be
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF271
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST14
	.4byte	0x1548
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.byte	0xe3
	.4byte	0xf74
	.4byte	.LLST15
	.uleb128 0x2c
	.string	"pos"
	.byte	0x1
	.byte	0xe5
	.4byte	0x71
	.4byte	.LLST16
	.uleb128 0x2c
	.string	"end"
	.byte	0x1
	.byte	0xe6
	.4byte	0x71
	.4byte	.LLST17
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF272
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST18
	.4byte	0x1584
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.byte	0xf1
	.4byte	0x74a
	.4byte	.LLST19
	.uleb128 0x30
	.4byte	.LASF274
	.byte	0x1
	.byte	0xf2
	.4byte	0xcb0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x11b
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST20
	.4byte	0x15af
	.uleb128 0x32
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x11b
	.4byte	0x71
	.4byte	.LLST21
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST22
	.4byte	0x15ea
	.uleb128 0x32
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x121
	.4byte	0x71
	.4byte	.LLST23
	.uleb128 0x32
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x121
	.4byte	0x71
	.4byte	.LLST24
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x126
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST25
	.4byte	0x1647
	.uleb128 0x32
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x126
	.4byte	0x71
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x126
	.4byte	0x100
	.4byte	.LLST27
	.uleb128 0x32
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x126
	.4byte	0x71
	.4byte	.LLST28
	.uleb128 0x34
	.string	"num"
	.byte	0x1
	.2byte	0x128
	.4byte	0x71
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST29
	.4byte	0x1696
	.uleb128 0x32
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x12d
	.4byte	0x71
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x12d
	.4byte	0x100
	.4byte	.LLST31
	.uleb128 0x32
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x12d
	.4byte	0x71
	.4byte	.LLST32
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST33
	.4byte	0x16d3
	.uleb128 0x32
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x132
	.4byte	0xe0
	.4byte	.LLST34
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.2byte	0x134
	.4byte	0xf74
	.4byte	.LLST35
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x140
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x16fb
	.uleb128 0x37
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x140
	.4byte	0xe0
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x14c
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1731
	.uleb128 0x37
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x14c
	.4byte	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x14c
	.4byte	0x109
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x189
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST36
	.4byte	0x177d
	.uleb128 0x38
	.string	"fmt"
	.byte	0x1
	.2byte	0x189
	.4byte	0xe0
	.4byte	.LLST37
	.uleb128 0x39
	.uleb128 0x3a
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x18b
	.4byte	0xe80
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x177d
	.4byte	.LLST38
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x1790
	.uleb128 0x3b
	.4byte	0x83
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST39
	.4byte	0x17e1
	.uleb128 0x35
	.string	"cnt"
	.byte	0x1
	.2byte	0x158
	.4byte	0x71
	.4byte	.LLST40
	.uleb128 0x3c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3d
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x15a
	.4byte	0xad
	.4byte	.LLST41
	.uleb128 0x3d
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x15a
	.4byte	0xad
	.4byte	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x16e
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST43
	.4byte	0x182c
	.uleb128 0x32
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x16e
	.4byte	0xe0
	.4byte	.LLST44
	.uleb128 0x39
	.uleb128 0x3a
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x170
	.4byte	0xe80
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.string	"msg"
	.byte	0x1
	.2byte	0x171
	.4byte	0x182c
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	0xe6
	.4byte	0x183f
	.uleb128 0x3b
	.4byte	0x83
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF295
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST45
	.4byte	0x186a
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.4byte	0x71
	.4byte	.LLST46
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF296
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST47
	.4byte	0x18c0
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.byte	0xf9
	.4byte	0xe0
	.4byte	.LLST48
	.uleb128 0x2b
	.4byte	.LASF297
	.byte	0x1
	.byte	0xf9
	.4byte	0xb67
	.4byte	.LLST49
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.byte	0xfb
	.4byte	0xf74
	.4byte	.LLST50
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.4byte	0x71
	.4byte	.LLST51
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST52
	.4byte	0x190b
	.uleb128 0x32
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x10c
	.4byte	0xe0
	.4byte	.LLST53
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xf74
	.4byte	.LLST54
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x71
	.4byte	.LLST55
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF299
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x14a8
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST56
	.4byte	0x19fb
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x4c
	.4byte	0xe0
	.4byte	.LLST57
	.uleb128 0x2b
	.4byte	.LASF301
	.byte	0x1
	.byte	0x4c
	.4byte	0xe0
	.4byte	.LLST58
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.byte	0x4c
	.4byte	0x14a8
	.4byte	.LLST59
	.uleb128 0x30
	.4byte	.LASF302
	.byte	0x1
	.byte	0x4e
	.4byte	0xf33
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.4byte	.LASF270
	.byte	0x1
	.byte	0x4f
	.4byte	0x13c9
	.4byte	.LLST60
	.uleb128 0x2c
	.string	"dir"
	.byte	0x1
	.byte	0x50
	.4byte	0x1393
	.4byte	.LLST61
	.uleb128 0x2d
	.4byte	.LASF197
	.byte	0x1
	.byte	0x51
	.4byte	0x139f
	.4byte	.LLST62
	.uleb128 0x2d
	.4byte	.LASF265
	.byte	0x1
	.byte	0x52
	.4byte	0x1399
	.4byte	.LLST63
	.uleb128 0x2d
	.4byte	.LASF262
	.byte	0x1
	.byte	0x53
	.4byte	0x71
	.4byte	.LLST64
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x19c8
	.uleb128 0x2d
	.4byte	.LASF303
	.byte	0x1
	.byte	0x67
	.4byte	0x71
	.4byte	.LLST65
	.byte	0
	.uleb128 0x3f
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0x19e3
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x94
	.4byte	0x71
	.4byte	.LLST66
	.byte	0
	.uleb128 0x40
	.4byte	0x13b0
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x9b
	.uleb128 0x41
	.4byte	0x13be
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x199
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST67
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST68
	.4byte	0x1a48
	.uleb128 0x43
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x8a
	.uleb128 0x43
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xd4
	.byte	0
	.uleb128 0x44
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x23b
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST69
	.4byte	0x1b8e
	.uleb128 0x32
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x23b
	.4byte	0x100
	.4byte	.LLST70
	.uleb128 0x3d
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x23c
	.4byte	0x83
	.4byte	.LLST71
	.uleb128 0x3d
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x23c
	.4byte	0x83
	.4byte	.LLST72
	.uleb128 0x43
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x23d
	.4byte	0xe0
	.uleb128 0x3d
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x23e
	.4byte	0xd4
	.4byte	.LLST73
	.uleb128 0x3d
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x23e
	.4byte	0xd4
	.4byte	.LLST74
	.uleb128 0x43
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x23e
	.4byte	0xd4
	.uleb128 0x35
	.string	"cnt"
	.byte	0x1
	.2byte	0x240
	.4byte	0x71
	.4byte	.LLST75
	.uleb128 0x3d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x241
	.4byte	0x71
	.4byte	.LLST76
	.uleb128 0x3d
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x242
	.4byte	0xed
	.4byte	.LLST77
	.uleb128 0x3d
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x244
	.4byte	0xad
	.4byte	.LLST78
	.uleb128 0x3d
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x245
	.4byte	0xad
	.4byte	.LLST79
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1b37
	.uleb128 0x3d
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x249
	.4byte	0xad
	.4byte	.LLST80
	.byte	0
	.uleb128 0x3f
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0x1b55
	.uleb128 0x3d
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x254
	.4byte	0xad
	.4byte	.LLST81
	.byte	0
	.uleb128 0x45
	.4byte	0x13cf
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x24f
	.4byte	0x1b73
	.uleb128 0x2a
	.4byte	0x13e2
	.4byte	.LLST82
	.byte	0
	.uleb128 0x46
	.4byte	.LBB39
	.4byte	.LBE39
	.uleb128 0x3d
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x25a
	.4byte	0xad
	.4byte	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1
	.4byte	0xe0
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x1ae
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x1b6
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST84
	.4byte	0x1c47
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xe0
	.4byte	.LLST85
	.uleb128 0x35
	.string	"tm_"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x1c47
	.4byte	.LLST86
	.uleb128 0x34
	.string	"t_"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xa85
	.byte	0x5
	.byte	0x3
	.4byte	t_.19199
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xadd
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1d6
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST87
	.4byte	0x1ca6
	.uleb128 0x3a
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3a
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xeb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1da
	.4byte	0xeb7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3a
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1db
	.4byte	0xeb7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x1fc
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST88
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x202
	.byte	0x1
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST89
	.4byte	0x1ce7
	.uleb128 0x32
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x202
	.4byte	0xe0
	.4byte	.LLST90
	.byte	0
	.uleb128 0x49
	.4byte	0x13cf
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1d05
	.uleb128 0x2a
	.4byte	0x13e2
	.4byte	.LLST91
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x213
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST92
	.4byte	0x1d92
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x213
	.4byte	0xb67
	.4byte	.LLST93
	.uleb128 0x43
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x214
	.4byte	0x1393
	.uleb128 0x43
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x215
	.4byte	0x139f
	.uleb128 0x43
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x216
	.4byte	0xcb0
	.uleb128 0x3d
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x225
	.4byte	0xf74
	.4byte	.LLST94
	.uleb128 0x35
	.string	"num"
	.byte	0x1
	.2byte	0x227
	.4byte	0x71
	.4byte	.LLST95
	.uleb128 0x35
	.string	"res"
	.byte	0x1
	.2byte	0x228
	.4byte	0x71
	.4byte	.LLST96
	.uleb128 0x3d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x229
	.4byte	0x71
	.4byte	.LLST97
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x282
	.byte	0x1
	.4byte	0x71
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST98
	.4byte	0x1df4
	.uleb128 0x32
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x282
	.4byte	0x71
	.4byte	.LLST99
	.uleb128 0x32
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x282
	.4byte	0xed
	.4byte	.LLST100
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x285
	.4byte	0x71
	.byte	0x1
	.4byte	0x1de4
	.uleb128 0x39
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x100
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF340
	.byte	0x1
	.byte	0x1f
	.4byte	0x1e08
	.byte	0x8
	.4byte	0x3e51acbd
	.4byte	0x3ccc4d7d
	.uleb128 0x1a
	.4byte	0xd4
	.uleb128 0x4c
	.4byte	.LASF341
	.byte	0x1
	.byte	0x20
	.4byte	0xb6d
	.4byte	0x100000
	.uleb128 0x4c
	.4byte	.LASF342
	.byte	0x1
	.byte	0x21
	.4byte	0x1e2b
	.4byte	0x1800000
	.uleb128 0x1a
	.4byte	0xa73
	.uleb128 0x30
	.4byte	.LASF343
	.byte	0x1
	.byte	0x24
	.4byte	0x110
	.byte	0x5
	.byte	0x3
	.4byte	thread
	.uleb128 0x30
	.4byte	.LASF344
	.byte	0x1
	.byte	0x25
	.4byte	0x100
	.byte	0x5
	.byte	0x3
	.4byte	stack
	.uleb128 0x30
	.4byte	.LASF345
	.byte	0x1
	.byte	0x27
	.4byte	0x71
	.byte	0x5
	.byte	0x3
	.4byte	local_argc
	.uleb128 0x30
	.4byte	.LASF346
	.byte	0x1
	.byte	0x28
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	local_argv
	.uleb128 0x30
	.4byte	.LASF347
	.byte	0x1
	.byte	0x29
	.4byte	0x1338
	.byte	0x5
	.byte	0x3
	.4byte	parms
	.uleb128 0x4d
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x150
	.4byte	0xb6d
	.2byte	0x1000
	.uleb128 0x4e
	.4byte	.LASF349
	.byte	0x5
	.2byte	0x548
	.4byte	0x1ea1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1ea6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x194
	.uleb128 0x4f
	.4byte	.LASF350
	.byte	0x14
	.byte	0x9a
	.4byte	0x71
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF351
	.byte	0x14
	.byte	0x9b
	.4byte	0xed
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.4byte	.LASF352
	.byte	0x19
	.2byte	0xc2c
	.4byte	0x12ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x51
	.4byte	.LASF353
	.byte	0x1
	.byte	0x2c
	.4byte	0xe96
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	isDedicated
	.uleb128 0xf
	.4byte	0xf74
	.4byte	0x1efb
	.uleb128 0x10
	.4byte	0x83
	.byte	0x9
	.byte	0
	.uleb128 0x51
	.4byte	.LASF354
	.byte	0x1
	.byte	0xd1
	.4byte	0x1eeb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sys_handles
	.uleb128 0x50
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sock
	.uleb128 0x50
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	csock
	.uleb128 0x50
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xb8d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	client
	.uleb128 0x50
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x1d3
	.4byte	0xb8d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	server
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x16
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.4byte	.LFB73
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB72
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE72
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB75
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE75
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x73
	.sleb128 128
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x3
	.byte	0x8f
	.sleb128 128
	.4byte	.LVL8-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL15
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB76
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI10
	.4byte	.LFE76
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x73
	.sleb128 128
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x8f
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x73
	.sleb128 128
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x8f
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB78
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI12
	.4byte	.LFE78
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL29
	.4byte	.LFE78
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB79
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI14
	.4byte	.LFE79
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB82
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI16
	.4byte	.LFE82
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB83
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI18
	.4byte	.LFE83
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB84
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI20
	.4byte	.LFE84
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL38
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB85
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI22
	.4byte	.LFE85
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL42
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB86
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI24
	.4byte	.LFE86
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB91
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x3
	.byte	0x8f
	.sleb128 128
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LCFI28
	.4byte	.LFE91
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x71
	.sleb128 23
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB89
	.4byte	.LCFI29
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI30
	.4byte	.LFE89
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xa
	.2byte	0x12c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB90
	.4byte	.LCFI31
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31
	.4byte	.LCFI32
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI32
	.4byte	.LFE90
	.2byte	0x3
	.byte	0x8f
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB77
	.4byte	.LCFI33
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI34
	.4byte	.LFE77
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB80
	.4byte	.LCFI35
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI36
	.4byte	.LCFI37
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI38
	.4byte	.LFE80
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-1
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL81
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB81
	.4byte	.LCFI39
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39
	.4byte	.LCFI40
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI40
	.4byte	.LCFI41
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41
	.4byte	.LFE81
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92-1
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL100
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB74
	.4byte	.LCFI42
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42
	.4byte	.LCFI43
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	.LCFI43
	.4byte	.LCFI44
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44
	.4byte	.LCFI45
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	.LCFI45
	.4byte	.LCFI46
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46
	.4byte	.LFE74
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL126
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL126
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL126
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-1
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL135
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB92
	.4byte	.LCFI47
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47
	.4byte	.LFE92
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB93
	.4byte	.LCFI48
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48
	.4byte	.LCFI49
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI49
	.4byte	.LFE93
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB105
	.4byte	.LCFI50
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL137
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL148-1
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x9
	.byte	0x8b
	.sleb128 0
	.byte	0x88
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x88
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL165
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL165
	.4byte	.LFE105
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL137
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL138
	.4byte	.LVL140-1
	.2byte	0x5
	.byte	0x3
	.4byte	local_argc
	.4byte	.LVL140-1
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x5
	.byte	0x3
	.4byte	local_argv
	.4byte	.LVL140-1
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-1
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150-1
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB99
	.4byte	.LCFI51
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51
	.4byte	.LCFI52
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI52
	.4byte	.LFE99
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LFB100
	.4byte	.LCFI53
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53
	.4byte	.LCFI54
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI54
	.4byte	.LFE100
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LFB101
	.4byte	.LCFI55
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55
	.4byte	.LCFI56
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI56
	.4byte	.LFE101
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LFB102
	.4byte	.LCFI57
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57
	.4byte	.LCFI58
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI58
	.4byte	.LFE102
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL174
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-1
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x3
	.byte	0x73
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LFB104
	.4byte	.LCFI59
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59
	.4byte	.LCFI60
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI60
	.4byte	.LCFI61
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61
	.4byte	.LFE104
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LFE104
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LFE104
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187
	.4byte	.LVL188-1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL183
	.4byte	.LVL190
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LFB106
	.4byte	.LCFI62
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62
	.4byte	.LCFI63
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI63
	.4byte	.LCFI64
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL192
	.4byte	.LVL193-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193-1
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL196
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL192
	.4byte	.LVL193-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL193-1
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL196
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"_flock_t"
.LASF302:
	.string	"pathbuf"
.LASF223:
	.string	"plane"
.LASF345:
	.string	"local_argc"
.LASF341:
	.string	"stacksize"
.LASF209:
	.string	"name"
.LASF243:
	.string	"mipadjust"
.LASF311:
	.string	"prevTime"
.LASF290:
	.string	"Sys_WaitPress"
.LASF14:
	.string	"char"
.LASF346:
	.string	"local_argv"
.LASF337:
	.string	"uxdata_free"
.LASF48:
	.string	"_on_exit_args"
.LASF184:
	.string	"dirStruct"
.LASF65:
	.string	"_write"
.LASF145:
	.string	"tm_yday"
.LASF275:
	.string	"Sys_Findclose"
.LASF115:
	.string	"_wctomb_state"
.LASF158:
	.string	"sa_data"
.LASF320:
	.string	"Sys_SendKeyEvents"
.LASF224:
	.string	"flags"
.LASF112:
	.string	"_r48"
.LASF155:
	.string	"sockaddr"
.LASF39:
	.string	"__tm_sec"
.LASF117:
	.string	"_signal_buf"
.LASF333:
	.string	"direntry"
.LASF237:
	.string	"styles"
.LASF180:
	.string	"st_blksize"
.LASF62:
	.string	"_lbfsize"
.LASF60:
	.string	"_flags"
.LASF267:
	.string	"direntp_compare"
.LASF77:
	.string	"_errno"
.LASF289:
	.string	"argptr"
.LASF20:
	.string	"_off_t"
.LASF310:
	.string	"heap"
.LASF217:
	.string	"anim_max"
.LASF103:
	.string	"_seed"
.LASF308:
	.string	"level"
.LASF141:
	.string	"tm_mday"
.LASF259:
	.string	"membase"
.LASF268:
	.string	"Sys_Findnext"
.LASF21:
	.string	"_LOCK_RECURSIVE_T"
.LASF286:
	.string	"startaddr"
.LASF294:
	.string	"error"
.LASF64:
	.string	"_read"
.LASF231:
	.string	"polys"
.LASF32:
	.string	"__ULong"
.LASF119:
	.string	"_mbrlen_state"
.LASF327:
	.string	"gateway"
.LASF189:
	.string	"d_name"
.LASF79:
	.string	"_stdout"
.LASF69:
	.string	"_nbuf"
.LASF314:
	.string	"a1lo"
.LASF19:
	.string	"_fpos_t"
.LASF256:
	.string	"cachedir"
.LASF55:
	.string	"_fns"
.LASF63:
	.string	"_cookie"
.LASF269:
	.string	"dirdata"
.LASF227:
	.string	"texturemins"
.LASF37:
	.string	"_Bigint"
.LASF254:
	.string	"msurface_t"
.LASF74:
	.string	"_mbstate"
.LASF265:
	.string	"list"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"wint_t"
.LASF316:
	.string	"_disable_mask"
.LASF87:
	.string	"_result"
.LASF183:
	.string	"device"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF41:
	.string	"__tm_hour"
.LASF171:
	.string	"st_gid"
.LASF142:
	.string	"tm_mon"
.LASF242:
	.string	"vecs"
.LASF255:
	.string	"basedir"
.LASF240:
	.string	"samples"
.LASF28:
	.string	"__count"
.LASF12:
	.string	"float"
.LASF102:
	.string	"_rand48"
.LASF322:
	.string	"Sys_LowFPPrecision"
.LASF150:
	.string	"sin_len"
.LASF125:
	.string	"_nextf"
.LASF220:
	.string	"offsets"
.LASF292:
	.string	"wmpress"
.LASF339:
	.string	"result"
.LASF162:
	.string	"overflow_arg_area"
.LASF212:
	.string	"gl_texturenum"
.LASF11:
	.string	"long long unsigned int"
.LASF181:
	.string	"st_blocks"
.LASF108:
	.string	"_asctime_buf"
.LASF36:
	.string	"_wds"
.LASF340:
	.string	"TB_TIMERCLOCK_SEC_INV"
.LASF326:
	.string	"localip"
.LASF298:
	.string	"Sys_FileOpenWrite"
.LASF176:
	.string	"st_mtime"
.LASF350:
	.string	"com_argc"
.LASF360:
	.string	"d:/Data/Nintendo/TenebraeGX/src/sys_ogc.c"
.LASF151:
	.string	"sin_family"
.LASF98:
	.string	"__FILE"
.LASF361:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF323:
	.string	"Sys_Strtime"
.LASF71:
	.string	"_offset"
.LASF351:
	.string	"com_argv"
.LASF305:
	.string	"time"
.LASF166:
	.string	"st_dev"
.LASF238:
	.string	"cached_light"
.LASF287:
	.string	"length"
.LASF165:
	.string	"stat"
.LASF82:
	.string	"_emergency"
.LASF214:
	.string	"texturechain"
.LASF285:
	.string	"Sys_MakeCodeWriteable"
.LASF154:
	.string	"sin_zero"
.LASF57:
	.string	"_base"
.LASF236:
	.string	"lightmaptexturenum"
.LASF342:
	.string	"heap_size"
.LASF159:
	.string	"__gnuc_va_list"
.LASF148:
	.string	"s_addr"
.LASF128:
	.string	"size_t"
.LASF215:
	.string	"anim_total"
.LASF210:
	.string	"width"
.LASF296:
	.string	"Sys_FileOpenRead"
.LASF247:
	.string	"next"
.LASF312:
	.string	"currTime"
.LASF188:
	.string	"d_type"
.LASF104:
	.string	"_mult"
.LASF348:
	.string	"MAX_CHARS_SYSPRINTF"
.LASF81:
	.string	"_inc"
.LASF15:
	.string	"_Bool"
.LASF272:
	.string	"filelengthByPath"
.LASF329:
	.string	"Sys_CloseLogTerminal"
.LASF257:
	.string	"argc"
.LASF291:
	.string	"gcpress"
.LASF283:
	.string	"Sys_FileTime"
.LASF33:
	.string	"_next"
.LASF168:
	.string	"st_mode"
.LASF121:
	.string	"_mbsrtowcs_state"
.LASF271:
	.string	"filelength"
.LASF347:
	.string	"parms"
.LASF169:
	.string	"st_nlink"
.LASF313:
	.string	"deltaTime"
.LASF303:
	.string	"code"
.LASF321:
	.string	"Sys_HighFPPrecision"
.LASF244:
	.string	"texture"
.LASF29:
	.string	"__value"
.LASF89:
	.string	"_p5s"
.LASF45:
	.string	"__tm_wday"
.LASF263:
	.string	"count"
.LASF123:
	.string	"_wcsrtombs_state"
.LASF270:
	.string	"uxdata"
.LASF264:
	.string	"lsize"
.LASF273:
	.string	"path"
.LASF42:
	.string	"__tm_mday"
.LASF95:
	.string	"_sig_func"
.LASF120:
	.string	"_mbrtowc_state"
.LASF239:
	.string	"cached_dlight"
.LASF356:
	.string	"csock"
.LASF107:
	.string	"_strtok_last"
.LASF222:
	.string	"visframe"
.LASF143:
	.string	"tm_year"
.LASF331:
	.string	"text"
.LASF70:
	.string	"_blksize"
.LASF330:
	.string	"Sys_WriteSocket"
.LASF355:
	.string	"sock"
.LASF88:
	.string	"_result_k"
.LASF245:
	.string	"mtexinfo_t"
.LASF174:
	.string	"st_atime"
.LASF335:
	.string	"file"
.LASF26:
	.string	"__wch"
.LASF1:
	.string	"uint8_t"
.LASF130:
	.string	"time_t"
.LASF325:
	.string	"clientlen"
.LASF67:
	.string	"_close"
.LASF85:
	.string	"__sdidinit"
.LASF196:
	.string	"qboolean"
.LASF299:
	.string	"Sys_Findfirst"
.LASF167:
	.string	"st_ino"
.LASF3:
	.string	"unsigned char"
.LASF233:
	.string	"texinfo"
.LASF194:
	.string	"va_list"
.LASF78:
	.string	"_stdin"
.LASF110:
	.string	"_gamma_signgam"
.LASF328:
	.string	"netmask"
.LASF10:
	.string	"long long int"
.LASF149:
	.string	"sockaddr_in"
.LASF364:
	.string	"quakeMain"
.LASF90:
	.string	"_freelist"
.LASF191:
	.string	"dirData"
.LASF152:
	.string	"sin_port"
.LASF105:
	.string	"_add"
.LASF122:
	.string	"_wcrtomb_state"
.LASF134:
	.string	"uid_t"
.LASF133:
	.string	"dev_t"
.LASF61:
	.string	"_file"
.LASF86:
	.string	"__cleanup"
.LASF113:
	.string	"_mblen_state"
.LASF30:
	.string	"_mbstate_t"
.LASF260:
	.string	"memsize"
.LASF332:
	.string	"testRead"
.LASF204:
	.string	"dist"
.LASF47:
	.string	"__tm_isdst"
.LASF309:
	.string	"real_heap_size"
.LASF153:
	.string	"sin_addr"
.LASF208:
	.string	"texture_s"
.LASF241:
	.string	"texture_t"
.LASF319:
	.string	"Sys_Sleep"
.LASF300:
	.string	"dirname"
.LASF211:
	.string	"height"
.LASF221:
	.string	"msurface_s"
.LASF124:
	.string	"_h_errno"
.LASF175:
	.string	"st_spare1"
.LASF177:
	.string	"st_spare2"
.LASF179:
	.string	"st_spare3"
.LASF182:
	.string	"st_spare4"
.LASF235:
	.string	"dlightbits"
.LASF353:
	.string	"isDedicated"
.LASF282:
	.string	"data"
.LASF43:
	.string	"__tm_mon"
.LASF232:
	.string	"shadowchain"
.LASF6:
	.string	"short unsigned int"
.LASF216:
	.string	"anim_min"
.LASF193:
	.string	"long double"
.LASF24:
	.string	"__gid_t"
.LASF5:
	.string	"uint16_t"
.LASF250:
	.string	"lightTimestamp"
.LASF228:
	.string	"extents"
.LASF94:
	.string	"_atexit0"
.LASF186:
	.string	"dirent"
.LASF135:
	.string	"gid_t"
.LASF192:
	.string	"fileData"
.LASF53:
	.string	"_atexit"
.LASF334:
	.string	"statbuf"
.LASF278:
	.string	"Sys_FileSeek"
.LASF4:
	.string	"short int"
.LASF129:
	.string	"long int"
.LASF354:
	.string	"sys_handles"
.LASF206:
	.string	"signbits"
.LASF229:
	.string	"light_s"
.LASF230:
	.string	"light_t"
.LASF306:
	.string	"dtime"
.LASF156:
	.string	"sa_len"
.LASF362:
	.string	"_wgpipe"
.LASF97:
	.string	"__sf"
.LASF35:
	.string	"_sign"
.LASF18:
	.string	"WGPipe"
.LASF22:
	.string	"__dev_t"
.LASF301:
	.string	"filter"
.LASF84:
	.string	"_current_locale"
.LASF276:
	.string	"Sys_FileClose"
.LASF72:
	.string	"_data"
.LASF249:
	.string	"numverts"
.LASF27:
	.string	"__wchb"
.LASF226:
	.string	"numedges"
.LASF44:
	.string	"__tm_year"
.LASF160:
	.string	"__va_list_tag"
.LASF246:
	.string	"glpoly_s"
.LASF253:
	.string	"glpoly_t"
.LASF318:
	.string	"Sys_Quit"
.LASF17:
	.string	"lwp_t"
.LASF219:
	.string	"alternate_anims"
.LASF293:
	.string	"Sys_Error"
.LASF274:
	.string	"file_info"
.LASF109:
	.string	"_localtime_buf"
.LASF251:
	.string	"neighbours"
.LASF304:
	.string	"Sys_FloatTime"
.LASF127:
	.string	"_unused"
.LASF178:
	.string	"st_ctime"
.LASF93:
	.string	"_new"
.LASF324:
	.string	"Sys_AcceptLogTerminal"
.LASF352:
	.string	"causticschain"
.LASF91:
	.string	"_cvtlen"
.LASF34:
	.string	"_maxwds"
.LASF116:
	.string	"_l64a_buf"
.LASF9:
	.string	"unsigned int"
.LASF344:
	.string	"stack"
.LASF357:
	.string	"client"
.LASF317:
	.string	"_enable_mask"
.LASF295:
	.string	"findhandle"
.LASF38:
	.string	"__tm"
.LASF73:
	.string	"_lock"
.LASF218:
	.string	"anim_next"
.LASF16:
	.string	"long unsigned int"
.LASF100:
	.string	"_niobs"
.LASF83:
	.string	"_current_category"
.LASF363:
	.string	"align32"
.LASF163:
	.string	"reg_save_area"
.LASF7:
	.string	"int32_t"
.LASF40:
	.string	"__tm_min"
.LASF284:
	.string	"Sys_mkdir"
.LASF343:
	.string	"thread"
.LASF234:
	.string	"dlightframe"
.LASF50:
	.string	"_dso_handle"
.LASF195:
	.string	"byte"
.LASF139:
	.string	"tm_min"
.LASF359:
	.string	"GNU C 4.6.3"
.LASF147:
	.string	"in_addr"
.LASF365:
	.string	"Sys_ConsoleInput"
.LASF197:
	.string	"entry"
.LASF279:
	.string	"Sys_FileRead"
.LASF252:
	.string	"firstvertex"
.LASF205:
	.string	"type"
.LASF92:
	.string	"_cvtbuf"
.LASF200:
	.string	"vec_t"
.LASF54:
	.string	"_ind"
.LASF338:
	.string	"VID_Setup"
.LASF262:
	.string	"pathlen"
.LASF358:
	.string	"server"
.LASF198:
	.string	"internal"
.LASF118:
	.string	"_getdate_err"
.LASF137:
	.string	"nlink_t"
.LASF46:
	.string	"__tm_yday"
.LASF68:
	.string	"_ubuf"
.LASF297:
	.string	"hndl"
.LASF266:
	.string	"uxdirdata_t"
.LASF56:
	.string	"__sbuf"
.LASF23:
	.string	"__uid_t"
.LASF173:
	.string	"st_size"
.LASF99:
	.string	"_glue"
.LASF187:
	.string	"d_ino"
.LASF281:
	.string	"Sys_FileWrite"
.LASF144:
	.string	"tm_wday"
.LASF315:
	.string	"a1hi"
.LASF52:
	.string	"_is_cxa"
.LASF96:
	.string	"__sglue"
.LASF261:
	.string	"quakeparms_t"
.LASF170:
	.string	"st_uid"
.LASF114:
	.string	"_mbtowc_state"
.LASF203:
	.string	"normal"
.LASF140:
	.string	"tm_hour"
.LASF258:
	.string	"argv"
.LASF49:
	.string	"_fnargs"
.LASF157:
	.string	"sa_family"
.LASF76:
	.string	"_reent"
.LASF132:
	.string	"off_t"
.LASF136:
	.string	"mode_t"
.LASF138:
	.string	"tm_sec"
.LASF248:
	.string	"chain"
.LASF277:
	.string	"handle"
.LASF336:
	.string	"main"
.LASF349:
	.string	"wgPipe"
.LASF146:
	.string	"tm_isdst"
.LASF161:
	.string	"reserved"
.LASF307:
	.string	"_void"
.LASF51:
	.string	"_fntypes"
.LASF59:
	.string	"__sFILE"
.LASF58:
	.string	"_size"
.LASF13:
	.string	"double"
.LASF199:
	.string	"dirdata_t"
.LASF185:
	.string	"DIR_ITER"
.LASF106:
	.string	"_unused_rand"
.LASF172:
	.string	"st_rdev"
.LASF164:
	.string	"FILE"
.LASF213:
	.string	"gl_lumitex"
.LASF75:
	.string	"_flags2"
.LASF131:
	.string	"ino_t"
.LASF202:
	.string	"mplane_s"
.LASF207:
	.string	"mplane_t"
.LASF201:
	.string	"vec3_t"
.LASF111:
	.string	"_rand_next"
.LASF280:
	.string	"dest"
.LASF66:
	.string	"_seek"
.LASF288:
	.string	"Sys_Printf"
.LASF190:
	.string	"position"
.LASF80:
	.string	"_stderr"
.LASF126:
	.string	"_nmalloc"
.LASF101:
	.string	"_iobs"
.LASF225:
	.string	"firstedge"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
