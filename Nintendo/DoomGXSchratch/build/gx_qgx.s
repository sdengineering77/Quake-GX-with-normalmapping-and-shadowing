	.file	"gx_qgx.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z7qgxInitv
	.type	_Z7qgxInitv, @function
_Z7qgxInitv:
.LFB38:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_qgx.cpp"
	.loc 1 13 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 14 0
	.cfi_offset 65, 4
	bl _Z15qgxInitGXShaderv
	.loc 1 15 0
	bl _Z15qgxInitTexturesv
	.loc 1 16 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE38:
	.size	_Z7qgxInitv, .-_Z7qgxInitv
	.align 2
	.globl _Z21qgx_AsGXPrimitiveTypej
	.type	_Z21qgx_AsGXPrimitiveTypej, @function
_Z21qgx_AsGXPrimitiveTypej:
.LFB39:
	.loc 1 23 0
	.cfi_startproc
.LVL0:
	.loc 1 23 0
	cmplwi 7,3,9
	li 0,0
	bgt- 7,.L3
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lbzx 0,9,3
.L3:
	.loc 1 44 0
	mr 3,0
.LVL1:
	blr
	.cfi_endproc
.LFE39:
	.size	_Z21qgx_AsGXPrimitiveTypej, .-_Z21qgx_AsGXPrimitiveTypej
	.align 2
	.globl _Z10qgxScissoriiii
	.type	_Z10qgxScissoriiii, @function
_Z10qgxScissoriiii:
.LFB40:
	.loc 1 53 0
	.cfi_startproc
.LVL2:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 53 0
	nor 0,3,3
	.cfi_offset 65, 4
	srawi 0,0,31
	and 3,3,0
.LVL3:
.LBB18:
	.loc 1 59 0
	add 0,5,3
	cmpwi 7,0,640
.LBE18:
	.loc 1 53 0
	nor 0,4,4
	srawi 0,0,31
	and 4,4,0
.LVL4:
.LBB19:
	.loc 1 59 0
	ble- 7,.L9
	.loc 1 59 0 is_stmt 0 discriminator 1
	subfic 5,3,640
.LVL5:
.L9:
	.loc 1 60 0 is_stmt 1
	add 0,6,4
	cmpwi 7,0,480
	ble- 7,.L10
	.loc 1 60 0 is_stmt 0 discriminator 1
	subfic 6,4,480
.LVL6:
.L10:
	.loc 1 63 0 is_stmt 1
	subfic 0,6,480
	.loc 1 67 0
	subf 4,4,0
.LVL7:
	bl GX_SetScissor
.LVL8:
.LBE19:
	.loc 1 68 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE40:
	.size	_Z10qgxScissoriiii, .-_Z10qgxScissoriiii
	.align 2
	.globl _Z11qgxViewportiiii
	.type	_Z11qgxViewportiiii, @function
_Z11qgxViewportiiii:
.LFB41:
	.loc 1 74 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-40(1)
.LCFI4:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 0,44(1)
	.loc 1 74 0
	nor 0,3,3
	.cfi_offset 65, 4
	srawi 0,0,31
	and 3,3,0
.LVL10:
.LBB20:
	.loc 1 80 0
	add 0,5,3
	cmpwi 7,0,640
.LBE20:
	.loc 1 74 0
	nor 0,4,4
	srawi 0,0,31
	and 4,4,0
.LVL11:
.LBB21:
	.loc 1 80 0
	ble- 7,.L14
	.loc 1 80 0 is_stmt 0 discriminator 1
	subfic 5,3,640
.LVL12:
.L14:
	.loc 1 81 0 is_stmt 1
	add 0,6,4
	cmpwi 7,0,480
	ble- 7,.L15
	.loc 1 81 0 is_stmt 0 discriminator 1
	subfic 6,4,480
.LVL13:
.L15:
	.loc 1 84 0 is_stmt 1
	subfic 0,6,480
	.loc 1 88 0
	lis 9,0x4330
	.loc 1 84 0
	subf 4,4,0
.LVL14:
	.loc 1 88 0
	stw 9,8(1)
	stw 9,16(1)
	stw 9,24(1)
	stw 9,32(1)
	lis 9,.LC1@ha
	stw 3,12(1)
	stw 4,20(1)
	stw 5,28(1)
	stw 6,36(1)
	lfs 0,.LC1@l(9)
	lis 9,.LC2@ha
	lfd 1,8(1)
	lfd 2,16(1)
	lfd 3,24(1)
	fsub 1,1,0
	lfd 4,32(1)
	fsub 2,2,0
	fsub 3,3,0
	lfs 6,.LC2@l(9)
	fsub 4,4,0
	lis 9,.LC3@ha
	frsp 1,1
	lfs 5,.LC3@l(9)
	frsp 2,2
	frsp 3,3
	frsp 4,4
	bl GX_SetViewport
.LVL15:
.LBE21:
	.loc 1 89 0
	lwz 0,44(1)
	addi 1,1,40
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	_Z11qgxViewportiiii, .-_Z11qgxViewportiiii
	.align 2
	.globl _Z12qgxAlphaFuncif
	.type	_Z12qgxAlphaFuncif, @function
_Z12qgxAlphaFuncif:
.LFB42:
	.loc 1 95 0
	.cfi_startproc
.LVL16:
	stwu 1,-48(1)
.LCFI6:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -20
	.cfi_register 65, 0
.LBB22:
	.loc 1 96 0
	lis 3,.LC4@ha
.LVL17:
	mr 4,31
	la 3,.LC4@l(3)
.LBE22:
	.loc 1 95 0
	stw 0,52(1)
	stfd 30,32(1)
	stfd 31,40(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	stw 29,20(1)
	.loc 1 99 0
	li 29,1
	.cfi_offset 29, -28
	.loc 1 95 0
	stw 30,24(1)
.LBB23:
	.loc 1 96 0
	.cfi_offset 30, -24
	creqv 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL18:
	addi 0,31,-512
	fmr 30,31
	cmplwi 7,0,6
.LBE23:
	.loc 1 99 0
	li 31,7
.LVL19:
.LBB24:
	.loc 1 96 0
	bgt- 7,.L17
	lis 31,.LANCHOR0@ha
.LBE24:
	.loc 1 99 0
	li 29,0
.LBB25:
	.loc 1 96 0
	la 31,.LANCHOR0@l(31)
	add 31,31,0
	lbz 31,12(31)
.L17:
.LVL20:
	.loc 1 135 0
	lis 30,.LANCHOR1@ha
	lbz 0,.LANCHOR1@l(30)
.LVL21:
	cmpw 7,0,29
	beq- 7,.L18
	.loc 1 136 0
	mr 3,29
	bl GX_SetZCompLoc
	.loc 1 138 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	mr 4,29
	.loc 1 137 0
	stb 29,.LANCHOR1@l(30)
	.loc 1 138 0
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.L18:
	.loc 1 141 0
	la 30,.LANCHOR1@l(30)
	lis 29,.LANCHOR2@ha
.LVL22:
	lbz 0,1(30)
	cmpw 7,0,31
	beq- 7,.L24
.L19:
	.loc 1 142 0
	fctiwz 0,31
	addi 9,1,8
	mr 3,31
	li 5,0
	li 6,7
	li 7,0
	stfiwx 0,0,9
	lwz 4,8(1)
	rlwinm 4,4,0,0xff
	bl GX_SetAlphaCompare
	.loc 1 145 0
	fmr 1,30
	lis 3,.LC6@ha
	mr 4,31
	la 3,.LC6@l(3)
	.loc 1 143 0
	stb 31,1(30)
	.loc 1 144 0
	stfs 31,.LANCHOR2@l(29)
	.loc 1 145 0
	creqv 6,6,6
	bl _Z10Sys_PrintfPKcz
.LBE25:
	.loc 1 147 0
	lwz 0,52(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL23:
	lfd 30,32(1)
	lfd 31,40(1)
.LVL24:
	addi 1,1,48
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL25:
.L24:
.LCFI8:
	.cfi_restore_state
.LBB26:
	.loc 1 141 0 discriminator 1
	lfs 0,.LANCHOR2@l(29)
	fcmpu 7,0,31
	bne+ 7,.L19
.LBE26:
	.loc 1 147 0
	lwz 0,52(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL26:
	lfd 30,32(1)
	lfd 31,40(1)
.LVL27:
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE42:
	.size	_Z12qgxAlphaFuncif, .-_Z12qgxAlphaFuncif
	.align 2
	.globl _Z19qgxSetVertexPointeriPvi
	.type	_Z19qgxSetVertexPointeriPvi, @function
_Z19qgxSetVertexPointeriPvi:
.LFB43:
	.loc 1 154 0
	.cfi_startproc
.LVL28:
	.loc 1 156 0
	cmpwi 7,5,255
	.loc 1 154 0
	mflr 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 1 156 0
	bgt- 7,.L30
	.cfi_offset 65, 4
	.loc 1 160 0
	cmpwi 7,31,9
	beq- 7,.L31
.LVL29:
.L27:
	.loc 1 163 0
	cmpwi 7,31,13
	beq- 7,.L32
	.loc 1 167 0
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	.loc 1 169 0
	mr 3,31
	mr 4,29
	rlwinm 5,30,0,0xff
	bl GX_SetArray
	.loc 1 170 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL30:
	mtlr 0
	lwz 30,16(1)
.LVL31:
	lwz 31,20(1)
.LVL32:
	addi 1,1,24
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL33:
.L32:
.LCFI12:
	.cfi_restore_state
	.loc 1 164 0
	lis 9,.LANCHOR2@ha
	.loc 1 169 0
	mr 3,31
	.loc 1 164 0
	la 9,.LANCHOR2@l(9)
	.loc 1 169 0
	mr 4,29
	.loc 1 164 0
	stw 29,12(9)
	.loc 1 169 0
	rlwinm 5,30,0,0xff
	.loc 1 165 0
	stw 30,16(9)
	.loc 1 169 0
	bl GX_SetArray
	.loc 1 170 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL34:
	mtlr 0
	lwz 30,16(1)
.LVL35:
	lwz 31,20(1)
.LVL36:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI13:
	.cfi_def_cfa_offset 0
	blr
.LVL37:
.L30:
.LCFI14:
	.cfi_restore_state
	.loc 1 157 0
	lis 3,.LC7@ha
.LVL38:
	mr 4,5
.LVL39:
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL40:
	.loc 1 160 0
	cmpwi 7,31,9
	bne+ 7,.L27
.L31:
	.loc 1 161 0
	lis 9,.LANCHOR2@ha
	.loc 1 169 0
	mr 3,31
	.loc 1 161 0
	la 9,.LANCHOR2@l(9)
	.loc 1 169 0
	mr 4,29
	.loc 1 161 0
	stw 29,4(9)
	.loc 1 169 0
	rlwinm 5,30,0,0xff
	.loc 1 162 0
	stw 30,8(9)
	.loc 1 169 0
	bl GX_SetArray
	.loc 1 170 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL41:
	mtlr 0
	lwz 30,16(1)
.LVL42:
	lwz 31,20(1)
.LVL43:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE43:
	.size	_Z19qgxSetVertexPointeriPvi, .-_Z19qgxSetVertexPointeriPvi
	.align 2
	.globl _Z15qgxDrawElementsiiiPi
	.type	_Z15qgxDrawElementsiiiPi, @function
_Z15qgxDrawElementsiiiPi:
.LFB44:
	.loc 1 172 0
	.cfi_startproc
.LVL44:
	mfcr 12
.LBB27:
	.loc 1 175 0
	cmplwi 7,3,9
.LBE27:
	.loc 1 172 0
	mflr 0
	stwu 1,-72(1)
.LCFI16:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.cfi_register 70, 12
	stw 27,52(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 30,64(1)
.LBB46:
.LBB28:
	li 30,0
	.cfi_offset 30, -8
.LBE28:
.LBE46:
	stw 31,68(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,76(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 12,28(1)
.LBB47:
	.loc 1 175 0
	bgt- 7,.L34
	.cfi_offset 70, -44
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lbzx 30,9,3
.L34:
.LVL45:
	.loc 1 176 0
	li 0,0
	ori 0,0,65535
	cmpw 7,31,0
	bgt- 7,.L51
	.loc 1 179 0
	addi 3,1,8
.LVL46:
	bl _Z21qgxGetCurrentGXVtxFmtv
.LVL47:
	.loc 1 181 0
	lbz 4,11(1)
	mr 3,30
	rlwinm 5,31,0,0xffff
	.loc 1 179 0
	lwz 28,12(1)
.LVL48:
	lwz 29,16(1)
.LVL49:
	lwz 30,20(1)
.LVL50:
	.loc 1 181 0
	bl GX_Begin
.LVL51:
.LBB29:
	.loc 1 182 0
	cmpwi 7,31,0
	ble- 7,.L33
.LVL52:
.L36:
	lis 25,wgPipe@ha
.LBB30:
	.loc 1 184 0
	li 23,0
	.loc 1 185 0
	lis 22,.LC10@ha
	cmpwi 4,28,0
	cmpwi 3,29,0
	cmpwi 2,30,0
.LBE30:
	.loc 1 172 0
	addi 24,27,-4
.LBE29:
.LBB43:
	.loc 1 182 0
	li 26,0
	la 25,wgPipe@l(25)
.LBE43:
.LBB44:
.LBB41:
	.loc 1 184 0
	ori 23,23,65534
	.loc 1 185 0
	la 22,.LC10@l(22)
.LVL53:
.L45:
	.loc 1 183 0
	lwzu 27,4(24)
.LVL54:
	.loc 1 184 0
	cmpw 7,27,23
	bgt- 7,.L52
.LVL55:
.L38:
.LBB31:
.LBB32:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 2219 0
	lwz 9,0(25)
.LBE32:
.LBE31:
	.loc 1 187 0
	rlwinm 27,27,0,0xffff
.LVL56:
.LBB34:
.LBB33:
	.loc 2 2219 0
	sth 27,0(9)
	.loc 2 2220 0
.LVL57:
.LBE33:
.LBE34:
	.loc 1 192 0
	ble- 4,.L39
.LBB35:
.LBB36:
	.loc 2 2261 0
	mtctr 28
.LVL58:
.L40:
	.loc 2 2261 0 is_stmt 0 discriminator 2
	sth 27,0(9)
	.loc 2 2262 0 is_stmt 1 discriminator 2
.LBE36:
.LBE35:
	.loc 1 192 0 discriminator 2
	bdnz .L40
.LVL59:
.L39:
	.loc 1 195 0 discriminator 1
	ble- 3,.L41
.LBB37:
.LBB38:
	.loc 2 2317 0
	lwz 9,0(25)
	mtctr 29
.LVL60:
.L42:
	.loc 2 2317 0 is_stmt 0 discriminator 2
	sth 27,0(9)
	.loc 2 2318 0 is_stmt 1 discriminator 2
.LBE38:
.LBE37:
	.loc 1 195 0 discriminator 2
	bdnz .L42
.LVL61:
.L41:
	.loc 1 198 0 discriminator 1
	ble- 2,.L43
.LBB39:
.LBB40:
	.loc 2 2399 0
	lwz 9,0(25)
	mtctr 30
.LVL62:
.L44:
	.loc 2 2399 0 is_stmt 0 discriminator 2
	sth 27,0(9)
	.loc 2 2400 0 is_stmt 1 discriminator 2
.LBE40:
.LBE39:
	.loc 1 198 0 discriminator 2
	bdnz .L44
.LVL63:
.L43:
.LBE41:
	.loc 1 182 0
	addi 26,26,1
.LVL64:
	cmpw 7,26,31
	bne+ 7,.L45
.LVL65:
.L33:
.LBE44:
.LBE47:
	.loc 1 209 0
	lwz 0,76(1)
	lwz 12,28(1)
	mtlr 0
	lwz 22,32(1)
	lwz 23,36(1)
	mtcrf 56,12
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
.LVL66:
	lwz 29,60(1)
.LVL67:
	lwz 30,64(1)
.LVL68:
	lwz 31,68(1)
.LVL69:
	addi 1,1,72
	.cfi_remember_state
.LCFI17:
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
.LVL70:
.L52:
.LCFI18:
	.cfi_restore_state
.LBB48:
.LBB45:
.LBB42:
	.loc 1 185 0
	mr 3,22
	mr 4,27
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L38
.LVL71:
.L51:
.LBE42:
.LBE45:
	.loc 1 177 0
	lis 3,.LC9@ha
.LVL72:
	mr 4,31
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL73:
	.loc 1 179 0
	addi 3,1,8
	bl _Z21qgxGetCurrentGXVtxFmtv
	.loc 1 181 0
	lbz 4,11(1)
	mr 3,30
	rlwinm 5,31,0,0xffff
	.loc 1 179 0
	lwz 28,12(1)
.LVL74:
	lwz 29,16(1)
.LVL75:
	lwz 30,20(1)
.LVL76:
	.loc 1 181 0
	bl GX_Begin
.LVL77:
	b .L36
.LBE48:
	.cfi_endproc
.LFE44:
	.size	_Z15qgxDrawElementsiiiPi, .-_Z15qgxDrawElementsiiiPi
	.align 2
	.globl _Z13qgxSetKColor0ffff
	.type	_Z13qgxSetKColor0ffff, @function
_Z13qgxSetKColor0ffff:
.LFB45:
	.loc 1 211 0
	.cfi_startproc
.LVL78:
.LBB49:
	.loc 1 214 0
	lis 9,.LC3@ha
.LBE49:
	.loc 1 211 0
	mflr 0
.LBB50:
	.loc 1 214 0
	lfs 0,.LC3@l(9)
	li 8,0
.LBE50:
	.loc 1 211 0
	stwu 1,-32(1)
.LCFI19:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB51:
	.loc 1 214 0
	fcmpu 7,1,0
.LBE51:
	.loc 1 211 0
	stw 0,36(1)
.LBB52:
	.loc 1 214 0
	blt- 7,.L54
	.cfi_offset 65, 4
	.loc 1 216 0
	lis 9,.LC2@ha
	li 8,255
	lfs 0,.LC2@l(9)
	fcmpu 7,1,0
	blt- 7,.L78
.LVL79:
.L54:
	.loc 1 222 0
	lis 9,.LC3@ha
	li 10,0
	lfs 0,.LC3@l(9)
	fcmpu 7,2,0
	blt- 7,.L56
	.loc 1 224 0
	lis 9,.LC2@ha
	li 10,255
	lfs 0,.LC2@l(9)
	fcmpu 7,2,0
	blt- 7,.L79
.LVL80:
.L56:
	.loc 1 230 0
	lis 9,.LC3@ha
	li 11,0
	lfs 0,.LC3@l(9)
	fcmpu 7,3,0
	blt- 7,.L58
	.loc 1 232 0
	lis 9,.LC2@ha
	li 11,255
	lfs 0,.LC2@l(9)
	fcmpu 7,3,0
	blt- 7,.L80
.LVL81:
.L58:
	.loc 1 238 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	li 9,0
	fcmpu 7,4,0
	blt- 7,.L60
	.loc 1 240 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	li 9,255
	fcmpu 7,4,0
	bnl- 7,.L60
.LVL82:
	.loc 1 241 0
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	.loc 1 240 0
	addi 9,1,12
	.loc 1 241 0
	fmuls 4,4,0
.LVL83:
	.loc 1 240 0
	fctiwz 4,4
.LVL84:
	stfiwx 4,0,9
	lwz 9,12(1)
	rlwinm 9,9,0,0xff
.L60:
	.loc 1 246 0
	li 0,0
.LVL85:
	.loc 1 251 0
	mr 4,1
	.loc 1 246 0
	rlwimi 0,8,24,0,7
.LVL86:
	.loc 1 251 0
	li 3,0
	.loc 1 247 0
	rlwimi 0,10,16,8,15
	.loc 1 248 0
	rlwimi 0,11,8,16,23
	.loc 1 249 0
	rlwimi 0,9,0,24,31
	.loc 1 251 0
	stwu 0,8(4)
	bl GX_SetTevKColor
.LVL87:
.LBE52:
	.loc 1 252 0
	lwz 0,36(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL88:
.L80:
.LCFI21:
	.cfi_restore_state
.LBB53:
	.loc 1 233 0
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	.loc 1 232 0
	addi 9,1,16
	.loc 1 233 0
	fmuls 3,3,0
.LVL89:
	.loc 1 232 0
	fctiwz 3,3
.LVL90:
	stfiwx 3,0,9
	lwz 11,16(1)
	rlwinm 11,11,0,0xff
	b .L58
.LVL91:
.L79:
	.loc 1 225 0
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	.loc 1 224 0
	addi 9,1,20
	.loc 1 225 0
	fmuls 2,2,0
.LVL92:
	.loc 1 224 0
	fctiwz 2,2
.LVL93:
	stfiwx 2,0,9
	lwz 10,20(1)
	rlwinm 10,10,0,0xff
	b .L56
.LVL94:
.L78:
	.loc 1 217 0
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	.loc 1 216 0
	addi 9,1,24
	.loc 1 217 0
	fmuls 1,1,0
.LVL95:
	.loc 1 216 0
	fctiwz 1,1
.LVL96:
	stfiwx 1,0,9
	lwz 8,24(1)
	rlwinm 8,8,0,0xff
	b .L54
.LBE53:
	.cfi_endproc
.LFE45:
	.size	_Z13qgxSetKColor0ffff, .-_Z13qgxSetKColor0ffff
	.align 2
	.globl _Z13qgxSetKColor0Pfi
	.type	_Z13qgxSetKColor0Pfi, @function
_Z13qgxSetKColor0Pfi:
.LFB46:
	.loc 1 255 0
	.cfi_startproc
.LVL97:
.LBB54:
	.loc 1 257 0
	cmpwi 7,4,1
.LBE54:
	.loc 1 255 0
	mflr 0
	stwu 1,-8(1)
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB55:
	.loc 1 257 0
	beq- 7,.L87
	.cfi_offset 65, 4
	.loc 1 262 0
	cmpwi 7,4,2
	beq- 7,.L88
	.loc 1 267 0
	cmpwi 7,4,3
	beq- 7,.L89
	.loc 1 272 0
	cmpwi 7,4,4
	beq- 7,.L90
.LVL98:
	.loc 1 279 0
	lis 3,.LC12@ha
.LVL99:
	la 3,.LC12@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL100:
	.loc 1 278 0
	lis 9,.LC3@ha
	lfs 4,.LC3@l(9)
.LBE55:
	.loc 1 283 0
	lwz 0,12(1)
.LBB56:
	.loc 1 278 0
	fmr 3,4
.LBE56:
	.loc 1 283 0
	addi 1,1,8
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
.LBB57:
	.loc 1 278 0
	fmr 2,4
.LBE57:
	.loc 1 283 0
	mtlr 0
.LBB58:
	.loc 1 278 0
	fmr 1,4
.LVL101:
	.loc 1 282 0
	b _Z13qgxSetKColor0ffff
.LVL102:
.L90:
.LCFI24:
	.cfi_restore_state
.LBE58:
	.loc 1 283 0
	lwz 0,12(1)
.LBB59:
	.loc 1 273 0
	lfs 1,0(3)
.LVL103:
	.loc 1 274 0
	lfs 2,4(3)
.LVL104:
.LBE59:
	.loc 1 283 0
	mtlr 0
.LBB60:
	.loc 1 275 0
	lfs 3,8(3)
.LVL105:
	.loc 1 276 0
	lfs 4,12(3)
.LVL106:
.LBE60:
	.loc 1 283 0
	addi 1,1,8
	.cfi_remember_state
.LCFI25:
	.cfi_def_cfa_offset 0
.LBB61:
	.loc 1 282 0
	b _Z13qgxSetKColor0ffff
.LVL107:
.L87:
.LCFI26:
	.cfi_restore_state
	.loc 1 258 0
	lfs 1,0(3)
.LVL108:
.LBE61:
	.loc 1 283 0
	lwz 0,12(1)
.LBB62:
	.loc 1 261 0
	fmr 4,1
.LBE62:
	.loc 1 283 0
	addi 1,1,8
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
.LBB63:
	.loc 1 260 0
	fmr 3,1
.LBE63:
	.loc 1 283 0
	mtlr 0
.LBB64:
	.loc 1 259 0
	fmr 2,1
	.loc 1 282 0
	b _Z13qgxSetKColor0ffff
.LVL109:
.L88:
.LCFI28:
	.cfi_restore_state
	.loc 1 263 0
	lfs 1,0(3)
.LVL110:
.LBE64:
	.loc 1 283 0
	lwz 0,12(1)
.LBB65:
	.loc 1 265 0
	fmr 3,1
	.loc 1 266 0
	lfs 4,4(3)
.LVL111:
	.loc 1 264 0
	fmr 2,1
.LBE65:
	.loc 1 283 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
.LBB66:
	.loc 1 282 0
	b _Z13qgxSetKColor0ffff
.LVL112:
.L89:
.LCFI30:
	.cfi_restore_state
.LBE66:
	.loc 1 283 0
	lwz 0,12(1)
.LBB67:
	.loc 1 271 0
	lis 9,.LC2@ha
	.loc 1 268 0
	lfs 1,0(3)
.LVL113:
	.loc 1 269 0
	lfs 2,4(3)
.LVL114:
.LBE67:
	.loc 1 283 0
	mtlr 0
.LBB68:
	.loc 1 270 0
	lfs 3,8(3)
.LVL115:
.LBE68:
	.loc 1 283 0
.LBB69:
	.loc 1 271 0
	lfs 4,.LC2@l(9)
.LVL116:
.LBE69:
	.loc 1 283 0
	addi 1,1,8
.LCFI31:
	.cfi_def_cfa_offset 0
.LBB70:
	.loc 1 282 0
	b _Z13qgxSetKColor0ffff
.LVL117:
.LVL118:
.LVL119:
.LVL120:
.LVL121:
.LVL122:
.LBE70:
	.cfi_endproc
.LFE46:
	.size	_Z13qgxSetKColor0Pfi, .-_Z13qgxSetKColor0Pfi
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.11, @object
	.size	CSWTCH.11, 10
CSWTCH.11:
	.byte	-72
	.byte	-88
	.byte	0
	.byte	-80
	.byte	-112
	.byte	-104
	.byte	-96
	.byte	-128
	.byte	-104
	.byte	-96
	.zero	2
	.type	CSWTCH.13, @object
	.size	CSWTCH.13, 7
CSWTCH.13:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560832
.LC2:
	.4byte	1065353216
.LC3:
	.4byte	0
.LC11:
	.4byte	1132396544
	.section	".data"
	.set	.LANCHOR1,. + 0
	.type	_ZL13gxpevzcomploc, @object
	.size	_ZL13gxpevzcomploc, 1
_ZL13gxpevzcomploc:
	.byte	-1
	.type	_ZL17gxprevcomparefunc, @object
	.size	_ZL17gxprevcomparefunc, 1
_ZL17gxprevcomparefunc:
	.byte	-1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC4:
	.string	">>> qgxAlphaFunc(%d, %f)\r\n"
	.zero	1
.LC5:
	.string	">>> !!!! Setting zCompLoc %d\r\n"
	.zero	1
.LC6:
	.string	">>> !!!! Setting gxCompareFunc %d value %f\r\n"
	.zero	3
.LC7:
	.string	"qgxSetVertexPointer: stride too big %d\r\n"
	.zero	3
.LC8:
	.string	"qgxSetVertexPointer: you forgot extending this function\r\n"
	.zero	2
.LC9:
	.string	"Too much indices %d\r\n"
	.zero	2
.LC10:
	.string	"Index too big %d\r\n"
	.zero	1
.LC12:
	.string	"qgxSetKColor0 illegal num channels: %d\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	_ZL16gxprevalphavalue, @object
	.size	_ZL16gxprevalphavalue, 4
_ZL16gxprevalphavalue:
	.zero	4
	.type	_ZL4pPos, @object
	.size	_ZL4pPos, 4
_ZL4pPos:
	.zero	4
	.type	_ZL9posStride, @object
	.size	_ZL9posStride, 4
_ZL9posStride:
	.zero	4
	.type	_ZL5pTex0, @object
	.size	_ZL5pTex0, 4
_ZL5pTex0:
	.zero	4
	.type	_ZL10tex0Stride, @object
	.size	_ZL10tex0Stride, 4
_ZL10tex0Stride:
	.zero	4
	.section	".text"
.Letext0:
	.file 3 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_qgx.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "d:/Data/Nintendo/DoomGXSchratch/gl2gx/include/GL/gl.h"
	.file 7 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_shader.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.4byte	.LASF75
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x4
	.byte	0x29
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x4
	.byte	0x35
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x36
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x50
	.4byte	0x91
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x45
	.uleb128 0x5
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0x62
	.uleb128 0x5
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x86
	.uleb128 0x5
	.string	"s8"
	.byte	0x5
	.byte	0x16
	.4byte	0x33
	.uleb128 0x5
	.string	"s16"
	.byte	0x5
	.byte	0x17
	.4byte	0x50
	.uleb128 0x5
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0x74
	.uleb128 0x5
	.string	"vu8"
	.byte	0x5
	.byte	0x1b
	.4byte	0xf1
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x1c
	.4byte	0x101
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1d
	.4byte	0x111
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x5
	.string	"vs8"
	.byte	0x5
	.byte	0x20
	.4byte	0x121
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x21
	.4byte	0x131
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x22
	.4byte	0x141
	.uleb128 0x6
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2e
	.4byte	0x15f
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x1cb
	.uleb128 0x8
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0xe6
	.uleb128 0x8
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x116
	.uleb128 0x8
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0xf6
	.uleb128 0x8
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x126
	.uleb128 0x8
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0x106
	.uleb128 0x8
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x136
	.uleb128 0x8
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0x154
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x499
	.4byte	0x16b
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2
	.2byte	0x49e
	.4byte	0x219
	.uleb128 0xb
	.string	"r"
	.byte	0x2
	.2byte	0x49f
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x2
	.2byte	0x4a0
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"b"
	.byte	0x2
	.2byte	0x4a1
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"a"
	.byte	0x2
	.2byte	0x4a2
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x4a3
	.4byte	0x1d7
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x93
	.4byte	0x91
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0xb
	.4byte	0x277
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x7
	.byte	0xc
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x7
	.byte	0xd
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x7
	.byte	0xe
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x7
	.byte	0xf
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x11
	.4byte	0x232
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x17
	.4byte	0x7f
	.byte	0x1
	.4byte	0x2ac
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x17
	.4byte	0x225
	.uleb128 0x11
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x18
	.4byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x8a9
	.byte	0x3
	.4byte	0x2c6
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x8a9
	.4byte	0xb0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x8d3
	.byte	0x3
	.4byte	0x2e0
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x8d3
	.4byte	0xb0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x90b
	.byte	0x3
	.4byte	0x2fa
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x90b
	.4byte	0xb0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x95d
	.byte	0x3
	.4byte	0x314
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x95d
	.4byte	0xb0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd
	.4byte	.LASF80
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	0x282
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x353
	.uleb128 0x18
	.4byte	0x293
	.4byte	.LLST1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0x35
	.4byte	.LASF42
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST2
	.4byte	0x3e4
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x35
	.4byte	0x7f
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x35
	.4byte	0x7f
	.4byte	.LLST4
	.uleb128 0x1b
	.string	"wd"
	.byte	0x1
	.byte	0x35
	.4byte	0x7f
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"ht"
	.byte	0x1
	.byte	0x35
	.4byte	0x7f
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0x37
	.4byte	0xbb
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0x37
	.4byte	0xbb
	.4byte	.LLST8
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.byte	0x37
	.4byte	0xbb
	.4byte	.LLST9
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.byte	0x37
	.4byte	0xbb
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4a
	.4byte	.LASF43
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST11
	.4byte	0x475
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4a
	.4byte	0x7f
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4a
	.4byte	0x7f
	.4byte	.LLST13
	.uleb128 0x1b
	.string	"wd"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7f
	.4byte	.LLST14
	.uleb128 0x1b
	.string	"ht"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7f
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LLST16
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LLST17
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LLST18
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5f
	.4byte	.LASF45
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST20
	.4byte	0x4d4
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0x5f
	.4byte	0x7f
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x5f
	.4byte	0x146
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.4byte	.LASF48
	.byte	0x1
	.byte	0x61
	.4byte	0xa6
	.4byte	.LLST23
	.uleb128 0x1e
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.4byte	0xa6
	.4byte	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x9a
	.4byte	.LASF51
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST25
	.4byte	0x51e
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9a
	.4byte	0x7f
	.4byte	.LLST26
	.uleb128 0x1b
	.string	"ptr"
	.byte	0x1
	.byte	0x9a
	.4byte	0x230
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9a
	.4byte	0x7f
	.4byte	.LLST28
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0xac
	.4byte	.LASF54
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST29
	.4byte	0x65b
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0xac
	.4byte	0x7f
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xac
	.4byte	0x7f
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x1
	.byte	0xac
	.4byte	0x7f
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xac
	.4byte	0x65b
	.4byte	.LLST33
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0xae
	.4byte	0x7f
	.4byte	.LLST34
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xaf
	.4byte	0x7f
	.uleb128 0x1e
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb3
	.4byte	0x277
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	0x282
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xaf
	.4byte	0x5c1
	.uleb128 0x18
	.4byte	0x293
	.4byte	.LLST30
	.byte	0
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.4byte	0x7f
	.4byte	.LLST37
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb7
	.4byte	0x7f
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	0x2ac
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xbb
	.4byte	0x604
	.uleb128 0x18
	.4byte	0x2b9
	.4byte	.LLST39
	.byte	0
	.uleb128 0x20
	.4byte	0x2c6
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x1
	.byte	0xc1
	.4byte	0x621
	.uleb128 0x18
	.4byte	0x2d3
	.4byte	.LLST40
	.byte	0
	.uleb128 0x20
	.4byte	0x2e0
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.byte	0xc4
	.4byte	0x63e
	.uleb128 0x18
	.4byte	0x2ed
	.4byte	.LLST41
	.byte	0
	.uleb128 0x21
	.4byte	0x2fa
	.4byte	.LBB39
	.4byte	.LBE39
	.byte	0x1
	.byte	0xcb
	.uleb128 0x18
	.4byte	0x307
	.4byte	.LLST42
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd3
	.4byte	.LASF62
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST43
	.4byte	0x6c7
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.4byte	0x146
	.4byte	.LLST44
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.byte	0xd3
	.4byte	0x146
	.4byte	.LLST45
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0xd3
	.4byte	0x146
	.4byte	.LLST46
	.uleb128 0x1b
	.string	"a"
	.byte	0x1
	.byte	0xd3
	.4byte	0x146
	.4byte	.LLST47
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd4
	.4byte	0x219
	.4byte	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xff
	.4byte	.LASF64
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST49
	.4byte	0x740
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.byte	0xff
	.4byte	0x740
	.4byte	.LLST50
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0xff
	.4byte	0x7f
	.4byte	.LLST51
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x128
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.2byte	0x100
	.4byte	0x146
	.4byte	.LLST52
	.uleb128 0x23
	.string	"g"
	.byte	0x1
	.2byte	0x100
	.4byte	0x146
	.4byte	.LLST53
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.2byte	0x100
	.4byte	0x146
	.4byte	.LLST54
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.2byte	0x100
	.4byte	0x146
	.4byte	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x146
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x548
	.4byte	0x754
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x759
	.uleb128 0x22
	.byte	0x4
	.4byte	0x1cb
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9
	.4byte	0xa6
	.byte	0x5
	.byte	0x3
	.4byte	_ZL13gxpevzcomploc
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa
	.4byte	0xa6
	.byte	0x5
	.byte	0x3
	.4byte	_ZL17gxprevcomparefunc
	.uleb128 0x26
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb
	.4byte	0x146
	.byte	0x5
	.byte	0x3
	.4byte	_ZL16gxprevalphavalue
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.byte	0x95
	.4byte	0x7a3
	.byte	0x5
	.byte	0x3
	.4byte	_ZL4pPos
	.uleb128 0x22
	.byte	0x4
	.4byte	0x21
	.uleb128 0x26
	.4byte	.LASF71
	.byte	0x1
	.byte	0x96
	.4byte	0x7f
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9posStride
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x97
	.4byte	0x7a3
	.byte	0x5
	.byte	0x3
	.4byte	_ZL5pTex0
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0x98
	.4byte	0x7f
	.byte	0x5
	.byte	0x3
	.4byte	_ZL10tex0Stride
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB40-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0xa
	.byte	0xa
	.2byte	0x1e0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0xa
	.byte	0xa
	.2byte	0x1e0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 512
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL18-1-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40-1-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47-1-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73-1-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xb
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0xd
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0xb
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 0
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL121-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL118-1-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
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
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"wgPipe"
.LASF22:
	.string	"WGPipe"
.LASF60:
	.string	"gxtype"
.LASF1:
	.string	"int8_t"
.LASF33:
	.string	"index"
.LASF6:
	.string	"short int"
.LASF74:
	.string	"GNU C++ 4.6.3"
.LASF64:
	.string	"_Z13qgxSetKColor0Pfi"
.LASF58:
	.string	"attrCnt"
.LASF63:
	.string	"gxcolor"
.LASF62:
	.string	"_Z13qgxSetKColor0ffff"
.LASF56:
	.string	"numIndices"
.LASF29:
	.string	"numcolors"
.LASF47:
	.string	"value"
.LASF4:
	.string	"uint8_t"
.LASF10:
	.string	"uint32_t"
.LASF71:
	.string	"posStride"
.LASF44:
	.string	"qgxAlphaFunc"
.LASF75:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_qgx.cpp"
.LASF18:
	.string	"float"
.LASF51:
	.string	"_Z19qgxSetVertexPointeriPvi"
.LASF46:
	.string	"func"
.LASF12:
	.string	"long long int"
.LASF73:
	.string	"tex0Stride"
.LASF54:
	.string	"_Z15qgxDrawElementsiiiPi"
.LASF39:
	.string	"yOrigin"
.LASF67:
	.string	"gxpevzcomploc"
.LASF79:
	.string	"qgxInit"
.LASF55:
	.string	"primitiveType"
.LASF27:
	.string	"gxvtxfmt"
.LASF35:
	.string	"GX_Normal1x16"
.LASF78:
	.string	"GX_End"
.LASF49:
	.string	"gxZCompLoc"
.LASF30:
	.string	"numtexmaps"
.LASF0:
	.string	"byte"
.LASF43:
	.string	"_Z11qgxViewportiiii"
.LASF69:
	.string	"gxprevalphavalue"
.LASF61:
	.string	"qgxSetKColor0"
.LASF2:
	.string	"unsigned char"
.LASF26:
	.string	"gxvtxfmt_s"
.LASF31:
	.string	"gxvtxfmt_t"
.LASF14:
	.string	"vu16"
.LASF70:
	.string	"pPos"
.LASF3:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF32:
	.string	"type"
.LASF41:
	.string	"qgxViewport"
.LASF7:
	.string	"uint16_t"
.LASF50:
	.string	"qgxSetVertexPointer"
.LASF24:
	.string	"GLenum"
.LASF8:
	.string	"short unsigned int"
.LASF15:
	.string	"vu32"
.LASF21:
	.string	"char"
.LASF76:
	.string	"_wgpipe"
.LASF9:
	.string	"int32_t"
.LASF34:
	.string	"GX_Position1x16"
.LASF5:
	.string	"int16_t"
.LASF52:
	.string	"stride"
.LASF59:
	.string	"_type"
.LASF16:
	.string	"vs16"
.LASF77:
	.string	"qgx_AsGXPrimitiveType"
.LASF68:
	.string	"gxprevcomparefunc"
.LASF20:
	.string	"vf32"
.LASF28:
	.string	"numnormals"
.LASF23:
	.string	"GXColor"
.LASF45:
	.string	"_Z12qgxAlphaFuncif"
.LASF17:
	.string	"vs32"
.LASF38:
	.string	"xOrigin"
.LASF57:
	.string	"indices"
.LASF40:
	.string	"qgxScissor"
.LASF72:
	.string	"pTex0"
.LASF53:
	.string	"qgxDrawElements"
.LASF48:
	.string	"gxCompareFunc"
.LASF36:
	.string	"GX_Color1x16"
.LASF80:
	.string	"_Z7qgxInitv"
.LASF66:
	.string	"numChannels"
.LASF65:
	.string	"color"
.LASF19:
	.string	"double"
.LASF37:
	.string	"GX_TexCoord1x16"
.LASF42:
	.string	"_Z10qgxScissoriiii"
.LASF11:
	.string	"unsigned int"
.LASF25:
	.string	"_gx_color"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
