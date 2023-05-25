	.file	"sv_user.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl SV_SetIdealPitch
	.type	SV_SetIdealPitch, @function
SV_SetIdealPitch:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/sv_user.c"
	.loc 1 54 0
	.cfi_startproc
	stwu 1,-224(1)
.LCFI0:
	.cfi_def_cfa_offset 224
	mflr 0
	stw 27,164(1)
	.loc 1 62 0
	lis 27,sv_player@ha
	.cfi_offset 27, -60
	.cfi_register 65, 0
	.loc 1 54 0
	stw 0,228(1)
	.loc 1 62 0
	addi 9,1,140
	.loc 1 54 0
	stw 23,148(1)
	.loc 1 62 0
	lwz 23,sv_player@l(27)
	.cfi_offset 23, -76
	.cfi_offset 65, 4
	.loc 1 54 0
	stfd 27,184(1)
	.loc 1 62 0
	lfs 0,908(23)
	.loc 1 54 0
	stfd 28,192(1)
	.loc 1 62 0
	fctiwz 0,0
	.loc 1 54 0
	stfd 29,200(1)
	stfd 30,208(1)
	stfd 31,216(1)
	stw 24,152(1)
	stw 25,156(1)
	stw 26,160(1)
	stw 28,168(1)
	stw 29,172(1)
	stw 30,176(1)
	stw 31,180(1)
	.loc 1 62 0
	stfiwx 0,0,9
	lwz 0,140(1)
	andi. 10,0,512
	beq- 0,.L1
	.cfi_offset 31, -44
	.cfi_offset 30, -48
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.loc 1 65 0
	lis 9,.LC0@ha
	lfs 30,684(23)
	lfd 0,.LC0@l(9)
	lis 9,.LC2@ha
	lis 24,.LC4@ha
	lis 30,vec3_origin@ha
	fmul 30,30,0
	lfs 0,.LC2@l(9)
	la 28,.LC4@l(24)
	.loc 1 67 0
	addi 29,1,28
	.loc 1 83 0
	lis 25,.LC7@ha
	.loc 1 67 0
	li 31,3
	la 30,vec3_origin@l(30)
	.loc 1 71 0
	lis 26,0x4330
	.loc 1 65 0
	fadd 30,30,30
	fdiv 30,30,0
	frsp 30,30
	.loc 1 66 0
	fmr 1,30
	bl sin
	frsp 31,1
.LVL0:
	.loc 1 67 0
	fmr 1,30
	bl cos
	.loc 1 71 0
	lis 9,.LC5@ha
	lfs 30,.LC5@l(9)
	.loc 1 67 0
	frsp 27,1
.LVL1:
	.loc 1 77 0
	lis 9,.LC6@ha
	.loc 1 71 0
	lfs 28,0(28)
	.loc 1 77 0
	lfs 29,.LC6@l(9)
.LVL2:
.L4:
	.loc 1 71 0
	xoris 0,31,0x8000
	stw 26,104(1)
	stw 0,108(1)
	.loc 1 79 0
	mr 9,23
	addi 3,1,56
	addi 4,1,20
	.loc 1 71 0
	lfd 11,104(1)
	.loc 1 79 0
	mr 5,30
	.loc 1 73 0
	lfs 10,652(23)
	.loc 1 79 0
	mr 6,30
	.loc 1 71 0
	fsub 11,11,28
	.loc 1 73 0
	lfs 12,860(23)
	.loc 1 71 0
	lfs 13,644(23)
	.loc 1 79 0
	addi 7,1,8
	.loc 1 73 0
	fadds 12,10,12
	.loc 1 72 0
	lfs 9,648(23)
	.loc 1 71 0
	frsp 11,11
	.loc 1 79 0
	li 8,1
	.loc 1 77 0
	fsubs 10,12,29
	.loc 1 73 0
	stfs 12,28(1)
	.loc 1 71 0
	fmuls 8,11,27
	.loc 1 72 0
	fmuls 0,31,11
	.loc 1 77 0
	stfs 10,16(1)
	.loc 1 71 0
	fmadds 13,8,30,13
	.loc 1 72 0
	fmadds 0,0,30,9
	.loc 1 71 0
	stfs 13,20(1)
	.loc 1 72 0
	stfs 0,24(1)
	.loc 1 76 0
	stfs 0,12(1)
	.loc 1 75 0
	stfs 13,8(1)
	.loc 1 79 0
	bl SV_Move
	.loc 1 80 0
	lbz 0,56(1)
	.loc 1 69 0
	cmpwi 6,31,8
	.loc 1 79 0
	lfs 0,60(1)
.LVL3:
	.loc 1 69 0
	addi 31,31,1
	.loc 1 80 0
	cmpwi 7,0,0
	bne- 7,.L1
	.loc 1 83 0
	lfs 13,.LC7@l(25)
	fcmpu 7,0,13
	beq- 7,.L1
	.loc 1 86 0
	lfs 13,28(1)
	lfs 12,16(1)
	fsubs 12,12,13
	fmadds 0,0,12,13
	stfsu 0,4(29)
	.loc 1 69 0
	beq- 6,.L3
	lwz 23,sv_player@l(27)
	b .L4
.L3:
	lis 5,.LC8@ha
	.loc 1 97 0
	li 0,5
	la 5,.LC8@l(5)
	.loc 1 94 0
	lfs 11,0(28)
	lfd 12,0(5)
	.loc 1 97 0
	mtctr 0
	.loc 1 69 0
	addi 9,1,32
	.loc 1 53 0
	li 8,0
	li 11,0
	.loc 1 94 0
	lis 7,0x4330
	.loc 1 97 0
	lis 6,.LC9@ha
.L9:
	.loc 1 93 0
	lfsu 13,4(9)
	addi 10,1,136
	.loc 1 97 0
	cmpwi 6,11,0
	.loc 1 93 0
	lfs 0,-4(9)
	.loc 1 94 0
	stw 7,112(1)
	.loc 1 93 0
	fsubs 0,13,0
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,136(1)
.LVL4:
	.loc 1 94 0
	xoris 10,0,0x8000
.LVL5:
	stw 10,116(1)
	lfd 0,112(1)
	fsub 0,0,11
	fcmpu 7,0,12
	bng- 7,.L5
	.loc 1 94 0 is_stmt 0 discriminator 1
	lfd 13,.LC9@l(6)
	fcmpu 7,0,13
	blt- 7,.L7
.L5:
	.loc 1 97 0 is_stmt 1
	subf 11,11,0
	xoris 11,11,0x8000
	beq- 6,.L8
	.loc 1 97 0 is_stmt 0 discriminator 1
	stw 11,124(1)
	stw 7,120(1)
	lfs 0,0(28)
	lfd 10,120(1)
	lfd 13,.LC9@l(6)
	fsub 0,10,0
	fcmpu 7,0,13
	bgt- 7,.L1
	lfd 13,0(5)
	fcmpu 7,0,13
	blt- 7,.L1
.L8:
	.loc 1 100 0 is_stmt 1
	addi 8,8,1
.LVL6:
	.loc 1 101 0
	mr 11,0
.LVL7:
.L7:
	.loc 1 91 0
	bdnz .L9
	.loc 1 104 0
	cmpwi 7,11,0
	beq- 7,.L14
	.loc 1 110 0
	cmpwi 7,8,1
	ble- 7,.L1
	.loc 1 112 0
	neg 0,11
	lfs 0,.LC4@l(24)
	xoris 0,0,0x8000
	lis 9,.LANCHOR0+12@ha
	stw 0,132(1)
	lis 0,0x4330
	stw 0,128(1)
	lfd 13,128(1)
	fsub 13,13,0
	lfs 0,.LANCHOR0+12@l(9)
	lwz 9,sv_player@l(27)
	frsp 13,13
	fmuls 0,13,0
	stfs 0,896(9)
.LVL8:
.L1:
	.loc 1 113 0
	lwz 0,228(1)
	lwz 23,148(1)
	mtlr 0
	lwz 24,152(1)
	lwz 25,156(1)
	lwz 26,160(1)
	lwz 27,164(1)
	lwz 28,168(1)
	lwz 29,172(1)
	lwz 30,176(1)
	lwz 31,180(1)
	lfd 27,184(1)
	lfd 28,192(1)
	lfd 29,200(1)
	lfd 30,208(1)
	lfd 31,216(1)
	addi 1,1,224
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.LVL9:
.L14:
.LCFI2:
	.cfi_restore_state
	.loc 1 106 0
	lwz 9,sv_player@l(27)
	li 0,0
.LVL10:
	stw 0,896(9)
	.loc 1 107 0
	b .L1
	.cfi_endproc
.LFE38:
	.size	SV_SetIdealPitch, .-SV_SetIdealPitch
	.align 2
	.globl SV_UserFriction
	.type	SV_UserFriction, @function
SV_UserFriction:
.LFB39:
	.loc 1 123 0
	.cfi_startproc
	mflr 0
	stwu 1,-88(1)
.LCFI3:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 130 0
	lis 9,velocity@ha
	.loc 1 123 0
	stw 31,76(1)
	stw 0,92(1)
	.loc 1 130 0
	lwz 31,velocity@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -12
.LVL11:
	.loc 1 123 0
	stfd 31,80(1)
	.loc 1 132 0
	lfs 0,4(31)
	lfs 1,0(31)
	fmuls 0,0,0
	fmadds 1,1,1,0
	.cfi_offset 63, -8
	bl sqrt
.LVL12:
	.loc 1 133 0
	lis 9,.LC12@ha
	.loc 1 132 0
	frsp 31,1
.LVL13:
	.loc 1 133 0
	lfs 0,.LC12@l(9)
	fcmpu 7,31,0
	bne- 7,.L22
	.loc 1 160 0
	lwz 0,92(1)
	lwz 31,76(1)
.LVL14:
	mtlr 0
	lfd 31,80(1)
.LVL15:
	addi 1,1,88
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
.LVL16:
.L22:
.LCFI5:
	.cfi_restore_state
	.loc 1 137 0
	lfs 13,0(31)
	lis 9,origin@ha
	lwz 11,origin@l(9)
	lis 9,.LC10@ha
	fdivs 13,13,31
	lfs 12,.LC10@l(9)
	lfs 11,0(11)
	.loc 1 139 0
	lis 9,sv_player@ha
	lwz 9,sv_player@l(9)
	.loc 1 142 0
	lis 5,vec3_origin@ha
	la 5,vec3_origin@l(5)
	addi 3,1,32
	.loc 1 139 0
	lfs 0,744(9)
	.loc 1 142 0
	addi 4,1,20
	mr 6,5
	addi 7,1,8
	li 8,1
	.loc 1 137 0
	fmadds 13,13,12,11
	stfs 13,8(1)
	stfs 13,20(1)
	.loc 1 138 0
	lfs 13,4(31)
	lfs 11,4(11)
	fdivs 13,13,31
	fmadds 13,13,12,11
	stfs 13,12(1)
	stfs 13,24(1)
	.loc 1 139 0
	lfs 13,8(11)
	.loc 1 140 0
	lis 11,.LC11@ha
	.loc 1 139 0
	fadds 0,13,0
	.loc 1 140 0
	lfs 13,.LC11@l(11)
	fsubs 13,0,13
	.loc 1 139 0
	stfs 0,28(1)
	.loc 1 140 0
	stfs 13,16(1)
	.loc 1 142 0
	bl SV_Move
	.loc 1 144 0
	lis 9,.LC7@ha
	lfs 13,36(1)
	lfs 0,.LC7@l(9)
	.loc 1 145 0
	lis 9,sv_friction+12@ha
	lfs 10,sv_friction+12@l(9)
	.loc 1 144 0
	fcmpu 7,13,0
	bne- 7,.L18
	.loc 1 145 0
	lis 9,.LANCHOR0+32@ha
	lfs 0,.LANCHOR0+32@l(9)
	fmuls 10,10,0
.LVL17:
.L18:
	.loc 1 150 0
	lis 9,sv_stopspeed+12@ha
	lfs 13,sv_stopspeed+12@l(9)
	fcmpu 7,13,31
	bng- 7,.L23
.LVL18:
	.loc 1 151 0 discriminator 3
	lis 9,host_frametime@ha
.LVL19:
	fmr 11,31
	lfd 12,host_frametime@l(9)
	.loc 1 153 0 discriminator 3
	lis 9,.LC12@ha
	.loc 1 151 0 discriminator 3
	fmul 0,13,12
	.loc 1 153 0 discriminator 3
	lfs 12,.LC12@l(9)
	.loc 1 122 0 discriminator 3
	fneg 0,0
	.loc 1 151 0 discriminator 3
	fmadd 0,0,10,11
	frsp 0,0
.LVL20:
	.loc 1 153 0 discriminator 3
	fcmpu 7,0,12
	bnl- 7,.L20
.LVL21:
.L24:
	.loc 1 154 0
	fmr 0,12
.LVL22:
.L20:
	.loc 1 155 0
	fdivs 31,0,31
.LVL23:
	.loc 1 160 0
	lwz 0,92(1)
	.loc 1 157 0
	lfs 13,0(31)
.LVL24:
	.loc 1 158 0
	lfs 0,4(31)
	.loc 1 160 0
	mtlr 0
	.loc 1 159 0
	lfs 12,8(31)
	.loc 1 157 0
	fmuls 13,13,31
	.loc 1 158 0
	fmuls 0,0,31
	.loc 1 159 0
	fmuls 31,12,31
.LVL25:
	.loc 1 157 0
	stfs 13,0(31)
	.loc 1 158 0
	stfs 0,4(31)
	.loc 1 159 0
	stfs 31,8(31)
	.loc 1 160 0
	lwz 31,76(1)
.LVL26:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 63
.LCFI6:
	.cfi_def_cfa_offset 0
	blr
.LVL27:
.L23:
.LCFI7:
	.cfi_restore_state
	.loc 1 151 0
	lis 9,host_frametime@ha
	.loc 1 150 0
	fmr 13,31
.LVL28:
	.loc 1 151 0
	lfd 12,host_frametime@l(9)
	fmr 11,31
	.loc 1 153 0
	lis 9,.LC12@ha
	.loc 1 151 0
	fmul 0,13,12
	.loc 1 153 0
	lfs 12,.LC12@l(9)
	.loc 1 122 0
	fneg 0,0
	.loc 1 151 0
	fmadd 0,0,10,11
	frsp 0,0
.LVL29:
	.loc 1 153 0
	fcmpu 7,0,12
	bnl- 7,.L20
	b .L24
	.cfi_endproc
.LFE39:
	.size	SV_UserFriction, .-SV_UserFriction
	.align 2
	.globl SV_Accelerate
	.type	SV_Accelerate, @function
SV_Accelerate:
.LFB40:
	.loc 1 191 0
	.cfi_startproc
	.loc 1 195 0
	lis 9,velocity@ha
	lis 10,wishdir@ha
	lwz 9,velocity@l(9)
	la 11,wishdir@l(10)
	lfs 13,4(11)
	lfs 11,4(9)
	lfs 9,wishdir@l(10)
	.loc 1 196 0
	lis 10,wishspeed@ha
	.loc 1 195 0
	fmuls 13,11,13
	lfs 10,0(9)
.LVL30:
	lfs 0,8(11)
	lfs 12,8(9)
	fmadds 13,10,9,13
	.loc 1 196 0
	lfs 8,wishspeed@l(10)
	.loc 1 197 0
	lis 10,.LC12@ha
	.loc 1 195 0
	fmadds 13,12,0,13
	.loc 1 197 0
	lfs 0,.LC12@l(10)
	.loc 1 196 0
	fsubs 13,8,13
.LVL31:
	.loc 1 197 0
	fcmpu 7,13,0
	cror 30,28,30
	beqlr- 7
	.loc 1 199 0
	lis 10,.LANCHOR0+52@ha
	lfs 7,.LANCHOR0+52@l(10)
	lis 10,host_frametime@ha
	lfd 0,host_frametime@l(10)
	fmul 0,7,0
	fmul 0,0,8
	frsp 0,0
.LVL32:
	.loc 1 200 0
	fcmpu 7,0,13
	bng- 7,.L27
	.loc 1 201 0
	fmr 0,13
.LVL33:
.L27:
	.loc 1 204 0
	fmadds 10,0,9,10
	stfs 10,0(9)
.LVL34:
	lfs 13,4(11)
.LVL35:
	fmadds 11,0,13,11
	stfs 11,4(9)
.LVL36:
	lfs 13,8(11)
	fmadds 0,0,13,12
.LVL37:
	stfs 0,8(9)
.LVL38:
	blr
	.cfi_endproc
.LFE40:
	.size	SV_Accelerate, .-SV_Accelerate
	.align 2
	.globl SV_AirAccelerate
	.type	SV_AirAccelerate, @function
SV_AirAccelerate:
.LFB41:
	.loc 1 208 0
	.cfi_startproc
.LVL39:
	mflr 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 212 0
	.cfi_offset 65, 4
	bl VectorNormalize
.LVL40:
	.loc 1 213 0
	lis 9,.LC13@ha
	lfs 0,.LC13@l(9)
	fcmpu 7,1,0
	bng- 7,.L30
	.loc 1 214 0
	fmr 1,0
.LVL41:
.L30:
	.loc 1 215 0
	lis 9,velocity@ha
	lfs 0,4(31)
	lwz 11,velocity@l(9)
.LVL42:
	.loc 1 217 0
	lis 9,.LC12@ha
	.loc 1 215 0
	lfs 11,4(11)
	lfs 13,0(11)
	fmuls 11,11,0
	lfs 0,0(31)
	lfs 12,8(11)
	fmadds 13,13,0,11
	lfs 0,8(31)
	fmadds 0,12,0,13
	.loc 1 216 0
	fsubs 1,1,0
.LVL43:
	.loc 1 217 0
	lfs 0,.LC12@l(9)
	fcmpu 7,1,0
	cror 30,28,30
	beq- 7,.L29
	.loc 1 220 0
	lis 9,.LANCHOR0+52@ha
	lfs 12,.LANCHOR0+52@l(9)
	lis 9,wishspeed@ha
	lfs 0,wishspeed@l(9)
	lis 9,host_frametime@ha
	fmuls 12,12,0
	lfd 0,host_frametime@l(9)
	fmul 12,12,0
	frsp 12,12
.LVL44:
	.loc 1 221 0
	fcmpu 7,12,1
	bgt- 7,.L37
.LVL45:
.L32:
	.loc 1 222 0
	li 9,0
.LVL46:
.L33:
	.loc 1 225 0 discriminator 2
	lfsx 13,31,9
	.loc 1 224 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 225 0 discriminator 2
	lfsx 0,11,9
	fmadds 0,13,12,0
	stfsx 0,11,9
	.loc 1 224 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L33
.LVL47:
.L29:
	.loc 1 226 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL48:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL49:
.L37:
.LCFI10:
	.cfi_restore_state
	.loc 1 222 0
	fmr 12,1
.LVL50:
	b .L32
	.cfi_endproc
.LFE41:
	.size	SV_AirAccelerate, .-SV_AirAccelerate
	.align 2
	.globl DropPunchAngle
	.type	DropPunchAngle, @function
DropPunchAngle:
.LFB42:
	.loc 1 230 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 233 0
	lis 31,sv_player@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	lwz 3,sv_player@l(31)
	.loc 1 230 0
	stw 0,20(1)
	.loc 1 233 0
	addi 3,3,704
	.cfi_offset 65, 4
	bl VectorNormalize
.LVL51:
	.loc 1 229 0
	lis 9,host_frametime@ha
	lfd 0,host_frametime@l(9)
	.loc 1 236 0
	lis 9,.LC12@ha
	.loc 1 235 0
	fmr 12,1
	.loc 1 236 0
	lfs 13,.LC12@l(9)
	.loc 1 229 0
	fneg 1,0
.LVL52:
	.loc 1 235 0
	lis 9,.LC15@ha
	lfs 11,.LC15@l(9)
	fmadd 1,1,11,12
	frsp 1,1
.LVL53:
	.loc 1 236 0
	fcmpu 7,1,13
	bnl- 7,.L39
	.loc 1 237 0
	fmr 1,13
.LVL54:
.L39:
	.loc 1 238 0
	lwz 3,sv_player@l(31)
	addi 3,3,704
	mr 4,3
	bl VectorScale
.LVL55:
	.loc 1 239 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE42:
	.size	DropPunchAngle, .-DropPunchAngle
	.align 2
	.globl SV_WaterMove
	.type	SV_WaterMove, @function
SV_WaterMove:
.LFB43:
	.loc 1 248 0
	.cfi_startproc
	stwu 1,-56(1)
.LCFI13:
	.cfi_def_cfa_offset 56
	.loc 1 256 0
	lis 9,sv_player@ha
	lwz 3,sv_player@l(9)
	.loc 1 248 0
	mflr 0
	stw 31,36(1)
	.loc 1 256 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -20
	.cfi_register 65, 0
	la 31,.LANCHOR1@l(31)
	.loc 1 248 0
	stw 30,32(1)
	.loc 1 256 0
	addi 30,31,12
	.cfi_offset 30, -24
	addi 3,3,884
	mr 4,31
	mr 5,30
	addi 6,31,24
	.loc 1 248 0
	stw 29,28(1)
	stw 0,60(1)
	addi 29,1,8
	.cfi_offset 65, 4
	.cfi_offset 29, -28
	stfd 30,40(1)
	stfd 31,48(1)
	.loc 1 256 0
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	bl AngleVectors
.LVL56:
	lis 11,cmd@ha
	li 9,0
	la 11,cmd@l(11)
	lfs 12,12(11)
	lfs 11,16(11)
.LVL57:
.L42:
	.loc 1 259 0 discriminator 2
	lfsx 0,30,9
	.loc 1 258 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 259 0 discriminator 2
	lfsx 13,31,9
	fmuls 0,11,0
	fmadds 0,13,12,0
	stfsx 0,29,9
	.loc 1 258 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L42
	.loc 1 261 0
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fcmpu 7,12,0
	bne- 7,.L43
	.loc 1 261 0 is_stmt 0 discriminator 1
	fcmpu 7,11,0
	lfs 13,20(11)
	beq- 7,.L44
.L45:
	.loc 1 264 0 is_stmt 1
	lfs 0,16(1)
	.loc 1 267 0
	lis 30,.LANCHOR0@ha
	.loc 1 266 0
	mr 3,29
	.loc 1 267 0
	la 30,.LANCHOR0@l(30)
	.loc 1 264 0
	fadds 13,0,13
	stfs 13,16(1)
	.loc 1 266 0
	bl Length
.LVL58:
	.loc 1 267 0
	lfs 0,72(30)
	fcmpu 7,0,1
	blt- 7,.L60
.L47:
	.loc 1 272 0
	lis 9,.LC17@ha
	.loc 1 277 0
	lis 31,velocity@ha
	.loc 1 272 0
	lfs 30,.LC17@l(9)
	.loc 1 277 0
	lwz 3,velocity@l(31)
	.loc 1 272 0
	fmuls 30,1,30
.LVL59:
	.loc 1 277 0
	bl Length
.LVL60:
	.loc 1 278 0
	lis 9,.LC12@ha
	lfs 31,.LC12@l(9)
	fcmpu 7,1,31
	.loc 1 286 0
	fmr 0,31
	.loc 1 278 0
	beq- 7,.L49
	.loc 1 280 0
	fmr 13,1
	lis 9,host_frametime@ha
	lfd 31,host_frametime@l(9)
	lis 9,sv_friction+12@ha
	lfs 12,sv_friction+12@l(9)
	fmul 31,13,31
	.loc 1 247 0
	fneg 31,31
	.loc 1 280 0
	fmadd 31,31,12,13
	frsp 31,31
.LVL61:
	.loc 1 281 0
	fcmpu 7,31,0
	blt- 7,.L61
.LVL62:
.L50:
	.loc 1 283 0
	fdivs 1,31,1
.LVL63:
	lwz 3,velocity@l(31)
	mr 4,3
	bl VectorScale
.LVL64:
.L49:
	.loc 1 291 0
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	fcmpu 7,30,0
	beq- 7,.L41
	.loc 1 294 0
	fsubs 31,30,31
.LVL65:
	.loc 1 295 0
	fcmpu 7,31,0
	cror 30,28,30
	bne- 7,.L62
.LVL66:
.L41:
	.loc 1 305 0
	lwz 0,60(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 30,40(1)
.LVL67:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L43:
.LCFI15:
	.cfi_restore_state
	.loc 1 262 0
	lfs 13,20(11)
	b .L45
.LVL68:
.L61:
	.loc 1 282 0
	fmr 31,0
.LVL69:
	b .L50
.LVL70:
.L44:
	.loc 1 261 0 discriminator 1
	fcmpu 7,13,0
	bne- 7,.L45
	.loc 1 262 0
	lis 9,.LC16@ha
	lfs 13,16(1)
	lfs 0,.LC16@l(9)
	.loc 1 267 0
	lis 30,.LANCHOR0@ha
	.loc 1 266 0
	mr 3,29
	.loc 1 267 0
	la 30,.LANCHOR0@l(30)
	.loc 1 262 0
	fsubs 0,13,0
	stfs 0,16(1)
	.loc 1 266 0
	bl Length
.LVL71:
	.loc 1 267 0
	lfs 0,72(30)
	fcmpu 7,0,1
	bnl+ 7,.L47
.L60:
	.loc 1 269 0
	fdivs 1,0,1
.LVL72:
	mr 3,29
	mr 4,29
	bl VectorScale
	.loc 1 270 0
	lfs 1,72(30)
.LVL73:
	b .L47
.LVL74:
.L62:
	.loc 1 298 0
	mr 3,29
	bl VectorNormalize
	.loc 1 299 0
	lfs 12,52(30)
	lis 9,host_frametime@ha
	fmuls 12,30,12
	lfd 0,host_frametime@l(9)
	fmul 12,12,0
	frsp 12,12
.LVL75:
	.loc 1 300 0
	fcmpu 7,12,31
	bgt- 7,.L63
.LVL76:
.L52:
	lwz 11,velocity@l(31)
	.loc 1 301 0
	li 9,0
.LVL77:
.L53:
	.loc 1 304 0 discriminator 2
	lfsx 13,29,9
	.loc 1 303 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 304 0 discriminator 2
	lfsx 0,11,9
	fmadds 0,13,12,0
	stfsx 0,11,9
	.loc 1 303 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L53
	.loc 1 305 0
	lwz 0,60(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 30,40(1)
.LVL78:
	lfd 31,48(1)
.LVL79:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI16:
	.cfi_def_cfa_offset 0
	blr
.LVL80:
.L63:
.LCFI17:
	.cfi_restore_state
	.loc 1 301 0
	fmr 12,31
.LVL81:
	b .L52
	.cfi_endproc
.LFE43:
	.size	SV_WaterMove, .-SV_WaterMove
	.align 2
	.globl SV_WaterJump
	.type	SV_WaterJump, @function
SV_WaterJump:
.LFB44:
	.loc 1 308 0
	.cfi_startproc
	.loc 1 309 0
	lis 9,sv_player@ha
	lis 11,sv+8@ha
	lwz 9,sv_player@l(9)
	lfd 13,sv+8@l(11)
	lfs 0,924(9)
	.loc 1 308 0
	stwu 1,-24(1)
.LCFI18:
	.cfi_def_cfa_offset 24
	.loc 1 309 0
	fcmpu 7,13,0
	bgt- 7,.L65
	.loc 1 310 0
	lis 11,.LC12@ha
	lfs 13,936(9)
	lfs 0,.LC12@l(11)
	fcmpu 7,13,0
	bne- 7,.L66
.L65:
	.loc 1 312 0
	lfs 0,908(9)
	lis 0,0x4330
	addi 11,1,16
	stw 0,8(1)
	fctiwz 0,0
	stfiwx 0,0,11
	lis 11,.LC4@ha
	lfs 0,.LC4@l(11)
	lwz 0,16(1)
	rlwinm 0,0,0,21,19
	xoris 0,0,0x8000
	stw 0,12(1)
	.loc 1 313 0
	li 0,0
	.loc 1 312 0
	lfd 13,8(1)
	.loc 1 313 0
	stw 0,924(9)
	.loc 1 312 0
	fsub 0,13,0
	frsp 0,0
	stfs 0,908(9)
.L66:
	.loc 1 315 0
	lwz 11,988(9)
	.loc 1 316 0
	lwz 0,992(9)
	.loc 1 315 0
	stw 11,668(9)
	.loc 1 316 0
	stw 0,672(9)
	.loc 1 317 0
	addi 1,1,24
.LCFI19:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE44:
	.size	SV_WaterJump, .-SV_WaterJump
	.align 2
	.globl SV_AirMove
	.type	SV_AirMove, @function
SV_AirMove:
.LFB45:
	.loc 1 327 0
	.cfi_startproc
	stwu 1,-56(1)
.LCFI20:
	.cfi_def_cfa_offset 56
	mflr 0
	stw 28,40(1)
	.loc 1 334 0
	lis 28,sv_player@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	lwz 9,sv_player@l(28)
	.loc 1 327 0
	stw 0,60(1)
	stw 31,52(1)
	.loc 1 335 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	la 31,.LANCHOR1@l(31)
	.loc 1 334 0
	lwz 0,684(9)
	.loc 1 327 0
	stw 29,44(1)
	.loc 1 335 0
	addi 29,31,12
	.cfi_offset 29, -12
	.loc 1 327 0
	stw 30,48(1)
	.loc 1 335 0
	addi 30,1,8
	.cfi_offset 30, -8
	.loc 1 327 0
	stw 27,36(1)
	.loc 1 335 0
	mr 3,30
	.loc 1 333 0
	li 27,0
	.cfi_offset 27, -20
	.loc 1 335 0
	mr 4,31
	mr 5,29
	addi 6,31,24
	.loc 1 333 0
	stw 27,16(1)
	stw 27,8(1)
	.loc 1 334 0
	stw 0,12(1)
	.loc 1 335 0
	bl AngleVectors
	.loc 1 341 0
	lwz 10,sv_player@l(28)
	lis 9,sv+8@ha
	lfd 13,sv+8@l(9)
	.loc 1 337 0
	lis 11,cmd@ha
	.loc 1 341 0
	lfs 0,924(10)
	.loc 1 337 0
	la 11,cmd@l(11)
	lfs 12,12(11)
.LVL82:
	.loc 1 341 0
	fcmpu 7,13,0
	.loc 1 338 0
	lfs 11,16(11)
.LVL83:
	.loc 1 341 0
	bnl- 7,.L68
	.loc 1 341 0 is_stmt 0 discriminator 1
	stw 27,28(1)
	lfs 0,28(1)
	fcmpu 7,12,0
	blt- 7,.L82
.L68:
.LVL84:
	.loc 1 342 0 is_stmt 1
	li 9,0
.LVL85:
.L70:
	.loc 1 345 0 discriminator 2
	lfsx 0,29,9
	.loc 1 344 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 345 0 discriminator 2
	lfsx 13,31,9
	fmuls 0,11,0
	fmadds 0,13,12,0
	stfsx 0,30,9
	.loc 1 344 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L70
	.loc 1 347 0
	lfs 0,636(10)
	addi 9,1,24
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,24(1)
	cmpwi 7,0,3
	beq- 7,.L71
	.loc 1 348 0
	lwz 0,20(11)
	stw 0,16(1)
.L72:
	.loc 1 352 0
	lwz 10,8(1)
	lis 11,wishdir@ha
	la 9,wishdir@l(11)
	.loc 1 354 0
	lis 29,.LANCHOR0@ha
	.loc 1 352 0
	stw 10,wishdir@l(11)
	.loc 1 353 0
	mr 3,9
	.loc 1 352 0
	lwz 11,12(1)
	.loc 1 354 0
	la 29,.LANCHOR0@l(29)
	.loc 1 352 0
	stw 0,8(9)
	.loc 1 353 0
	lis 31,wishspeed@ha
	.loc 1 352 0
	stw 11,4(9)
	.loc 1 353 0
	bl VectorNormalize
.LVL86:
	.loc 1 354 0
	lfs 0,72(29)
	.loc 1 353 0
	stfs 1,wishspeed@l(31)
	.loc 1 354 0
	fcmpu 7,1,0
	bgt- 7,.L83
.L73:
	.loc 1 360 0
	lwz 9,sv_player@l(28)
	lfs 13,636(9)
	lis 9,.LC18@ha
	lfs 0,.LC18@l(9)
	fcmpu 7,13,0
	beq- 7,.L84
	.loc 1 364 0
	lis 9,onground@ha
	lbz 0,onground@l(9)
	cmpwi 7,0,0
	bne- 7,.L85
	.loc 1 371 0
	mr 3,30
	bl SV_AirAccelerate
	.loc 1 373 0
	lwz 0,60(1)
	lwz 27,36(1)
	mtlr 0
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL87:
.L82:
.LCFI22:
	.cfi_restore_state
	.loc 1 342 0
	fmr 12,0
.LVL88:
	b .L68
.LVL89:
.L85:
	.loc 1 366 0
	bl SV_UserFriction
	.loc 1 367 0
	bl SV_Accelerate
	.loc 1 373 0
	lwz 0,60(1)
	lwz 27,36(1)
	mtlr 0
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
.L84:
.LCFI24:
	.cfi_restore_state
	.loc 1 362 0
	lis 9,velocity@ha
	lwz 0,8(1)
	lwz 9,velocity@l(9)
	.loc 1 373 0
	lwz 27,36(1)
	.loc 1 362 0
	stw 0,0(9)
	.loc 1 373 0
	lwz 28,40(1)
	.loc 1 362 0
	lwz 0,12(1)
	.loc 1 373 0
	lwz 29,44(1)
	.loc 1 362 0
	stw 0,4(9)
	.loc 1 373 0
	lwz 30,48(1)
	.loc 1 362 0
	lwz 0,16(1)
	.loc 1 373 0
	lwz 31,52(1)
	.loc 1 362 0
	stw 0,8(9)
	.loc 1 373 0
	lwz 0,60(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI25:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L83:
.LCFI26:
	.cfi_restore_state
	.loc 1 356 0
	fdivs 1,0,1
	mr 3,30
	mr 4,30
	bl VectorScale
	.loc 1 357 0
	lwz 0,72(29)
	stw 0,wishspeed@l(31)
	b .L73
.LVL90:
.L71:
	.loc 1 350 0
	li 0,0
	stw 0,16(1)
	b .L72
	.cfi_endproc
.LFE45:
	.size	SV_AirMove, .-SV_AirMove
	.align 2
	.globl SV_ClientThink
	.type	SV_ClientThink, @function
SV_ClientThink:
.LFB46:
	.loc 1 384 0
	.cfi_startproc
	stwu 1,-72(1)
.LCFI27:
	.cfi_def_cfa_offset 72
	mflr 0
	.loc 1 387 0
	lis 11,.LC12@ha
	.loc 1 384 0
	stw 31,28(1)
	.loc 1 387 0
	lis 31,sv_player@ha
	.cfi_offset 31, -44
	.cfi_register 65, 0
	.loc 1 384 0
	stw 0,76(1)
	.loc 1 387 0
	lwz 9,sv_player@l(31)
	.loc 1 384 0
	stfd 31,64(1)
	.loc 1 387 0
	lfs 0,636(9)
	lfs 31,.LC12@l(11)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 384 0
	stfd 27,32(1)
	.loc 1 387 0
	fcmpu 7,0,31
	.loc 1 384 0
	stfd 28,40(1)
	stfd 29,48(1)
	stfd 30,56(1)
	stw 29,20(1)
	stw 30,24(1)
	.loc 1 387 0
	bne- 7,.L93
	.cfi_offset 30, -48
	.cfi_offset 29, -52
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
.L86:
	.loc 1 433 0
	lwz 0,76(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	lfd 27,32(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI28:
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
.L93:
.LCFI29:
	.cfi_restore_state
	.loc 1 390 0
	lfs 0,908(9)
	addi 11,1,12
	.loc 1 392 0
	addi 0,9,644
	.loc 1 393 0
	addi 9,9,668
	.loc 1 390 0
	fctiwz 0,0
	stfiwx 0,0,11
	lis 11,onground@ha
	lwz 10,12(1)
	rlwinm 10,10,23,31,31
	stb 10,onground@l(11)
	.loc 1 392 0
	lis 11,origin@ha
	stw 0,origin@l(11)
	.loc 1 393 0
	lis 11,velocity@ha
	stw 9,velocity@l(11)
	.loc 1 395 0
	bl DropPunchAngle
	.loc 1 400 0
	lwz 30,sv_player@l(31)
	lfs 0,796(30)
	fcmpu 7,0,31
	cror 30,28,30
	beq+ 7,.L86
	.loc 1 406 0
	lis 9,host_client@ha
	lis 11,cmd@ha
	lwz 9,host_client@l(9)
	.loc 1 407 0
	addi 0,30,680
	lis 29,angles@ha
	.loc 1 410 0
	mr 3,0
	.loc 1 406 0
	lwz 5,24(9)
	.loc 1 410 0
	addi 4,30,668
	.loc 1 406 0
	lwz 6,28(9)
	lwz 7,32(9)
	lwz 8,36(9)
	lwz 10,40(9)
	lwz 12,20(9)
	la 9,cmd@l(11)
	stw 5,4(9)
	stw 6,8(9)
	stw 7,12(9)
	stw 8,16(9)
	stw 10,20(9)
	stw 12,cmd@l(11)
	.loc 1 407 0
	stw 0,angles@l(29)
	.loc 1 409 0
	lfs 27,884(30)
	lfs 28,704(30)
.LVL91:
	lfs 29,888(30)
	lfs 30,708(30)
.LVL92:
	.loc 1 410 0
	bl V_CalcRoll
.LVL93:
	lis 11,.LC19@ha
	.loc 1 411 0
	lwz 9,sv_player@l(31)
	.loc 1 410 0
	lfs 0,.LC19@l(11)
	fmuls 0,1,0
	stfs 0,688(30)
	.loc 1 411 0
	lfs 0,880(9)
	fcmpu 7,0,31
	bne- 7,.L88
	.loc 1 409 0
	fadds 28,27,28
.LVL94:
	.loc 1 413 0
	lis 10,.LC20@ha
	lfs 0,.LC20@l(10)
	.loc 1 409 0
	fadds 30,29,30
.LVL95:
	.loc 1 413 0
	lwz 11,angles@l(29)
	fneg 28,28
.LVL96:
	.loc 1 414 0
	stfs 30,4(11)
	.loc 1 413 0
	fdivs 28,28,0
	stfs 28,0(11)
.LVL97:
.L88:
	.loc 1 417 0
	lfs 0,908(9)
	addi 11,1,8
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,8(1)
	andi. 11,0,2048
	bne- 0,.L94
	.loc 1 425 0
	lis 11,.LC21@ha
	lfs 13,936(9)
	lfs 0,.LC21@l(11)
	fcmpu 7,13,0
	cror 30,29,30
	bne- 7,.L90
	.loc 1 426 0
	lfs 13,636(9)
	lis 9,.LC18@ha
	lfs 0,.LC18@l(9)
	fcmpu 7,13,0
	bne- 7,.L95
.L90:
	.loc 1 433 0
	lwz 0,76(1)
	lwz 29,20(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 27,32(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 1 432 0
	b SV_AirMove
.L94:
.LCFI31:
	.cfi_restore_state
	.loc 1 433 0
	lwz 0,76(1)
	lwz 29,20(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 27,32(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
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
	.loc 1 419 0
	b SV_WaterJump
.L95:
.LCFI33:
	.cfi_restore_state
	.loc 1 433 0
	lwz 0,76(1)
	lwz 29,20(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 27,32(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 1 428 0
	b SV_WaterMove
	.cfi_endproc
.LFE46:
	.size	SV_ClientThink, .-SV_ClientThink
	.align 2
	.globl SV_ReadClientMove
	.type	SV_ReadClientMove, @function
SV_ReadClientMove:
.LFB47:
	.loc 1 442 0
	.cfi_startproc
.LVL98:
	stwu 1,-88(1)
.LCFI35:
	.cfi_def_cfa_offset 88
	mflr 0
	stw 30,64(1)
	.loc 1 448 0
	lis 30,host_client@ha
	.cfi_offset 30, -24
	.cfi_register 65, 0
	.loc 1 442 0
	stw 31,68(1)
	.loc 1 448 0
	lwz 31,host_client@l(30)
	.cfi_offset 31, -20
	.loc 1 442 0
	stw 0,92(1)
	.loc 1 448 0
	addis 9,31,0x1
	.loc 1 442 0
	stw 28,56(1)
	.loc 1 448 0
	lwz 0,-1360(9)
	.cfi_offset 28, -32
	.cfi_offset 65, 4
	.loc 1 449 0
	lis 9,sv+8@ha
	.loc 1 442 0
	stfd 31,80(1)
	.loc 1 448 0
	srawi 28,0,4
	addze 28,28
	.loc 1 449 0
	lfd 31,sv+8@l(9)
	.cfi_offset 63, -8
	.loc 1 448 0
	slwi 28,28,4
	.loc 1 442 0
	stfd 30,72(1)
	stw 29,60(1)
	.loc 1 448 0
	subf 28,28,0
	.loc 1 442 0
	mr 29,3
	.cfi_offset 29, -28
	.cfi_offset 62, -16
	.loc 1 449 0
	bl MSG_ReadFloat
.LVL99:
	fsub 31,31,1
	.loc 1 450 0
	lwz 9,host_client@l(30)
	.loc 1 449 0
	addi 0,28,16028
	.loc 1 450 0
	addis 9,9,0x1
	.loc 1 449 0
	slwi 0,0,2
	.loc 1 450 0
	lwz 11,-1360(9)
	.loc 1 449 0
	frsp 31,31
	.loc 1 450 0
	addi 11,11,1
	.loc 1 449 0
	stfsx 31,31,0
	.loc 1 459 0
	lis 31,0x4330
	.loc 1 450 0
	stw 11,-1360(9)
.LVL100:
	.loc 1 454 0
	bl MSG_ReadAngle
	fmr 30,1
.LVL101:
	bl MSG_ReadAngle
	fmr 31,1
.LVL102:
	bl MSG_ReadAngle
.LVL103:
	.loc 1 456 0
	lwz 9,host_client@l(30)
	addis 9,9,0x1
	lwz 9,-1464(9)
	stfs 1,892(9)
	stfs 31,888(9)
	stfs 30,884(9)
	.loc 1 459 0
	bl MSG_ReadShort
	stw 31,8(1)
	xoris 3,3,0x8000
	lis 9,.LC4@ha
	stw 3,12(1)
	lfs 31,.LC4@l(9)
	lfd 0,8(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,12(29)
	.loc 1 460 0
	bl MSG_ReadShort
	stw 31,16(1)
	xoris 3,3,0x8000
	stw 3,20(1)
	lfd 0,16(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,16(29)
	.loc 1 461 0
	bl MSG_ReadShort
	stw 31,24(1)
	xoris 3,3,0x8000
	stw 3,28(1)
	lfd 0,24(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,20(29)
	.loc 1 464 0
	bl MSG_ReadByte
.LVL104:
	.loc 1 465 0
	lwz 9,host_client@l(30)
	rlwinm 0,3,0,31,31
	.loc 1 466 0
	rlwinm 3,3,31,31,31
.LVL105:
	.loc 1 465 0
	xoris 0,0,0x8000
	addis 9,9,0x1
	lwz 9,-1464(9)
	.loc 1 466 0
	xoris 3,3,0x8000
	.loc 1 465 0
	stw 0,36(1)
	stw 31,32(1)
	lfd 0,32(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,864(9)
	.loc 1 466 0
	stw 3,44(1)
	stw 31,40(1)
	lfd 0,40(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,872(9)
	.loc 1 468 0
	bl MSG_ReadByte
.LVL106:
	.loc 1 469 0
	cmpwi 0,3,0
	beq- 0,.L96
	.loc 1 470 0
	lwz 9,host_client@l(30)
	xoris 3,3,0x8000
.LVL107:
	addis 9,9,0x1
	lwz 9,-1464(9)
	stw 3,52(1)
	stw 31,48(1)
	lfd 0,48(1)
	fsub 31,0,31
	frsp 31,31
	stfs 31,876(9)
.LVL108:
.L96:
	.loc 1 476 0
	lwz 0,92(1)
	lwz 28,56(1)
	mtlr 0
	lwz 29,60(1)
.LVL109:
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE47:
	.size	SV_ReadClientMove, .-SV_ReadClientMove
	.align 2
	.globl SV_ReadClientMessage
	.type	SV_ReadClientMessage, @function
SV_ReadClientMessage:
.LFB48:
	.loc 1 486 0
	.cfi_startproc
.L99:
	mflr 0
	stwu 1,-48(1)
.LCFI37:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 23,12(1)
	.loc 1 545 0
	lis 23,.LC29@ha
	.cfi_offset 23, -36
	.loc 1 486 0
	stw 24,16(1)
	.loc 1 547 0
	lis 24,.LC30@ha
	.cfi_offset 24, -32
	.loc 1 486 0
	stw 25,20(1)
	.loc 1 543 0
	lis 25,.LC28@ha
	.cfi_offset 25, -28
	.loc 1 486 0
	stw 26,24(1)
	.loc 1 541 0
	lis 26,.LC27@ha
	.cfi_offset 26, -24
	.loc 1 486 0
	stw 27,28(1)
	.loc 1 539 0
	lis 27,.LC26@ha
	.cfi_offset 27, -20
	.loc 1 486 0
	stw 28,32(1)
	.loc 1 537 0
	lis 28,.LC25@ha
	.cfi_offset 28, -16
	.loc 1 486 0
	stw 31,44(1)
	lis 31,host_client@ha
	.cfi_offset 31, -4
	stw 0,52(1)
	la 31,host_client@l(31)
	stw 22,8(1)
	.loc 1 537 0
	la 28,.LC25@l(28)
	.loc 1 486 0
	stw 29,36(1)
	.loc 1 539 0
	la 27,.LC26@l(27)
	.loc 1 486 0
	stw 30,40(1)
	.loc 1 541 0
	la 26,.LC27@l(26)
	.loc 1 510 0
	lis 30,msg_badread@ha
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	.loc 1 543 0
	la 25,.LC28@l(25)
	.loc 1 545 0
	la 23,.LC29@l(23)
	.loc 1 547 0
	la 24,.LC30@l(24)
.L100:
	.loc 1 494 0
	lwz 9,0(31)
	lwz 3,16(9)
	bl NET_GetMessage
.LVL110:
	.loc 1 495 0
	cmpwi 7,3,-1
	beq- 7,.L122
	.loc 1 500 0
	cmpwi 7,3,0
	beq- 7,.L114
	.loc 1 503 0
	bl MSG_BeginReading
.LVL111:
.L121:
	.loc 1 507 0
	lwz 9,0(31)
	lbz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L116
	.loc 1 510 0
	lbz 0,msg_badread@l(30)
	cmpwi 7,0,0
	bne- 7,.L123
	.loc 1 516 0
	bl MSG_ReadChar
.LVL112:
	.loc 1 518 0
	addi 3,3,1
.LVL113:
	cmplwi 7,3,5
	ble- 7,.L124
.LVL114:
.L106:
	.loc 1 524 0
	lis 3,.LC24@ha
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 525 0
	li 3,0
.L102:
	.loc 1 595 0
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
.LCFI38:
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
.LVL115:
.L124:
.LCFI39:
	.cfi_restore_state
	.loc 1 518 0
	lis 9,.L109@ha
	slwi 3,3,2
.LVL116:
	la 9,.L109@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L109:
	.long .L100-.L109
	.long .L106-.L109
	.long .L121-.L109
	.long .L116-.L109
	.long .L107-.L109
	.long .L108-.L109
	.section	".text"
.L116:
	.loc 1 595 0
	lwz 0,52(1)
	.loc 1 585 0
	li 3,0
	.loc 1 595 0
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
.LCFI40:
	.cfi_def_cfa_offset 0
	blr
.L108:
.LCFI41:
	.cfi_restore_state
	.loc 1 532 0
	bl MSG_ReadString
	.loc 1 533 0
	lwz 9,0(31)
	.loc 1 532 0
	mr 29,3
.LVL117:
	.loc 1 536 0
	li 22,0
	.loc 1 533 0
	lbz 0,3(9)
	cmpwi 7,0,0
	beq- 7,.L110
	.loc 1 534 0
	li 22,2
.L110:
.LVL118:
	.loc 1 537 0
	mr 3,29
.LVL119:
	mr 4,28
	li 5,6
	bl Q_strncasecmp
	cmpwi 7,3,0
	bne- 7,.L125
.L111:
.LVL120:
	.loc 1 578 0
	mr 3,29
	li 4,0
	bl Cmd_ExecuteString
	b .L121
.LVL121:
.L107:
	.loc 1 588 0
	lwz 3,0(31)
	addi 3,3,20
	bl SV_ReadClientMove
	.loc 1 589 0
	b .L121
.LVL122:
.L125:
	.loc 1 539 0
	mr 3,29
	mr 4,27
	li 5,3
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 541 0
	mr 3,29
	mr 4,26
	li 5,8
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 543 0
	mr 3,29
	mr 4,25
	li 5,3
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 545 0
	mr 3,29
	mr 4,23
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 547 0
	mr 3,29
	mr 4,24
	li 5,6
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 549 0
	lis 4,.LC31@ha
	mr 3,29
	la 4,.LC31@l(4)
	li 5,3
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 551 0
	lis 4,.LC32@ha
	mr 3,29
	la 4,.LC32@l(4)
	li 5,8
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 553 0
	lis 4,.LC33@ha
	mr 3,29
	la 4,.LC33@l(4)
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 555 0
	lis 4,.LC34@ha
	mr 3,29
	la 4,.LC34@l(4)
	li 5,5
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 557 0
	lis 4,.LC35@ha
	mr 3,29
	la 4,.LC35@l(4)
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 559 0
	lis 4,.LC36@ha
	mr 3,29
	la 4,.LC36@l(4)
	li 5,5
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 561 0
	lis 4,.LC37@ha
	mr 3,29
	la 4,.LC37@l(4)
	li 5,5
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 563 0
	lis 4,.LC38@ha
	mr 3,29
	la 4,.LC38@l(4)
	li 5,5
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 565 0
	lis 4,.LC39@ha
	mr 3,29
	la 4,.LC39@l(4)
	li 5,8
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 567 0
	lis 4,.LC40@ha
	mr 3,29
	la 4,.LC40@l(4)
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 569 0
	lis 4,.LC41@ha
	mr 3,29
	la 4,.LC41@l(4)
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 571 0
	lis 4,.LC42@ha
	mr 3,29
	la 4,.LC42@l(4)
	li 5,4
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq+ 7,.L111
	.loc 1 573 0
	lis 4,.LC43@ha
	mr 3,29
	la 4,.LC43@l(4)
	li 5,3
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq- 7,.L111
	.loc 1 575 0
	cmpwi 7,22,2
	bne- 7,.L112
	.loc 1 576 0
	mr 3,29
	bl Cbuf_InsertText
	b .L121
.LVL123:
.L123:
	.loc 1 512 0
	lis 3,.LC23@ha
	la 3,.LC23@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 513 0
	li 3,0
	b .L102
.LVL124:
.L112:
	.loc 1 580 0
	lwz 4,0(31)
	lis 3,.LC44@ha
	la 3,.LC44@l(3)
	mr 5,29
	addis 4,4,0x1
	addi 4,4,-1460
	crxor 6,6,6
	bl Con_DPrintf
	b .L121
.LVL125:
.L122:
	.loc 1 497 0
	lis 3,.LC22@ha
.LVL126:
	la 3,.LC22@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 498 0
	li 3,0
	b .L102
.LVL127:
.L114:
	.loc 1 501 0
	li 3,1
.LVL128:
	b .L102
	.cfi_endproc
.LFE48:
	.size	SV_ReadClientMessage, .-SV_ReadClientMessage
	.align 2
	.globl SV_RunClients
	.type	SV_RunClients, @function
SV_RunClients:
.LFB49:
	.loc 1 604 0
	.cfi_startproc
.LVL129:
	stwu 1,-32(1)
.LCFI42:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.loc 1 607 0
	lis 29,svs@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 604 0
	stw 0,36(1)
	.loc 1 607 0
	lwz 0,svs@l(29)
	.cfi_offset 65, 4
	la 29,svs@l(29)
	lwz 9,8(29)
	cmpwi 7,0,0
	.loc 1 604 0
	stw 30,24(1)
	.loc 1 607 0
	lis 30,host_client@ha
	.cfi_offset 30, -8
	.loc 1 604 0
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 31,28(1)
	.loc 1 607 0
	stw 9,host_client@l(30)
	ble- 7,.L126
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	li 31,0
	la 30,host_client@l(30)
	.loc 1 612 0
	lis 28,sv_player@ha
	.loc 1 628 0
	lis 27,sv@ha
	lis 26,key_dest@ha
	b .L135
.LVL130:
.L137:
	.loc 1 609 0
	lwz 0,0(29)
.L129:
	.loc 1 607 0
	addi 31,31,1
.LVL131:
	addis 9,9,0x1
	cmpw 7,31,0
	addi 9,9,-1288
	stw 9,0(30)
	bge- 7,.L126
.LVL132:
.L135:
	.loc 1 609 0
	lbz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L137
	.loc 1 612 0
	addis 9,9,0x1
	lwz 0,-1464(9)
	stw 0,sv_player@l(28)
	.loc 1 614 0
	bl SV_ReadClientMessage
	cmpwi 7,3,0
	beq- 7,.L138
	.loc 1 620 0
	lwz 9,0(30)
	lbz 11,1(9)
	cmpwi 7,11,0
	beq- 7,.L139
	.loc 1 628 0
	la 11,sv@l(27)
	lbz 0,1(11)
	cmpwi 7,0,0
	lwz 0,0(29)
	bne- 7,.L129
	.loc 1 628 0 is_stmt 0 discriminator 1
	cmpwi 7,0,1
	ble- 7,.L140
.L133:
	.loc 1 629 0 is_stmt 1
	bl SV_ClientThink
	lwz 0,0(29)
	.loc 1 607 0
	addi 31,31,1
.LVL133:
	.loc 1 629 0
	lwz 9,0(30)
	.loc 1 607 0
	cmpw 7,31,0
	addis 9,9,0x1
	addi 9,9,-1288
	stw 9,0(30)
	blt+ 7,.L135
.LVL134:
.L126:
	.loc 1 631 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.L138:
.LCFI44:
	.cfi_restore_state
	.loc 1 616 0
	bl SV_DropClient
	lwz 0,0(29)
	lwz 9,0(30)
	.loc 1 617 0
	b .L129
.L139:
	.loc 1 623 0
	stw 11,20(9)
	lwz 0,0(29)
	stw 11,24(9)
	stw 11,28(9)
	stw 11,32(9)
	stw 11,36(9)
	stw 11,40(9)
	.loc 1 624 0
	b .L129
.L140:
	.loc 1 628 0 discriminator 1
	lwz 0,key_dest@l(26)
	cmpwi 7,0,0
	beq- 7,.L133
	.loc 1 607 0
	addis 9,9,0x1
	.loc 1 631 0
	lwz 26,8(1)
	.loc 1 607 0
	addi 0,9,-1288
	.loc 1 631 0
	lwz 27,12(1)
	.loc 1 607 0
	stw 0,0(30)
	.loc 1 631 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE49:
	.size	SV_RunClients, .-SV_RunClients
	.globl sv_accelerate
	.globl sv_maxspeed
	.globl sv_idealpitchscale
	.comm	cmd,24,4
	.comm	onground,1,1
	.comm	velocity,4,4
	.comm	origin,4,4
	.comm	angles,4,4
	.comm	wishspeed,4,4
	.comm	wishdir,12,4
	.globl sv_edgefriction
	.comm	sv_player,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1135869952
.LC4:
	.4byte	1501560836
.LC5:
	.4byte	1094713344
.LC6:
	.4byte	1126170624
.LC7:
	.4byte	1065353216
.LC10:
	.4byte	1098907648
.LC11:
	.4byte	1107820544
.LC12:
	.4byte	0
.LC13:
	.4byte	1106247680
.LC15:
	.4byte	1092616192
.LC16:
	.4byte	1114636288
.LC17:
	.4byte	1060320051
.LC18:
	.4byte	1090519040
.LC19:
	.4byte	1082130432
.LC20:
	.4byte	1077936128
.LC21:
	.4byte	1073741824
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	1074340347
	.4byte	1413754136
.LC8:
	.4byte	-1078355559
	.4byte	-1717986918
.LC9:
	.4byte	1069128089
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	sv_idealpitchscale, @object
	.size	sv_idealpitchscale, 20
sv_idealpitchscale:
	.long	.LC49
	.long	.LC50
	.zero	12
	.type	sv_edgefriction, @object
	.size	sv_edgefriction, 20
sv_edgefriction:
	.long	.LC51
	.long	.LC52
	.zero	12
	.type	sv_accelerate, @object
	.size	sv_accelerate, 20
sv_accelerate:
	.long	.LC45
	.long	.LC46
	.zero	12
	.type	sv_maxspeed, @object
	.size	sv_maxspeed, 20
sv_maxspeed:
	.long	.LC47
	.long	.LC48
	.byte	0
	.byte	1
	.zero	10
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC22:
	.string	"SV_ReadClientMessage: NET_GetMessage failed\n"
	.zero	3
.LC23:
	.string	"SV_ReadClientMessage: badread\n"
	.zero	1
.LC24:
	.string	"SV_ReadClientMessage: unknown command char\n"
.LC25:
	.string	"status"
	.zero	1
.LC26:
	.string	"god"
.LC27:
	.string	"notarget"
	.zero	3
.LC28:
	.string	"fly"
.LC29:
	.string	"name"
	.zero	3
.LC30:
	.string	"noclip"
	.zero	1
.LC31:
	.string	"say"
.LC32:
	.string	"say_team"
	.zero	3
.LC33:
	.string	"tell"
	.zero	3
.LC34:
	.string	"color"
	.zero	2
.LC35:
	.string	"kill"
	.zero	3
.LC36:
	.string	"pause"
	.zero	2
.LC37:
	.string	"spawn"
	.zero	2
.LC38:
	.string	"begin"
	.zero	2
.LC39:
	.string	"prespawn"
	.zero	3
.LC40:
	.string	"kick"
	.zero	3
.LC41:
	.string	"ping"
	.zero	3
.LC42:
	.string	"give"
	.zero	3
.LC43:
	.string	"ban"
.LC44:
	.string	"%s tried to %s\n"
.LC45:
	.string	"sv_accelerate"
	.zero	2
.LC46:
	.string	"10"
	.zero	1
.LC47:
	.string	"sv_maxspeed"
.LC48:
	.string	"320"
.LC49:
	.string	"sv_idealpitchscale"
	.zero	1
.LC50:
	.string	"0.8"
.LC51:
	.string	"edgefriction"
	.zero	3
.LC52:
	.string	"2"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	forward, @object
	.size	forward, 12
forward:
	.zero	12
	.type	right, @object
	.size	right, 12
right:
	.zero	12
	.type	up, @object
	.size	up, 12
up:
	.zero	12
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/pr_comp.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/progdefs.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/progs.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/server.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/cmd.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/keys.h"
	.file 21 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29d5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF526
	.byte	0x1
	.4byte	.LASF527
	.4byte	.LASF528
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
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x10
	.byte	0x2
	.byte	0x28
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2a
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.byte	0x2b
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0x2c
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2f
	.4byte	0xb1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2
	.byte	0x3a
	.4byte	0x13e
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.byte	0x3c
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.byte	0x3c
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x115
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0x3d
	.4byte	0x115
	.uleb128 0xa
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x1ba
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x3
	.byte	0x54
	.4byte	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.byte	0x54
	.4byte	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x3
	.byte	0x55
	.4byte	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x3
	.byte	0x56
	.4byte	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1ca
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1da
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x3
	.byte	0x59
	.4byte	0x14f
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x1f5
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x205
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x215
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x23a
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x3
	.byte	0xa8
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x3
	.byte	0xa9
	.4byte	0x215
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x25b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x26b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x27b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.4byte	0x296
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x4
	.byte	0x72
	.4byte	0x27b
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x17
	.4byte	0x2b7
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x2c7
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x48
	.byte	0x6
	.byte	0xef
	.4byte	0x378
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xf1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0xf2
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0xf9
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0xfe
	.4byte	0x2c7
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x14
	.byte	0x7
	.byte	0x38
	.4byte	0x3e4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0x3c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3f
	.4byte	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x383
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0x40
	.4byte	0x383
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x10
	.byte	0x8
	.byte	0x16
	.4byte	0x41e
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.byte	0x19
	.4byte	0x41e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x42e
	.uleb128 0xc
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.2byte	0x80a0
	.byte	0x8
	.byte	0x78
	.4byte	0x57c
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.byte	0x7a
	.4byte	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x8
	.byte	0x7b
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x8
	.byte	0x7c
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.byte	0x7d
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8
	.byte	0x7f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.byte	0x80
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x8
	.byte	0x81
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.byte	0x86
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x8
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x8c
	.4byte	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x91
	.4byte	0x582
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x93
	.4byte	0x3f5
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.byte	0x94
	.4byte	0x593
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x42e
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x593
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x5a3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x5b3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x11
	.byte	0x48
	.4byte	0x5c8
	.uleb128 0x10
	.4byte	.LASF86
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF87
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x60d
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0x20
	.4byte	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0x21
	.4byte	0x6ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0x22
	.4byte	0x92e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0x23
	.4byte	0x6ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x6b4
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0xd0
	.4byte	0x1ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0xd2
	.4byte	0xc8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xa
	.byte	0xd5
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xa
	.byte	0xd6
	.4byte	0x1afd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xa
	.byte	0xd8
	.4byte	0x1b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xa
	.byte	0xdc
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5c8
	.uleb128 0xd
	.4byte	.LASF104
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x92e
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x9
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x9
	.byte	0x2d
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x9
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x9
	.byte	0x30
	.4byte	0x93f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x9
	.byte	0x31
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x9
	.byte	0x32
	.4byte	0x93f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x9
	.byte	0x33
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x9
	.byte	0x34
	.4byte	0xc09
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x9
	.byte	0x35
	.4byte	0x6ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x9
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x9
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x38
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x9
	.byte	0x44
	.4byte	0xc8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x48
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x9
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x9
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x9
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x9
	.byte	0x57
	.4byte	0xdac
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x9
	.byte	0x5c
	.4byte	0xdb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x9
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x9
	.byte	0x60
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x9
	.byte	0x61
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x9
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x9
	.byte	0x63
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x9
	.byte	0x64
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c0
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0x9
	.byte	0x24
	.4byte	0x5c8
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x955
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF136
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0xc09
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x182
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x185
	.4byte	0x1e46
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x187
	.4byte	0x16e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x19d
	.4byte	0x1e52
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x1ab5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x1e58
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x13
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x1e5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x13
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x1e64
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x13
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x1e6a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x1af
	.4byte	0x1ac1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x1b09
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x1e70
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x1b77
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x13
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x1b03
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x13
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x1e76
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x1e86
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x1c2
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x1c3
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x296
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x955
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0xc8c
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0xbc
	.4byte	0x1ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0xbe
	.4byte	0xc8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xa
	.byte	0xc1
	.4byte	0x1ab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xa
	.byte	0xc2
	.4byte	0x1ae2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc0f
	.uleb128 0x14
	.4byte	.LASF178
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xdac
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xdac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0xb
	.2byte	0xa17
	.4byte	0x2305
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF184
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF185
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.LASF186
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.4byte	.LASF187
	.byte	0xb
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0xb
	.2byte	0xa21
	.4byte	0x2305
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.4byte	.LASF189
	.byte	0xb
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.4byte	.LASF190
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x2311
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0xb
	.2byte	0xa31
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0xb
	.2byte	0xa33
	.4byte	0x2356
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0xb
	.2byte	0xa37
	.4byte	0x2367
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc92
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xdc2
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.byte	0x9
	.byte	0x66
	.4byte	0x6c0
	.uleb128 0xa
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.4byte	0xe0e
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xc
	.byte	0x18
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xc
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xc
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xc
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0xc
	.byte	0x21
	.4byte	0xdcd
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdc2
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xe2f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0xc09
	.4byte	0xe3f
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0xd
	.byte	0x17
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0xd
	.byte	0x18
	.4byte	0x41
	.uleb128 0x15
	.2byte	0x1a4
	.byte	0xe
	.byte	0x3e
	.4byte	0x12d2
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xe
	.byte	0x40
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xe
	.byte	0x41
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xe
	.byte	0x42
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xe
	.byte	0x43
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xe
	.byte	0x44
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xe
	.byte	0x45
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xe
	.byte	0x46
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xe
	.byte	0x47
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xe
	.byte	0x48
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xe
	.byte	0x49
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xe
	.byte	0x4a
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xe
	.byte	0x4b
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xe
	.byte	0x4c
	.4byte	0xe4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xe
	.byte	0x4d
	.4byte	0xe4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xe
	.byte	0x4e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xe
	.byte	0x4f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xe
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xe
	.byte	0x51
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xe
	.byte	0x52
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xe
	.byte	0x53
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xe
	.byte	0x54
	.4byte	0xe3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.string	"use"
	.byte	0xe
	.byte	0x55
	.4byte	0xe3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xe
	.byte	0x56
	.4byte	0xe3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xe
	.byte	0x57
	.4byte	0xe3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xe
	.byte	0x58
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xe
	.byte	0x59
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xe
	.byte	0x5a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xe
	.byte	0x5b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xe
	.byte	0x5c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xe
	.byte	0x5d
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xe
	.byte	0x5e
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xe
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xe
	.byte	0x60
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xe
	.byte	0x61
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xe
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xe
	.byte	0x63
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xe
	.byte	0x64
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xe
	.byte	0x65
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xe
	.byte	0x66
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xe
	.byte	0x67
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xe
	.byte	0x68
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xe
	.byte	0x69
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0xe
	.byte	0x6a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0xe
	.byte	0x6b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0xe
	.byte	0x6c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0xe
	.byte	0x6d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xe
	.byte	0x6e
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xe
	.byte	0x6f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0xe
	.byte	0x70
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0xe
	.byte	0x71
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xe
	.byte	0x72
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xe
	.byte	0x73
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0xe
	.byte	0x74
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0xe
	.byte	0x75
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xe
	.byte	0x76
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xe
	.byte	0x77
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0xe
	.byte	0x78
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x9
	.4byte	.LASF249
	.byte	0xe
	.byte	0x79
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x9
	.4byte	.LASF250
	.byte	0xe
	.byte	0x7a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0xe
	.byte	0x7b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xe
	.byte	0x7c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xe
	.byte	0x7d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0xe
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0xe
	.byte	0x7f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0xe
	.byte	0x80
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xe
	.byte	0x81
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xe
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0xe
	.byte	0x83
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0xe
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0xe
	.byte	0x85
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x9
	.4byte	.LASF262
	.byte	0xe
	.byte	0x86
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xe
	.byte	0x87
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0xe
	.byte	0x88
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xe
	.byte	0x89
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xe
	.byte	0x8a
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0xe
	.byte	0x8b
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xe
	.byte	0x8c
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0xe
	.byte	0x8d
	.4byte	0xe55
	.uleb128 0xd
	.4byte	.LASF270
	.2byte	0x400
	.byte	0xf
	.byte	0x25
	.4byte	0x134e
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xf
	.byte	0x27
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF272
	.byte	0xf
	.byte	0x28
	.4byte	0x144
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0xf
	.byte	0x2a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0xf
	.byte	0x2b
	.4byte	0x134e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xf
	.byte	0x2d
	.4byte	0x378
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0xf
	.byte	0x2f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x11
	.string	"v"
	.byte	0xf
	.byte	0x30
	.4byte	0x12d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x135e
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF275
	.byte	0xf
	.byte	0x32
	.4byte	0x12dd
	.uleb128 0xa
	.byte	0x14
	.byte	0x10
	.byte	0x16
	.4byte	0x13b8
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0x10
	.byte	0x18
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0x10
	.byte	0x19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0x10
	.byte	0x1a
	.4byte	0x14d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0x10
	.byte	0x1b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0x10
	.byte	0x1c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF281
	.2byte	0xfaf8
	.byte	0x10
	.byte	0x4e
	.4byte	0x14d0
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0x10
	.byte	0x50
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0x10
	.byte	0x51
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0x10
	.byte	0x52
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0x10
	.byte	0x53
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.4byte	.LASF286
	.byte	0x10
	.byte	0x54
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF287
	.byte	0x10
	.byte	0x56
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF288
	.byte	0x10
	.byte	0x59
	.4byte	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"cmd"
	.byte	0x10
	.byte	0x5b
	.4byte	0xe0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF289
	.byte	0x10
	.byte	0x5c
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0x10
	.byte	0x5e
	.4byte	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF290
	.byte	0x10
	.byte	0x60
	.4byte	0x16a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF291
	.byte	0x10
	.byte	0x61
	.4byte	0x1682
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa48
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x10
	.byte	0x62
	.4byte	0x5a3
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa4c
	.uleb128 0x9
	.4byte	.LASF292
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa6c
	.uleb128 0x9
	.4byte	.LASF293
	.byte	0x10
	.byte	0x65
	.4byte	0x16b5
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa70
	.uleb128 0x9
	.4byte	.LASF294
	.byte	0x10
	.byte	0x66
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab0
	.uleb128 0x9
	.4byte	.LASF295
	.byte	0x10
	.byte	0x69
	.4byte	0x16b5
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab4
	.uleb128 0x9
	.4byte	.LASF296
	.byte	0x10
	.byte	0x6c
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfaf4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13b8
	.uleb128 0x6
	.4byte	.LASF297
	.byte	0x10
	.byte	0x1d
	.4byte	0x1369
	.uleb128 0xf
	.byte	0x4
	.byte	0x10
	.byte	0x21
	.4byte	0x14f6
	.uleb128 0x10
	.4byte	.LASF298
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF299
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF300
	.byte	0x10
	.byte	0x21
	.4byte	0x14e1
	.uleb128 0x16
	.4byte	0x10de8
	.byte	0x10
	.byte	0x23
	.4byte	0x1662
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0x10
	.byte	0x25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF301
	.byte	0x10
	.byte	0x27
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF302
	.byte	0x10
	.byte	0x28
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF303
	.byte	0x10
	.byte	0x2a
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF304
	.byte	0x10
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF305
	.byte	0x10
	.byte	0x2d
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x10
	.byte	0x2f
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF306
	.byte	0x10
	.byte	0x33
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF307
	.byte	0x10
	.byte	0x34
	.4byte	0xc09
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF308
	.byte	0x10
	.byte	0x35
	.4byte	0x1662
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF309
	.byte	0x10
	.byte	0x36
	.4byte	0xe2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0x9
	.4byte	.LASF310
	.byte	0x10
	.byte	0x37
	.4byte	0x1662
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a4
	.uleb128 0x9
	.4byte	.LASF311
	.byte	0x10
	.byte	0x38
	.4byte	0x1672
	.byte	0x3
	.byte	0x23
	.uleb128 0xca4
	.uleb128 0x9
	.4byte	.LASF312
	.byte	0x10
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda4
	.uleb128 0x9
	.4byte	.LASF313
	.byte	0x10
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda8
	.uleb128 0x9
	.4byte	.LASF314
	.byte	0x10
	.byte	0x3b
	.4byte	0x1682
	.byte	0x3
	.byte	0x23
	.uleb128 0xdac
	.uleb128 0x9
	.4byte	.LASF315
	.byte	0x10
	.byte	0x3e
	.4byte	0x14f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb0
	.uleb128 0x9
	.4byte	.LASF316
	.byte	0x10
	.byte	0x40
	.4byte	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb4
	.uleb128 0x9
	.4byte	.LASF317
	.byte	0x10
	.byte	0x41
	.4byte	0x582
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc4
	.uleb128 0x9
	.4byte	.LASF318
	.byte	0x10
	.byte	0x43
	.4byte	0x10a
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dc4
	.uleb128 0x9
	.4byte	.LASF319
	.byte	0x10
	.byte	0x44
	.4byte	0x582
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dd4
	.uleb128 0x9
	.4byte	.LASF320
	.byte	0x10
	.byte	0x46
	.4byte	0x10a
	.byte	0x4
	.byte	0x23
	.uleb128 0x8dd4
	.uleb128 0x9
	.4byte	.LASF321
	.byte	0x10
	.byte	0x47
	.4byte	0x1688
	.byte	0x4
	.byte	0x23
	.uleb128 0x8de4
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x1672
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x1682
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x135e
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1699
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7fff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF322
	.byte	0x10
	.byte	0x48
	.4byte	0x1501
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x16b5
	.uleb128 0xe
	.4byte	0x48
	.2byte	0xf9ff
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x16c5
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF323
	.byte	0x10
	.byte	0x6d
	.4byte	0x13b8
	.uleb128 0xf
	.byte	0x4
	.byte	0x12
	.byte	0x34
	.4byte	0x16e5
	.uleb128 0x10
	.4byte	.LASF324
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF325
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF326
	.byte	0x12
	.byte	0x34
	.4byte	0x16d0
	.uleb128 0xa
	.byte	0x4
	.byte	0x12
	.byte	0x64
	.4byte	0x1713
	.uleb128 0x11
	.string	"v"
	.byte	0x12
	.byte	0x65
	.4byte	0x1713
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF327
	.byte	0x12
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1723
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF328
	.byte	0x12
	.byte	0x67
	.4byte	0x16f0
	.uleb128 0xa
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0x1745
	.uleb128 0x9
	.4byte	.LASF329
	.byte	0xa
	.byte	0x3d
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF330
	.byte	0xa
	.byte	0x3e
	.4byte	0x172e
	.uleb128 0x8
	.4byte	.LASF331
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0x17a3
	.uleb128 0x9
	.4byte	.LASF332
	.byte	0xa
	.byte	0x54
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF333
	.byte	0xa
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0xa
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF334
	.byte	0xa
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x11
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0x17a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x17b3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF335
	.byte	0xa
	.byte	0x59
	.4byte	0x1750
	.uleb128 0x8
	.4byte	.LASF336
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0x1873
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0x5d
	.4byte	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF337
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF338
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF339
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF340
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF341
	.byte	0xa
	.byte	0x61
	.4byte	0x1998
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF342
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF343
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF344
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF345
	.byte	0xa
	.byte	0x64
	.4byte	0x199e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF346
	.byte	0xa
	.byte	0x65
	.4byte	0x199e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF347
	.byte	0xa
	.byte	0x66
	.4byte	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF348
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0x1998
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xa
	.byte	0x9a
	.4byte	0x1ab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF349
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF350
	.byte	0xa
	.byte	0xa0
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF351
	.byte	0xa
	.byte	0xa1
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF352
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF353
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF354
	.byte	0xa
	.byte	0xa5
	.4byte	0x1abb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF341
	.byte	0xa
	.byte	0xa6
	.4byte	0x1998
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF355
	.byte	0xa
	.byte	0xa7
	.4byte	0x1998
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xa
	.byte	0xa9
	.4byte	0x1ac1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF356
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF357
	.byte	0xa
	.byte	0xb0
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF358
	.byte	0xa
	.byte	0xb1
	.4byte	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF359
	.byte	0xa
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF360
	.byte	0xa
	.byte	0xb3
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1873
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17be
	.uleb128 0x6
	.4byte	.LASF361
	.byte	0xa
	.byte	0x67
	.4byte	0x17be
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0x19d2
	.uleb128 0x11
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF362
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF363
	.byte	0xa
	.byte	0x7c
	.4byte	0x19af
	.uleb128 0xa
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0x1a1e
	.uleb128 0x9
	.4byte	.LASF364
	.byte	0xa
	.byte	0x80
	.4byte	0x245
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF365
	.byte	0xa
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF366
	.byte	0xa
	.byte	0x82
	.4byte	0x1a1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19a4
	.uleb128 0x6
	.4byte	.LASF367
	.byte	0xa
	.byte	0x84
	.4byte	0x19dd
	.uleb128 0x8
	.4byte	.LASF368
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0x1a9e
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.byte	0x8c
	.4byte	0x1a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xa
	.byte	0x8d
	.4byte	0x1a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF369
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF370
	.byte	0xa
	.byte	0x92
	.4byte	0x1aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF371
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a9e
	.uleb128 0x6
	.4byte	.LASF372
	.byte	0xa
	.byte	0x94
	.4byte	0x1a2f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17b3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1aaa
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a24
	.uleb128 0x6
	.4byte	.LASF373
	.byte	0xa
	.byte	0xb4
	.4byte	0x1873
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1ae2
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xc8c
	.4byte	0x1af2
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF374
	.byte	0xa
	.byte	0xc6
	.4byte	0xc0f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x934
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b09
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ac7
	.uleb128 0x6
	.4byte	.LASF375
	.byte	0xa
	.byte	0xdd
	.4byte	0x60d
	.uleb128 0xa
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0x1b77
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0xa
	.byte	0xe2
	.4byte	0x1b77
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0xa
	.byte	0xe3
	.4byte	0x1ab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF376
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF377
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF378
	.byte	0xa
	.byte	0xe6
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF379
	.byte	0xa
	.byte	0xe7
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x6
	.4byte	.LASF380
	.byte	0xa
	.byte	0xe8
	.4byte	0x1b1a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x17
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x1c01
	.uleb128 0x13
	.4byte	.LASF381
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF382
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF383
	.byte	0xa
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF384
	.byte	0xa
	.2byte	0x123
	.4byte	0x1723
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF385
	.byte	0xa
	.2byte	0x124
	.4byte	0x1723
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x126
	.4byte	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF386
	.byte	0xa
	.2byte	0x127
	.4byte	0x1b8e
	.uleb128 0x19
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x1df2
	.uleb128 0x13
	.4byte	.LASF387
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF388
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF389
	.byte	0xa
	.2byte	0x145
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF390
	.byte	0xa
	.2byte	0x146
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF391
	.byte	0xa
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF392
	.byte	0xa
	.2byte	0x148
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.4byte	.LASF393
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF394
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.4byte	.LASF395
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.4byte	.LASF369
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x13
	.4byte	.LASF396
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x14f
	.4byte	0x16e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF214
	.byte	0xa
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF382
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF397
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF398
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF399
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF400
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF401
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF402
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF403
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF339
	.byte	0xa
	.2byte	0x15e
	.4byte	0x1df2
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF404
	.byte	0xa
	.2byte	0x15f
	.4byte	0x1df2
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x13
	.4byte	.LASF405
	.byte	0xa
	.2byte	0x160
	.4byte	0xe1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x13
	.4byte	.LASF406
	.byte	0xa
	.2byte	0x161
	.4byte	0x1e08
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1e08
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x1c01
	.4byte	0x1e18
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF407
	.byte	0xa
	.2byte	0x162
	.4byte	0x1c0d
	.uleb128 0x1a
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x1e46
	.uleb128 0x10
	.4byte	.LASF408
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF409
	.sleb128 1
	.uleb128 0x10
	.4byte	.LASF410
	.sleb128 2
	.uleb128 0x10
	.4byte	.LASF411
	.sleb128 3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF412
	.byte	0xa
	.2byte	0x172
	.4byte	0x1e24
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1da
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b0f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1745
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19d2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1af2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x1b7d
	.4byte	0x1e86
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1e
	.uleb128 0xa
	.byte	0x10
	.byte	0x13
	.byte	0x16
	.4byte	0x1eb1
	.uleb128 0x9
	.4byte	.LASF332
	.byte	0x13
	.byte	0x18
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF333
	.byte	0x13
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF413
	.byte	0x13
	.byte	0x1a
	.4byte	0x1e8c
	.uleb128 0xa
	.byte	0x28
	.byte	0x13
	.byte	0x1c
	.4byte	0x1f35
	.uleb128 0x9
	.4byte	.LASF414
	.byte	0x13
	.byte	0x1e
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF415
	.byte	0x13
	.byte	0x1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF416
	.byte	0x13
	.byte	0x20
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF417
	.byte	0x13
	.byte	0x20
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.4byte	.LASF418
	.byte	0x13
	.byte	0x21
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF419
	.byte	0x13
	.byte	0x22
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x13
	.byte	0x23
	.4byte	0x1eb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"ent"
	.byte	0x13
	.byte	0x24
	.4byte	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF420
	.byte	0x13
	.byte	0x25
	.4byte	0x1ebc
	.uleb128 0xf
	.byte	0x4
	.byte	0x14
	.byte	0xa0
	.4byte	0x1f61
	.uleb128 0x10
	.4byte	.LASF421
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF422
	.sleb128 1
	.uleb128 0x10
	.4byte	.LASF423
	.sleb128 2
	.uleb128 0x10
	.4byte	.LASF424
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF425
	.byte	0x14
	.byte	0xa0
	.4byte	0x1f40
	.uleb128 0x1b
	.4byte	.LASF426
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x1f98
	.uleb128 0x13
	.4byte	.LASF427
	.byte	0xb
	.2byte	0x983
	.4byte	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0xb
	.2byte	0x985
	.4byte	0x1f98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f6c
	.uleb128 0x18
	.4byte	.LASF428
	.byte	0xb
	.2byte	0x987
	.4byte	0x1f6c
	.uleb128 0x1c
	.4byte	.LASF471
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x1fe8
	.uleb128 0x1d
	.4byte	.LASF429
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1d
	.4byte	.LASF430
	.byte	0xb
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF431
	.byte	0xb
	.2byte	0x993
	.4byte	0x2a1
	.uleb128 0x1d
	.4byte	.LASF432
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF433
	.byte	0xb
	.2byte	0x997
	.4byte	0x1faa
	.uleb128 0x12
	.4byte	.LASF434
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x21a8
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0xb
	.2byte	0x99f
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF435
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.4byte	.LASF436
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.4byte	.LASF437
	.byte	0xb
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.4byte	.LASF438
	.byte	0xb
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.4byte	.LASF439
	.byte	0xb
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x13
	.4byte	.LASF440
	.byte	0xb
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x1e58
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x21a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.4byte	.LASF441
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x21a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x13
	.4byte	.LASF442
	.byte	0xb
	.2byte	0x9b7
	.4byte	0x1b03
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x13
	.4byte	.LASF443
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x1e70
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x13
	.4byte	.LASF444
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1b88
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x13
	.4byte	.LASF445
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x13
	.4byte	.LASF446
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x21b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x13
	.4byte	.LASF447
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x13
	.4byte	.LASF261
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xe19
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x13
	.4byte	.LASF448
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x1f9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x13
	.4byte	.LASF449
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x13
	.4byte	.LASF450
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x13
	.4byte	.LASF451
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x13
	.4byte	.LASF452
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x13
	.4byte	.LASF453
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x21b9
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1fe8
	.uleb128 0x18
	.4byte	.LASF454
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x1ff4
	.uleb128 0x14
	.4byte	.LASF455
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x2305
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF456
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF457
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF458
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.4byte	.LASF459
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.4byte	.LASF460
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.4byte	.LASF461
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x2305
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x13
	.4byte	.LASF462
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x230b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.4byte	.LASF463
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF464
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF465
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF466
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x2311
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF467
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x13
	.4byte	.LASF468
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x13
	.4byte	.LASF292
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x2311
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x13
	.4byte	.LASF469
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x2328
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x13
	.4byte	.LASF403
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x2339
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x13
	.4byte	.LASF396
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e18
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21bf
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x2328
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x2339
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x234a
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF470
	.byte	0xb
	.2byte	0xa05
	.4byte	0x21cb
	.uleb128 0xb
	.4byte	0x1eb1
	.4byte	0x2367
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x234a
	.uleb128 0x1c
	.4byte	.LASF472
	.byte	0x4
	.byte	0x15
	.2byte	0x490
	.4byte	0x23cd
	.uleb128 0x1f
	.string	"U8"
	.byte	0x15
	.2byte	0x492
	.4byte	0x23cd
	.uleb128 0x1f
	.string	"S8"
	.byte	0x15
	.2byte	0x493
	.4byte	0x23d2
	.uleb128 0x1f
	.string	"U16"
	.byte	0x15
	.2byte	0x494
	.4byte	0x23d7
	.uleb128 0x1f
	.string	"S16"
	.byte	0x15
	.2byte	0x495
	.4byte	0x23dc
	.uleb128 0x1f
	.string	"U32"
	.byte	0x15
	.2byte	0x496
	.4byte	0x23e1
	.uleb128 0x1f
	.string	"S32"
	.byte	0x15
	.2byte	0x497
	.4byte	0x23e6
	.uleb128 0x1f
	.string	"F32"
	.byte	0x15
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
	.uleb128 0x18
	.4byte	.LASF473
	.byte	0x15
	.2byte	0x499
	.4byte	0x236d
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF480
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x24b6
	.uleb128 0x21
	.4byte	.LASF477
	.byte	0x1
	.byte	0x37
	.4byte	0x7a
	.uleb128 0x22
	.4byte	.LASF474
	.byte	0x1
	.byte	0x37
	.4byte	0x7a
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF475
	.byte	0x1
	.byte	0x37
	.4byte	0x7a
	.4byte	.LLST2
	.uleb128 0x23
	.string	"tr"
	.byte	0x1
	.byte	0x38
	.4byte	0x1f35
	.4byte	.LLST3
	.uleb128 0x24
	.string	"top"
	.byte	0x1
	.byte	0x39
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x25
	.4byte	.LASF476
	.byte	0x1
	.byte	0x39
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.byte	0x3a
	.4byte	0x1ad2
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.uleb128 0x22
	.4byte	.LASF478
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x23
	.string	"dir"
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF479
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.4byte	.LLST7
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST8
	.4byte	0x2546
	.uleb128 0x23
	.string	"vel"
	.byte	0x1
	.byte	0x7c
	.4byte	0x1b88
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF482
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.LASF483
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0x22
	.4byte	.LASF484
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LASF485
	.byte	0x1
	.byte	0x7e
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.4byte	.LASF486
	.byte	0x1
	.byte	0x7e
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.4byte	.LASF487
	.byte	0x1
	.byte	0x7f
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x25
	.4byte	.LASF488
	.byte	0x1
	.byte	0x80
	.4byte	0x1f35
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF489
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2595
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF490
	.byte	0x1
	.byte	0xc1
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF491
	.byte	0x1
	.byte	0xc1
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LASF492
	.byte	0x1
	.byte	0xc1
	.4byte	0x7a
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST16
	.4byte	0x2602
	.uleb128 0x28
	.4byte	.LASF504
	.byte	0x1
	.byte	0xcf
	.4byte	0x2602
	.4byte	.LLST17
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xd1
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LASF490
	.byte	0x1
	.byte	0xd2
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x22
	.4byte	.LASF494
	.byte	0x1
	.byte	0xd2
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.LASF491
	.byte	0x1
	.byte	0xd2
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF492
	.byte	0x1
	.byte	0xd2
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF495
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST21
	.4byte	0x2631
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0xe7
	.4byte	0x7a
	.4byte	.LLST22
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF496
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST23
	.4byte	0x26b1
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	.LASF497
	.byte	0x1
	.byte	0xfa
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF482
	.byte	0x1
	.byte	0xfb
	.4byte	0x7a
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	.LASF483
	.byte	0x1
	.byte	0xfb
	.4byte	0x7a
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	.LASF498
	.byte	0x1
	.byte	0xfb
	.4byte	0x7a
	.4byte	.LLST27
	.uleb128 0x22
	.4byte	.LASF490
	.byte	0x1
	.byte	0xfb
	.4byte	0x7a
	.4byte	.LLST28
	.uleb128 0x22
	.4byte	.LASF491
	.byte	0x1
	.byte	0xfb
	.4byte	0x7a
	.4byte	.LLST29
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x133
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST30
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x146
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST31
	.4byte	0x271f
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x148
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x2c
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x149
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x14a
	.4byte	0x7a
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x14a
	.4byte	0x7a
	.4byte	.LLST34
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST35
	.4byte	0x274a
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x181
	.4byte	0x2ac
	.4byte	.LLST36
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST37
	.4byte	0x279f
	.uleb128 0x2e
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x279f
	.4byte	.LLST38
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x2f
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x2ac
	.uleb128 0x2d
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x41
	.4byte	.LLST40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe0e
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF530
	.byte	0x1
	.2byte	0x1e5
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST41
	.4byte	0x27fe
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x41
	.4byte	.LLST42
	.uleb128 0x2b
	.string	"cmd"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x66
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x1ed
	.4byte	.L99
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x25b
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST45
	.4byte	0x2827
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x25d
	.4byte	0x41
	.4byte	.LLST46
	.byte	0
	.uleb128 0x25
	.4byte	.LASF509
	.byte	0x1
	.byte	0x1e
	.4byte	0x2ac
	.byte	0x5
	.byte	0x3
	.4byte	forward
	.uleb128 0x25
	.4byte	.LASF510
	.byte	0x1
	.byte	0x1e
	.4byte	0x2ac
	.byte	0x5
	.byte	0x3
	.4byte	right
	.uleb128 0x24
	.string	"up"
	.byte	0x1
	.byte	0x1e
	.4byte	0x2ac
	.byte	0x5
	.byte	0x3
	.4byte	up
	.uleb128 0x32
	.4byte	.LASF511
	.byte	0x2
	.byte	0x73
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF512
	.byte	0x5
	.byte	0x28
	.4byte	0x2ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"svs"
	.byte	0x10
	.byte	0xce
	.4byte	0x14d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"sv"
	.byte	0x10
	.byte	0xcf
	.4byte	0x1699
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF513
	.byte	0x10
	.byte	0xd1
	.4byte	0x2899
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16c5
	.uleb128 0x34
	.4byte	.LASF514
	.byte	0x1
	.byte	0x18
	.4byte	0x1682
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_player
	.uleb128 0x32
	.4byte	.LASF515
	.byte	0x14
	.byte	0xa2
	.4byte	0x1f61
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.4byte	.LASF516
	.byte	0xb
	.2byte	0xc2c
	.4byte	0x1b09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x36
	.4byte	.LASF517
	.byte	0x15
	.2byte	0x548
	.4byte	0x28df
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	0x28e4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23eb
	.uleb128 0x36
	.4byte	.LASF518
	.byte	0x6
	.2byte	0x14c
	.4byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF519
	.byte	0x1
	.byte	0x1a
	.4byte	0x3ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF520
	.byte	0x1
	.byte	0x1b
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_edgefriction
	.uleb128 0x32
	.4byte	.LASF521
	.byte	0x1
	.byte	0x1c
	.4byte	0x3ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF289
	.byte	0x1
	.byte	0x20
	.4byte	0x2ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wishdir
	.uleb128 0x34
	.4byte	.LASF498
	.byte	0x1
	.byte	0x21
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wishspeed
	.uleb128 0x34
	.4byte	.LASF42
	.byte	0x1
	.byte	0x24
	.4byte	0x1b88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	angles
	.uleb128 0x34
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.4byte	0x1b88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	origin
	.uleb128 0x34
	.4byte	.LASF210
	.byte	0x1
	.byte	0x26
	.4byte	0x1b88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	velocity
	.uleb128 0x34
	.4byte	.LASF522
	.byte	0x1
	.byte	0x28
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	onground
	.uleb128 0x38
	.string	"cmd"
	.byte	0x1
	.byte	0x2a
	.4byte	0xe0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cmd
	.uleb128 0x34
	.4byte	.LASF523
	.byte	0x1
	.byte	0x2c
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_idealpitchscale
	.uleb128 0x34
	.4byte	.LASF524
	.byte	0x1
	.byte	0xa7
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_maxspeed
	.uleb128 0x34
	.4byte	.LASF525
	.byte	0x1
	.byte	0xa8
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_accelerate
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x37
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 224
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 224
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x9
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x9
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	velocity
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-1-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	sv_maxspeed+12
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cmd+12
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cmd+12
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cmd+16
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
.LASF69:
	.string	"canSend"
.LASF52:
	.string	"pflags"
.LASF235:
	.string	"button0"
.LASF263:
	.string	"message"
.LASF319:
	.string	"reliable_datagram_buf"
.LASF426:
	.string	"screenrect_s"
.LASF428:
	.string	"screenrect_t"
.LASF364:
	.string	"vecs"
.LASF200:
	.string	"upmove"
.LASF244:
	.string	"team"
.LASF249:
	.string	"waterlevel"
.LASF361:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF104:
	.string	"entity_s"
.LASF196:
	.string	"entity_t"
.LASF462:
	.string	"lastlight"
.LASF150:
	.string	"numplanes"
.LASF208:
	.string	"solid"
.LASF309:
	.string	"models"
.LASF120:
	.string	"frame_start_time"
.LASF115:
	.string	"lightTimestamp"
.LASF401:
	.string	"binormals"
.LASF346:
	.string	"alternate_anims"
.LASF327:
	.string	"lightnormalindex"
.LASF360:
	.string	"samples"
.LASF241:
	.string	"idealpitch"
.LASF187:
	.string	"lastshadowonly"
.LASF377:
	.string	"lastclipnode"
.LASF92:
	.string	"entnext"
.LASF63:
	.string	"sa_data"
.LASF119:
	.string	"topnode"
.LASF330:
	.string	"mvertex_t"
.LASF531:
	.string	"nextmsg"
.LASF525:
	.string	"sv_accelerate"
.LASF298:
	.string	"ss_loading"
.LASF25:
	.string	"next"
.LASF413:
	.string	"plane_t"
.LASF190:
	.string	"vertices"
.LASF133:
	.string	"angles1"
.LASF134:
	.string	"angles2"
.LASF500:
	.string	"fmove"
.LASF276:
	.string	"maxclients"
.LASF451:
	.string	"cubescale"
.LASF419:
	.string	"endpos"
.LASF338:
	.string	"height"
.LASF357:
	.string	"styles"
.LASF461:
	.string	"lasthdr"
.LASF529:
	.string	"SV_WaterJump"
.LASF399:
	.string	"commands"
.LASF126:
	.string	"brushlightinstant"
.LASF246:
	.string	"teleport_time"
.LASF437:
	.string	"visible"
.LASF136:
	.string	"model_s"
.LASF266:
	.string	"noise1"
.LASF267:
	.string	"noise2"
.LASF268:
	.string	"noise3"
.LASF366:
	.string	"texture"
.LASF254:
	.string	"goalentity"
.LASF520:
	.string	"sv_edgefriction"
.LASF512:
	.string	"vec3_origin"
.LASF277:
	.string	"maxclientslimit"
.LASF168:
	.string	"hulls"
.LASF98:
	.string	"compressed_vis"
.LASF511:
	.string	"msg_badread"
.LASF62:
	.string	"sa_family"
.LASF421:
	.string	"key_game"
.LASF447:
	.string	"numVisSurf"
.LASF161:
	.string	"numsurfaces"
.LASF228:
	.string	"ammo_rockets"
.LASF262:
	.string	"movedir"
.LASF251:
	.string	"ideal_yaw"
.LASF40:
	.string	"vec_t"
.LASF215:
	.string	"touch"
.LASF243:
	.string	"enemy"
.LASF147:
	.string	"nummodelsurfaces"
.LASF194:
	.string	"triplanes"
.LASF279:
	.string	"serverflags"
.LASF87:
	.string	"src_command"
.LASF367:
	.string	"mtexinfo_t"
.LASF13:
	.string	"byte"
.LASF434:
	.string	"shadowlight_s"
.LASF454:
	.string	"shadowlight_t"
.LASF219:
	.string	"groundentity"
.LASF227:
	.string	"ammo_nails"
.LASF271:
	.string	"free"
.LASF514:
	.string	"sv_player"
.LASF232:
	.string	"chain"
.LASF102:
	.string	"index"
.LASF515:
	.string	"key_dest"
.LASF105:
	.string	"forcelink"
.LASF495:
	.string	"DropPunchAngle"
.LASF42:
	.string	"angles"
.LASF391:
	.string	"boundingradius"
.LASF103:
	.string	"ambient_sound_level"
.LASF162:
	.string	"surfaces"
.LASF140:
	.string	"synctype"
.LASF300:
	.string	"server_state_t"
.LASF125:
	.string	"aliasframeinstant"
.LASF75:
	.string	"ackSequence"
.LASF154:
	.string	"vertexes"
.LASF79:
	.string	"sendMessage"
.LASF201:
	.string	"usercmd_t"
.LASF129:
	.string	"translate_start_time"
.LASF270:
	.string	"edict_s"
.LASF275:
	.string	"edict_t"
.LASF459:
	.string	"lastvorg"
.LASF425:
	.string	"keydest_t"
.LASF209:
	.string	"oldorigin"
.LASF314:
	.string	"edicts"
.LASF478:
	.string	"step"
.LASF299:
	.string	"ss_active"
.LASF240:
	.string	"v_angle"
.LASF65:
	.string	"connecttime"
.LASF51:
	.string	"light_lev"
.LASF28:
	.string	"maxs"
.LASF296:
	.string	"old_frags"
.LASF138:
	.string	"type"
.LASF407:
	.string	"aliashdr_t"
.LASF158:
	.string	"nodes"
.LASF340:
	.string	"gl_lumitex"
.LASF91:
	.string	"entity"
.LASF212:
	.string	"punchangle"
.LASF348:
	.string	"msurface_s"
.LASF373:
	.string	"msurface_t"
.LASF113:
	.string	"syncbase"
.LASF486:
	.string	"stop"
.LASF452:
	.string	"haloalpha"
.LASF205:
	.string	"absmax"
.LASF177:
	.string	"firstsurface"
.LASF439:
	.string	"castShadow"
.LASF295:
	.string	"spawn_parms"
.LASF247:
	.string	"armortype"
.LASF516:
	.string	"causticschain"
.LASF259:
	.string	"dmg_save"
.LASF176:
	.string	"plane"
.LASF474:
	.string	"sinval"
.LASF181:
	.string	"updateframe"
.LASF122:
	.string	"blend"
.LASF1:
	.string	"unsigned char"
.LASF278:
	.string	"clients"
.LASF492:
	.string	"currentspeed"
.LASF481:
	.string	"SV_UserFriction"
.LASF185:
	.string	"lastblend"
.LASF448:
	.string	"scizz"
.LASF470:
	.string	"aliaslightinstant_t"
.LASF10:
	.string	"float"
.LASF46:
	.string	"skin"
.LASF257:
	.string	"targetname"
.LASF468:
	.string	"tshalfangles"
.LASF33:
	.string	"numfaces"
.LASF352:
	.string	"light_s"
.LASF353:
	.string	"light_t"
.LASF412:
	.string	"modtype_t"
.LASF256:
	.string	"target"
.LASF403:
	.string	"indecies"
.LASF349:
	.string	"firstedge"
.LASF483:
	.string	"newspeed"
.LASF123:
	.string	"pose1"
.LASF124:
	.string	"pose2"
.LASF444:
	.string	"volumeVerts"
.LASF269:
	.string	"entvars_t"
.LASF183:
	.string	"lastpose1"
.LASF184:
	.string	"lastpose2"
.LASF230:
	.string	"items"
.LASF16:
	.string	"allowoverflow"
.LASF19:
	.string	"maxsize"
.LASF86:
	.string	"src_client"
.LASF441:
	.string	"entvis"
.LASF379:
	.string	"clip_maxs"
.LASF358:
	.string	"cached_light"
.LASF368:
	.string	"glpoly_s"
.LASF372:
	.string	"glpoly_t"
.LASF31:
	.string	"visleafs"
.LASF293:
	.string	"ping_times"
.LASF518:
	.string	"host_frametime"
.LASF143:
	.string	"clipbox"
.LASF427:
	.string	"coords"
.LASF94:
	.string	"contents"
.LASF523:
	.string	"sv_idealpitchscale"
.LASF297:
	.string	"server_static_t"
.LASF320:
	.string	"signon"
.LASF317:
	.string	"datagram_buf"
.LASF519:
	.string	"sv_friction"
.LASF489:
	.string	"SV_Accelerate"
.LASF389:
	.string	"scale"
.LASF112:
	.string	"efrag"
.LASF405:
	.string	"texels"
.LASF188:
	.string	"lastpaliashdr"
.LASF214:
	.string	"size"
.LASF281:
	.string	"client_s"
.LASF323:
	.string	"client_t"
.LASF261:
	.string	"owner"
.LASF43:
	.string	"modelindex"
.LASF130:
	.string	"origin1"
.LASF404:
	.string	"gl_lumatex"
.LASF415:
	.string	"startsolid"
.LASF178:
	.string	"aliasframeinstant_s"
.LASF344:
	.string	"anim_max"
.LASF204:
	.string	"absmin"
.LASF422:
	.string	"key_console"
.LASF250:
	.string	"watertype"
.LASF307:
	.string	"worldmodel"
.LASF457:
	.string	"lastlorg"
.LASF274:
	.string	"freetime"
.LASF386:
	.string	"maliasframedesc_t"
.LASF23:
	.string	"link_s"
.LASF26:
	.string	"link_t"
.LASF156:
	.string	"edges"
.LASF182:
	.string	"paliashdr"
.LASF286:
	.string	"sendsignon"
.LASF84:
	.string	"addr"
.LASF316:
	.string	"datagram"
.LASF106:
	.string	"update_type"
.LASF390:
	.string	"scale_origin"
.LASF116:
	.string	"dlightframe"
.LASF477:
	.string	"angleval"
.LASF418:
	.string	"fraction"
.LASF347:
	.string	"offsets"
.LASF32:
	.string	"firstface"
.LASF131:
	.string	"origin2"
.LASF522:
	.string	"onground"
.LASF283:
	.string	"spawned"
.LASF469:
	.string	"triangleVis"
.LASF420:
	.string	"trace_t"
.LASF217:
	.string	"blocked"
.LASF186:
	.string	"lastent"
.LASF121:
	.string	"frame_interval"
.LASF336:
	.string	"texture_s"
.LASF287:
	.string	"last_message"
.LASF66:
	.string	"lastMessageTime"
.LASF424:
	.string	"key_menu"
.LASF167:
	.string	"marksurfaces"
.LASF326:
	.string	"synctype_t"
.LASF17:
	.string	"overflowed"
.LASF288:
	.string	"netconnection"
.LASF137:
	.string	"needload"
.LASF438:
	.string	"isStatic"
.LASF406:
	.string	"frames"
.LASF356:
	.string	"lightmaptexturenum"
.LASF498:
	.string	"wishspeed"
.LASF442:
	.string	"visSurf"
.LASF59:
	.string	"value"
.LASF341:
	.string	"texturechain"
.LASF118:
	.string	"trivial_accept"
.LASF179:
	.string	"_next"
.LASF239:
	.string	"fixangle"
.LASF85:
	.string	"address"
.LASF255:
	.string	"spawnflags"
.LASF527:
	.string	"d:/Data/Nintendo/TenebraeGX/src/sv_user.c"
.LASF355:
	.string	"shadowchain"
.LASF376:
	.string	"firstclipnode"
.LASF76:
	.string	"sendSequence"
.LASF350:
	.string	"texturemins"
.LASF304:
	.string	"lastcheck"
.LASF203:
	.string	"string_t"
.LASF248:
	.string	"armorvalue"
.LASF114:
	.string	"skinnum"
.LASF245:
	.string	"max_health"
.LASF343:
	.string	"anim_min"
.LASF152:
	.string	"leafs"
.LASF506:
	.string	"angle"
.LASF308:
	.string	"model_precache"
.LASF509:
	.string	"forward"
.LASF30:
	.string	"headnode"
.LASF144:
	.string	"clipmins"
.LASF252:
	.string	"yaw_speed"
.LASF301:
	.string	"paused"
.LASF400:
	.string	"triangles"
.LASF14:
	.string	"qboolean"
.LASF226:
	.string	"ammo_shells"
.LASF55:
	.string	"name"
.LASF385:
	.string	"bboxmax"
.LASF423:
	.string	"key_message"
.LASF218:
	.string	"nextthink"
.LASF517:
	.string	"wgPipe"
.LASF93:
	.string	"mleaf_s"
.LASF375:
	.string	"mleaf_t"
.LASF74:
	.string	"driverdata"
.LASF110:
	.string	"msg_angles"
.LASF443:
	.string	"volumeCmds"
.LASF505:
	.string	"move"
.LASF165:
	.string	"numclipnodes"
.LASF291:
	.string	"edict"
.LASF306:
	.string	"modelname"
.LASF258:
	.string	"dmg_take"
.LASF3:
	.string	"short unsigned int"
.LASF213:
	.string	"classname"
.LASF0:
	.string	"signed char"
.LASF284:
	.string	"dropasap"
.LASF199:
	.string	"sidemove"
.LASF148:
	.string	"numsubmodels"
.LASF467:
	.string	"tslights"
.LASF494:
	.string	"wishspd"
.LASF485:
	.string	"start"
.LASF331:
	.string	"mplane_s"
.LASF335:
	.string	"mplane_t"
.LASF493:
	.string	"SV_AirAccelerate"
.LASF333:
	.string	"dist"
.LASF285:
	.string	"privileged"
.LASF193:
	.string	"binomials"
.LASF530:
	.string	"SV_ReadClientMessage"
.LASF302:
	.string	"loadgame"
.LASF328:
	.string	"trivertx_t"
.LASF163:
	.string	"numsurfedges"
.LASF41:
	.string	"vec3_t"
.LASF402:
	.string	"texcoords"
.LASF169:
	.string	"numtextures"
.LASF90:
	.string	"leafnext"
.LASF100:
	.string	"firstmarksurface"
.LASF35:
	.string	"planenum"
.LASF202:
	.string	"func_t"
.LASF61:
	.string	"qsockaddr"
.LASF315:
	.string	"state"
.LASF359:
	.string	"cached_dlight"
.LASF475:
	.string	"cosval"
.LASF499:
	.string	"SV_AirMove"
.LASF408:
	.string	"mod_brush"
.LASF473:
	.string	"WGPipe"
.LASF387:
	.string	"ident"
.LASF392:
	.string	"eyeposition"
.LASF173:
	.string	"entities"
.LASF501:
	.string	"smove"
.LASF476:
	.string	"bottom"
.LASF487:
	.string	"friction"
.LASF433:
	.string	"lightcmd_t"
.LASF471:
	.string	"lightcmd_u"
.LASF108:
	.string	"msgtime"
.LASF440:
	.string	"halo"
.LASF458:
	.string	"lasteangles"
.LASF429:
	.string	"asInt"
.LASF290:
	.string	"msgbuf"
.LASF206:
	.string	"ltime"
.LASF22:
	.string	"sizebuf_s"
.LASF21:
	.string	"sizebuf_t"
.LASF507:
	.string	"bits"
.LASF303:
	.string	"time"
.LASF416:
	.string	"inopen"
.LASF20:
	.string	"cursize"
.LASF211:
	.string	"avelocity"
.LASF157:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF197:
	.string	"viewangles"
.LASF170:
	.string	"textures"
.LASF322:
	.string	"server_t"
.LASF53:
	.string	"entity_state_t"
.LASF384:
	.string	"bboxmin"
.LASF198:
	.string	"forwardmove"
.LASF463:
	.string	"lightpos"
.LASF238:
	.string	"impulse"
.LASF101:
	.string	"nummarksurfaces"
.LASF488:
	.string	"trace"
.LASF503:
	.string	"SV_ReadClientMove"
.LASF383:
	.string	"interval"
.LASF449:
	.string	"filtercube"
.LASF96:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF210:
	.string	"velocity"
.LASF139:
	.string	"numframes"
.LASF497:
	.string	"wishvel"
.LASF329:
	.string	"position"
.LASF234:
	.string	"view_ofs"
.LASF70:
	.string	"sendNext"
.LASF7:
	.string	"long unsigned int"
.LASF242:
	.string	"netname"
.LASF453:
	.string	"oldlightorigin"
.LASF192:
	.string	"tangents"
.LASF54:
	.string	"cvar_s"
.LASF60:
	.string	"cvar_t"
.LASF472:
	.string	"_wgpipe"
.LASF362:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF153:
	.string	"numvertexes"
.LASF409:
	.string	"mod_sprite"
.LASF435:
	.string	"baseColor"
.LASF382:
	.string	"numposes"
.LASF351:
	.string	"extents"
.LASF83:
	.string	"receiveMessage"
.LASF189:
	.string	"shadowonly"
.LASF48:
	.string	"color"
.LASF371:
	.string	"firstvertex"
.LASF117:
	.string	"dlightbits"
.LASF260:
	.string	"dmg_inflictor"
.LASF431:
	.string	"asVec"
.LASF253:
	.string	"aiment"
.LASF191:
	.string	"normals"
.LASF394:
	.string	"skinwidth"
.LASF38:
	.string	"cache_user_s"
.LASF39:
	.string	"cache_user_t"
.LASF318:
	.string	"reliable_datagram"
.LASF231:
	.string	"takedamage"
.LASF180:
	.string	"lockframe"
.LASF342:
	.string	"anim_total"
.LASF57:
	.string	"archive"
.LASF417:
	.string	"inwater"
.LASF171:
	.string	"visdata"
.LASF89:
	.string	"leaf"
.LASF397:
	.string	"poseverts"
.LASF77:
	.string	"unreliableSendSequence"
.LASF436:
	.string	"brightness"
.LASF395:
	.string	"skinheight"
.LASF365:
	.string	"mipadjust"
.LASF484:
	.string	"control"
.LASF272:
	.string	"area"
.LASF71:
	.string	"driver"
.LASF222:
	.string	"weapon"
.LASF313:
	.string	"max_edicts"
.LASF496:
	.string	"SV_WaterMove"
.LASF99:
	.string	"efrags"
.LASF88:
	.string	"efrag_s"
.LASF135:
	.string	"efrag_t"
.LASF491:
	.string	"accelspeed"
.LASF225:
	.string	"currentammo"
.LASF233:
	.string	"deadflag"
.LASF36:
	.string	"children"
.LASF50:
	.string	"style"
.LASF9:
	.string	"double"
.LASF324:
	.string	"ST_SYNC"
.LASF450:
	.string	"rspeed"
.LASF159:
	.string	"numtexinfo"
.LASF264:
	.string	"sounds"
.LASF216:
	.string	"think"
.LASF446:
	.string	"lightCmds"
.LASF155:
	.string	"numedges"
.LASF195:
	.string	"lightinstant"
.LASF339:
	.string	"gl_texturenum"
.LASF68:
	.string	"disconnected"
.LASF482:
	.string	"speed"
.LASF273:
	.string	"num_leafs"
.LASF363:
	.string	"medge_t"
.LASF172:
	.string	"lightdata"
.LASF45:
	.string	"colormap"
.LASF18:
	.string	"data"
.LASF430:
	.string	"asFloat"
.LASF510:
	.string	"right"
.LASF95:
	.string	"visframe"
.LASF305:
	.string	"lastchecktime"
.LASF345:
	.string	"anim_next"
.LASF292:
	.string	"colors"
.LASF370:
	.string	"neighbours"
.LASF223:
	.string	"weaponmodel"
.LASF151:
	.string	"planes"
.LASF337:
	.string	"width"
.LASF27:
	.string	"mins"
.LASF332:
	.string	"normal"
.LASF73:
	.string	"socket"
.LASF109:
	.string	"msg_origins"
.LASF81:
	.string	"unreliableReceiveSequence"
.LASF480:
	.string	"SV_SetIdealPitch"
.LASF464:
	.string	"vieworg"
.LASF528:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF381:
	.string	"firstpose"
.LASF521:
	.string	"sv_stopspeed"
.LASF37:
	.string	"dclipnode_t"
.LASF334:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF294:
	.string	"num_pings"
.LASF97:
	.string	"parent"
.LASF502:
	.string	"SV_ClientThink"
.LASF466:
	.string	"extvertices"
.LASF207:
	.string	"movetype"
.LASF72:
	.string	"landriver"
.LASF312:
	.string	"num_edicts"
.LASF310:
	.string	"sound_precache"
.LASF145:
	.string	"clipmaxs"
.LASF236:
	.string	"button1"
.LASF237:
	.string	"button2"
.LASF393:
	.string	"numskins"
.LASF47:
	.string	"effects"
.LASF445:
	.string	"numVolumeVerts"
.LASF380:
	.string	"hull_t"
.LASF432:
	.string	"asVoid"
.LASF127:
	.string	"numleafs"
.LASF221:
	.string	"frags"
.LASF111:
	.string	"model"
.LASF49:
	.string	"alpha"
.LASF369:
	.string	"numverts"
.LASF378:
	.string	"clip_mins"
.LASF479:
	.string	"steps"
.LASF224:
	.string	"weaponframe"
.LASF396:
	.string	"numtris"
.LASF504:
	.string	"wishveloc"
.LASF5:
	.string	"long long int"
.LASF508:
	.string	"SV_RunClients"
.LASF220:
	.string	"health"
.LASF56:
	.string	"string"
.LASF460:
	.string	"lastlradius"
.LASF265:
	.string	"noise"
.LASF465:
	.string	"lastframeinstant"
.LASF410:
	.string	"mod_alias"
.LASF80:
	.string	"receiveSequence"
.LASF107:
	.string	"baseline"
.LASF524:
	.string	"sv_maxspeed"
.LASF280:
	.string	"changelevel_issued"
.LASF411:
	.string	"mod_alias3"
.LASF160:
	.string	"texinfo"
.LASF166:
	.string	"clipnodes"
.LASF229:
	.string	"ammo_cells"
.LASF128:
	.string	"leafnums"
.LASF354:
	.string	"polys"
.LASF34:
	.string	"dmodel_t"
.LASF146:
	.string	"firstmodelsurface"
.LASF82:
	.string	"receiveMessageLength"
.LASF414:
	.string	"allsolid"
.LASF149:
	.string	"submodels"
.LASF29:
	.string	"origin"
.LASF78:
	.string	"sendMessageLength"
.LASF174:
	.string	"cache"
.LASF526:
	.string	"GNU C 4.6.3"
.LASF388:
	.string	"version"
.LASF164:
	.string	"surfedges"
.LASF64:
	.string	"qsocket_s"
.LASF325:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF175:
	.string	"mnode_s"
.LASF374:
	.string	"mnode_t"
.LASF67:
	.string	"lastSendTime"
.LASF513:
	.string	"host_client"
.LASF282:
	.string	"active"
.LASF311:
	.string	"lightstyles"
.LASF2:
	.string	"short int"
.LASF321:
	.string	"signon_buf"
.LASF289:
	.string	"wishdir"
.LASF24:
	.string	"prev"
.LASF58:
	.string	"server"
.LASF44:
	.string	"frame"
.LASF456:
	.string	"lasteorg"
.LASF398:
	.string	"posedata"
.LASF141:
	.string	"flags"
.LASF132:
	.string	"rotate_start_time"
.LASF490:
	.string	"addspeed"
.LASF142:
	.string	"radius"
.LASF455:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
