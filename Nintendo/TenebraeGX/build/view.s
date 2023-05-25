	.file	"view.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl V_BonusFlash_f
	.type	V_BonusFlash_f, @function
V_BonusFlash_f:
.LFB47:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/view.c"
	.loc 1 403 0
	.cfi_startproc
	.loc 1 404 0
	lis 9,cl@ha
	li 0,215
	la 9,cl@l(9)
	stw 0,324(9)
	.loc 1 405 0
	li 0,186
	stw 0,328(9)
	.loc 1 406 0
	li 0,69
	stw 0,332(9)
	.loc 1 407 0
	li 0,50
	stw 0,336(9)
	.loc 1 408 0
	blr
	.cfi_endproc
.LFE47:
	.size	V_BonusFlash_f, .-V_BonusFlash_f
	.align 2
	.globl V_cshift_f
	.type	V_cshift_f, @function
V_cshift_f:
.LFB46:
	.loc 1 387 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 388 0
	li 3,1
	.loc 1 387 0
	stw 31,12(1)
	.loc 1 388 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 1 387 0
	stw 0,20(1)
	.loc 1 388 0
	.cfi_offset 65, 4
	bl Cmd_Argv
	bl atoi
	stw 3,.LANCHOR0@l(31)
	.loc 1 389 0
	li 3,2
	bl Cmd_Argv
	.loc 1 388 0
	la 31,.LANCHOR0@l(31)
	.loc 1 389 0
	bl atoi
	stw 3,4(31)
	.loc 1 390 0
	li 3,3
	bl Cmd_Argv
	bl atoi
	stw 3,8(31)
	.loc 1 391 0
	li 3,4
	bl Cmd_Argv
	bl atoi
	.loc 1 392 0
	lwz 0,20(1)
	.loc 1 391 0
	stw 3,12(31)
	.loc 1 392 0
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE46:
	.size	V_cshift_f, .-V_cshift_f
	.align 2
	.globl V_StartPitchDrift
	.type	V_StartPitchDrift, @function
V_StartPitchDrift:
.LFB40:
	.loc 1 146 0
	.cfi_startproc
	.loc 1 148 0
	lis 9,cl@ha
	la 9,cl@l(9)
	lfd 13,520(9)
	lfd 0,568(9)
	fcmpu 7,13,0
	beqlr- 7
	.loc 1 153 0
	lbz 0,512(9)
	cmpwi 7,0,0
	beq- 7,.L7
.LBB4:
.LBB5:
	.loc 1 155 0
	lis 11,.LANCHOR0+28@ha
	lwz 0,.LANCHOR0+28@l(11)
	stw 0,508(9)
	.loc 1 156 0
	li 0,0
	stb 0,512(9)
	.loc 1 157 0
	li 0,0
	stw 0,516(9)
	blr
.L7:
.LBE5:
.LBE4:
	.loc 1 153 0 discriminator 1
	lis 11,.LC0@ha
	lfs 13,508(9)
	lfs 0,.LC0@l(11)
	fcmpu 7,13,0
	bnelr- 7
.LBB7:
.LBB6:
	.loc 1 155 0
	lis 11,.LANCHOR0+28@ha
	lwz 0,.LANCHOR0+28@l(11)
	stw 0,508(9)
	.loc 1 156 0
	li 0,0
	stb 0,512(9)
	.loc 1 157 0
	li 0,0
	stw 0,516(9)
	blr
.LBE6:
.LBE7:
	.cfi_endproc
.LFE40:
	.size	V_StartPitchDrift, .-V_StartPitchDrift
	.align 2
	.globl V_CalcRoll
	.type	V_CalcRoll, @function
V_CalcRoll:
.LFB38:
	.loc 1 81 0
	.cfi_startproc
.LVL0:
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 86 0
	lis 6,up@ha
	.loc 1 81 0
	stw 29,12(1)
	.loc 1 86 0
	lis 29,right@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 81 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	.loc 1 86 0
	lis 4,forward@ha
.LVL1:
	la 31,right@l(29)
	.cfi_offset 31, -4
	la 4,forward@l(4)
	mr 5,31
	la 6,up@l(6)
	.loc 1 81 0
	stw 0,28(1)
	.loc 1 86 0
	.cfi_offset 65, 4
	bl AngleVectors
.LVL2:
	.loc 1 87 0
	lfs 0,4(31)
	.loc 1 88 0
	lis 9,.LC0@ha
	.loc 1 87 0
	lfs 11,4(30)
	lfs 13,0(30)
	fmuls 11,11,0
	lfs 0,right@l(29)
	lfs 12,8(30)
	fmadds 13,13,0,11
	lfs 0,8(31)
	fmadds 0,12,0,13
.LVL3:
	.loc 1 88 0
	lfs 13,.LC0@l(9)
	fcmpu 7,0,13
	bnl- 7,.L17
	lis 9,.LC1@ha
	lfs 12,.LC1@l(9)
.L9:
.LVL4:
	.loc 1 91 0 discriminator 3
	lis 9,.LANCHOR0@ha
	.loc 1 89 0 discriminator 3
	fabs 0,0
.LVL5:
	.loc 1 91 0 discriminator 3
	la 9,.LANCHOR0@l(9)
	.loc 1 95 0 discriminator 3
	lfs 13,68(9)
	.loc 1 91 0 discriminator 3
	lfs 1,48(9)
.LVL6:
	.loc 1 95 0 discriminator 3
	fcmpu 7,13,0
	bng- 7,.L11
	.loc 1 96 0
	fmuls 1,0,1
	fdivs 1,1,13
.LVL7:
.L11:
	.loc 1 102 0
	lwz 0,28(1)
	fmuls 1,1,12
.LVL8:
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL9:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL10:
.L17:
.LCFI4:
	.cfi_restore_state
	.loc 1 88 0
	lis 9,.LC2@ha
	lfs 12,.LC2@l(9)
	b .L9
	.cfi_endproc
.LFE38:
	.size	V_CalcRoll, .-V_CalcRoll
	.align 2
	.globl V_CalcBob
	.type	V_CalcBob, @function
V_CalcBob:
.LFB39:
	.loc 1 112 0
	.cfi_startproc
	mflr 0
	stwu 1,-48(1)
.LCFI5:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 116 0
	lis 9,cl@ha
	.loc 1 112 0
	stw 31,28(1)
	.loc 1 116 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -20
	.loc 1 112 0
	stw 0,52(1)
	.loc 1 116 0
	la 31,.LANCHOR0@l(31)
	la 9,cl@l(9)
	lis 0,0x4330
	.cfi_offset 65, 4
	lfs 0,88(31)
	addi 11,1,16
	lfd 12,568(9)
	fmr 11,0
	stw 0,8(1)
	.loc 1 112 0
	stfd 30,32(1)
	.loc 1 118 0
	lfs 13,108(31)
	.loc 1 116 0
	fdiv 11,12,11
	.loc 1 112 0
	stfd 31,40(1)
	.loc 1 116 0
	fctiwz 11,11
	stfiwx 11,0,11
	lis 11,.LC6@ha
	lfs 11,.LC6@l(11)
	lwz 0,16(1)
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 10,8(1)
	fsub 11,10,11
	frsp 11,11
	fmuls 11,0,11
	fsub 12,12,11
	frsp 12,12
.LVL11:
	.loc 1 117 0
	fdivs 0,12,0
.LVL12:
	.loc 1 118 0
	fcmpu 7,13,0
	bng- 7,.L27
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 119 0
	lis 11,.LC7@ha
	lfd 12,.LC7@l(11)
	fmul 30,0,12
	fdiv 30,30,13
	frsp 30,30
.LVL13:
.L22:
	.loc 1 126 0
	lfs 0,484(9)
	lfs 1,480(9)
	fmuls 0,0,0
	fmadds 1,1,1,0
	bl sqrt
.LVL14:
	lfs 31,128(31)
	fmul 31,1,31
	.loc 1 128 0
	fmr 1,30
.LVL15:
	.loc 1 126 0
	frsp 31,31
.LVL16:
	.loc 1 128 0
	bl sin
	lis 9,.LC9@ha
	lfd 13,.LC9@l(9)
	.loc 1 129 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	.loc 1 128 0
	lis 9,.LC10@ha
	fmul 13,31,13
	fmul 13,13,1
	lfd 1,.LC10@l(9)
	fmadd 31,31,1,13
.LVL17:
	frsp 1,31
.LVL18:
	.loc 1 129 0
	fcmpu 7,1,0
	bgt- 7,.L25
	.loc 1 131 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fcmpu 7,1,0
	bnl- 7,.L23
.L25:
	.loc 1 132 0
	fmr 1,0
.LVL19:
.L23:
	.loc 1 135 0
	lwz 0,52(1)
	lwz 31,28(1)
	mtlr 0
	lfd 30,32(1)
.LVL20:
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
.LVL21:
.L27:
.LCFI7:
	.cfi_restore_state
	.loc 1 121 0
	fsubs 0,0,13
.LVL22:
	lis 11,.LC7@ha
	lfd 12,.LC7@l(11)
	lis 11,.LC2@ha
	fmr 30,0
	lfs 0,.LC2@l(11)
	fsub 13,0,13
	fmul 30,30,12
	fdiv 30,30,13
	fadd 30,30,12
	frsp 30,30
.LVL23:
	b .L22
	.cfi_endproc
.LFE39:
	.size	V_CalcBob, .-V_CalcBob
	.align 2
	.globl V_StopPitchDrift
	.type	V_StopPitchDrift, @function
V_StopPitchDrift:
.LFB41:
	.loc 1 162 0
	.cfi_startproc
	.loc 1 163 0
	lis 9,cl@ha
	.loc 1 164 0
	li 0,1
	.loc 1 163 0
	la 9,cl@l(9)
	lfd 0,568(9)
	.loc 1 164 0
	stb 0,512(9)
	.loc 1 165 0
	li 0,0
	.loc 1 163 0
	stfd 0,520(9)
	.loc 1 165 0
	stw 0,508(9)
	.loc 1 166 0
	blr
	.cfi_endproc
.LFE41:
	.size	V_StopPitchDrift, .-V_StopPitchDrift
	.align 2
	.globl V_DriftPitch
	.type	V_DriftPitch, @function
V_DriftPitch:
.LFB42:
	.loc 1 182 0
	.cfi_startproc
	.loc 1 185 0
	lis 9,noclip_anglehack@ha
	.loc 1 182 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.loc 1 185 0
	lbz 0,noclip_anglehack@l(9)
	lis 9,cl@ha
	la 9,cl@l(9)
	cmpwi 7,0,0
	bne- 7,.L30
	.loc 1 185 0 is_stmt 0 discriminator 1
	lbz 0,537(9)
	cmpwi 7,0,0
	beq- 7,.L30
	lis 11,cls+2249@ha
	lbz 0,cls+2249@l(11)
	cmpwi 7,0,0
	bne- 7,.L30
	.loc 1 193 0 is_stmt 1
	lbz 0,512(9)
	cmpwi 7,0,0
	beq- 7,.L33
	.loc 1 195 0
	lfs 13,16(9)
	lis 11,cl_forwardspeed+12@ha
	lfs 0,cl_forwardspeed+12@l(11)
	fabs 13,13
	fcmpu 7,13,0
	bnl- 7,.L54
	.loc 1 196 0
	li 0,0
	stw 0,516(9)
	stw 0,8(1)
	lfs 0,8(1)
.L36:
	.loc 1 200 0
	lis 9,.LANCHOR0+148@ha
	lfs 13,.LANCHOR0+148@l(9)
	fcmpu 7,13,0
	bnl+ 7,.L29
	.loc 1 238 0
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.loc 1 202 0
	b V_StartPitchDrift
.L30:
.LCFI10:
	.cfi_restore_state
	.loc 1 187 0
	li 0,0
	stw 0,516(9)
	.loc 1 188 0
	stw 0,508(9)
.L29:
	.loc 1 238 0
	addi 1,1,16
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.L33:
.LCFI12:
	.cfi_restore_state
	.loc 1 207 0
	lfs 12,444(9)
	.loc 1 209 0
	lis 11,.LC0@ha
	.loc 1 207 0
	lfs 0,504(9)
	.loc 1 209 0
	lfs 13,.LC0@l(11)
	.loc 1 207 0
	fsubs 0,0,12
.LVL24:
	.loc 1 209 0
	fcmpu 7,0,13
	fcmpu 6,0,13
	beq- 7,.L56
	.loc 1 215 0
	lis 11,host_frametime@ha
	lfs 10,508(9)
	lfd 9,host_frametime@l(11)
	.loc 1 216 0
	lis 11,.LANCHOR0+28@ha
	lfs 8,.LANCHOR0+28@l(11)
	.loc 1 215 0
	fmul 11,10,9
	.loc 1 216 0
	fmadd 10,9,8,10
	.loc 1 215 0
	frsp 11,11
.LVL25:
	.loc 1 216 0
	frsp 10,10
	stfs 10,508(9)
	.loc 1 220 0
	bgt- 6,.L57
	.loc 1 229 0
	bnl- 6,.L29
	.loc 1 231 0
	fneg 0,0
.LVL26:
	fcmpu 7,0,11
	bnl- 7,.L44
	.loc 1 234 0
	fmr 11,0
.LVL27:
	.loc 1 233 0
	stfs 13,508(9)
.LVL28:
.L44:
	.loc 1 236 0
	fsubs 12,12,11
	stfs 12,444(9)
	b .L29
.LVL29:
.L54:
	.loc 1 198 0
	lis 11,host_frametime@ha
	lfs 13,516(9)
	lfd 0,host_frametime@l(11)
	fadd 0,13,0
	frsp 0,0
	stfs 0,516(9)
	b .L36
.LVL30:
.L57:
	.loc 1 222 0
	fcmpu 7,11,0
	bng- 7,.L41
	.loc 1 225 0
	fmr 11,0
.LVL31:
	.loc 1 224 0
	stfs 13,508(9)
.LVL32:
.L41:
	.loc 1 227 0
	fadds 12,11,12
	stfs 12,444(9)
	b .L29
.LVL33:
.L56:
	.loc 1 211 0
	stfs 13,508(9)
	.loc 1 212 0
	b .L29
	.cfi_endproc
.LFE42:
	.size	V_DriftPitch, .-V_DriftPitch
	.align 2
	.globl BuildGammaTable
	.type	BuildGammaTable, @function
BuildGammaTable:
.LFB43:
	.loc 1 268 0
	.cfi_startproc
.LVL34:
	.loc 1 271 0
	lis 9,.LC2@ha
	.loc 1 268 0
	mflr 0
	.loc 1 271 0
	lfs 0,.LC2@l(9)
	.loc 1 268 0
	stwu 1,-72(1)
.LCFI13:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.loc 1 271 0
	fcmpu 7,1,0
	.loc 1 268 0
	stfd 30,56(1)
	fmr 30,1
	.cfi_offset 62, -16
	stw 30,32(1)
	lis 30,gammatable@ha
	.cfi_offset 30, -40
	stw 0,76(1)
	stfd 28,40(1)
	stfd 29,48(1)
	stfd 31,64(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 31,36(1)
	.loc 1 271 0
	beq- 7,.L64
	.cfi_offset 31, -36
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
.LBB10:
.LBB11:
	.loc 1 280 0
	lis 9,.LC6@ha
	lis 28,.LC16@ha
	lfs 28,.LC6@l(9)
	lis 9,.LC12@ha
	lfs 31,.LC12@l(9)
	lis 9,.LC14@ha
	lfs 29,.LC14@l(9)
.LBE11:
.LBE10:
	.loc 1 271 0
	li 31,0
	la 28,.LC16@l(28)
	la 30,gammatable@l(30)
.LBB13:
.LBB12:
	.loc 1 280 0
	lis 29,0x4330
	b .L62
.LVL35:
.L61:
	.loc 1 285 0
	stbx 9,30,31
	.loc 1 278 0
	addi 31,31,1
.LVL36:
	beq- 7,.L58
.LVL37:
.L62:
	.loc 1 280 0
	xoris 0,31,0x8000
	stw 29,8(1)
	stw 0,12(1)
	fmr 2,30
	lfd 1,8(1)
	fsub 1,1,28
	fadd 1,1,31
	fdiv 1,1,29
	bl pow
	lfs 0,0(28)
	addi 11,1,16
	.loc 1 278 0
	cmpwi 7,31,255
	.loc 1 280 0
	fmadd 0,1,0,31
	.loc 1 281 0
	li 9,0
	.loc 1 280 0
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,16(1)
.LVL38:
	.loc 1 281 0
	cmpwi 6,0,0
	.loc 1 283 0
	cmpwi 1,0,255
	.loc 1 281 0
	blt- 6,.L61
	.loc 1 283 0
	li 9,255
	bgt+ 1,.L61
	rlwinm 9,0,0,0xff
.LVL39:
	.loc 1 285 0
	stbx 9,30,31
	.loc 1 278 0
	addi 31,31,1
.LVL40:
	bne+ 7,.L62
.L58:
.LBE12:
.LBE13:
	.loc 1 287 0
	lwz 0,76(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL41:
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
.LVL42:
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL43:
.L64:
.LCFI15:
	.cfi_restore_state
	li 0,256
	.loc 1 271 0
	li 9,0
	mtctr 0
	la 30,gammatable@l(30)
.L59:
	.loc 1 274 0 discriminator 2
	stbx 9,30,9
	.loc 1 273 0 discriminator 2
	addi 9,9,1
.LVL44:
	bdnz .L59
	.loc 1 287 0
	lwz 0,76(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI16:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE43:
	.size	BuildGammaTable, .-BuildGammaTable
	.align 2
	.globl V_CheckGamma
	.type	V_CheckGamma, @function
V_CheckGamma:
.LFB44:
	.loc 1 295 0
	.cfi_startproc
	.loc 1 298 0
	lis 9,.LANCHOR1@ha
	lis 11,.LANCHOR0+168@ha
	lfs 0,.LANCHOR0+168@l(11)
	.loc 1 295 0
	mflr 0
	.loc 1 298 0
	lfs 13,.LANCHOR1@l(9)
	.loc 1 299 0
	li 3,0
	.loc 1 295 0
	stwu 1,-8(1)
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 298 0
	fcmpu 7,0,13
	.loc 1 295 0
	stw 0,12(1)
	.loc 1 298 0
	beq+ 7,.L70
	.cfi_offset 65, 4
	.loc 1 302 0
	fmr 1,0
	.loc 1 300 0
	stfs 0,.LANCHOR1@l(9)
	.loc 1 302 0
	bl BuildGammaTable
	.loc 1 303 0
	li 0,1
	lis 9,vid+36@ha
	.loc 1 305 0
	li 3,1
	.loc 1 303 0
	stw 0,vid+36@l(9)
.L70:
	.loc 1 306 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI18:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	V_CheckGamma, .-V_CheckGamma
	.align 2
	.globl V_ParseDamage
	.type	V_ParseDamage, @function
V_ParseDamage:
.LFB45:
	.loc 1 316 0
	.cfi_startproc
	mflr 0
	stwu 1,-104(1)
.LCFI19:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stfd 31,96(1)
	stw 0,108(1)
	stw 30,88(1)
	stw 31,92(1)
	.loc 1 325 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	bl MSG_ReadByte
	mr 31,3
.LVL45:
	.loc 1 326 0
	bl MSG_ReadByte
.LVL46:
	mr 30,3
.LVL47:
	.loc 1 328 0
	bl MSG_ReadCoord
.LVL48:
	stfs 1,44(1)
.LVL49:
	bl MSG_ReadCoord
	stfs 1,48(1)
.LVL50:
	bl MSG_ReadCoord
	.loc 1 330 0
	lis 0,0x4330
	xoris 9,31,0x8000
	stw 9,68(1)
	lis 11,.LC6@ha
	stw 0,64(1)
	xoris 9,30,0x8000
	lfs 13,.LC6@l(11)
	lfd 11,64(1)
	stw 9,60(1)
	lis 9,.LC12@ha
	fsub 11,11,13
	stw 0,56(1)
	lfs 0,.LC12@l(9)
	.loc 1 331 0
	lis 9,.LC18@ha
	.loc 1 330 0
	lfd 31,56(1)
	fmul 11,11,0
	.loc 1 331 0
	lfs 12,.LC18@l(9)
	.loc 1 328 0
	stfs 1,52(1)
.LVL51:
	.loc 1 330 0
	fsub 13,31,13
	fmadd 13,13,0,11
	frsp 31,13
.LVL52:
	.loc 1 331 0
	fcmpu 7,31,12
	blt- 7,.L79
	lis 9,.LC19@ha
	lfs 0,.LC19@l(9)
	fmuls 0,31,0
.LVL53:
.L73:
	.loc 1 334 0
	lis 9,cl@ha
	.loc 1 336 0
	lfs 13,.LC6@l(11)
	.loc 1 334 0
	la 9,cl@l(9)
	lis 11,.LC20@ha
	.loc 1 336 0
	lwz 0,320(9)
	xoris 0,0,0x8000
	stw 0,76(1)
	lis 0,0x4330
	stw 0,72(1)
	lfd 12,72(1)
	fsub 13,12,13
	.loc 1 334 0
	lfd 12,568(9)
	.loc 1 336 0
	frsp 13,13
	fadds 13,13,0
	.loc 1 334 0
	lfd 0,.LC20@l(11)
	.loc 1 336 0
	addi 11,1,80
	.loc 1 334 0
	fadd 0,12,0
	.loc 1 336 0
	fctiwz 13,13
	.loc 1 334 0
	frsp 0,0
	.loc 1 336 0
	stfiwx 13,0,11
	.loc 1 334 0
	stfs 0,288(9)
	.loc 1 336 0
	lwz 0,80(1)
	.loc 1 337 0
	cmpwi 7,0,0
	.loc 1 336 0
	stw 0,320(9)
	.loc 1 337 0
	blt- 7,.L80
	.loc 1 339 0
	cmpwi 7,0,150
	ble- 7,.L75
	.loc 1 340 0
	li 0,150
	stw 0,320(9)
.L75:
	.loc 1 342 0
	cmpw 7,31,30
	bgt- 7,.L81
	.loc 1 348 0
	cmpwi 7,31,0
	bne- 7,.L82
	.loc 1 356 0
	li 0,255
	.loc 1 357 0
	stw 31,312(9)
	.loc 1 356 0
	stw 0,308(9)
	.loc 1 358 0
	stw 31,316(9)
.L77:
	.loc 1 364 0
	lwz 31,2676(9)
.LVL54:
	lis 9,cl_entities@ha
	la 0,cl_entities@l(9)
	.loc 1 366 0
	lfs 11,44(1)
	.loc 1 364 0
	mulli 31,31,584
	.loc 1 367 0
	addi 3,1,44
	.loc 1 364 0
	add 31,31,0
.LVL55:
	.loc 1 366 0
	lfs 12,112(31)
	lfs 13,116(31)
	fsubs 12,11,12
	lfs 11,48(1)
	lfs 0,120(31)
	fsubs 13,11,13
	lfs 11,52(1)
	stfs 12,44(1)
	fsubs 0,11,0
	stfs 13,48(1)
	stfs 0,52(1)
	.loc 1 367 0
	bl VectorNormalize
.LVL56:
	.loc 1 369 0
	addi 3,31,148
	addi 4,1,32
	addi 5,1,20
	addi 6,1,8
	bl AngleVectors
	.loc 1 371 0
	lfs 0,48(1)
	lfs 12,24(1)
	.loc 1 372 0
	lis 9,.LANCHOR0@ha
	.loc 1 374 0
	lfs 13,36(1)
	.loc 1 372 0
	la 9,.LANCHOR0@l(9)
	.loc 1 371 0
	fmuls 12,0,12
	lfs 11,20(1)
	.loc 1 374 0
	fmuls 0,0,13
	.loc 1 371 0
	lfs 13,44(1)
	.loc 1 377 0
	lwz 0,228(9)
	.loc 1 371 0
	fmadds 12,13,11,12
	.loc 1 374 0
	lfs 11,32(1)
	.loc 1 378 0
	lwz 30,88(1)
.LVL57:
	.loc 1 374 0
	fmadds 13,13,11,0
	.loc 1 371 0
	lfs 0,52(1)
.LVL58:
	lfs 11,28(1)
	.loc 1 378 0
	lwz 31,92(1)
.LVL59:
	.loc 1 371 0
	fmadds 12,0,11,12
	.loc 1 374 0
	lfs 11,40(1)
	fmadds 0,0,11,13
	.loc 1 375 0
	lfs 11,208(9)
	.loc 1 372 0
	fmuls 12,31,12
	.loc 1 375 0
	fmuls 31,31,0
.LVL60:
	.loc 1 372 0
	lfs 0,188(9)
	lis 9,v_dmg_roll@ha
	fmuls 12,12,0
	.loc 1 375 0
	fmuls 31,31,11
	.loc 1 372 0
	stfs 12,v_dmg_roll@l(9)
.LVL61:
	.loc 1 375 0
	lis 9,v_dmg_pitch@ha
	stfs 31,v_dmg_pitch@l(9)
	.loc 1 377 0
	lis 9,v_dmg_time@ha
	stw 0,v_dmg_time@l(9)
	.loc 1 378 0
	lwz 0,108(1)
	lfd 31,96(1)
	mtlr 0
	addi 1,1,104
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL62:
.L79:
.LCFI21:
	.cfi_restore_state
	.loc 1 331 0
	lis 9,.LC17@ha
	.loc 1 332 0
	fmr 31,12
.LVL63:
	.loc 1 331 0
	lfs 0,.LC17@l(9)
	b .L73
.LVL64:
.L82:
	.loc 1 351 0
	li 0,50
	.loc 1 350 0
	li 11,220
	stw 11,308(9)
	.loc 1 351 0
	stw 0,312(9)
	.loc 1 352 0
	stw 0,316(9)
	b .L77
.L81:
	.loc 1 345 0
	li 0,100
	.loc 1 344 0
	li 11,200
	stw 11,308(9)
	.loc 1 345 0
	stw 0,312(9)
	.loc 1 346 0
	stw 0,316(9)
	b .L77
.L80:
	.loc 1 338 0
	li 0,0
	stw 0,320(9)
	b .L75
	.cfi_endproc
.LFE45:
	.size	V_ParseDamage, .-V_ParseDamage
	.align 2
	.globl V_SetContentsColor
	.type	V_SetContentsColor, @function
V_SetContentsColor:
.LFB48:
	.loc 1 418 0
	.cfi_startproc
.LVL65:
	.loc 1 419 0
	cmpwi 7,3,-4
	beq- 7,.L86
	ble- 7,.L91
.L84:
	.loc 1 432 0
	lis 11,.LANCHOR0@ha
	la 9,.LANCHOR0@l(11)
	lwz 8,.LANCHOR0@l(11)
	lwz 10,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	lis 9,cl@ha
	la 9,cl@l(9)
	stw 8,292(9)
	stw 10,296(9)
	stw 11,300(9)
	stw 0,304(9)
	blr
.L91:
	.loc 1 419 0
	cmpwi 7,3,-5
	bne+ 7,.L84
	.loc 1 426 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 8,236(9)
	lwz 10,240(9)
	lwz 11,244(9)
	lwz 0,248(9)
	.loc 1 432 0
	lis 9,cl@ha
	la 9,cl@l(9)
	stw 8,292(9)
	stw 10,296(9)
	stw 11,300(9)
	stw 0,304(9)
	blr
.L86:
	.loc 1 429 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 8,252(9)
	lwz 10,256(9)
	lwz 11,260(9)
	lwz 0,264(9)
	.loc 1 432 0
	lis 9,cl@ha
	la 9,cl@l(9)
	stw 8,292(9)
	stw 10,296(9)
	stw 11,300(9)
	stw 0,304(9)
	blr
	.cfi_endproc
.LFE48:
	.size	V_SetContentsColor, .-V_SetContentsColor
	.align 2
	.globl V_CalcPowerupCshift
	.type	V_CalcPowerupCshift, @function
V_CalcPowerupCshift:
.LFB49:
	.loc 1 442 0
	.cfi_startproc
	.loc 1 443 0
	lis 9,cl@ha
	la 9,cl@l(9)
	lwz 0,156(9)
	andis. 11,0,0x40
	bne- 0,.L98
	.loc 1 450 0
	andis. 10,0,32
	bne- 0,.L99
	.loc 1 457 0
	andis. 11,0,0x8
	bne- 0,.L100
	.loc 1 464 0
	andis. 0,0,0x10
	bne- 0,.L101
	.loc 1 472 0
	stw 0,352(9)
	blr
.L99:
	.loc 1 453 0
	li 0,255
	.loc 1 452 0
	stw 11,340(9)
	.loc 1 453 0
	stw 0,344(9)
	.loc 1 455 0
	li 0,20
	.loc 1 454 0
	stw 11,348(9)
	.loc 1 455 0
	stw 0,352(9)
	blr
.L98:
	.loc 1 445 0
	li 0,0
	stw 0,340(9)
	.loc 1 446 0
	stw 0,344(9)
	.loc 1 447 0
	li 0,255
	stw 0,348(9)
	.loc 1 448 0
	li 0,30
	stw 0,352(9)
	blr
.L101:
	.loc 1 466 0
	li 0,255
	.loc 1 468 0
	stw 11,348(9)
	.loc 1 466 0
	stw 0,340(9)
	.loc 1 467 0
	stw 0,344(9)
	.loc 1 469 0
	li 0,30
	stw 0,352(9)
	blr
.L100:
	.loc 1 459 0
	li 0,100
	stw 0,340(9)
	.loc 1 460 0
	stw 0,344(9)
	.loc 1 461 0
	stw 0,348(9)
	.loc 1 462 0
	stw 0,352(9)
	blr
	.cfi_endproc
.LFE49:
	.size	V_CalcPowerupCshift, .-V_CalcPowerupCshift
	.align 2
	.globl V_CalcBlend
	.type	V_CalcBlend, @function
V_CalcBlend:
.LFB50:
	.loc 1 482 0
	.cfi_startproc
.LVL66:
	.loc 1 486 0
	lis 9,.LANCHOR0+280@ha
	.loc 1 500 0
	li 11,4
	.loc 1 486 0
	lfs 8,.LANCHOR0+280@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 500 0
	mtctr 11
	.loc 1 486 0
	lis 9,cl+304@ha
	.loc 1 482 0
	stwu 1,-40(1)
.LCFI22:
	.cfi_def_cfa_offset 40
	.loc 1 486 0
	fcmpu 7,8,0
	la 9,cl+304@l(9)
	.loc 1 488 0
	fmr 11,0
	lis 10,.LC2@ha
	.loc 1 486 0
	crnot 30,30
	.loc 1 487 0
	fmr 10,0
	.loc 1 486 0
	fmr 9,0
	.loc 1 496 0
	lis 7,.LC6@ha
	.loc 1 500 0
	fmr 6,0
	.loc 1 496 0
	lis 8,.LC21@ha
	.loc 1 486 0
	mfcr 0
	rlwinm 0,0,31,1
	cmpwi 7,0,0
	.loc 1 496 0
	lis 0,0x4330
.LVL67:
.L104:
	.loc 1 493 0
	beq- 7,.L103
	.loc 1 496 0
	lwz 11,0(9)
	stw 0,8(1)
	xoris 11,11,0x8000
	lfs 13,.LC6@l(7)
	stw 11,12(1)
	lfd 7,.LC21@l(8)
	lfd 12,8(1)
	fsub 12,12,13
	frsp 12,12
	fmuls 12,12,8
	fmul 12,12,7
	frsp 12,12
.LVL68:
	.loc 1 500 0
	fcmpu 6,12,6
	beq- 6,.L103
	.loc 1 502 0
	lfs 7,.LC2@l(10)
	.loc 1 505 0
	lwz 5,-12(9)
	.loc 1 502 0
	fsubs 5,7,0
	.loc 1 506 0
	lwz 6,-8(9)
	.loc 1 507 0
	lwz 11,-4(9)
	.loc 1 505 0
	xoris 5,5,0x8000
	.loc 1 506 0
	xoris 6,6,0x8000
	.loc 1 505 0
	stw 5,20(1)
	.loc 1 502 0
	fmadds 0,5,12,0
.LVL69:
	.loc 1 507 0
	xoris 11,11,0x8000
	.loc 1 505 0
	stw 0,16(1)
	.loc 1 506 0
	stw 6,28(1)
	.loc 1 504 0
	fdivs 12,12,0
.LVL70:
	.loc 1 506 0
	stw 0,24(1)
	.loc 1 507 0
	stw 11,36(1)
	stw 0,32(1)
	.loc 1 505 0
	lfd 4,16(1)
	.loc 1 506 0
	lfd 5,24(1)
	.loc 1 507 0
	lfd 3,32(1)
	.loc 1 505 0
	fsub 4,4,13
	.loc 1 506 0
	fsub 5,5,13
	.loc 1 507 0
	fsub 13,3,13
	.loc 1 505 0
	frsp 4,4
	.loc 1 506 0
	frsp 5,5
	.loc 1 507 0
	frsp 13,13
	.loc 1 505 0
	fsubs 7,7,12
	fmuls 4,4,12
	.loc 1 506 0
	fmuls 5,5,12
	.loc 1 507 0
	fmuls 12,13,12
.LVL71:
	.loc 1 505 0
	fmadds 9,7,9,4
.LVL72:
	.loc 1 506 0
	fmadds 10,10,7,5
.LVL73:
	.loc 1 507 0
	fmadds 11,11,7,12
.LVL74:
.L103:
	addi 9,9,16
	.loc 1 491 0
	bdnz .L104
	.loc 1 514 0
	lis 9,.LC22@ha
	.loc 1 518 0
	lfs 12,.LC2@l(10)
	.loc 1 514 0
	lfd 13,.LC22@l(9)
	lis 11,v_blend@ha
	.loc 1 518 0
	fcmpu 7,0,12
	.loc 1 514 0
	la 9,v_blend@l(11)
	fmul 9,9,13
.LVL75:
	.loc 1 517 0
	stfs 0,12(9)
	.loc 1 515 0
	fmul 10,10,13
.LVL76:
	.loc 1 516 0
	fmul 13,11,13
	.loc 1 514 0
	frsp 9,9
	.loc 1 515 0
	frsp 10,10
	.loc 1 516 0
	frsp 13,13
	.loc 1 514 0
	stfs 9,v_blend@l(11)
	.loc 1 515 0
	stfs 10,4(9)
	.loc 1 516 0
	stfs 13,8(9)
	.loc 1 518 0
	bng- 7,.L112
	.loc 1 519 0
	stfs 12,12(9)
.L102:
	.loc 1 522 0
	addi 1,1,40
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
.L112:
.LCFI24:
	.cfi_restore_state
	.loc 1 520 0
	lis 11,.LC0@ha
	lfs 13,.LC0@l(11)
	fcmpu 7,0,13
	bnl- 7,.L102
	.loc 1 521 0
	stfs 13,12(9)
	.loc 1 522 0
	addi 1,1,40
.LCFI25:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE50:
	.size	V_CalcBlend, .-V_CalcBlend
	.align 2
	.globl V_UpdatePalette
	.type	V_UpdatePalette, @function
V_UpdatePalette:
.LFB51:
	.loc 1 532 0
	.cfi_startproc
	mflr 0
	stwu 1,-832(1)
.LCFI26:
	.cfi_def_cfa_offset 832
	.cfi_register 65, 0
	stw 31,828(1)
	.loc 1 543 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 532 0
	stw 0,836(1)
	.loc 1 541 0
	.cfi_offset 65, 4
	bl V_CalcPowerupCshift
.LVL77:
	lis 8,cl+368@ha
	.loc 1 545 0
	li 7,0
	.loc 1 541 0
	la 8,cl+368@l(8)
	addi 6,8,-368
.LVL78:
.L117:
	.loc 1 547 0
	lwz 0,-64(8)
	lwz 9,0(8)
	cmpw 7,0,9
	beq- 7,.L114
.LVL79:
	.loc 1 550 0
	stw 0,0(8)
	.loc 1 549 0
	li 31,1
.LVL80:
.L114:
	.loc 1 531 0 discriminator 1
	slwi 9,7,4
	li 11,0
	add 9,6,9
	addi 9,9,352
.LVL81:
.L116:
	.loc 1 553 0
	lwz 0,-60(9)
	.loc 1 552 0
	cmpwi 7,11,2
	.loc 1 553 0
	lwzu 10,4(9)
	.loc 1 552 0
	addi 11,11,1
	.loc 1 553 0
	cmpw 6,0,10
	beq- 6,.L115
.LVL82:
	.loc 1 556 0
	stw 0,0(9)
	.loc 1 555 0
	li 31,1
.LVL83:
.L115:
	.loc 1 552 0
	bne+ 7,.L116
.LVL84:
	.loc 1 545 0
	cmpwi 7,7,3
	addi 8,8,16
	addi 7,7,1
.LVL85:
	bne+ 7,.L117
	.loc 1 561 0
	lwz 0,320(6)
	lis 11,host_frametime@ha
	lis 9,.LC6@ha
	lfd 0,host_frametime@l(11)
	xoris 0,0,0x8000
	lfs 13,.LC6@l(9)
	stw 0,780(1)
	lis 0,0x4330
	stw 0,776(1)
	lis 11,.LC24@ha
	.loc 1 531 0
	fneg 0,0
	.loc 1 561 0
	lfd 12,776(1)
	fsub 13,12,13
	lfs 12,.LC24@l(11)
	addi 11,1,816
	fmadd 13,0,12,13
	fctiwz 13,13
	stfiwx 13,0,11
	lwz 0,816(1)
	.loc 1 562 0
	cmpwi 7,0,0
	.loc 1 561 0
	stw 0,320(6)
	.loc 1 562 0
	ble- 7,.L131
.L118:
	.loc 1 566 0
	lwz 0,336(6)
	lfs 13,.LC6@l(9)
	lis 9,.LC26@ha
	xoris 0,0,0x8000
	stw 0,788(1)
	lis 0,0x4330
	stw 0,784(1)
	lfd 12,784(1)
	fsub 13,12,13
	lfs 12,.LC26@l(9)
	addi 9,1,812
	fmadd 0,0,12,13
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,812(1)
	.loc 1 567 0
	cmpwi 7,0,0
	.loc 1 566 0
	stw 0,336(6)
	.loc 1 567 0
	ble- 7,.L132
.L119:
	.loc 1 570 0
	bl V_CheckGamma
.LVL86:
	.loc 1 571 0
	cmpwi 7,31,0
	bne- 7,.L120
	.loc 1 571 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L113
.L120:
	.loc 1 574 0 is_stmt 1
	bl V_CalcBlend
.LVL87:
	.loc 1 576 0
	lis 11,v_blend@ha
	la 9,v_blend@l(11)
	.loc 1 577 0
	lis 10,.LC16@ha
	lfs 0,.LC16@l(10)
	lis 8,gammatable@ha
	lfs 7,v_blend@l(11)
	.loc 1 594 0
	li 11,256
	.loc 1 578 0
	lfs 8,4(9)
	.loc 1 594 0
	mtctr 11
	.loc 1 579 0
	lfs 9,8(9)
	.loc 1 577 0
	fmuls 7,7,0
	.loc 1 578 0
	fmuls 8,8,0
	.loc 1 582 0
	li 7,0
	.loc 1 579 0
	fmuls 9,9,0
	.loc 1 576 0
	lfs 0,12(9)
.LVL88:
	.loc 1 581 0
	lis 9,.LC2@ha
	la 8,gammatable@l(8)
	lfs 13,.LC2@l(9)
	.loc 1 577 0
	fmuls 7,7,0
.LVL89:
	.loc 1 584 0
	lis 9,.LC6@ha
	.loc 1 578 0
	fmuls 8,8,0
.LVL90:
	.loc 1 579 0
	fmuls 9,9,0
.LVL91:
	.loc 1 584 0
	lfs 10,.LC6@l(9)
	.loc 1 581 0
	fsubs 13,13,0
.LVL92:
	lis 9,ramps-1@ha
	la 9,ramps-1@l(9)
	.loc 1 584 0
	lis 6,0x4330
.LVL93:
.L125:
	xoris 0,7,0x8000
	stw 6,792(1)
	stw 0,796(1)
	.loc 1 594 0
	addi 11,1,808
	.loc 1 586 0
	addi 9,9,1
	.loc 1 582 0
	addi 7,7,1
	.loc 1 584 0
	lfd 0,792(1)
	fsub 0,0,10
	frsp 0,0
	fmadds 11,0,13,7
.LVL94:
	.loc 1 585 0
	fmadds 12,0,13,8
	.loc 1 586 0
	fmadds 0,0,13,9
	.loc 1 594 0
	fctiwz 11,11
.LVL95:
	.loc 1 585 0
	fctiwz 12,12
	.loc 1 586 0
	fctiwz 0,0
	.loc 1 594 0
	stfiwx 11,0,11
	.loc 1 585 0
	addi 11,1,800
	stfiwx 12,0,11
	.loc 1 586 0
	addi 11,1,804
	.loc 1 594 0
	lwz 10,808(1)
	.loc 1 586 0
	stfiwx 0,0,11
	.loc 1 594 0
	cmpwi 1,10,255
	.loc 1 585 0
	lwz 11,800(1)
.LVL96:
	.loc 1 586 0
	lwz 0,804(1)
.LVL97:
	.loc 1 595 0
	cmpwi 6,11,255
	.loc 1 596 0
	cmpwi 7,0,255
	.loc 1 594 0
	ble- 1,.L122
	li 10,255
.L122:
	lbzx 10,8,10
	stb 10,0(9)
	.loc 1 595 0
	ble- 6,.L123
	li 11,255
.L123:
	lbzx 11,8,11
	stb 11,256(9)
	.loc 1 596 0
	ble- 7,.L124
	li 0,255
.L124:
.LVL98:
	lbzx 0,8,0
	stb 0,512(9)
	.loc 1 582 0
	bdnz .L125
	.loc 1 599 0
	lis 9,host_basepal@ha
	li 0,256
	lis 10,ramps@ha
	lwz 8,host_basepal@l(9)
.LVL99:
	mtctr 0
	li 11,0
	la 10,ramps@l(10)
.LVL100:
.L126:
	.loc 1 604 0 discriminator 2
	lbzx 0,8,11
	.loc 1 531 0 discriminator 2
	add 9,8,11
	.loc 1 605 0 discriminator 2
	lbz 7,1(9)
.LVL101:
	.loc 1 606 0 discriminator 2
	lbz 6,2(9)
.LVL102:
	.loc 1 609 0 discriminator 2
	addi 9,1,8
	lbzx 0,10,0
	.loc 1 610 0 discriminator 2
	add 7,10,7
.LVL103:
	.loc 1 611 0 discriminator 2
	add 6,10,6
.LVL104:
	.loc 1 610 0 discriminator 2
	lbz 7,256(7)
	.loc 1 609 0 discriminator 2
	stbux 0,9,11
	.loc 1 611 0 discriminator 2
	addi 11,11,3
.LVL105:
	lbz 0,512(6)
	.loc 1 610 0 discriminator 2
	stb 7,1(9)
	.loc 1 611 0 discriminator 2
	stb 0,2(9)
	.loc 1 602 0 discriminator 2
	bdnz .L126
	.loc 1 615 0
	addi 3,1,8
	bl VID_ShiftPalette
.LVL106:
.L113:
	.loc 1 616 0
	lwz 0,836(1)
	lwz 31,828(1)
	mtlr 0
	addi 1,1,832
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL107:
.L131:
.LCFI28:
	.cfi_restore_state
	.loc 1 563 0
	li 0,0
	stw 0,320(6)
	b .L118
.L132:
	.loc 1 568 0
	li 0,0
	stw 0,336(6)
	b .L119
	.cfi_endproc
.LFE51:
	.size	V_UpdatePalette, .-V_UpdatePalette
	.align 2
	.globl angledelta
	.type	angledelta, @function
angledelta:
.LFB52:
	.loc 1 697 0
	.cfi_startproc
.LVL108:
	mflr 0
	stwu 1,-8(1)
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 698 0
	.cfi_offset 65, 4
	bl anglemod
.LVL109:
	.loc 1 699 0
	lis 9,.LC27@ha
	lfs 0,.LC27@l(9)
	fcmpu 7,1,0
	bng- 7,.L134
	.loc 1 700 0
	lis 9,.LC28@ha
	lfs 0,.LC28@l(9)
	fsubs 1,1,0
.LVL110:
.L134:
	.loc 1 702 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI30:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE52:
	.size	angledelta, .-angledelta
	.align 2
	.globl CalcGunAngle
	.type	CalcGunAngle, @function
CalcGunAngle:
.LFB53:
	.loc 1 710 0
	.cfi_startproc
	stwu 1,-64(1)
.LCFI31:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 29,12(1)
	.loc 1 715 0
	lis 29,r_refdef@ha
	.cfi_offset 29, -52
	.cfi_register 65, 0
	la 29,r_refdef@l(29)
	.loc 1 710 0
	stfd 30,48(1)
	.loc 1 715 0
	lfs 1,128(29)
.LVL111:
	.loc 1 710 0
	stfd 31,56(1)
	.loc 1 718 0
	fsubs 1,1,1
	.loc 1 710 0
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 718 0
	lis 30,.LC30@ha
	.cfi_offset 31, -44
	.cfi_offset 30, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 710 0
	stw 0,68(1)
	.loc 1 719 0
	lis 31,.LC18@ha
	.loc 1 710 0
	stfd 27,24(1)
	stfd 28,32(1)
	stfd 29,40(1)
	.loc 1 716 0
	lfs 30,124(29)
.LVL112:
	.loc 1 718 0
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 65, 4
	bl angledelta
.LVL113:
	fmr 31,1
	lfd 13,.LC30@l(30)
	.loc 1 719 0
	lfs 0,.LC18@l(31)
	.loc 1 718 0
	fmul 31,31,13
	frsp 31,31
.LVL114:
	.loc 1 719 0
	fcmpu 7,31,0
	bgt- 7,.L147
	.loc 1 721 0
	lis 9,.LC29@ha
	lfs 0,.LC29@l(9)
	fcmpu 7,31,0
	bnl- 7,.L138
.L147:
	.loc 1 722 0
	fmr 31,0
.LVL115:
.L138:
	.loc 1 723 0
	lfs 1,124(29)
	fsubs 1,30,1
	bl angledelta
	lfd 13,.LC30@l(30)
	.loc 1 724 0
	lfs 0,.LC18@l(31)
	.loc 1 723 0
	fmul 13,1,13
	frsp 13,13
.LVL116:
	.loc 1 724 0
	fcmpu 7,13,0
	bgt- 7,.L149
	.loc 1 726 0
	lis 9,.LC29@ha
	lfs 0,.LC29@l(9)
	fcmpu 7,13,0
	bnl- 7,.L139
.L149:
	.loc 1 727 0
	fmr 13,0
.LVL117:
.L139:
	.loc 1 728 0
	lis 11,host_frametime@ha
	.loc 1 729 0
	lis 9,.LANCHOR1@ha
	.loc 1 728 0
	lfd 11,host_frametime@l(11)
	.loc 1 729 0
	la 9,.LANCHOR1@l(9)
	.loc 1 728 0
	lis 11,.LC32@ha
	.loc 1 729 0
	lfs 12,4(9)
	.loc 1 728 0
	lfs 0,.LC32@l(11)
	.loc 1 729 0
	fcmpu 7,31,12
	.loc 1 728 0
	fmul 0,11,0
	frsp 0,0
.LVL118:
	.loc 1 729 0
	bng- 7,.L154
	.loc 1 731 0
	fadds 12,0,12
	fcmpu 7,12,31
	blt- 7,.L151
.L142:
	.loc 1 740 0
	lfs 12,8(9)
	fcmpu 7,13,12
	bng- 7,.L155
.L157:
	.loc 1 742 0
	fadds 0,0,12
.LVL119:
	fcmpu 7,0,13
	bnl- 7,.L156
.L145:
.LVL120:
	.loc 1 757 0
	lis 31,.LANCHOR0@ha
	lis 30,cl@ha
	la 31,.LANCHOR0@l(31)
	la 30,cl@l(30)
	lfd 29,568(30)
	lfs 1,320(31)
	.loc 1 751 0
	stfs 31,4(9)
	.loc 1 757 0
	fmul 1,29,1
	.loc 1 752 0
	stfs 0,8(9)
	.loc 1 755 0
	lfs 27,124(29)
	.loc 1 757 0
	lfs 30,300(31)
	.loc 1 755 0
	fadds 27,0,27
	.loc 1 754 0
	lfs 28,128(29)
	.loc 1 757 0
	bl sin
.LVL121:
	lfs 13,2860(30)
	fmul 0,30,1
	lfs 12,340(31)
	.loc 1 758 0
	lfs 11,360(31)
	.loc 1 755 0
	fneg 27,27
	.loc 1 758 0
	fmul 1,29,11
	.loc 1 709 0
	fneg 0,0
	.loc 1 754 0
	fadds 28,31,28
	.loc 1 757 0
	fmadd 0,0,12,13
	frsp 0,0
	stfs 0,2860(30)
	.loc 1 758 0
	bl sin
	fmr 13,27
	fmul 0,30,1
	lfs 12,380(31)
	.loc 1 759 0
	lfs 11,400(31)
	fmul 1,29,11
	.loc 1 709 0
	fneg 0,0
	.loc 1 758 0
	fmadd 0,0,12,13
	frsp 0,0
	stfs 0,2852(30)
	.loc 1 759 0
	bl sin
	fmr 0,28
	fmul 30,30,1
	lfs 13,420(31)
	.loc 1 760 0
	lwz 0,68(1)
	lwz 29,12(1)
	mtlr 0
	lwz 31,20(1)
	.loc 1 709 0
	fneg 28,30
	.loc 1 760 0
	lfd 27,24(1)
	lfd 29,40(1)
	lfd 30,48(1)
	.loc 1 759 0
	fmadd 28,28,13,0
	.loc 1 760 0
	lfd 31,56(1)
.LVL122:
	.loc 1 759 0
	frsp 28,28
	stfs 28,2856(30)
	.loc 1 760 0
	lwz 30,16(1)
	lfd 28,32(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL123:
.L154:
.LCFI33:
	.cfi_restore_state
	.loc 1 736 0
	fsubs 12,12,0
	fcmpu 7,12,31
	bng- 7,.L142
.L151:
	.loc 1 737 0
	fmr 31,12
.LVL124:
	.loc 1 740 0
	lfs 12,8(9)
.LVL125:
	fcmpu 7,13,12
	bgt- 7,.L157
.L155:
	.loc 1 747 0
	fsubs 0,12,0
.LVL126:
	fcmpu 7,0,13
	bgt+ 7,.L145
.L156:
	fmr 0,13
	b .L145
	.cfi_endproc
.LFE53:
	.size	CalcGunAngle, .-CalcGunAngle
	.align 2
	.globl V_BoundOffsets
	.type	V_BoundOffsets, @function
V_BoundOffsets:
.LFB54:
	.loc 1 768 0
	.cfi_startproc
	.loc 1 771 0
	lis 9,cl+2676@ha
	.loc 1 776 0
	lis 10,.LC33@ha
	.loc 1 771 0
	lwz 11,cl+2676@l(9)
	lis 9,cl_entities@ha
	la 0,cl_entities@l(9)
	.loc 1 776 0
	lfs 13,.LC33@l(10)
	.loc 1 771 0
	mulli 11,11,584
	.loc 1 776 0
	lis 9,r_refdef@ha
	la 9,r_refdef@l(9)
	lfs 0,112(9)
	.loc 1 771 0
	add 11,11,0
.LVL127:
	.loc 1 776 0
	lfs 12,112(11)
	fsubs 11,12,13
	fcmpu 7,0,11
	bnl- 7,.L177
	.loc 1 777 0
	stfs 11,112(9)
.L161:
	.loc 1 780 0
	lfs 12,116(11)
	lfs 13,.LC33@l(10)
	lfs 0,116(9)
	fsubs 11,12,13
	fcmpu 7,0,11
	bnl- 7,.L178
.L181:
	.loc 1 781 0
	stfs 11,116(9)
.L165:
	.loc 1 784 0
	lfs 13,120(11)
	lis 11,.LC34@ha
.LVL128:
	lfs 12,.LC34@l(11)
	lfs 0,120(9)
	fsubs 12,13,12
	fcmpu 7,0,12
	blt- 7,.L180
.L179:
	.loc 1 786 0
	lis 11,.LC17@ha
	lfs 12,.LC17@l(11)
	fadds 13,13,12
	fcmpu 7,0,13
	bnglr- 7
	.loc 1 787 0
	stfs 13,120(9)
	blr
.LVL129:
.L177:
	.loc 1 778 0
	fadds 13,12,13
	fcmpu 7,0,13
	bng- 7,.L161
	.loc 1 779 0
	stfs 13,112(9)
	.loc 1 780 0
	lfs 12,116(11)
	lfs 13,.LC33@l(10)
	lfs 0,116(9)
	fsubs 11,12,13
	fcmpu 7,0,11
	blt- 7,.L181
.L178:
	.loc 1 782 0
	fadds 13,12,13
	fcmpu 7,0,13
	bng- 7,.L165
	.loc 1 783 0
	stfs 13,116(9)
	.loc 1 784 0
	lfs 13,120(11)
	lis 11,.LC34@ha
.LVL130:
	lfs 12,.LC34@l(11)
	lfs 0,120(9)
	fsubs 12,13,12
	fcmpu 7,0,12
	bnl+ 7,.L179
.L180:
	.loc 1 785 0
	stfs 12,120(9)
	blr
	.cfi_endproc
.LFE54:
	.size	V_BoundOffsets, .-V_BoundOffsets
	.align 2
	.globl V_AddIdle
	.type	V_AddIdle, @function
V_AddIdle:
.LFB55:
	.loc 1 798 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI34:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 799 0
	lis 9,cl+568@ha
	.loc 1 798 0
	stw 31,12(1)
	.loc 1 799 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -20
	.loc 1 798 0
	stw 0,36(1)
	.loc 1 799 0
	la 31,.LANCHOR0@l(31)
	.loc 1 798 0
	stfd 30,16(1)
	.loc 1 799 0
	lfs 1,320(31)
	lfd 30,cl+568@l(9)
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 798 0
	stfd 31,24(1)
	.loc 1 799 0
	fmul 1,30,1
	lfs 31,300(31)
	.cfi_offset 63, -8
	.loc 1 798 0
	stw 30,8(1)
	.loc 1 799 0
	lis 30,r_refdef@ha
	.cfi_offset 30, -24
	la 30,r_refdef@l(30)
	bl sin
	lfs 12,132(30)
	fmul 1,31,1
	lfs 0,340(31)
	.loc 1 800 0
	lfs 13,360(31)
	.loc 1 799 0
	fmadd 0,1,0,12
	.loc 1 800 0
	fmul 1,30,13
	.loc 1 799 0
	frsp 0,0
	stfs 0,132(30)
	.loc 1 800 0
	bl sin
	fmul 1,31,1
	lfs 12,124(30)
	lfs 0,380(31)
	.loc 1 801 0
	lfs 13,400(31)
	.loc 1 800 0
	fmadd 0,1,0,12
	.loc 1 801 0
	fmul 1,30,13
	.loc 1 800 0
	frsp 0,0
	stfs 0,124(30)
	.loc 1 801 0
	bl sin
	fmul 31,31,1
	lfs 0,128(30)
	lfs 13,420(31)
	.loc 1 802 0
	lwz 0,36(1)
	lwz 31,12(1)
	.loc 1 801 0
	fmadd 31,31,13,0
	.loc 1 802 0
	mtlr 0
	lfd 30,16(1)
	.loc 1 801 0
	frsp 31,31
	stfs 31,128(30)
	.loc 1 802 0
	lwz 30,8(1)
	lfd 31,24(1)
	addi 1,1,32
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE55:
	.size	V_AddIdle, .-V_AddIdle
	.align 2
	.globl V_CalcViewRoll
	.type	V_CalcViewRoll, @function
V_CalcViewRoll:
.LFB56:
	.loc 1 813 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI36:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 816 0
	lis 3,cl_entities@ha
	.loc 1 813 0
	stw 31,12(1)
	.loc 1 816 0
	lis 31,cl@ha
	.cfi_offset 31, -4
	.loc 1 813 0
	stw 0,20(1)
	.loc 1 816 0
	la 31,cl@l(31)
	la 3,cl_entities@l(3)
	addi 4,31,480
	lwz 0,2676(31)
	.cfi_offset 65, 4
	mulli 0,0,584
	add 3,3,0
	addi 3,3,148
	bl V_CalcRoll
.LVL131:
	.loc 1 819 0
	lis 11,v_dmg_time@ha
	.loc 1 817 0
	lis 9,r_refdef@ha
	.loc 1 819 0
	lis 10,.LC0@ha
	.loc 1 817 0
	la 9,r_refdef@l(9)
	.loc 1 819 0
	lfs 0,v_dmg_time@l(11)
	lfs 12,.LC0@l(10)
	.loc 1 817 0
	lfs 13,132(9)
	.loc 1 819 0
	fcmpu 7,0,12
	.loc 1 817 0
	fadds 13,1,13
	stfs 13,132(9)
	.loc 1 819 0
	bng- 7,.L184
	.loc 1 821 0
	lis 10,.LANCHOR0+228@ha
	.loc 1 823 0
	fmr 8,0
	.loc 1 821 0
	lfs 12,.LANCHOR0+228@l(10)
	.loc 1 823 0
	lis 10,host_frametime@ha
	.loc 1 822 0
	lfs 11,124(9)
	.loc 1 821 0
	fdivs 0,0,12
	.loc 1 823 0
	lfd 12,host_frametime@l(10)
	.loc 1 821 0
	lis 10,v_dmg_roll@ha
	lfs 9,v_dmg_roll@l(10)
	.loc 1 822 0
	lis 10,v_dmg_pitch@ha
	lfs 10,v_dmg_pitch@l(10)
	.loc 1 823 0
	fsub 12,8,12
	.loc 1 821 0
	fmadds 13,0,9,13
	.loc 1 822 0
	fmadds 0,0,10,11
	.loc 1 823 0
	frsp 12,12
	.loc 1 821 0
	stfs 13,132(9)
	.loc 1 822 0
	stfs 0,124(9)
	.loc 1 823 0
	stfs 12,v_dmg_time@l(11)
.L184:
	.loc 1 826 0
	lwz 0,28(31)
	cmpwi 7,0,0
	bgt+ 7,.L183
	.loc 1 828 0
	lis 11,.LC35@ha
	lwz 0,.LC35@l(11)
	stw 0,132(9)
.L183:
	.loc 1 832 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI37:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE56:
	.size	V_CalcViewRoll, .-V_CalcViewRoll
	.align 2
	.globl V_CalcIntermissionRefdef
	.type	V_CalcIntermissionRefdef, @function
V_CalcIntermissionRefdef:
.LFB57:
	.loc 1 842 0
	.cfi_startproc
	.loc 1 847 0
	lis 11,cl@ha
	.loc 1 842 0
	mflr 0
	.loc 1 847 0
	la 11,cl@l(11)
	.loc 1 842 0
	stwu 1,-16(1)
.LCFI38:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 847 0
	lwz 9,2676(11)
	lis 10,cl_entities@ha
	.loc 1 842 0
	stw 0,20(1)
	.loc 1 847 0
	la 0,cl_entities@l(10)
	.cfi_offset 65, 4
	mulli 9,9,584
	.loc 1 842 0
	stw 30,8(1)
	stw 31,12(1)
	.loc 1 857 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	la 31,.LANCHOR0@l(31)
	.loc 1 847 0
	add 9,9,0
.LVL132:
	.loc 1 857 0
	lwz 30,300(31)
.LVL133:
	.loc 1 853 0
	lwz 0,156(9)
	.loc 1 851 0
	lwz 5,112(9)
	lwz 6,116(9)
	lwz 7,120(9)
	.loc 1 853 0
	lwz 8,148(9)
	lwz 10,152(9)
	.loc 1 851 0
	lis 9,r_refdef@ha
.LVL134:
	la 9,r_refdef@l(9)
	.loc 1 853 0
	stw 0,132(9)
	.loc 1 854 0
	li 0,0
	.loc 1 851 0
	stw 5,112(9)
	stw 6,116(9)
	stw 7,120(9)
	.loc 1 853 0
	stw 8,124(9)
	stw 10,128(9)
	.loc 1 858 0
	lis 9,.LC2@ha
	.loc 1 854 0
	stw 0,2864(11)
	.loc 1 858 0
	lwz 0,.LC2@l(9)
	stw 0,300(31)
	.loc 1 859 0
	bl V_AddIdle
.LVL135:
	.loc 1 861 0
	lwz 0,20(1)
	.loc 1 860 0
	stw 30,300(31)
	.loc 1 861 0
	mtlr 0
	lwz 30,8(1)
.LVL136:
	lwz 31,12(1)
	addi 1,1,16
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE57:
	.size	V_CalcIntermissionRefdef, .-V_CalcIntermissionRefdef
	.align 2
	.globl V_CalcRefdef
	.type	V_CalcRefdef, @function
V_CalcRefdef:
.LFB58:
	.loc 1 870 0
	.cfi_startproc
	stwu 1,-88(1)
.LCFI40:
	.cfi_def_cfa_offset 88
	mflr 0
	stw 31,76(1)
	.loc 1 881 0
	lis 31,cl@ha
	.cfi_offset 31, -12
	.cfi_register 65, 0
	la 31,cl@l(31)
	.loc 1 870 0
	stw 0,92(1)
	stfd 31,80(1)
	stw 26,56(1)
	.loc 1 917 0
	addi 26,1,32
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 870 0
	stw 27,60(1)
	.loc 1 917 0
	addi 27,1,20
	.cfi_offset 27, -28
	.loc 1 870 0
	stw 28,64(1)
	.loc 1 917 0
	addi 28,1,44
	.cfi_offset 28, -24
	.loc 1 870 0
	stw 29,68(1)
	stw 30,72(1)
	.loc 1 878 0
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	bl V_DriftPitch
	.loc 1 881 0
	lwz 29,2676(31)
	lis 9,cl_entities@ha
	.loc 1 890 0
	lfs 0,444(31)
	.loc 1 881 0
	la 9,cl_entities@l(9)
	mulli 29,29,584
	.loc 1 888 0
	lwz 0,448(31)
	.loc 1 890 0
	fneg 0,0
	.loc 1 903 0
	lis 30,r_refdef@ha
	la 30,r_refdef@l(30)
	.loc 1 881 0
	add 29,29,9
.LVL137:
	.loc 1 888 0
	stw 0,152(29)
	.loc 1 890 0
	stfs 0,148(29)
	.loc 1 894 0
	bl V_CalcBob
	.loc 1 898 0
	lfs 11,528(31)
	lfs 13,120(29)
	.loc 1 903 0
	lis 9,.LC36@ha
	.loc 1 898 0
	fadds 11,1,11
	.loc 1 903 0
	lfs 0,.LC36@l(9)
	lfs 12,112(29)
	.loc 1 894 0
	fmr 31,1
.LVL138:
	.loc 1 907 0
	lwz 11,444(31)
	.loc 1 898 0
	fadds 11,11,13
	.loc 1 897 0
	lfs 13,116(29)
	.loc 1 903 0
	fadds 12,12,0
	.loc 1 907 0
	lwz 9,448(31)
	.loc 1 904 0
	fadds 13,13,0
	.loc 1 907 0
	lwz 0,452(31)
	.loc 1 905 0
	fadds 0,11,0
	.loc 1 907 0
	stw 11,124(30)
	.loc 1 903 0
	stfs 12,112(30)
	.loc 1 904 0
	stfs 13,116(30)
	.loc 1 905 0
	stfs 0,120(30)
	.loc 1 907 0
	stw 9,128(30)
	stw 0,132(30)
	.loc 1 908 0
	bl V_CalcViewRoll
.LVL139:
	.loc 1 909 0
	bl V_AddIdle
	.loc 1 912 0
	lfs 0,148(29)
	.loc 1 914 0
	lwz 9,152(29)
	.loc 1 917 0
	addi 3,1,8
	.loc 1 912 0
	fneg 0,0
	.loc 1 915 0
	lwz 0,156(29)
	.loc 1 917 0
	mr 4,28
	mr 5,26
	mr 6,27
	.loc 1 914 0
	stw 9,12(1)
	.loc 1 912 0
	stfs 0,8(1)
	.loc 1 915 0
	stw 0,16(1)
	.loc 1 917 0
	bl AngleVectors
.LVL140:
	lis 9,.LANCHOR0@ha
	addi 11,30,112
	la 9,.LANCHOR0@l(9)
	lfs 8,440(9)
	lfs 9,460(9)
	lfs 10,480(9)
	li 9,0
.LVL141:
.L190:
	.loc 1 921 0 discriminator 2
	lfsx 0,26,9
	.loc 1 919 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 921 0 discriminator 2
	lfsx 11,28,9
	fmuls 0,9,0
	.loc 1 922 0 discriminator 2
	lfsx 12,27,9
	.loc 1 920 0 discriminator 2
	lfs 13,0(11)
	.loc 1 919 0 discriminator 2
	addi 9,9,4
	.loc 1 921 0 discriminator 2
	fmadds 0,11,8,0
	.loc 1 922 0 discriminator 2
	fmadds 0,12,10,0
	.loc 1 920 0 discriminator 2
	fadds 0,13,0
	stfs 0,0(11)
	addi 11,11,4
	.loc 1 919 0 discriminator 2
	bne+ 7,.L190
	.loc 1 925 0
	bl V_BoundOffsets
	.loc 1 928 0
	lwz 11,444(31)
	lwz 9,448(31)
	lwz 0,452(31)
	stw 11,2852(31)
	stw 9,2856(31)
	stw 0,2860(31)
	.loc 1 930 0
	bl CalcGunAngle
	.loc 1 933 0
	lfs 13,528(31)
	.loc 1 932 0
	lfs 12,120(29)
	.loc 1 937 0
	lis 9,.LC30@ha
	lfd 11,.LC30@l(9)
	.loc 1 933 0
	li 9,0
	fadds 13,12,13
	.loc 1 932 0
	lfs 0,112(29)
	.loc 1 935 0
	cmpwi 7,9,8
	.loc 1 932 0
	lwz 0,116(29)
	stfs 0,2816(31)
	.loc 1 933 0
	addi 11,31,2812
	stfs 13,2824(31)
.LVL142:
	addi 10,31,2816
	.loc 1 937 0
	lfsx 13,28,9
	.loc 1 935 0
	addi 9,9,4
	.loc 1 932 0
	stw 0,2820(31)
	.loc 1 937 0
	fmuls 13,31,13
	fmadd 0,13,11,0
	frsp 0,0
	stfsu 0,4(11)
.LVL143:
	.loc 1 935 0
	beq- 7,.L191
.L214:
	.loc 1 937 0
	lfsx 13,28,9
	.loc 1 935 0
	cmpwi 7,9,8
	lfsu 0,4(10)
	addi 9,9,4
	.loc 1 937 0
	fmuls 13,31,13
	fmadd 0,13,11,0
	frsp 0,0
	stfsu 0,4(11)
	.loc 1 935 0
	bne+ 7,.L214
.L191:
	.loc 1 949 0
	lis 9,scr_viewsize+12@ha
	.loc 1 941 0
	lfs 13,2824(31)
	.loc 1 949 0
	lfs 0,scr_viewsize+12@l(9)
	lis 9,.LC37@ha
	lfs 11,.LC37@l(9)
	.loc 1 941 0
	fadds 31,31,13
.LVL144:
	.loc 1 949 0
	fcmpu 7,0,11
	.loc 1 941 0
	stfs 31,2824(31)
	.loc 1 949 0
	beq- 7,.L213
	.loc 1 951 0
	lis 9,.LC26@ha
	lfs 13,.LC26@l(9)
	fcmpu 7,0,13
	bne- 7,.L195
	.loc 1 952 0
	lis 9,.LC38@ha
	lfs 0,.LC38@l(9)
	fadds 31,31,0
	stfs 31,2824(31)
	b .L194
.L195:
	.loc 1 953 0
	lis 9,.LC39@ha
	lfs 13,.LC39@l(9)
	fcmpu 7,0,13
	bne- 7,.L196
.L213:
	.loc 1 954 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fadds 31,31,0
	stfs 31,2824(31)
.L194:
	.loc 1 958 0
	lwz 9,36(31)
	.loc 1 960 0
	lis 10,vid+4@ha
	.loc 1 966 0
	lbz 0,537(31)
	.loc 1 958 0
	addi 9,9,144
	.loc 1 963 0
	lfs 8,124(30)
	lfs 9,128(30)
	.loc 1 958 0
	slwi 9,9,2
	.loc 1 963 0
	lfs 10,132(30)
	.loc 1 958 0
	add 9,31,9
	.loc 1 963 0
	lfs 11,492(31)
	.loc 1 966 0
	cmpwi 7,0,0
	.loc 1 963 0
	lfs 13,496(31)
	lfs 0,500(31)
	fadds 11,8,11
	.loc 1 958 0
	lwz 11,12(9)
	.loc 1 963 0
	fadds 13,9,13
	.loc 1 959 0
	lwz 9,48(31)
	.loc 1 963 0
	fadds 0,10,0
	.loc 1 960 0
	lwz 0,vid+4@l(10)
	.loc 1 959 0
	stw 9,2872(31)
	.loc 1 966 0
	lis 9,.LANCHOR1@ha
	.loc 1 958 0
	stw 11,2864(31)
	.loc 1 966 0
	la 9,.LANCHOR1@l(9)
	.loc 1 960 0
	stw 0,2880(31)
	.loc 1 963 0
	stfs 11,124(30)
	stfs 13,128(30)
	stfs 0,132(30)
	.loc 1 966 0
	beq- 7,.L197
	.loc 1 966 0 is_stmt 0 discriminator 1
	lfs 13,12(9)
	lis 11,.LC0@ha
	lfs 0,.LC0@l(11)
	fsubs 11,12,13
	fcmpu 7,11,0
	bgt- 7,.L215
.L197:
	.loc 1 984 0 is_stmt 1
	stfs 12,12(9)
.L204:
	.loc 1 986 0
	lis 9,chase_active+12@ha
	lfs 13,chase_active+12@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	beq+ 7,.L189
	.loc 1 987 0
	bl Chase_Update
.L189:
	.loc 1 988 0
	lwz 0,92(1)
	lwz 26,56(1)
	mtlr 0
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
.LVL145:
	lwz 30,72(1)
	lwz 31,76(1)
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI41:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL146:
.L215:
.LCFI42:
	.cfi_restore_state
.LBB14:
	.loc 1 970 0
	lfd 10,568(31)
	lfd 11,576(31)
	fsub 11,10,11
	frsp 11,11
.LVL147:
	.loc 1 971 0
	fcmpu 7,11,0
	bnl- 7,.L216
.LVL148:
	.loc 1 975 0
	fadds 0,13,0
	.loc 1 976 0
	fcmpu 7,12,0
	.loc 1 975 0
	stfs 0,12(9)
	.loc 1 976 0
	bnl- 7,.L200
.L217:
	.loc 1 977 0
	fmr 0,12
	stfs 12,12(9)
.L200:
	.loc 1 978 0
	fsubs 11,12,0
	lis 11,.LC40@ha
	lfs 13,.LC40@l(11)
	fcmpu 7,11,13
	bng- 7,.L202
	.loc 1 979 0
	fsubs 0,12,13
	stfs 0,12(9)
.L202:
	.loc 1 980 0
	fsubs 0,0,12
	lfs 13,120(30)
	.loc 1 981 0
	lfs 12,2824(31)
	.loc 1 980 0
	fadds 13,13,0
	.loc 1 981 0
	fadds 0,0,12
	.loc 1 980 0
	stfs 13,120(30)
	.loc 1 981 0
	stfs 0,2824(31)
.LBE14:
	.loc 1 967 0
	b .L204
.LVL149:
.L216:
.LBB15:
	.loc 1 971 0
	lis 11,.LC35@ha
	lfs 0,.LC35@l(11)
	fmuls 0,11,0
.LVL150:
	.loc 1 975 0
	fadds 0,13,0
	.loc 1 976 0
	fcmpu 7,12,0
	.loc 1 975 0
	stfs 0,12(9)
	.loc 1 976 0
	bnl- 7,.L200
	b .L217
.L196:
.LBE15:
	.loc 1 955 0
	lis 9,.LC35@ha
	lfs 13,.LC35@l(9)
	fcmpu 7,0,13
	bne- 7,.L194
	.loc 1 956 0
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fadds 31,31,0
	stfs 31,2824(31)
	b .L194
	.cfi_endproc
.LFE58:
	.size	V_CalcRefdef, .-V_CalcRefdef
	.align 2
	.globl V_RenderView
	.type	V_RenderView, @function
V_RenderView:
.LFB59:
	.loc 1 1001 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI43:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1002 0
	lis 9,con_forcedup@ha
	.loc 1 1001 0
	stw 25,12(1)
	stw 0,44(1)
	.loc 1 1002 0
	lbz 0,con_forcedup@l(9)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	.loc 1 1001 0
	stw 26,16(1)
	.loc 1 1002 0
	cmpwi 7,0,0
	.loc 1 1001 0
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 1002 0
	bne- 7,.L218
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 1006 0
	lis 31,cl@ha
	la 31,cl@l(31)
	lwz 0,2680(31)
	cmpwi 7,0,1
	ble- 7,.L220
	.loc 1 1008 0
	lis 30,.LC42@ha
	lis 3,.LC41@ha
	la 30,.LC42@l(30)
	la 3,.LC41@l(3)
	mr 4,30
	bl Cvar_Set
	.loc 1 1009 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	mr 4,30
	bl Cvar_Set
	.loc 1 1010 0
	lis 3,.LC44@ha
	la 3,.LC44@l(3)
	mr 4,30
	bl Cvar_Set
.L220:
	.loc 1 1013 0
	lwz 0,540(31)
	cmpwi 7,0,0
	bne- 7,.L228
	.loc 1 1019 0
	lbz 0,536(31)
	cmpwi 7,0,0
	beq- 7,.L229
.L222:
	.loc 1 1025 0
	lis 25,.LANCHOR0@ha
	lis 9,.LC0@ha
	la 25,.LANCHOR0@l(25)
	lfs 0,.LC0@l(9)
	lfs 12,500(25)
	fcmpu 7,12,0
	beq- 7,.L223
.L230:
.LBB16:
	.loc 1 1032 0
	lis 26,vid@ha
	.loc 1 1035 0
	lis 29,r_refdef@ha
	.loc 1 1032 0
	la 30,vid@l(26)
	.loc 1 1035 0
	la 29,r_refdef@l(29)
	.loc 1 1033 0
	lis 9,.LC12@ha
	lfs 10,28(30)
	.loc 1 1035 0
	lfs 11,128(29)
	lis 28,right-4@ha
	.loc 1 1033 0
	lfs 13,.LC12@l(9)
	fneg 12,12
	.loc 1 1035 0
	lfs 0,520(25)
	addi 31,29,108
	.loc 1 1032 0
	lwz 0,16(30)
	.loc 1 1033 0
	fmuls 13,10,13
	.loc 1 1035 0
	fsubs 0,11,0
	la 28,right-4@l(28)
	.loc 1 1032 0
	slwi 0,0,1
	.loc 1 1000 0
	addi 27,29,120
	.loc 1 1032 0
	stw 0,16(30)
.LBE16:
	.loc 1 1000 0
	mr 11,28
.LBB17:
	.loc 1 1033 0
	stfs 13,28(30)
.LBE17:
	.loc 1 1000 0
	mr 9,31
.LBB18:
	.loc 1 1035 0
	stfs 0,128(29)
.LVL151:
.L224:
	.loc 1 1037 0 discriminator 2
	lfsu 0,4(9)
	lfsu 13,4(11)
	.loc 1 1036 0 discriminator 2
	cmpw 7,9,27
	.loc 1 1037 0 discriminator 2
	fmadds 0,12,13,0
	stfs 0,0(9)
	.loc 1 1036 0 discriminator 2
	bne+ 7,.L224
	.loc 1 1038 0
	bl R_RenderView
	.loc 1 1044 0
	lis 11,.LC38@ha
	lfs 13,128(29)
	lfs 12,520(25)
	lfs 0,.LC38@l(11)
	.loc 1 1040 0
	lwz 0,16(30)
	lwz 9,vid@l(26)
	.loc 1 1044 0
	fmadds 0,12,0,13
	.loc 1 1040 0
	srwi 0,0,1
	.loc 1 1044 0
	lfs 12,500(25)
	.loc 1 1040 0
	add 0,9,0
	stw 0,vid@l(26)
	.loc 1 1044 0
	stfs 0,128(29)
.LVL152:
.L225:
	.loc 1 1046 0 discriminator 2
	lfsu 0,4(28)
	lfsu 13,4(31)
	fadds 0,0,0
	.loc 1 1045 0 discriminator 2
	cmpw 7,31,27
	.loc 1 1046 0 discriminator 2
	fmadds 0,0,12,13
	stfs 0,0(31)
	.loc 1 1045 0 discriminator 2
	bne+ 7,.L225
	.loc 1 1047 0
	bl R_RenderView
	.loc 1 1054 0
	lfs 0,28(30)
	.loc 1 1049 0
	lwz 0,16(30)
	lwz 11,vid@l(26)
	.loc 1 1054 0
	fadds 0,0,0
	.loc 1 1051 0
	lwz 9,12(29)
	.loc 1 1049 0
	srwi 0,0,1
	subf 11,0,11
	.loc 1 1053 0
	stw 0,16(30)
	.loc 1 1051 0
	slwi 9,9,1
	.loc 1 1049 0
	stw 11,vid@l(26)
	.loc 1 1051 0
	stw 9,12(29)
	.loc 1 1054 0
	stfs 0,28(30)
.L218:
.LBE18:
	.loc 1 1067 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI44:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L228:
.LCFI45:
	.cfi_restore_state
	.loc 1 1025 0
	lis 25,.LANCHOR0@ha
	.loc 1 1015 0
	bl V_CalcIntermissionRefdef
	.loc 1 1025 0
	la 25,.LANCHOR0@l(25)
	lis 9,.LC0@ha
	lfs 12,500(25)
	lfs 0,.LC0@l(9)
	fcmpu 7,12,0
	bne+ 7,.L230
.L223:
	.loc 1 1058 0
	bl R_RenderView
	.loc 1 1067 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI46:
	.cfi_def_cfa_offset 0
	blr
.L229:
.LCFI47:
	.cfi_restore_state
	.loc 1 1020 0
	bl V_CalcRefdef
	b .L222
	.cfi_endproc
.LFE59:
	.size	V_RenderView, .-V_RenderView
	.align 2
	.globl V_Init
	.type	V_Init, @function
V_Init:
.LFB60:
	.loc 1 1077 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI48:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1078 0
	lis 3,.LC45@ha
	lis 4,V_cshift_f@ha
	la 3,.LC45@l(3)
	la 4,V_cshift_f@l(4)
	.loc 1 1077 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 1078 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl Cmd_AddCommand
	.loc 1 1079 0
	lis 3,.LC46@ha
	lis 4,V_BonusFlash_f@ha
	la 3,.LC46@l(3)
	la 4,V_BonusFlash_f@l(4)
	bl Cmd_AddCommand
	.loc 1 1082 0
	lis 31,.LANCHOR0@ha
	.loc 1 1080 0
	lis 4,V_StartPitchDrift@ha
	lis 3,.LC47@ha
	la 4,V_StartPitchDrift@l(4)
	.loc 1 1082 0
	la 31,.LANCHOR0@l(31)
	.loc 1 1080 0
	la 3,.LC47@l(3)
	bl Cmd_AddCommand
	.loc 1 1082 0
	addi 3,31,488
	bl Cvar_RegisterVariable
	.loc 1 1083 0
	addi 3,31,508
	bl Cvar_RegisterVariable
	.loc 1 1085 0
	addi 3,31,136
	bl Cvar_RegisterVariable
	.loc 1 1086 0
	addi 3,31,16
	bl Cvar_RegisterVariable
	.loc 1 1088 0
	addi 3,31,388
	bl Cvar_RegisterVariable
	.loc 1 1089 0
	addi 3,31,308
	bl Cvar_RegisterVariable
	.loc 1 1090 0
	addi 3,31,348
	bl Cvar_RegisterVariable
	.loc 1 1091 0
	addi 3,31,408
	bl Cvar_RegisterVariable
	.loc 1 1092 0
	addi 3,31,328
	bl Cvar_RegisterVariable
	.loc 1 1093 0
	addi 3,31,368
	bl Cvar_RegisterVariable
	.loc 1 1095 0
	addi 3,31,288
	bl Cvar_RegisterVariable
	.loc 1 1096 0
	addi 3,31,528
	bl Cvar_RegisterVariable
	.loc 1 1097 0
	addi 3,31,548
	bl Cvar_RegisterVariable
	.loc 1 1098 0
	addi 3,31,568
	bl Cvar_RegisterVariable
	.loc 1 1099 0
	addi 3,31,268
	bl Cvar_RegisterVariable
	.loc 1 1101 0
	addi 3,31,428
	bl Cvar_RegisterVariable
	.loc 1 1102 0
	addi 3,31,448
	bl Cvar_RegisterVariable
	.loc 1 1103 0
	addi 3,31,468
	bl Cvar_RegisterVariable
	.loc 1 1104 0
	addi 3,31,56
	bl Cvar_RegisterVariable
	.loc 1 1105 0
	addi 3,31,36
	bl Cvar_RegisterVariable
	.loc 1 1106 0
	addi 3,31,116
	bl Cvar_RegisterVariable
	.loc 1 1107 0
	addi 3,31,76
	bl Cvar_RegisterVariable
	.loc 1 1108 0
	addi 3,31,96
	bl Cvar_RegisterVariable
	.loc 1 1110 0
	addi 3,31,216
	bl Cvar_RegisterVariable
	.loc 1 1111 0
	addi 3,31,176
	bl Cvar_RegisterVariable
	.loc 1 1112 0
	addi 3,31,196
	bl Cvar_RegisterVariable
	.loc 1 1114 0
	lis 9,.LC2@ha
	lfs 1,.LC2@l(9)
	bl BuildGammaTable
	.loc 1 1115 0
	addi 3,31,156
	bl Cvar_RegisterVariable
	.loc 1 1116 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE60:
	.size	V_Init, .-V_Init
	.comm	v_blend,16,4
	.comm	ramps,768,1
	.comm	gammatable,256,4
	.globl v_gamma
	.globl cshift_lava
	.globl cshift_slime
	.globl cshift_water
	.globl cshift_empty
	.globl v_centerspeed
	.globl v_centermove
	.comm	up,12,4
	.comm	right,12,4
	.comm	forward,12,4
	.comm	v_dmg_pitch,4,4
	.comm	v_dmg_roll,4,4
	.comm	v_dmg_time,4,4
	.globl gl_cshiftpercent
	.globl cl_crossy
	.globl cl_crossx
	.globl crosshair
	.globl v_idlescale
	.globl v_ipitch_level
	.globl v_iroll_level
	.globl v_iyaw_level
	.globl v_ipitch_cycle
	.globl v_iroll_cycle
	.globl v_iyaw_cycle
	.globl v_kickpitch
	.globl v_kickroll
	.globl v_kicktime
	.globl cl_bobup
	.globl cl_bobcycle
	.globl cl_bob
	.globl cl_rollangle
	.globl cl_rollspeed
	.globl scr_ofsz
	.globl scr_ofsy
	.globl scr_ofsx
	.globl lcd_yaw
	.globl lcd_x
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
.LC1:
	.4byte	-1082130432
.LC2:
	.4byte	1065353216
.LC3:
	.4byte	1082130432
.LC4:
	.4byte	-1059061760
.LC6:
	.4byte	1501560836
.LC12:
	.4byte	1056964608
.LC14:
	.4byte	1132429312
.LC16:
	.4byte	1132396544
.LC17:
	.4byte	1106247680
.LC18:
	.4byte	1092616192
.LC19:
	.4byte	1077936128
.LC24:
	.4byte	1125515264
.LC26:
	.4byte	1120403456
.LC27:
	.4byte	1127481344
.LC28:
	.4byte	1135869952
.LC29:
	.4byte	-1054867456
.LC32:
	.4byte	1101004800
.LC33:
	.4byte	1096810496
.LC34:
	.4byte	1102053376
.LC35:
	.4byte	1117782016
.LC36:
	.4byte	1023410176
.LC37:
	.4byte	1121714176
.LC38:
	.4byte	1073741824
.LC39:
	.4byte	1119092736
.LC40:
	.4byte	1094713344
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC7:
	.4byte	1074340347
	.4byte	1413754136
.LC9:
	.4byte	1072064102
	.4byte	1717986918
.LC10:
	.4byte	1070805811
	.4byte	858993459
.LC20:
	.4byte	1070176665
	.4byte	-1717986918
.LC21:
	.4byte	1057263472
	.4byte	-1241753899
.LC22:
	.4byte	1064308752
	.4byte	237839318
.LC30:
	.4byte	1071225241
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	cshift_empty, @object
	.size	cshift_empty, 16
cshift_empty:
	.long	130
	.long	80
	.long	50
	.long	0
	.type	v_centerspeed, @object
	.size	v_centerspeed, 20
v_centerspeed:
	.long	.LC50
	.long	.LC51
	.zero	12
	.type	cl_rollangle, @object
	.size	cl_rollangle, 20
cl_rollangle:
	.long	.LC78
	.long	.LC79
	.zero	12
	.type	cl_rollspeed, @object
	.size	cl_rollspeed, 20
cl_rollspeed:
	.long	.LC80
	.long	.LC81
	.zero	12
	.type	cl_bobcycle, @object
	.size	cl_bobcycle, 20
cl_bobcycle:
	.long	.LC75
	.long	.LC71
	.byte	0
	.zero	11
	.type	cl_bobup, @object
	.size	cl_bobup, 20
cl_bobup:
	.long	.LC74
	.long	.LC67
	.byte	0
	.zero	11
	.type	cl_bob, @object
	.size	cl_bob, 20
cl_bob:
	.long	.LC76
	.long	.LC77
	.byte	0
	.zero	11
	.type	v_centermove, @object
	.size	v_centermove, 20
v_centermove:
	.long	.LC52
	.long	.LC53
	.byte	0
	.zero	11
	.type	v_gamma, @object
	.size	v_gamma, 20
v_gamma:
	.long	.LC48
	.long	.LC49
	.byte	1
	.zero	11
	.type	v_kickroll, @object
	.size	v_kickroll, 20
v_kickroll:
	.long	.LC72
	.long	.LC71
	.byte	0
	.zero	11
	.type	v_kickpitch, @object
	.size	v_kickpitch, 20
v_kickpitch:
	.long	.LC70
	.long	.LC71
	.byte	0
	.zero	11
	.type	v_kicktime, @object
	.size	v_kicktime, 20
v_kicktime:
	.long	.LC73
	.long	.LC67
	.byte	0
	.zero	11
	.type	cshift_lava, @object
	.size	cshift_lava, 16
cshift_lava:
	.long	255
	.long	80
	.long	0
	.long	150
	.type	cshift_slime, @object
	.size	cshift_slime, 16
cshift_slime:
	.long	0
	.long	25
	.long	5
	.long	150
	.type	gl_cshiftpercent, @object
	.size	gl_cshiftpercent, 20
gl_cshiftpercent:
	.long	.LC54
	.long	.LC55
	.byte	0
	.zero	11
	.type	v_idlescale, @object
	.size	v_idlescale, 20
v_idlescale:
	.long	.LC59
	.long	.LC42
	.byte	0
	.zero	11
	.type	v_iroll_cycle, @object
	.size	v_iroll_cycle, 20
v_iroll_cycle:
	.long	.LC66
	.long	.LC67
	.byte	0
	.zero	11
	.type	v_iroll_level, @object
	.size	v_iroll_level, 20
v_iroll_level:
	.long	.LC62
	.long	.LC63
	.byte	0
	.zero	11
	.type	v_ipitch_cycle, @object
	.size	v_ipitch_cycle, 20
v_ipitch_cycle:
	.long	.LC65
	.long	.LC49
	.byte	0
	.zero	11
	.type	v_ipitch_level, @object
	.size	v_ipitch_level, 20
v_ipitch_level:
	.long	.LC60
	.long	.LC61
	.byte	0
	.zero	11
	.type	v_iyaw_cycle, @object
	.size	v_iyaw_cycle, 20
v_iyaw_cycle:
	.long	.LC68
	.long	.LC69
	.byte	0
	.zero	11
	.type	v_iyaw_level, @object
	.size	v_iyaw_level, 20
v_iyaw_level:
	.long	.LC64
	.long	.LC61
	.byte	0
	.zero	11
	.type	scr_ofsx, @object
	.size	scr_ofsx, 20
scr_ofsx:
	.long	.LC41
	.long	.LC42
	.byte	0
	.zero	11
	.type	scr_ofsy, @object
	.size	scr_ofsy, 20
scr_ofsy:
	.long	.LC43
	.long	.LC42
	.byte	0
	.zero	11
	.type	scr_ofsz, @object
	.size	scr_ofsz, 20
scr_ofsz:
	.long	.LC44
	.long	.LC42
	.byte	0
	.zero	11
	.type	lcd_x, @object
	.size	lcd_x, 20
lcd_x:
	.long	.LC83
	.long	.LC42
	.zero	12
	.type	lcd_yaw, @object
	.size	lcd_yaw, 20
lcd_yaw:
	.long	.LC82
	.long	.LC42
	.zero	12
	.type	crosshair, @object
	.size	crosshair, 20
crosshair:
	.long	.LC58
	.long	.LC42
	.byte	1
	.zero	11
	.type	cl_crossx, @object
	.size	cl_crossx, 20
cl_crossx:
	.long	.LC57
	.long	.LC42
	.byte	0
	.zero	11
	.type	cl_crossy, @object
	.size	cl_crossy, 20
cl_crossy:
	.long	.LC56
	.long	.LC42
	.byte	0
	.zero	11
	.type	cshift_water, @object
	.size	cshift_water, 16
cshift_water:
	.long	130
	.long	80
	.long	50
	.long	128
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC41:
	.string	"scr_ofsx"
	.zero	3
.LC42:
	.string	"0"
	.zero	2
.LC43:
	.string	"scr_ofsy"
	.zero	3
.LC44:
	.string	"scr_ofsz"
	.zero	3
.LC45:
	.string	"v_cshift"
	.zero	3
.LC46:
	.string	"bf"
	.zero	1
.LC47:
	.string	"centerview"
	.zero	1
.LC48:
	.string	"gamma"
	.zero	2
.LC49:
	.string	"1"
	.zero	2
.LC50:
	.string	"v_centerspeed"
	.zero	2
.LC51:
	.string	"500"
.LC52:
	.string	"v_centermove"
	.zero	3
.LC53:
	.string	"0.15"
	.zero	3
.LC54:
	.string	"gl_cshiftpercent"
	.zero	3
.LC55:
	.string	"100"
.LC56:
	.string	"cl_crossy"
	.zero	2
.LC57:
	.string	"cl_crossx"
	.zero	2
.LC58:
	.string	"crosshair"
	.zero	2
.LC59:
	.string	"v_idlescale"
.LC60:
	.string	"v_ipitch_level"
	.zero	1
.LC61:
	.string	"0.3"
.LC62:
	.string	"v_iroll_level"
	.zero	2
.LC63:
	.string	"0.1"
.LC64:
	.string	"v_iyaw_level"
	.zero	3
.LC65:
	.string	"v_ipitch_cycle"
	.zero	1
.LC66:
	.string	"v_iroll_cycle"
	.zero	2
.LC67:
	.string	"0.5"
.LC68:
	.string	"v_iyaw_cycle"
	.zero	3
.LC69:
	.string	"2"
	.zero	2
.LC70:
	.string	"v_kickpitch"
.LC71:
	.string	"0.6"
.LC72:
	.string	"v_kickroll"
	.zero	1
.LC73:
	.string	"v_kicktime"
	.zero	1
.LC74:
	.string	"cl_bobup"
	.zero	3
.LC75:
	.string	"cl_bobcycle"
.LC76:
	.string	"cl_bob"
	.zero	1
.LC77:
	.string	"0.02"
	.zero	3
.LC78:
	.string	"cl_rollangle"
	.zero	3
.LC79:
	.string	"2.0"
.LC80:
	.string	"cl_rollspeed"
	.zero	3
.LC81:
	.string	"200"
.LC82:
	.string	"lcd_yaw"
.LC83:
	.string	"lcd_x"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	oldgammavalue.14994, @object
	.size	oldgammavalue.14994, 4
oldgammavalue.14994:
	.zero	4
	.type	oldyaw.15080, @object
	.size	oldyaw.15080, 4
oldyaw.15080:
	.zero	4
	.type	oldpitch.15081, @object
	.size	oldpitch.15081, 4
oldpitch.15081:
	.zero	4
	.type	oldz.15110, @object
	.size	oldz.15110, 4
oldz.15110:
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
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 22 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 23 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 24 "d:/Data/Nintendo/TenebraeGX/src/screen.h"
	.file 25 "d:/Data/Nintendo/TenebraeGX/src/console.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35b7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF649
	.byte	0x1
	.4byte	.LASF650
	.4byte	.LASF651
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
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.4byte	0xc8f
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
	.4byte	0xc74
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xc
	.byte	0x16
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0xc
	.byte	0x17
	.4byte	0xcb0
	.uleb128 0x8
	.4byte	0xc9a
	.4byte	0xcc0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xcd0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
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
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xd
	.byte	0xf2
	.4byte	0xca5
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
	.4byte	0xca5
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
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0x14
	.byte	0xe
	.byte	0x38
	.4byte	0xded
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xe
	.byte	0x3a
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xe
	.byte	0x3b
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xe
	.byte	0x3c
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xe
	.byte	0x3d
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xe
	.byte	0x3e
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xe
	.byte	0x3f
	.4byte	0xded
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd8c
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0xe
	.byte	0x40
	.4byte	0xd8c
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0x10
	.byte	0xf
	.byte	0x16
	.4byte	0xe27
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xf
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xf
	.byte	0x19
	.4byte	0xe27
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xe37
	.uleb128 0x9
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	.LASF188
	.2byte	0x80a0
	.byte	0xf
	.byte	0x78
	.4byte	0xf85
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xf
	.byte	0x7a
	.4byte	0xf85
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xf
	.byte	0x7b
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xf
	.byte	0x7c
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xf
	.byte	0x7d
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xf
	.byte	0x7f
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xf
	.byte	0x80
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xf
	.byte	0x81
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xf
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xf
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xf
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xf
	.byte	0x86
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xf
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xf
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xf
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0xf
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0xf
	.byte	0x8c
	.4byte	0xf8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xf
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0xf
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0xf
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0xf
	.byte	0x91
	.4byte	0xf8b
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0xf
	.byte	0x93
	.4byte	0xdfe
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0xf
	.byte	0x94
	.4byte	0xf9c
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe37
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xf9c
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xfac
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xfbc
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0x44
	.byte	0x10
	.byte	0x23
	.4byte	0xfe5
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x10
	.byte	0x25
	.4byte	0xf9c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF211
	.byte	0x10
	.byte	0x26
	.4byte	0xc8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0x10
	.byte	0x11
	.byte	0x1e
	.4byte	0x102a
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x11
	.byte	0x20
	.4byte	0x10d1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x11
	.byte	0x21
	.4byte	0x10d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x11
	.byte	0x22
	.4byte	0x134b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x11
	.byte	0x23
	.4byte	0x10d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF217
	.byte	0x40
	.byte	0x12
	.byte	0xca
	.4byte	0x10d1
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x12
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x12
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x12
	.byte	0xd0
	.4byte	0x22c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF221
	.byte	0x12
	.byte	0xd2
	.4byte	0x16a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x12
	.byte	0xd5
	.4byte	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF223
	.byte	0x12
	.byte	0xd6
	.4byte	0x22f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x12
	.byte	0xd8
	.4byte	0x22f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF225
	.byte	0x12
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0x12
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF226
	.byte	0x12
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x12
	.byte	0xdc
	.4byte	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x102a
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfe5
	.uleb128 0x10
	.4byte	.LASF228
	.2byte	0x248
	.byte	0x11
	.byte	0x27
	.4byte	0x134b
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x11
	.byte	0x29
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x11
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x11
	.byte	0x2d
	.4byte	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0x11
	.byte	0x2f
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x11
	.byte	0x30
	.4byte	0x135c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x11
	.byte	0x31
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF234
	.byte	0x11
	.byte	0x32
	.4byte	0x135c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x11
	.byte	0x33
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF235
	.byte	0x11
	.byte	0x34
	.4byte	0x1626
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x11
	.byte	0x35
	.4byte	0x10d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x11
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.4byte	.LASF237
	.byte	0x11
	.byte	0x37
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x11
	.byte	0x38
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x11
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.4byte	.LASF238
	.byte	0x11
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x11
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x11
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x11
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x11
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0x11
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0x11
	.byte	0x44
	.4byte	0x16a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x11
	.byte	0x48
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x11
	.byte	0x49
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x11
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x11
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x11
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.4byte	.LASF244
	.byte	0x11
	.byte	0x50
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.4byte	.LASF245
	.byte	0x11
	.byte	0x51
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x11
	.byte	0x52
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x11
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0x11
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF249
	.byte	0x11
	.byte	0x57
	.4byte	0x17c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.4byte	.LASF250
	.byte	0x11
	.byte	0x58
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.4byte	.LASF251
	.byte	0x11
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0x11
	.byte	0x5c
	.4byte	0x17cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.4byte	.LASF253
	.byte	0x11
	.byte	0x5f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0x11
	.byte	0x60
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF255
	.byte	0x11
	.byte	0x61
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF256
	.byte	0x11
	.byte	0x62
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF257
	.byte	0x11
	.byte	0x63
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF258
	.byte	0x11
	.byte	0x64
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x10dd
	.uleb128 0x4
	.4byte	.LASF259
	.byte	0x11
	.byte	0x24
	.4byte	0xfe5
	.uleb128 0x8
	.4byte	0xc9a
	.4byte	0x1372
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF260
	.2byte	0x1a4
	.byte	0x12
	.2byte	0x180
	.4byte	0x1626
	.uleb128 0x15
	.4byte	.LASF178
	.byte	0x12
	.2byte	0x182
	.4byte	0xf9c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF261
	.byte	0x12
	.2byte	0x183
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x12
	.2byte	0x185
	.4byte	0x2639
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x12
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x12
	.2byte	0x187
	.4byte	0x1ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x12
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x12
	.2byte	0x18e
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x12
	.2byte	0x18e
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x12
	.2byte	0x18f
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF267
	.byte	0x12
	.2byte	0x194
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF268
	.byte	0x12
	.2byte	0x195
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF269
	.byte	0x12
	.2byte	0x195
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF270
	.byte	0x12
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF271
	.byte	0x12
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF272
	.byte	0x12
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF273
	.byte	0x12
	.2byte	0x19d
	.4byte	0x2645
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF274
	.byte	0x12
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF275
	.byte	0x12
	.2byte	0x1a0
	.4byte	0x22a8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF251
	.byte	0x12
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x12
	.2byte	0x1a3
	.4byte	0x264b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x15
	.4byte	.LASF277
	.byte	0x12
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF278
	.byte	0x12
	.2byte	0x1a6
	.4byte	0x2651
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF279
	.byte	0x12
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF280
	.byte	0x12
	.2byte	0x1a9
	.4byte	0x2657
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x15
	.4byte	.LASF281
	.byte	0x12
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF282
	.byte	0x12
	.2byte	0x1ac
	.4byte	0x265d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x15
	.4byte	.LASF283
	.byte	0x12
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF284
	.byte	0x12
	.2byte	0x1af
	.4byte	0x22b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x15
	.4byte	.LASF285
	.byte	0x12
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x15
	.4byte	.LASF286
	.byte	0x12
	.2byte	0x1b2
	.4byte	0x22fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x15
	.4byte	.LASF287
	.byte	0x12
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF288
	.byte	0x12
	.2byte	0x1b5
	.4byte	0x2663
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x15
	.4byte	.LASF289
	.byte	0x12
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x15
	.4byte	.LASF290
	.byte	0x12
	.2byte	0x1b8
	.4byte	0x236a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x12
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x15
	.4byte	.LASF291
	.byte	0x12
	.2byte	0x1bb
	.4byte	0x22f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x15
	.4byte	.LASF292
	.byte	0x12
	.2byte	0x1bd
	.4byte	0x2669
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x15
	.4byte	.LASF293
	.byte	0x12
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x15
	.4byte	.LASF294
	.byte	0x12
	.2byte	0x1c0
	.4byte	0x2679
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x15
	.4byte	.LASF295
	.byte	0x12
	.2byte	0x1c2
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x15
	.4byte	.LASF296
	.byte	0x12
	.2byte	0x1c3
	.4byte	0x9be
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x15
	.4byte	.LASF297
	.byte	0x12
	.2byte	0x1c4
	.4byte	0x5c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x15
	.4byte	.LASF211
	.byte	0x12
	.2byte	0x1c9
	.4byte	0xc8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1372
	.uleb128 0xd
	.4byte	.LASF298
	.byte	0x34
	.byte	0x12
	.byte	0xb6
	.4byte	0x16a9
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x12
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x12
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x12
	.byte	0xbc
	.4byte	0x22c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF221
	.byte	0x12
	.byte	0xbe
	.4byte	0x16a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF299
	.byte	0x12
	.byte	0xc1
	.4byte	0x22a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x12
	.byte	0xc2
	.4byte	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF300
	.byte	0x12
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x12
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x162c
	.uleb128 0x1e
	.4byte	.LASF301
	.4byte	0x20030
	.byte	0x13
	.2byte	0xa09
	.4byte	0x17c9
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x13
	.2byte	0xa0f
	.4byte	0x17c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF302
	.byte	0x13
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF303
	.byte	0x13
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF304
	.byte	0x13
	.2byte	0xa17
	.4byte	0x2a48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF305
	.byte	0x13
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF306
	.byte	0x13
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF307
	.byte	0x13
	.2byte	0xa1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF308
	.byte	0x13
	.2byte	0xa1d
	.4byte	0x1a46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF309
	.byte	0x13
	.2byte	0xa1f
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF310
	.byte	0x13
	.2byte	0xa21
	.4byte	0x2a48
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF311
	.byte	0x13
	.2byte	0xa25
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF312
	.byte	0x13
	.2byte	0xa2b
	.4byte	0x2a54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF313
	.byte	0x13
	.2byte	0xa2d
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x15
	.4byte	.LASF314
	.byte	0x13
	.2byte	0xa2f
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x15
	.4byte	.LASF315
	.byte	0x13
	.2byte	0xa31
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x15
	.4byte	.LASF316
	.byte	0x13
	.2byte	0xa33
	.4byte	0x2a99
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x15
	.4byte	.LASF317
	.byte	0x13
	.2byte	0xa37
	.4byte	0x2aaa
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x16af
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x17df
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF318
	.byte	0x11
	.byte	0x66
	.4byte	0x10dd
	.uleb128 0xa
	.byte	0x94
	.byte	0x11
	.byte	0x69
	.4byte	0x1954
	.uleb128 0xb
	.4byte	.LASF319
	.byte	0x11
	.byte	0x6b
	.4byte	0xb5b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x11
	.byte	0x6d
	.4byte	0xb5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x11
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF322
	.byte	0x11
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF323
	.byte	0x11
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x11
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF325
	.byte	0x11
	.byte	0x70
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF326
	.byte	0x11
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF327
	.byte	0x11
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x11
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF329
	.byte	0x11
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x11
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF331
	.byte	0x11
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF332
	.byte	0x11
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF333
	.byte	0x11
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF334
	.byte	0x11
	.byte	0x78
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x11
	.byte	0x79
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF336
	.byte	0x11
	.byte	0x7a
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF337
	.byte	0x11
	.byte	0x7c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF338
	.byte	0x11
	.byte	0x7d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF339
	.byte	0x11
	.byte	0x7f
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x11
	.byte	0x80
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x11
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF342
	.byte	0x11
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x11
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF344
	.byte	0x11
	.byte	0x85
	.4byte	0x17ea
	.uleb128 0xa
	.byte	0x18
	.byte	0x14
	.byte	0x16
	.4byte	0x19a0
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x14
	.byte	0x18
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF345
	.byte	0x14
	.byte	0x1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x14
	.byte	0x1c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x14
	.byte	0x1d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF348
	.byte	0x14
	.byte	0x21
	.4byte	0x195f
	.uleb128 0x1f
	.2byte	0x402c
	.byte	0x14
	.byte	0x29
	.4byte	0x19fb
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x14
	.byte	0x2b
	.4byte	0xfac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF349
	.byte	0x14
	.byte	0x2c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF350
	.byte	0x14
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF351
	.byte	0x14
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF352
	.byte	0x14
	.byte	0x2f
	.4byte	0xf8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF353
	.byte	0x14
	.byte	0x30
	.4byte	0x19ab
	.uleb128 0xa
	.byte	0x10
	.byte	0x14
	.byte	0x32
	.4byte	0x1a2b
	.uleb128 0xb
	.4byte	.LASF354
	.byte	0x14
	.byte	0x34
	.4byte	0x1a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF355
	.byte	0x14
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1a3b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF356
	.byte	0x14
	.byte	0x36
	.4byte	0x1a06
	.uleb128 0xf
	.byte	0x4
	.4byte	0x17df
	.uleb128 0x20
	.byte	0x4
	.byte	0x14
	.byte	0x6b
	.4byte	0x1a67
	.uleb128 0x21
	.4byte	.LASF357
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF358
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF359
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF360
	.byte	0x14
	.byte	0x6f
	.4byte	0x1a4c
	.uleb128 0x1f
	.2byte	0x8f8
	.byte	0x14
	.byte	0x75
	.4byte	0x1b69
	.uleb128 0xb
	.4byte	.LASF361
	.byte	0x14
	.byte	0x77
	.4byte	0x1a67
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF362
	.byte	0x14
	.byte	0x7a
	.4byte	0xf9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF363
	.byte	0x14
	.byte	0x7b
	.4byte	0x1b69
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF364
	.byte	0x14
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0xb
	.4byte	.LASF365
	.byte	0x14
	.byte	0x7f
	.4byte	0x1b7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0x14
	.byte	0x83
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c8
	.uleb128 0xb
	.4byte	.LASF367
	.byte	0x14
	.byte	0x84
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c9
	.uleb128 0xb
	.4byte	.LASF368
	.byte	0x14
	.byte	0x85
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x8ca
	.uleb128 0xb
	.4byte	.LASF369
	.byte	0x14
	.byte	0x86
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8cc
	.uleb128 0xb
	.4byte	.LASF370
	.byte	0x14
	.byte	0x87
	.4byte	0x1b90
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d0
	.uleb128 0xb
	.4byte	.LASF371
	.byte	0x14
	.byte	0x88
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d4
	.uleb128 0xb
	.4byte	.LASF372
	.byte	0x14
	.byte	0x89
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d8
	.uleb128 0xb
	.4byte	.LASF373
	.byte	0x14
	.byte	0x8a
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x8dc
	.uleb128 0xb
	.4byte	.LASF374
	.byte	0x14
	.byte	0x8e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e0
	.uleb128 0xb
	.4byte	.LASF375
	.byte	0x14
	.byte	0x8f
	.4byte	0xf85
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e4
	.uleb128 0xb
	.4byte	.LASF376
	.byte	0x14
	.byte	0x90
	.4byte	0x9c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e8
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1b7a
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1b90
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
	.4byte	.LASF377
	.byte	0x14
	.byte	0x92
	.4byte	0x1a72
	.uleb128 0x1f
	.2byte	0xce8
	.byte	0x14
	.byte	0x9a
	.4byte	0x1e3c
	.uleb128 0xb
	.4byte	.LASF378
	.byte	0x14
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0x14
	.byte	0xa0
	.4byte	0x19a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x14
	.byte	0xa3
	.4byte	0x1e3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF380
	.byte	0x14
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF381
	.byte	0x14
	.byte	0xa5
	.4byte	0x1e4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF382
	.byte	0x14
	.byte	0xa6
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.4byte	.LASF383
	.byte	0x14
	.byte	0xa8
	.4byte	0x1e5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xb
	.4byte	.LASF384
	.byte	0x14
	.byte	0xa9
	.4byte	0x1e5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xb
	.4byte	.LASF385
	.byte	0x14
	.byte	0xaf
	.4byte	0x135c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x14
	.byte	0xb1
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xb
	.4byte	.LASF386
	.byte	0x14
	.byte	0xb3
	.4byte	0x135c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.4byte	.LASF387
	.byte	0x14
	.byte	0xb5
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.4byte	.LASF388
	.byte	0x14
	.byte	0xb7
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xb
	.4byte	.LASF389
	.byte	0x14
	.byte	0xba
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.4byte	.LASF390
	.byte	0x14
	.byte	0xbb
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xb
	.4byte	.LASF391
	.byte	0x14
	.byte	0xbc
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.4byte	.LASF392
	.byte	0x14
	.byte	0xbd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF393
	.byte	0x14
	.byte	0xbe
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF394
	.byte	0x14
	.byte	0xc0
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF395
	.byte	0x14
	.byte	0xc1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF396
	.byte	0x14
	.byte	0xc3
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF397
	.byte	0x14
	.byte	0xc4
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xb
	.4byte	.LASF398
	.byte	0x14
	.byte	0xc5
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xb
	.4byte	.LASF399
	.byte	0x14
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF400
	.byte	0x14
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF401
	.byte	0x14
	.byte	0xca
	.4byte	0x1e6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF402
	.byte	0x14
	.byte	0xcb
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF403
	.byte	0x14
	.byte	0xce
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xb
	.4byte	.LASF404
	.byte	0x14
	.byte	0xd2
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xb
	.4byte	.LASF405
	.byte	0x14
	.byte	0xd7
	.4byte	0x1e7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x14
	.byte	0xd8
	.4byte	0x1e8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xb
	.4byte	.LASF407
	.byte	0x14
	.byte	0xda
	.4byte	0x1ea2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xb
	.4byte	.LASF408
	.byte	0x14
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xb
	.4byte	.LASF409
	.byte	0x14
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xb
	.4byte	.LASF410
	.byte	0x14
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xb
	.4byte	.LASF411
	.byte	0x14
	.byte	0xe0
	.4byte	0x1626
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xb
	.4byte	.LASF412
	.byte	0x14
	.byte	0xe1
	.4byte	0x10d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xb
	.4byte	.LASF413
	.byte	0x14
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xb
	.4byte	.LASF414
	.byte	0x14
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xb
	.4byte	.LASF415
	.byte	0x14
	.byte	0xe4
	.4byte	0x17df
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xb
	.4byte	.LASF416
	.byte	0x14
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xb
	.4byte	.LASF417
	.byte	0x14
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xb
	.4byte	.LASF418
	.byte	0x14
	.byte	0xe9
	.4byte	0x1eb2
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xb
	.4byte	.LASF419
	.byte	0x14
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1e4c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x1e5c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x1a3b
	.4byte	0x1e6c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x922
	.4byte	0x1e7c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x1626
	.4byte	0x1e8c
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x1e9c
	.4byte	0x1e9c
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfbc
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1eb2
	.uleb128 0x9
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19fb
	.uleb128 0x4
	.4byte	.LASF420
	.byte	0x14
	.byte	0xf3
	.4byte	0x1ba1
	.uleb128 0x20
	.byte	0x4
	.byte	0x15
	.byte	0x34
	.4byte	0x1ed8
	.uleb128 0x21
	.4byte	.LASF421
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF422
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF423
	.byte	0x15
	.byte	0x34
	.4byte	0x1ec3
	.uleb128 0xa
	.byte	0x4
	.byte	0x15
	.byte	0x64
	.4byte	0x1f06
	.uleb128 0xe
	.string	"v"
	.byte	0x15
	.byte	0x65
	.4byte	0x1f06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF424
	.byte	0x15
	.byte	0x66
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x1f16
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF425
	.byte	0x15
	.byte	0x67
	.4byte	0x1ee3
	.uleb128 0xa
	.byte	0xc
	.byte	0x12
	.byte	0x3b
	.4byte	0x1f38
	.uleb128 0xb
	.4byte	.LASF426
	.byte	0x12
	.byte	0x3d
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF427
	.byte	0x12
	.byte	0x3e
	.4byte	0x1f21
	.uleb128 0xd
	.4byte	.LASF428
	.byte	0x14
	.byte	0x12
	.byte	0x52
	.4byte	0x1f96
	.uleb128 0xb
	.4byte	.LASF429
	.byte	0x12
	.byte	0x54
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF430
	.byte	0x12
	.byte	0x55
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF262
	.byte	0x12
	.byte	0x56
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF431
	.byte	0x12
	.byte	0x57
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0x12
	.byte	0x58
	.4byte	0x1f96
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x1fa6
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF432
	.byte	0x12
	.byte	0x59
	.4byte	0x1f43
	.uleb128 0xd
	.4byte	.LASF433
	.byte	0x48
	.byte	0x12
	.byte	0x5b
	.4byte	0x2066
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x12
	.byte	0x5d
	.4byte	0xa65
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x12
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x12
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF434
	.byte	0x12
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF435
	.byte	0x12
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF436
	.byte	0x12
	.byte	0x61
	.4byte	0x218b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF437
	.byte	0x12
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF438
	.byte	0x12
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF439
	.byte	0x12
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF440
	.byte	0x12
	.byte	0x64
	.4byte	0x2191
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF441
	.byte	0x12
	.byte	0x65
	.4byte	0x2191
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF442
	.byte	0x12
	.byte	0x66
	.4byte	0xa75
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF443
	.byte	0x5c
	.byte	0x12
	.byte	0x96
	.4byte	0x218b
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x12
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF299
	.byte	0x12
	.byte	0x9a
	.4byte	0x22a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF265
	.byte	0x12
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF444
	.byte	0x12
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF279
	.byte	0x12
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF445
	.byte	0x12
	.byte	0xa0
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF446
	.byte	0x12
	.byte	0xa1
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF447
	.byte	0x12
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF448
	.byte	0x12
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF449
	.byte	0x12
	.byte	0xa5
	.4byte	0x22ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF436
	.byte	0x12
	.byte	0xa6
	.4byte	0x218b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF450
	.byte	0x12
	.byte	0xa7
	.4byte	0x218b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF284
	.byte	0x12
	.byte	0xa9
	.4byte	0x22b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x12
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x12
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF451
	.byte	0x12
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF452
	.byte	0x12
	.byte	0xb0
	.4byte	0xaeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF453
	.byte	0x12
	.byte	0xb1
	.4byte	0xa4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF454
	.byte	0x12
	.byte	0xb2
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF455
	.byte	0x12
	.byte	0xb3
	.4byte	0x9be
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2066
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fb1
	.uleb128 0x4
	.4byte	.LASF456
	.byte	0x12
	.byte	0x67
	.4byte	0x1fb1
	.uleb128 0xa
	.byte	0x8
	.byte	0x12
	.byte	0x78
	.4byte	0x21c5
	.uleb128 0xe
	.string	"v"
	.byte	0x12
	.byte	0x7a
	.4byte	0xadb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF457
	.byte	0x12
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF458
	.byte	0x12
	.byte	0x7c
	.4byte	0x21a2
	.uleb128 0xa
	.byte	0x2c
	.byte	0x12
	.byte	0x7e
	.4byte	0x2211
	.uleb128 0xb
	.4byte	.LASF459
	.byte	0x12
	.byte	0x80
	.4byte	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF460
	.byte	0x12
	.byte	0x81
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF461
	.byte	0x12
	.byte	0x82
	.4byte	0x2211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF265
	.byte	0x12
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2197
	.uleb128 0x4
	.4byte	.LASF462
	.byte	0x12
	.byte	0x84
	.4byte	0x21d0
	.uleb128 0xd
	.4byte	.LASF463
	.byte	0x1c
	.byte	0x12
	.byte	0x8a
	.4byte	0x2291
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0x12
	.byte	0x8c
	.4byte	0x2291
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF464
	.byte	0x12
	.byte	0x8d
	.4byte	0x2291
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF465
	.byte	0x12
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF265
	.byte	0x12
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x12
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF466
	.byte	0x12
	.byte	0x92
	.4byte	0x2297
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF467
	.byte	0x12
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2222
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2291
	.uleb128 0x4
	.4byte	.LASF468
	.byte	0x12
	.byte	0x94
	.4byte	0x2222
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fa6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x229d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2217
	.uleb128 0x4
	.4byte	.LASF469
	.byte	0x12
	.byte	0xb4
	.4byte	0x2066
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x22d5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x16a9
	.4byte	0x22e5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF470
	.byte	0x12
	.byte	0xc6
	.4byte	0x162c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1351
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22fc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22ba
	.uleb128 0x4
	.4byte	.LASF471
	.byte	0x12
	.byte	0xdd
	.4byte	0x102a
	.uleb128 0xa
	.byte	0x28
	.byte	0x12
	.byte	0xe0
	.4byte	0x236a
	.uleb128 0xb
	.4byte	.LASF290
	.byte	0x12
	.byte	0xe2
	.4byte	0x236a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF275
	.byte	0x12
	.byte	0xe3
	.4byte	0x22a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF472
	.byte	0x12
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF473
	.byte	0x12
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF474
	.byte	0x12
	.byte	0xe6
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF475
	.byte	0x12
	.byte	0xe7
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xaba
	.uleb128 0x4
	.4byte	.LASF476
	.byte	0x12
	.byte	0xe8
	.4byte	0x230d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x929
	.uleb128 0x18
	.byte	0x28
	.byte	0x12
	.2byte	0x11e
	.4byte	0x23f4
	.uleb128 0x15
	.4byte	.LASF477
	.byte	0x12
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF478
	.byte	0x12
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF479
	.byte	0x12
	.2byte	0x122
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF480
	.byte	0x12
	.2byte	0x123
	.4byte	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF481
	.byte	0x12
	.2byte	0x124
	.4byte	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x12
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF178
	.byte	0x12
	.2byte	0x126
	.4byte	0xa65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF482
	.byte	0x12
	.2byte	0x127
	.4byte	0x2381
	.uleb128 0x22
	.2byte	0x53c
	.byte	0x12
	.2byte	0x142
	.4byte	0x25e5
	.uleb128 0x15
	.4byte	.LASF483
	.byte	0x12
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF484
	.byte	0x12
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF485
	.byte	0x12
	.2byte	0x145
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF486
	.byte	0x12
	.2byte	0x146
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF487
	.byte	0x12
	.2byte	0x147
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF488
	.byte	0x12
	.2byte	0x148
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF489
	.byte	0x12
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF490
	.byte	0x12
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF491
	.byte	0x12
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF465
	.byte	0x12
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x12
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x12
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x12
	.2byte	0x14f
	.4byte	0x1ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x12
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF493
	.byte	0x12
	.2byte	0x151
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x12
	.2byte	0x153
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x12
	.2byte	0x153
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF478
	.byte	0x12
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF494
	.byte	0x12
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF495
	.byte	0x12
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF496
	.byte	0x12
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF497
	.byte	0x12
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x15
	.4byte	.LASF275
	.byte	0x12
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF314
	.byte	0x12
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF498
	.byte	0x12
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF499
	.byte	0x12
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF500
	.byte	0x12
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF434
	.byte	0x12
	.2byte	0x15e
	.4byte	0x25e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF501
	.byte	0x12
	.2byte	0x15f
	.4byte	0x25e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x15
	.4byte	.LASF502
	.byte	0x12
	.2byte	0x160
	.4byte	0x1e3c
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x15
	.4byte	.LASF503
	.byte	0x12
	.2byte	0x161
	.4byte	0x25fb
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x25fb
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x23f4
	.4byte	0x260b
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF504
	.byte	0x12
	.2byte	0x162
	.4byte	0x2400
	.uleb128 0x23
	.byte	0x4
	.byte	0x12
	.2byte	0x172
	.4byte	0x2639
	.uleb128 0x21
	.4byte	.LASF505
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF506
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF507
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF508
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF509
	.byte	0x12
	.2byte	0x172
	.4byte	0x2617
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa5a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2302
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f38
	.uleb128 0xf
	.byte	0x4
	.4byte	0x21c5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22e5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x2370
	.4byte	0x2679
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2211
	.uleb128 0xa
	.byte	0x10
	.byte	0x16
	.byte	0x16
	.4byte	0x26a4
	.uleb128 0xb
	.4byte	.LASF429
	.byte	0x16
	.byte	0x18
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF430
	.byte	0x16
	.byte	0x19
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF510
	.byte	0x16
	.byte	0x1a
	.4byte	0x267f
	.uleb128 0x17
	.4byte	.LASF511
	.byte	0x14
	.byte	0x13
	.2byte	0x981
	.4byte	0x26db
	.uleb128 0x15
	.4byte	.LASF512
	.byte	0x13
	.2byte	0x983
	.4byte	0xa4a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF183
	.byte	0x13
	.2byte	0x985
	.4byte	0x26db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26af
	.uleb128 0x5
	.4byte	.LASF513
	.byte	0x13
	.2byte	0x987
	.4byte	0x26af
	.uleb128 0x24
	.4byte	.LASF556
	.byte	0x4
	.byte	0x13
	.2byte	0x98d
	.4byte	0x272b
	.uleb128 0x1a
	.4byte	.LASF514
	.byte	0x13
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF515
	.byte	0x13
	.2byte	0x991
	.4byte	0x929
	.uleb128 0x1a
	.4byte	.LASF516
	.byte	0x13
	.2byte	0x993
	.4byte	0xc9a
	.uleb128 0x1a
	.4byte	.LASF517
	.byte	0x13
	.2byte	0x995
	.4byte	0xe9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF518
	.byte	0x13
	.2byte	0x997
	.4byte	0x26ed
	.uleb128 0x14
	.4byte	.LASF519
	.2byte	0x890
	.byte	0x13
	.2byte	0x99d
	.4byte	0x28eb
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x13
	.2byte	0x99f
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF520
	.byte	0x13
	.2byte	0x9a1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0x13
	.2byte	0x9a1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x13
	.2byte	0x9a3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF521
	.byte	0x13
	.2byte	0x9a7
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF522
	.byte	0x13
	.2byte	0x9a9
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF523
	.byte	0x13
	.2byte	0x9ab
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x15
	.4byte	.LASF524
	.byte	0x13
	.2byte	0x9ad
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x15
	.4byte	.LASF525
	.byte	0x13
	.2byte	0x9af
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x15
	.4byte	.LASF213
	.byte	0x13
	.2byte	0x9b1
	.4byte	0x264b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x25
	.string	"vis"
	.byte	0x13
	.2byte	0x9b3
	.4byte	0x28eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF526
	.byte	0x13
	.2byte	0x9b5
	.4byte	0x28eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x15
	.4byte	.LASF527
	.byte	0x13
	.2byte	0x9b7
	.4byte	0x22f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x15
	.4byte	.LASF528
	.byte	0x13
	.2byte	0x9b9
	.4byte	0x2663
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x15
	.4byte	.LASF529
	.byte	0x13
	.2byte	0x9bb
	.4byte	0x237b
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x15
	.4byte	.LASF530
	.byte	0x13
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x15
	.4byte	.LASF531
	.byte	0x13
	.2byte	0x9bf
	.4byte	0x28fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x15
	.4byte	.LASF532
	.byte	0x13
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x13
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x15
	.4byte	.LASF533
	.byte	0x13
	.2byte	0x9c5
	.4byte	0x1a46
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x15
	.4byte	.LASF534
	.byte	0x13
	.2byte	0x9c7
	.4byte	0x26e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x15
	.4byte	.LASF535
	.byte	0x13
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x13
	.2byte	0x9cb
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x15
	.4byte	.LASF536
	.byte	0x13
	.2byte	0x9cd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x15
	.4byte	.LASF537
	.byte	0x13
	.2byte	0x9cf
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x15
	.4byte	.LASF538
	.byte	0x13
	.2byte	0x9d1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x15
	.4byte	.LASF539
	.byte	0x13
	.2byte	0x9d3
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x28fc
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x272b
	.uleb128 0x5
	.4byte	.LASF540
	.byte	0x13
	.2byte	0x9d5
	.4byte	0x2737
	.uleb128 0x1e
	.4byte	.LASF541
	.4byte	0x1e864
	.byte	0x13
	.2byte	0x9db
	.4byte	0x2a48
	.uleb128 0x15
	.4byte	.LASF302
	.byte	0x13
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF542
	.byte	0x13
	.2byte	0x9e1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF543
	.byte	0x13
	.2byte	0x9e1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF544
	.byte	0x13
	.2byte	0x9e1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF545
	.byte	0x13
	.2byte	0x9e1
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF546
	.byte	0x13
	.2byte	0x9e3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF308
	.byte	0x13
	.2byte	0x9e5
	.4byte	0x1a46
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF547
	.byte	0x13
	.2byte	0x9e7
	.4byte	0x2a48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF548
	.byte	0x13
	.2byte	0x9e9
	.4byte	0x2a4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF549
	.byte	0x13
	.2byte	0x9eb
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF339
	.byte	0x13
	.2byte	0x9eb
	.4byte	0xca5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF550
	.byte	0x13
	.2byte	0x9ed
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF551
	.byte	0x13
	.2byte	0x9f3
	.4byte	0x2a54
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF552
	.byte	0x13
	.2byte	0x9f5
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x15
	.4byte	.LASF553
	.byte	0x13
	.2byte	0x9f7
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x15
	.4byte	.LASF351
	.byte	0x13
	.2byte	0x9f9
	.4byte	0x2a54
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x15
	.4byte	.LASF554
	.byte	0x13
	.2byte	0x9fb
	.4byte	0x2a6b
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x15
	.4byte	.LASF500
	.byte	0x13
	.2byte	0x9ff
	.4byte	0x2a7c
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x13
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x260b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2902
	.uleb128 0x8
	.4byte	0xc9a
	.4byte	0x2a6b
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x959
	.4byte	0x2a7c
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2a8d
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF555
	.byte	0x13
	.2byte	0xa05
	.4byte	0x290e
	.uleb128 0x8
	.4byte	0x26a4
	.4byte	0x2aaa
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2a8d
	.uleb128 0x24
	.4byte	.LASF557
	.byte	0x4
	.byte	0x17
	.2byte	0x490
	.4byte	0x2b10
	.uleb128 0x26
	.string	"U8"
	.byte	0x17
	.2byte	0x492
	.4byte	0x2b10
	.uleb128 0x26
	.string	"S8"
	.byte	0x17
	.2byte	0x493
	.4byte	0x2b15
	.uleb128 0x26
	.string	"U16"
	.byte	0x17
	.2byte	0x494
	.4byte	0x2b1a
	.uleb128 0x26
	.string	"S16"
	.byte	0x17
	.2byte	0x495
	.4byte	0x2b1f
	.uleb128 0x26
	.string	"U32"
	.byte	0x17
	.2byte	0x496
	.4byte	0x2b24
	.uleb128 0x26
	.string	"S32"
	.byte	0x17
	.2byte	0x497
	.4byte	0x2b29
	.uleb128 0x26
	.string	"F32"
	.byte	0x17
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
	.4byte	.LASF558
	.byte	0x17
	.2byte	0x499
	.4byte	0x2ab0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF652
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.byte	0x1
	.4byte	0x2b74
	.uleb128 0x29
	.string	"g"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x929
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x41
	.uleb128 0x2a
	.string	"inf"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x41
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x192
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x182
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST0
	.uleb128 0x2d
	.4byte	0x2b3a
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2bc3
	.uleb128 0x2e
	.4byte	0x2b3a
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x91
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF563
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x929
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST1
	.4byte	0x2c2c
	.uleb128 0x30
	.4byte	.LASF166
	.byte	0x1
	.byte	0x50
	.4byte	0x2c2c
	.4byte	.LLST2
	.uleb128 0x30
	.4byte	.LASF387
	.byte	0x1
	.byte	0x50
	.4byte	0x2c2c
	.4byte	.LLST3
	.uleb128 0x31
	.4byte	.LASF561
	.byte	0x1
	.byte	0x52
	.4byte	0x929
	.4byte	.LLST4
	.uleb128 0x31
	.4byte	.LASF562
	.byte	0x1
	.byte	0x53
	.4byte	0x929
	.4byte	.LLST5
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.byte	0x54
	.4byte	0x929
	.4byte	.LLST6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc9a
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF564
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x929
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST7
	.4byte	0x2c6e
	.uleb128 0x32
	.string	"bob"
	.byte	0x1
	.byte	0x71
	.4byte	0x929
	.4byte	.LLST8
	.uleb128 0x31
	.4byte	.LASF565
	.byte	0x1
	.byte	0x72
	.4byte	0x929
	.4byte	.LLST9
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF566
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF571
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST10
	.4byte	0x2cba
	.uleb128 0x31
	.4byte	.LASF567
	.byte	0x1
	.byte	0xb7
	.4byte	0x929
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LASF568
	.byte	0x1
	.byte	0xb7
	.4byte	0x929
	.4byte	.LLST12
	.byte	0
	.uleb128 0x35
	.4byte	0x2b44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST13
	.4byte	0x2d13
	.uleb128 0x36
	.4byte	0x2b53
	.4byte	.LLST14
	.uleb128 0x37
	.4byte	0x2b5d
	.byte	0x1
	.byte	0x59
	.uleb128 0x38
	.4byte	0x2b67
	.uleb128 0x39
	.4byte	0x2b44
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x10b
	.uleb128 0x3a
	.4byte	0x2b53
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3c
	.4byte	0x2b5d
	.4byte	.LLST15
	.uleb128 0x3c
	.4byte	0x2b67
	.4byte	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x126
	.byte	0x1
	.4byte	0x959
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST17
	.4byte	0x2d44
	.uleb128 0x3e
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x128
	.4byte	0x929
	.byte	0x5
	.byte	0x3
	.4byte	oldgammavalue.14994
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF572
	.byte	0x1
	.2byte	0x13b
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST18
	.4byte	0x2df7
	.uleb128 0x40
	.4byte	.LASF573
	.byte	0x1
	.2byte	0x13d
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x40
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x13d
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x3e
	.4byte	.LASF575
	.byte	0x1
	.2byte	0x13e
	.4byte	0xca5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x3e
	.4byte	.LASF576
	.byte	0x1
	.2byte	0x140
	.4byte	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3e
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x140
	.4byte	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x42
	.string	"up"
	.byte	0x1
	.2byte	0x140
	.4byte	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x41
	.string	"ent"
	.byte	0x1
	.2byte	0x141
	.4byte	0x1a46
	.4byte	.LLST22
	.uleb128 0x43
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x142
	.4byte	0x929
	.uleb128 0x40
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x143
	.4byte	0x929
	.4byte	.LLST23
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2e1f
	.uleb128 0x45
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x41
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x1e1
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST24
	.4byte	0x2ea4
	.uleb128 0x41
	.string	"r"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x929
	.4byte	.LLST25
	.uleb128 0x41
	.string	"g"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x929
	.4byte	.LLST26
	.uleb128 0x41
	.string	"b"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x929
	.4byte	.LLST27
	.uleb128 0x41
	.string	"a"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x929
	.4byte	.LLST28
	.uleb128 0x41
	.string	"a2"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x929
	.4byte	.LLST29
	.uleb128 0x41
	.string	"j"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x41
	.4byte	.LLST30
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x213
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST31
	.4byte	0x2f88
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x215
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x41
	.string	"j"
	.byte	0x1
	.2byte	0x215
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x41
	.string	"new"
	.byte	0x1
	.2byte	0x216
	.4byte	0x959
	.4byte	.LLST34
	.uleb128 0x43
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x217
	.4byte	0x9be
	.uleb128 0x40
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x217
	.4byte	0x9be
	.4byte	.LLST35
	.uleb128 0x42
	.string	"pal"
	.byte	0x1
	.2byte	0x218
	.4byte	0x2f88
	.byte	0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x41
	.string	"r"
	.byte	0x1
	.2byte	0x219
	.4byte	0x929
	.4byte	.LLST36
	.uleb128 0x41
	.string	"g"
	.byte	0x1
	.2byte	0x219
	.4byte	0x929
	.4byte	.LLST37
	.uleb128 0x41
	.string	"b"
	.byte	0x1
	.2byte	0x219
	.4byte	0x929
	.4byte	.LLST38
	.uleb128 0x41
	.string	"a"
	.byte	0x1
	.2byte	0x219
	.4byte	0x929
	.4byte	.LLST39
	.uleb128 0x2a
	.string	"ir"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x41
	.uleb128 0x41
	.string	"ig"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x41
	.4byte	.LLST40
	.uleb128 0x41
	.string	"ib"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x41
	.4byte	.LLST41
	.uleb128 0x40
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x21b
	.4byte	0x959
	.4byte	.LLST42
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x2f99
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x2ff
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x2b8
	.byte	0x1
	.4byte	0x929
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST43
	.4byte	0x2fc6
	.uleb128 0x46
	.string	"a"
	.byte	0x1
	.2byte	0x2b8
	.4byte	0x929
	.4byte	.LLST44
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x2c5
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST45
	.4byte	0x3035
	.uleb128 0x41
	.string	"yaw"
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x929
	.4byte	.LLST46
	.uleb128 0x40
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x929
	.4byte	.LLST47
	.uleb128 0x40
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x929
	.4byte	.LLST48
	.uleb128 0x3e
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x929
	.byte	0x5
	.byte	0x3
	.4byte	oldyaw.15080
	.uleb128 0x3e
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x929
	.byte	0x5
	.byte	0x3
	.4byte	oldpitch.15081
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF591
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x305f
	.uleb128 0x41
	.string	"ent"
	.byte	0x1
	.2byte	0x301
	.4byte	0x1a46
	.4byte	.LLST49
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x31d
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST50
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF593
	.byte	0x1
	.2byte	0x32c
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST51
	.4byte	0x309f
	.uleb128 0x3e
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x32e
	.4byte	0x929
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF594
	.byte	0x1
	.2byte	0x349
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST52
	.4byte	0x30e6
	.uleb128 0x41
	.string	"ent"
	.byte	0x1
	.2byte	0x34b
	.4byte	0x1a46
	.4byte	.LLST53
	.uleb128 0x43
	.4byte	.LASF595
	.byte	0x1
	.2byte	0x34b
	.4byte	0x1a46
	.uleb128 0x41
	.string	"old"
	.byte	0x1
	.2byte	0x34c
	.4byte	0x929
	.4byte	.LLST54
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF596
	.byte	0x1
	.2byte	0x365
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST55
	.4byte	0x31a0
	.uleb128 0x41
	.string	"ent"
	.byte	0x1
	.2byte	0x367
	.4byte	0x1a46
	.4byte	.LLST56
	.uleb128 0x43
	.4byte	.LASF595
	.byte	0x1
	.2byte	0x367
	.4byte	0x1a46
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x368
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x3e
	.4byte	.LASF576
	.byte	0x1
	.2byte	0x369
	.4byte	0xca5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3e
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x369
	.4byte	0xca5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.string	"up"
	.byte	0x1
	.2byte	0x369
	.4byte	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3e
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x36a
	.4byte	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x41
	.string	"bob"
	.byte	0x1
	.2byte	0x36b
	.4byte	0x929
	.4byte	.LLST58
	.uleb128 0x3e
	.4byte	.LASF597
	.byte	0x1
	.2byte	0x36c
	.4byte	0x929
	.byte	0x5
	.byte	0x3
	.4byte	oldz.15110
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x40
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x929
	.4byte	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x3e8
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST60
	.4byte	0x31cb
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x406
	.4byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x434
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST61
	.uleb128 0x47
	.string	"vid"
	.byte	0xa
	.byte	0x38
	.4byte	0xc69
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF601
	.byte	0x18
	.byte	0x31
	.4byte	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF602
	.byte	0x13
	.2byte	0x23f
	.4byte	0x1954
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"cls"
	.byte	0x14
	.byte	0x94
	.4byte	0x1b96
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF603
	.byte	0x14
	.byte	0xfd
	.4byte	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.string	"cl"
	.byte	0x14
	.2byte	0x11b
	.4byte	0x1eb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x17df
	.4byte	0x3241
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x49
	.4byte	.LASF604
	.byte	0x14
	.2byte	0x11f
	.4byte	0x3230
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF605
	.byte	0x19
	.byte	0x1a
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x102
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_gamma
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x327f
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF607
	.byte	0x1
	.2byte	0x104
	.4byte	0x326f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gammatable
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x32a8
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF608
	.byte	0x1
	.2byte	0x107
	.4byte	0x3292
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ramps
	.uleb128 0x4b
	.4byte	.LASF609
	.byte	0x1
	.2byte	0x108
	.4byte	0xcc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_blend
	.uleb128 0x4c
	.4byte	.LASF610
	.byte	0x1
	.byte	0x21
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lcd_x
	.uleb128 0x4b
	.4byte	.LASF611
	.byte	0x13
	.2byte	0xc2c
	.4byte	0x22fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x49
	.4byte	.LASF612
	.byte	0x17
	.2byte	0x548
	.4byte	0x3301
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x3306
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b2e
	.uleb128 0x49
	.4byte	.LASF613
	.byte	0xd
	.2byte	0x13f
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF614
	.byte	0xd
	.2byte	0x14c
	.4byte	0x922
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF615
	.byte	0xd
	.2byte	0x14d
	.4byte	0x9be
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF616
	.byte	0xd
	.2byte	0x16e
	.4byte	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF617
	.byte	0x1
	.byte	0x22
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lcd_yaw
	.uleb128 0x4c
	.4byte	.LASF618
	.byte	0x1
	.byte	0x24
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_ofsx
	.uleb128 0x4c
	.4byte	.LASF619
	.byte	0x1
	.byte	0x25
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_ofsy
	.uleb128 0x4c
	.4byte	.LASF620
	.byte	0x1
	.byte	0x26
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scr_ofsz
	.uleb128 0x4c
	.4byte	.LASF621
	.byte	0x1
	.byte	0x28
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_rollspeed
	.uleb128 0x4c
	.4byte	.LASF622
	.byte	0x1
	.byte	0x29
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_rollangle
	.uleb128 0x4c
	.4byte	.LASF623
	.byte	0x1
	.byte	0x2b
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_bob
	.uleb128 0x4c
	.4byte	.LASF624
	.byte	0x1
	.byte	0x2c
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_bobcycle
	.uleb128 0x4c
	.4byte	.LASF625
	.byte	0x1
	.byte	0x2d
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_bobup
	.uleb128 0x4c
	.4byte	.LASF626
	.byte	0x1
	.byte	0x2f
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_kicktime
	.uleb128 0x4c
	.4byte	.LASF627
	.byte	0x1
	.byte	0x30
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_kickroll
	.uleb128 0x4c
	.4byte	.LASF628
	.byte	0x1
	.byte	0x31
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_kickpitch
	.uleb128 0x4c
	.4byte	.LASF629
	.byte	0x1
	.byte	0x33
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_iyaw_cycle
	.uleb128 0x4c
	.4byte	.LASF630
	.byte	0x1
	.byte	0x34
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_iroll_cycle
	.uleb128 0x4c
	.4byte	.LASF631
	.byte	0x1
	.byte	0x35
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_ipitch_cycle
	.uleb128 0x4c
	.4byte	.LASF632
	.byte	0x1
	.byte	0x36
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_iyaw_level
	.uleb128 0x4c
	.4byte	.LASF633
	.byte	0x1
	.byte	0x37
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_iroll_level
	.uleb128 0x4c
	.4byte	.LASF634
	.byte	0x1
	.byte	0x38
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_ipitch_level
	.uleb128 0x4c
	.4byte	.LASF635
	.byte	0x1
	.byte	0x3a
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_idlescale
	.uleb128 0x4c
	.4byte	.LASF636
	.byte	0x1
	.byte	0x3c
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	crosshair
	.uleb128 0x4c
	.4byte	.LASF637
	.byte	0x1
	.byte	0x3d
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_crossx
	.uleb128 0x4c
	.4byte	.LASF638
	.byte	0x1
	.byte	0x3e
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_crossy
	.uleb128 0x4c
	.4byte	.LASF639
	.byte	0x1
	.byte	0x40
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_cshiftpercent
	.uleb128 0x4c
	.4byte	.LASF640
	.byte	0x1
	.byte	0x42
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_dmg_time
	.uleb128 0x4c
	.4byte	.LASF641
	.byte	0x1
	.byte	0x42
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_dmg_roll
	.uleb128 0x4c
	.4byte	.LASF642
	.byte	0x1
	.byte	0x42
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_dmg_pitch
	.uleb128 0x4c
	.4byte	.LASF576
	.byte	0x1
	.byte	0x4e
	.4byte	0xca5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	forward
	.uleb128 0x4c
	.4byte	.LASF577
	.byte	0x1
	.byte	0x4e
	.4byte	0xca5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	right
	.uleb128 0x4d
	.string	"up"
	.byte	0x1
	.byte	0x4e
	.4byte	0xca5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	up
	.uleb128 0x4c
	.4byte	.LASF643
	.byte	0x1
	.byte	0x8d
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_centermove
	.uleb128 0x4c
	.4byte	.LASF644
	.byte	0x1
	.byte	0x8e
	.4byte	0xdf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	v_centerspeed
	.uleb128 0x4c
	.4byte	.LASF645
	.byte	0x1
	.byte	0xfd
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cshift_empty
	.uleb128 0x4c
	.4byte	.LASF646
	.byte	0x1
	.byte	0xfe
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cshift_water
	.uleb128 0x4c
	.4byte	.LASF647
	.byte	0x1
	.byte	0xff
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cshift_slime
	.uleb128 0x4b
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x100
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cshift_lava
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x2
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	.LFB46-.Ltext0
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
	.4byte	.LFE46-.Ltext0
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
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cl_rollangle+12
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB44-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB50-.Ltext0
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
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 832
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 832
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -824
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	v_blend+12
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB52-.Ltext0
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
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 128
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB56-.Ltext0
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
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB57-.Ltext0
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
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	v_idlescale+12
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	v_idlescale+12
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL146-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL139-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
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
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
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
	.4byte	0
	.4byte	0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF193:
	.string	"canSend"
.LASF175:
	.string	"pflags"
.LASF363:
	.string	"spawnparms"
.LASF376:
	.string	"message"
.LASF643:
	.string	"v_centermove"
.LASF511:
	.string	"screenrect_s"
.LASF513:
	.string	"screenrect_t"
.LASF585:
	.string	"force"
.LASF324:
	.string	"aliasvrectbottom"
.LASF581:
	.string	"V_CalcBlend"
.LASF459:
	.string	"vecs"
.LASF347:
	.string	"upmove"
.LASF561:
	.string	"sign"
.LASF631:
	.string	"v_ipitch_cycle"
.LASF433:
	.string	"texture_s"
.LASF456:
	.string	"texture_t"
.LASF121:
	.string	"_Bool"
.LASF228:
	.string	"entity_s"
.LASF318:
	.string	"entity_t"
.LASF59:
	.string	"_mbstate"
.LASF38:
	.string	"_atexit"
.LASF274:
	.string	"numplanes"
.LASF244:
	.string	"frame_start_time"
.LASF239:
	.string	"lightTimestamp"
.LASF498:
	.string	"binormals"
.LASF28:
	.string	"__tm_mon"
.LASF36:
	.string	"_fntypes"
.LASF424:
	.string	"lightnormalindex"
.LASF66:
	.string	"_inc"
.LASF39:
	.string	"_ind"
.LASF336:
	.string	"horizontalFieldOfView"
.LASF455:
	.string	"samples"
.LASF248:
	.string	"pose2"
.LASF309:
	.string	"lastshadowonly"
.LASF473:
	.string	"lastclipnode"
.LASF216:
	.string	"entnext"
.LASF187:
	.string	"sa_data"
.LASF243:
	.string	"topnode"
.LASF605:
	.string	"con_forcedup"
.LASF427:
	.string	"mvertex_t"
.LASF45:
	.string	"_flags"
.LASF183:
	.string	"next"
.LASF634:
	.string	"v_ipitch_level"
.LASF510:
	.string	"plane_t"
.LASF312:
	.string	"vertices"
.LASF257:
	.string	"angles1"
.LASF258:
	.string	"angles2"
.LASF321:
	.string	"vrectright"
.LASF409:
	.string	"maxclients"
.LASF76:
	.string	"_cvtlen"
.LASF80:
	.string	"_sig_func"
.LASF537:
	.string	"cubescale"
.LASF143:
	.string	"height"
.LASF533:
	.string	"owner"
.LASF58:
	.string	"_lock"
.LASF54:
	.string	"_nbuf"
.LASF113:
	.string	"_unused"
.LASF496:
	.string	"commands"
.LASF250:
	.string	"brushlightinstant"
.LASF394:
	.string	"viewheight"
.LASF522:
	.string	"visible"
.LASF260:
	.string	"model_s"
.LASF461:
	.string	"texture"
.LASF600:
	.string	"V_Init"
.LASF69:
	.string	"_current_locale"
.LASF647:
	.string	"cshift_slime"
.LASF292:
	.string	"hulls"
.LASF222:
	.string	"compressed_vis"
.LASF362:
	.string	"mapstring"
.LASF642:
	.string	"v_dmg_pitch"
.LASF603:
	.string	"cl_forwardspeed"
.LASF186:
	.string	"sa_family"
.LASF532:
	.string	"numVisSurf"
.LASF285:
	.string	"numsurfaces"
.LASF91:
	.string	"_add"
.LASF410:
	.string	"gametype"
.LASF369:
	.string	"forcetrack"
.LASF615:
	.string	"host_basepal"
.LASF579:
	.string	"V_SetContentsColor"
.LASF164:
	.string	"vec_t"
.LASF271:
	.string	"nummodelsurfaces"
.LASF316:
	.string	"triplanes"
.LASF636:
	.string	"crosshair"
.LASF47:
	.string	"_lbfsize"
.LASF596:
	.string	"V_CalcRefdef"
.LASF407:
	.string	"levelname"
.LASF335:
	.string	"fvrectbottom"
.LASF245:
	.string	"frame_interval"
.LASF462:
	.string	"mtexinfo_t"
.LASF320:
	.string	"aliasvrect"
.LASF119:
	.string	"byte"
.LASF519:
	.string	"shadowlight_s"
.LASF540:
	.string	"shadowlight_t"
.LASF57:
	.string	"_data"
.LASF360:
	.string	"cactive_t"
.LASF621:
	.string	"cl_rollspeed"
.LASF464:
	.string	"chain"
.LASF226:
	.string	"index"
.LASF215:
	.string	"entity"
.LASF229:
	.string	"forcelink"
.LASF61:
	.string	"_reent"
.LASF574:
	.string	"blood"
.LASF166:
	.string	"angles"
.LASF487:
	.string	"boundingradius"
.LASF227:
	.string	"ambient_sound_level"
.LASF82:
	.string	"__sf"
.LASF264:
	.string	"synctype"
.LASF42:
	.string	"_base"
.LASF249:
	.string	"aliasframeinstant"
.LASF199:
	.string	"ackSequence"
.LASF393:
	.string	"laststop"
.LASF278:
	.string	"vertexes"
.LASF100:
	.string	"_mbtowc_state"
.LASF203:
	.string	"sendMessage"
.LASF348:
	.string	"usercmd_t"
.LASF253:
	.string	"translate_start_time"
.LASF545:
	.string	"lastvorg"
.LASF622:
	.string	"cl_rollangle"
.LASF329:
	.string	"fvrecty_adj"
.LASF23:
	.string	"__tm"
.LASF372:
	.string	"td_startframe"
.LASF161:
	.string	"viddef_t"
.LASF608:
	.string	"ramps"
.LASF640:
	.string	"v_dmg_time"
.LASF286:
	.string	"surfaces"
.LASF31:
	.string	"__tm_yday"
.LASF189:
	.string	"connecttime"
.LASF174:
	.string	"light_lev"
.LASF130:
	.string	"maxs"
.LASF150:
	.string	"rowbytes"
.LASF262:
	.string	"type"
.LASF560:
	.string	"V_cshift_f"
.LASF504:
	.string	"aliashdr_t"
.LASF571:
	.string	"V_DriftPitch"
.LASF358:
	.string	"ca_disconnected"
.LASF282:
	.string	"nodes"
.LASF435:
	.string	"gl_lumitex"
.LASF195:
	.string	"driver"
.LASF328:
	.string	"fvrectx_adj"
.LASF92:
	.string	"_unused_rand"
.LASF388:
	.string	"punchangle"
.LASF602:
	.string	"r_refdef"
.LASF443:
	.string	"msurface_s"
.LASF469:
	.string	"msurface_t"
.LASF237:
	.string	"syncbase"
.LASF591:
	.string	"V_BoundOffsets"
.LASF140:
	.string	"pixel_t"
.LASF323:
	.string	"aliasvrectright"
.LASF344:
	.string	"refdef_t"
.LASF408:
	.string	"viewentity"
.LASF332:
	.string	"fvrectright_adj"
.LASF538:
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
.LASF300:
	.string	"firstsurface"
.LASF524:
	.string	"castShadow"
.LASF30:
	.string	"__tm_wday"
.LASF611:
	.string	"causticschain"
.LASF32:
	.string	"__tm_isdst"
.LASF299:
	.string	"plane"
.LASF303:
	.string	"updateframe"
.LASF246:
	.string	"blend"
.LASF356:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"_stdout"
.LASF333:
	.string	"fvrectbottom_adj"
.LASF441:
	.string	"alternate_anims"
.LASF575:
	.string	"from"
.LASF107:
	.string	"_mbsrtowcs_state"
.LASF307:
	.string	"lastblend"
.LASF21:
	.string	"_wds"
.LASF555:
	.string	"aliaslightinstant_t"
.LASF115:
	.string	"float"
.LASF169:
	.string	"skin"
.LASF553:
	.string	"tshalfangles"
.LASF135:
	.string	"numfaces"
.LASF43:
	.string	"_size"
.LASF447:
	.string	"light_s"
.LASF448:
	.string	"light_t"
.LASF509:
	.string	"modtype_t"
.LASF567:
	.string	"delta"
.LASF500:
	.string	"indecies"
.LASF382:
	.string	"faceanimtime"
.LASF247:
	.string	"pose1"
.LASF366:
	.string	"demorecording"
.LASF589:
	.string	"oldyaw"
.LASF50:
	.string	"_write"
.LASF639:
	.string	"gl_cshiftpercent"
.LASF529:
	.string	"volumeVerts"
.LASF305:
	.string	"lastpose1"
.LASF306:
	.string	"lastpose2"
.LASF380:
	.string	"items"
.LASF123:
	.string	"allowoverflow"
.LASF623:
	.string	"cl_bob"
.LASF126:
	.string	"maxsize"
.LASF365:
	.string	"demos"
.LASF526:
	.string	"entvis"
.LASF475:
	.string	"clip_maxs"
.LASF453:
	.string	"cached_light"
.LASF368:
	.string	"timedemo"
.LASF463:
	.string	"glpoly_s"
.LASF468:
	.string	"glpoly_t"
.LASF29:
	.string	"__tm_year"
.LASF133:
	.string	"visleafs"
.LASF614:
	.string	"host_frametime"
.LASF90:
	.string	"_mult"
.LASF421:
	.string	"ST_SYNC"
.LASF403:
	.string	"oldtime"
.LASF267:
	.string	"clipbox"
.LASF105:
	.string	"_mbrlen_state"
.LASF512:
	.string	"coords"
.LASF218:
	.string	"contents"
.LASF412:
	.string	"free_efrags"
.LASF374:
	.string	"signon"
.LASF63:
	.string	"_stdin"
.LASF112:
	.string	"_nmalloc"
.LASF628:
	.string	"v_kickpitch"
.LASF452:
	.string	"styles"
.LASF236:
	.string	"efrag"
.LASF502:
	.string	"texels"
.LASF310:
	.string	"lastpaliashdr"
.LASF625:
	.string	"cl_bobup"
.LASF493:
	.string	"size"
.LASF118:
	.string	"FILE"
.LASF577:
	.string	"right"
.LASF341:
	.string	"fov_x"
.LASF342:
	.string	"fov_y"
.LASF167:
	.string	"modelindex"
.LASF254:
	.string	"origin1"
.LASF501:
	.string	"gl_lumatex"
.LASF301:
	.string	"aliasframeinstant_s"
.LASF439:
	.string	"anim_max"
.LASF95:
	.string	"_localtime_buf"
.LASF12:
	.string	"__count"
.LASF601:
	.string	"scr_viewsize"
.LASF411:
	.string	"worldmodel"
.LASF543:
	.string	"lastlorg"
.LASF151:
	.string	"aspect"
.LASF534:
	.string	"scizz"
.LASF77:
	.string	"_cvtbuf"
.LASF482:
	.string	"maliasframedesc_t"
.LASF280:
	.string	"edges"
.LASF304:
	.string	"paliashdr"
.LASF208:
	.string	"addr"
.LASF609:
	.string	"v_blend"
.LASF594:
	.string	"V_CalcIntermissionRefdef"
.LASF584:
	.string	"newpal"
.LASF230:
	.string	"update_type"
.LASF486:
	.string	"scale_origin"
.LASF240:
	.string	"dlightframe"
.LASF11:
	.string	"__wchb"
.LASF106:
	.string	"_mbrtowc_state"
.LASF26:
	.string	"__tm_hour"
.LASF325:
	.string	"vrectrightedge"
.LASF442:
	.string	"offsets"
.LASF134:
	.string	"firstface"
.LASF255:
	.string	"origin2"
.LASF9:
	.string	"wint_t"
.LASF397:
	.string	"onground"
.LASF78:
	.string	"_new"
.LASF606:
	.string	"v_gamma"
.LASF598:
	.string	"steptime"
.LASF86:
	.string	"_niobs"
.LASF554:
	.string	"triangleVis"
.LASF308:
	.string	"lastent"
.LASF592:
	.string	"V_AddIdle"
.LASF62:
	.string	"_errno"
.LASF391:
	.string	"nodrift"
.LASF27:
	.string	"__tm_mday"
.LASF385:
	.string	"mviewangles"
.LASF190:
	.string	"lastMessageTime"
.LASF34:
	.string	"_fnargs"
.LASF153:
	.string	"recalc_refdef"
.LASF400:
	.string	"completed_time"
.LASF291:
	.string	"marksurfaces"
.LASF423:
	.string	"synctype_t"
.LASF124:
	.string	"overflowed"
.LASF261:
	.string	"needload"
.LASF523:
	.string	"isStatic"
.LASF503:
	.string	"frames"
.LASF451:
	.string	"lightmaptexturenum"
.LASF527:
	.string	"visSurf"
.LASF182:
	.string	"value"
.LASF436:
	.string	"texturechain"
.LASF242:
	.string	"trivial_accept"
.LASF18:
	.string	"_next"
.LASF559:
	.string	"V_BonusFlash_f"
.LASF103:
	.string	"_signal_buf"
.LASF209:
	.string	"address"
.LASF48:
	.string	"_cookie"
.LASF595:
	.string	"view"
.LASF648:
	.string	"cshift_lava"
.LASF450:
	.string	"shadowchain"
.LASF472:
	.string	"firstclipnode"
.LASF588:
	.string	"pitch"
.LASF200:
	.string	"sendSequence"
.LASF445:
	.string	"texturemins"
.LASF238:
	.string	"skinnum"
.LASF24:
	.string	"__tm_sec"
.LASF334:
	.string	"fvrectright"
.LASF33:
	.string	"_on_exit_args"
.LASF367:
	.string	"demoplayback"
.LASF438:
	.string	"anim_min"
.LASF108:
	.string	"_wcrtomb_state"
.LASF627:
	.string	"v_kickroll"
.LASF276:
	.string	"leafs"
.LASF405:
	.string	"model_precache"
.LASF576:
	.string	"forward"
.LASF414:
	.string	"num_statics"
.LASF132:
	.string	"headnode"
.LASF268:
	.string	"clipmins"
.LASF650:
	.string	"d:/Data/Nintendo/TenebraeGX/src/view.c"
.LASF396:
	.string	"paused"
.LASF566:
	.string	"V_StopPitchDrift"
.LASF497:
	.string	"triangles"
.LASF389:
	.string	"idealpitch"
.LASF632:
	.string	"v_iyaw_level"
.LASF120:
	.string	"qboolean"
.LASF343:
	.string	"ambientlight"
.LASF178:
	.string	"name"
.LASF481:
	.string	"bboxmax"
.LASF16:
	.string	"__ULong"
.LASF612:
	.string	"wgPipe"
.LASF217:
	.string	"mleaf_s"
.LASF471:
	.string	"mleaf_t"
.LASF198:
	.string	"driverdata"
.LASF234:
	.string	"msg_angles"
.LASF528:
	.string	"volumeCmds"
.LASF93:
	.string	"_strtok_last"
.LASF378:
	.string	"movemessages"
.LASF395:
	.string	"crouch"
.LASF418:
	.string	"scores"
.LASF289:
	.string	"numclipnodes"
.LASF89:
	.string	"_seed"
.LASF337:
	.string	"xOrigin"
.LASF51:
	.string	"_seek"
.LASF547:
	.string	"lasthdr"
.LASF141:
	.string	"vrect_s"
.LASF145:
	.string	"vrect_t"
.LASF3:
	.string	"short unsigned int"
.LASF406:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF346:
	.string	"sidemove"
.LASF272:
	.string	"numsubmodels"
.LASF552:
	.string	"tslights"
.LASF428:
	.string	"mplane_s"
.LASF432:
	.string	"mplane_t"
.LASF624:
	.string	"cl_bobcycle"
.LASF578:
	.string	"count"
.LASF430:
	.string	"dist"
.LASF315:
	.string	"binomials"
.LASF75:
	.string	"_freelist"
.LASF154:
	.string	"conbuffer"
.LASF287:
	.string	"numsurfedges"
.LASF165:
	.string	"vec3_t"
.LASF499:
	.string	"texcoords"
.LASF355:
	.string	"percent"
.LASF293:
	.string	"numtextures"
.LASF214:
	.string	"leafnext"
.LASF224:
	.string	"firstmarksurface"
.LASF56:
	.string	"_offset"
.LASF137:
	.string	"planenum"
.LASF185:
	.string	"qsockaddr"
.LASF361:
	.string	"state"
.LASF454:
	.string	"cached_dlight"
.LASF572:
	.string	"V_ParseDamage"
.LASF379:
	.string	"stats"
.LASF41:
	.string	"__sbuf"
.LASF505:
	.string	"mod_brush"
.LASF558:
	.string	"WGPipe"
.LASF102:
	.string	"_l64a_buf"
.LASF483:
	.string	"ident"
.LASF488:
	.string	"eyeposition"
.LASF444:
	.string	"firstedge"
.LASF297:
	.string	"entities"
.LASF645:
	.string	"cshift_empty"
.LASF371:
	.string	"td_lastframe"
.LASF160:
	.string	"direct"
.LASF392:
	.string	"driftmove"
.LASF518:
	.string	"lightcmd_t"
.LASF556:
	.string	"lightcmd_u"
.LASF94:
	.string	"_asctime_buf"
.LASF232:
	.string	"msgtime"
.LASF525:
	.string	"halo"
.LASF544:
	.string	"lasteangles"
.LASF10:
	.string	"__wch"
.LASF109:
	.string	"_wcsrtombs_state"
.LASF629:
	.string	"v_iyaw_cycle"
.LASF565:
	.string	"cycle"
.LASF514:
	.string	"asInt"
.LASF613:
	.string	"noclip_anglehack"
.LASF122:
	.string	"sizebuf_s"
.LASF128:
	.string	"sizebuf_t"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF402:
	.string	"time"
.LASF127:
	.string	"cursize"
.LASF281:
	.string	"numnodes"
.LASF117:
	.string	"long int"
.LASF573:
	.string	"armor"
.LASF101:
	.string	"_wctomb_state"
.LASF340:
	.string	"viewangles"
.LASF294:
	.string	"textures"
.LASF176:
	.string	"entity_state_t"
.LASF404:
	.string	"last_received_message"
.LASF87:
	.string	"_iobs"
.LASF67:
	.string	"_emergency"
.LASF480:
	.string	"bboxmin"
.LASF345:
	.string	"forwardmove"
.LASF111:
	.string	"_nextf"
.LASF97:
	.string	"_rand_next"
.LASF549:
	.string	"lightpos"
.LASF225:
	.string	"nummarksurfaces"
.LASF386:
	.string	"mvelocity"
.LASF19:
	.string	"_maxwds"
.LASF479:
	.string	"interval"
.LASF535:
	.string	"filtercube"
.LASF220:
	.string	"minmaxs"
.LASF116:
	.string	"long double"
.LASF387:
	.string	"velocity"
.LASF413:
	.string	"num_entities"
.LASF263:
	.string	"numframes"
.LASF426:
	.string	"position"
.LASF319:
	.string	"vrect"
.LASF194:
	.string	"sendNext"
.LASF17:
	.string	"long unsigned int"
.LASF416:
	.string	"cdtrack"
.LASF539:
	.string	"oldlightorigin"
.LASF314:
	.string	"tangents"
.LASF177:
	.string	"cvar_s"
.LASF184:
	.string	"cvar_t"
.LASF370:
	.string	"demofile"
.LASF557:
	.string	"_wgpipe"
.LASF457:
	.string	"cachededgeoffset"
.LASF52:
	.string	"_close"
.LASF83:
	.string	"char"
.LASF564:
	.string	"V_CalcBob"
.LASF85:
	.string	"_glue"
.LASF277:
	.string	"numvertexes"
.LASF251:
	.string	"numleafs"
.LASF506:
	.string	"mod_sprite"
.LASF330:
	.string	"vrect_x_adj_shift20"
.LASF520:
	.string	"baseColor"
.LASF478:
	.string	"numposes"
.LASF446:
	.string	"extents"
.LASF635:
	.string	"v_idlescale"
.LASF653:
	.string	"BuildGammaTable"
.LASF207:
	.string	"receiveMessage"
.LASF610:
	.string	"lcd_x"
.LASF311:
	.string	"shadowonly"
.LASF171:
	.string	"color"
.LASF467:
	.string	"firstvertex"
.LASF241:
	.string	"dlightbits"
.LASF22:
	.string	"_Bigint"
.LASF604:
	.string	"cl_entities"
.LASF516:
	.string	"asVec"
.LASF210:
	.string	"sfx_s"
.LASF492:
	.string	"numtris"
.LASF313:
	.string	"normals"
.LASF490:
	.string	"skinwidth"
.LASF79:
	.string	"_atexit0"
.LASF162:
	.string	"cache_user_s"
.LASF163:
	.string	"cache_user_t"
.LASF617:
	.string	"lcd_yaw"
.LASF357:
	.string	"ca_dedicated"
.LASF302:
	.string	"lockframe"
.LASF146:
	.string	"buffer"
.LASF180:
	.string	"archive"
.LASF104:
	.string	"_getdate_err"
.LASF398:
	.string	"inwater"
.LASF295:
	.string	"visdata"
.LASF213:
	.string	"leaf"
.LASF494:
	.string	"poseverts"
.LASF158:
	.string	"maxwarpwidth"
.LASF437:
	.string	"anim_total"
.LASF201:
	.string	"unreliableSendSequence"
.LASF637:
	.string	"cl_crossx"
.LASF638:
	.string	"cl_crossy"
.LASF616:
	.string	"chase_active"
.LASF417:
	.string	"looptrack"
.LASF521:
	.string	"brightness"
.LASF491:
	.string	"skinheight"
.LASF419:
	.string	"server_proto_version"
.LASF352:
	.string	"translations"
.LASF55:
	.string	"_blksize"
.LASF338:
	.string	"yOrigin"
.LASF399:
	.string	"intermission"
.LASF331:
	.string	"vrectright_adj_shift20"
.LASF53:
	.string	"_ubuf"
.LASF570:
	.string	"oldgammavalue"
.LASF99:
	.string	"_mblen_state"
.LASF81:
	.string	"__sglue"
.LASF223:
	.string	"efrags"
.LASF71:
	.string	"__cleanup"
.LASF212:
	.string	"efrag_s"
.LASF259:
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
.LASF580:
	.string	"V_CalcPowerupCshift"
.LASF44:
	.string	"__sFILE"
.LASF114:
	.string	"double"
.LASF40:
	.string	"_fns"
.LASF536:
	.string	"rspeed"
.LASF283:
	.string	"numtexinfo"
.LASF14:
	.string	"_mbstate_t"
.LASF110:
	.string	"_h_errno"
.LASF364:
	.string	"demonum"
.LASF152:
	.string	"numpages"
.LASF354:
	.string	"destcolor"
.LASF531:
	.string	"lightCmds"
.LASF279:
	.string	"numedges"
.LASF317:
	.string	"lightinstant"
.LASF390:
	.string	"pitchvel"
.LASF590:
	.string	"oldpitch"
.LASF434:
	.string	"gl_texturenum"
.LASF192:
	.string	"disconnected"
.LASF485:
	.string	"scale"
.LASF458:
	.string	"medge_t"
.LASF373:
	.string	"td_starttime"
.LASF296:
	.string	"lightdata"
.LASF322:
	.string	"vrectbottom"
.LASF159:
	.string	"maxwarpheight"
.LASF147:
	.string	"colormap"
.LASF125:
	.string	"data"
.LASF515:
	.string	"asFloat"
.LASF148:
	.string	"colormap16"
.LASF13:
	.string	"__value"
.LASF415:
	.string	"viewent"
.LASF37:
	.string	"_is_cxa"
.LASF644:
	.string	"v_centerspeed"
.LASF641:
	.string	"v_dmg_roll"
.LASF219:
	.string	"visframe"
.LASF440:
	.string	"anim_next"
.LASF156:
	.string	"conwidth"
.LASF351:
	.string	"colors"
.LASF466:
	.string	"neighbours"
.LASF74:
	.string	"_p5s"
.LASF326:
	.string	"fvrectx"
.LASF327:
	.string	"fvrecty"
.LASF275:
	.string	"planes"
.LASF652:
	.string	"V_StartPitchDrift"
.LASF142:
	.string	"width"
.LASF129:
	.string	"mins"
.LASF429:
	.string	"normal"
.LASF197:
	.string	"socket"
.LASF233:
	.string	"msg_origins"
.LASF205:
	.string	"unreliableReceiveSequence"
.LASF339:
	.string	"vieworg"
.LASF381:
	.string	"item_gettime"
.LASF651:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF477:
	.string	"firstpose"
.LASF630:
	.string	"v_iroll_cycle"
.LASF139:
	.string	"dclipnode_t"
.LASF431:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF221:
	.string	"parent"
.LASF96:
	.string	"_gamma_signgam"
.LASF551:
	.string	"extvertices"
.LASF68:
	.string	"_current_category"
.LASF196:
	.string	"landriver"
.LASF383:
	.string	"cshifts"
.LASF460:
	.string	"mipadjust"
.LASF599:
	.string	"V_RenderView"
.LASF593:
	.string	"V_CalcViewRoll"
.LASF582:
	.string	"V_UpdatePalette"
.LASF359:
	.string	"ca_connected"
.LASF269:
	.string	"clipmaxs"
.LASF70:
	.string	"__sdidinit"
.LASF489:
	.string	"numskins"
.LASF170:
	.string	"effects"
.LASF626:
	.string	"v_kicktime"
.LASF530:
	.string	"numVolumeVerts"
.LASF349:
	.string	"entertime"
.LASF476:
	.string	"hull_t"
.LASF517:
	.string	"asVoid"
.LASF15:
	.string	"_flock_t"
.LASF350:
	.string	"frags"
.LASF235:
	.string	"model"
.LASF583:
	.string	"basepal"
.LASF563:
	.string	"V_CalcRoll"
.LASF172:
	.string	"alpha"
.LASF569:
	.string	"V_CheckGamma"
.LASF465:
	.string	"numverts"
.LASF568:
	.string	"move"
.LASF474:
	.string	"clip_mins"
.LASF587:
	.string	"CalcGunAngle"
.LASF155:
	.string	"conrowbytes"
.LASF633:
	.string	"v_iroll_level"
.LASF5:
	.string	"long long int"
.LASF597:
	.string	"oldz"
.LASF60:
	.string	"_flags2"
.LASF375:
	.string	"netcon"
.LASF425:
	.string	"trivertx_t"
.LASF179:
	.string	"string"
.LASF546:
	.string	"lastlradius"
.LASF401:
	.string	"mtime"
.LASF550:
	.string	"lastframeinstant"
.LASF507:
	.string	"mod_alias"
.LASF204:
	.string	"receiveSequence"
.LASF231:
	.string	"baseline"
.LASF377:
	.string	"client_static_t"
.LASF508:
	.string	"mod_alias3"
.LASF284:
	.string	"texinfo"
.LASF290:
	.string	"clipnodes"
.LASF157:
	.string	"conheight"
.LASF252:
	.string	"leafnums"
.LASF449:
	.string	"polys"
.LASF136:
	.string	"dmodel_t"
.LASF270:
	.string	"firstmodelsurface"
.LASF206:
	.string	"receiveMessageLength"
.LASF420:
	.string	"client_state_t"
.LASF273:
	.string	"submodels"
.LASF84:
	.string	"__FILE"
.LASF607:
	.string	"gammatable"
.LASF131:
	.string	"origin"
.LASF586:
	.string	"angledelta"
.LASF202:
	.string	"sendMessageLength"
.LASF20:
	.string	"_sign"
.LASF25:
	.string	"__tm_min"
.LASF548:
	.string	"lastlight"
.LASF211:
	.string	"cache"
.LASF649:
	.string	"GNU C 4.6.3"
.LASF484:
	.string	"version"
.LASF288:
	.string	"surfedges"
.LASF188:
	.string	"qsocket_s"
.LASF422:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF298:
	.string	"mnode_s"
.LASF470:
	.string	"mnode_t"
.LASF98:
	.string	"_r48"
.LASF191:
	.string	"lastSendTime"
.LASF384:
	.string	"prev_cshifts"
.LASF562:
	.string	"side"
.LASF2:
	.string	"short int"
.LASF618:
	.string	"scr_ofsx"
.LASF619:
	.string	"scr_ofsy"
.LASF620:
	.string	"scr_ofsz"
.LASF49:
	.string	"_read"
.LASF181:
	.string	"server"
.LASF168:
	.string	"frame"
.LASF88:
	.string	"_rand48"
.LASF542:
	.string	"lasteorg"
.LASF495:
	.string	"posedata"
.LASF646:
	.string	"cshift_water"
.LASF353:
	.string	"scoreboard_t"
.LASF265:
	.string	"flags"
.LASF256:
	.string	"rotate_start_time"
.LASF266:
	.string	"radius"
.LASF541:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
