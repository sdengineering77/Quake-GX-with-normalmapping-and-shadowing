	.file	"sv_phys.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl SV_CheckAllEnts
	.type	SV_CheckAllEnts, @function
SV_CheckAllEnts:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/sv_phys.c"
	.loc 1 62 0
	.cfi_startproc
	stwu 1,-48(1)
.LCFI0:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 29,28(1)
	.loc 1 67 0
	lis 29,sv@ha
	.cfi_offset 29, -20
	.cfi_register 65, 0
	la 29,sv@l(29)
	.loc 1 62 0
	stw 0,52(1)
	.loc 1 68 0
	lwz 0,3492(29)
	.cfi_offset 65, 4
	.loc 1 62 0
	stw 28,24(1)
	.loc 1 67 0
	lis 28,pr_edict_size@ha
	.cfi_offset 28, -24
	.loc 1 68 0
	cmpwi 7,0,1
	.loc 1 62 0
	stw 31,36(1)
	stfd 31,40(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 30,32(1)
	.loc 1 67 0
	lwz 31,3500(29)
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 63, -8
	.cfi_offset 31, -12
	lwz 0,pr_edict_size@l(28)
.LVL0:
	.loc 1 68 0
	ble- 7,.L1
	.loc 1 73 0
	lis 9,.LC3@ha
	.loc 1 81 0
	lis 25,.LC2@ha
	.loc 1 73 0
	lfs 31,.LC3@l(9)
	.loc 1 67 0
	add 31,31,0
	.loc 1 68 0
	li 30,1
	la 28,pr_edict_size@l(28)
.LVL1:
	.loc 1 72 0
	lis 27,.LC0@ha
	.loc 1 77 0
	lis 26,.LC1@ha
	.loc 1 81 0
	la 25,.LC2@l(25)
.LVL2:
.L4:
	.loc 1 70 0
	lbz 0,0(31)
	.loc 1 68 0
	addi 30,30,1
	.loc 1 70 0
	cmpwi 7,0,0
	bne- 7,.L3
	.loc 1 72 0
	lfs 0,636(31)
	lfs 13,.LC0@l(27)
	fcmpu 7,0,13
	beq- 7,.L3
	.loc 1 73 0
	fcmpu 7,0,31
	beq- 7,.L3
	.loc 1 77 0
	lfs 13,.LC1@l(26)
	fcmpu 7,0,13
	bne- 7,.L7
.L3:
.LVL3:
	.loc 1 68 0
	lwz 9,3492(29)
	lwz 0,0(28)
	cmpw 7,9,30
	add 31,31,0
.LVL4:
	bgt+ 7,.L4
.LVL5:
.L1:
	.loc 1 83 0
	lwz 0,52(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L7:
.LCFI2:
	.cfi_restore_state
	.loc 1 80 0
	mr 3,31
	bl SV_TestEntityPosition
	cmpwi 7,3,0
	.loc 1 81 0
	mr 3,25
	.loc 1 80 0
	beq- 7,.L3
	.loc 1 81 0
	crxor 6,6,6
	bl Con_Printf
	b .L3
	.cfi_endproc
.LFE38:
	.size	SV_CheckAllEnts, .-SV_CheckAllEnts
	.align 2
	.globl SV_CheckVelocity
	.type	SV_CheckVelocity, @function
SV_CheckVelocity:
.LFB39:
	.loc 1 91 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-40(1)
.LCFI3:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 24,8(1)
	.loc 1 102 0
	lis 24,.LC4@ha
	.cfi_offset 24, -32
	.loc 1 91 0
	stw 25,12(1)
	.loc 1 107 0
	lis 25,.LC5@ha
	.cfi_offset 25, -28
	.loc 1 91 0
	stw 28,24(1)
	lis 28,nanmask@ha
	.cfi_offset 28, -16
	stw 0,44(1)
	la 28,nanmask@l(28)
	stw 26,16(1)
	.loc 1 102 0
	la 24,.LC4@l(24)
	.loc 1 91 0
	stw 27,20(1)
	.loc 1 102 0
	lis 26,pr_strings@ha
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 1 91 0
	stw 29,28(1)
	.loc 1 103 0
	li 27,0
	.loc 1 91 0
	stw 30,32(1)
	.loc 1 98 0
	mr 29,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.loc 1 91 0
	stw 31,36(1)
	.loc 1 91 0
	mr 30,3
	.loc 1 98 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 107 0
	la 25,.LC5@l(25)
.LVL7:
.L11:
	.loc 1 100 0
	addi 9,31,164
	lwz 0,0(28)
	slwi 9,9,2
	add 9,30,9
	lwz 9,12(9)
	and 9,0,9
	cmpw 7,0,9
	beq- 7,.L16
.L9:
	.loc 1 105 0
	addi 9,31,156
	slwi 9,9,2
	add 9,30,9
	lwz 9,20(9)
	and 9,0,9
	cmpw 7,9,0
	beq- 7,.L17
.L10:
.LVL8:
	.loc 1 98 0
	cmpwi 7,31,2
	addi 29,29,4
	addi 31,31,1
.LVL9:
	bne+ 7,.L11
	.loc 1 116 0
	addi 30,30,668
.LVL10:
	mr 3,30
	bl Length
.LVL11:
	.loc 1 117 0
	lis 9,.LANCHOR0+12@ha
	lfs 0,.LANCHOR0+12@l(9)
	fcmpu 7,0,1
	bnl+ 7,.L8
	.loc 1 119 0
	fdivs 1,0,1
.LVL12:
	mr 3,30
	mr 4,30
	bl VectorScale
.LVL13:
.L8:
	.loc 1 123 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL14:
	lwz 31,36(1)
.LVL15:
	addi 1,1,40
	.cfi_remember_state
.LCFI4:
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
.LVL16:
.L17:
.LCFI5:
	.cfi_restore_state
	.loc 1 107 0
	lwz 4,pr_strings@l(26)
	mr 3,25
	lwz 0,716(30)
	add 4,4,0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 108 0
	stw 27,644(29)
	b .L10
.L16:
	.loc 1 102 0
	lwz 0,716(30)
	mr 3,24
	lwz 4,pr_strings@l(26)
	add 4,4,0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 103 0
	stw 27,668(29)
	lwz 0,0(28)
	b .L9
	.cfi_endproc
.LFE39:
	.size	SV_CheckVelocity, .-SV_CheckVelocity
	.align 2
	.globl SV_RunThink
	.type	SV_RunThink, @function
SV_RunThink:
.LFB40:
	.loc 1 136 0
	.cfi_startproc
.LVL17:
	mflr 0
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 140 0
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	.loc 1 136 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 136 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 139 0
	lfs 0,788(3)
.LVL18:
	.loc 1 141 0
	li 3,1
.LVL19:
	.loc 1 140 0
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L19
	.loc 1 140 0 is_stmt 0 discriminator 1
	lis 9,sv@ha
	lis 11,host_frametime@ha
	la 9,sv@l(9)
	lfd 11,host_frametime@l(11)
	lfd 13,8(9)
	fmr 12,0
	fadd 11,13,11
	fcmpu 7,12,11
	bgt- 7,.L19
	.loc 1 143 0 is_stmt 1
	fcmpu 7,12,13
	bnl- 7,.L20
	.loc 1 144 0
	frsp 0,13
.LVL20:
.L20:
	.loc 1 149 0
	lwz 0,3500(9)
	.loc 1 148 0
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	.loc 1 147 0
	li 11,0
	.loc 1 149 0
	subf 0,0,31
	.loc 1 151 0
	lwz 3,780(31)
	.loc 1 147 0
	stw 11,788(31)
	.loc 1 149 0
	stw 0,112(9)
	.loc 1 150 0
	li 0,0
	.loc 1 148 0
	stfs 0,124(9)
	.loc 1 150 0
	stw 0,116(9)
	.loc 1 151 0
	bl PR_ExecuteProgram
.LVL21:
	.loc 1 152 0
	lbz 3,0(31)
	cntlzw 3,3
	srwi 3,3,5
.L19:
	.loc 1 153 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL22:
	mtlr 0
	addi 1,1,16
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE40:
	.size	SV_RunThink, .-SV_RunThink
	.align 2
	.globl SV_Impact
	.type	SV_Impact, @function
SV_Impact:
.LFB41:
	.loc 1 163 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-40(1)
.LCFI8:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	.loc 1 169 0
	lis 29,sv@ha
	.cfi_offset 29, -12
	.loc 1 163 0
	stw 0,44(1)
	.loc 1 169 0
	la 29,sv@l(29)
	.loc 1 163 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 170 0
	lwz 3,772(3)
.LVL24:
	.loc 1 169 0
	lfd 0,8(29)
	.loc 1 170 0
	cmpwi 7,3,0
	.loc 1 163 0
	stw 30,32(1)
	.loc 1 169 0
	frsp 0,0
	.loc 1 166 0
	lis 30,pr_global_struct@ha
	.cfi_offset 30, -8
	lwz 9,pr_global_struct@l(30)
	.loc 1 163 0
	stw 27,20(1)
	stw 28,24(1)
	.loc 1 166 0
	lwz 27,112(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL25:
	.loc 1 167 0
	lwz 28,116(9)
.LVL26:
	.loc 1 169 0
	stfs 0,124(9)
	.loc 1 170 0
	beq- 7,.L26
	.loc 1 170 0 is_stmt 0 discriminator 1
	lis 11,.LC3@ha
	lfs 13,640(31)
	lfs 0,.LC3@l(11)
	fcmpu 7,13,0
	bne- 7,.L28
.LVL27:
.L26:
	.loc 1 177 0 is_stmt 1
	lwz 3,772(4)
	cmpwi 7,3,0
	beq- 7,.L27
	.loc 1 177 0 is_stmt 0 discriminator 1
	lis 11,.LC3@ha
	lfs 13,640(4)
	lfs 0,.LC3@l(11)
	fcmpu 7,13,0
	bne- 7,.L29
.L27:
	.loc 1 186 0 is_stmt 1
	lwz 0,44(1)
	.loc 1 184 0
	stw 27,112(9)
	.loc 1 186 0
	mtlr 0
	.loc 1 185 0
	stw 28,116(9)
	.loc 1 186 0
	lwz 27,20(1)
.LVL28:
	lwz 28,24(1)
.LVL29:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL30:
	addi 1,1,40
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL31:
.L29:
.LCFI10:
	.cfi_restore_state
	.loc 1 179 0
	lwz 0,3500(29)
	.loc 1 180 0
	subf 31,0,31
.LVL32:
	.loc 1 179 0
	subf 4,0,4
	.loc 1 180 0
	stw 31,116(9)
	.loc 1 179 0
	stw 4,112(9)
	.loc 1 181 0
	bl PR_ExecuteProgram
	.loc 1 186 0
	lwz 0,44(1)
	.loc 1 181 0
	lwz 9,pr_global_struct@l(30)
	.loc 1 186 0
	mtlr 0
	lwz 29,28(1)
	.loc 1 184 0
	stw 27,112(9)
	.loc 1 185 0
	stw 28,116(9)
	.loc 1 186 0
	lwz 27,20(1)
.LVL33:
	lwz 28,24(1)
.LVL34:
	lwz 30,32(1)
.LVL35:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.LVL36:
.L28:
.LCFI12:
	.cfi_restore_state
	.loc 1 172 0
	lwz 0,3500(29)
	subf 11,0,31
	.loc 1 173 0
	subf 0,0,4
	.loc 1 172 0
	stw 11,112(9)
	.loc 1 173 0
	stw 0,116(9)
	.loc 1 174 0
	stw 4,8(1)
	bl PR_ExecuteProgram
.LVL37:
	lwz 9,pr_global_struct@l(30)
	lwz 4,8(1)
	b .L26
	.cfi_endproc
.LFE41:
	.size	SV_Impact, .-SV_Impact
	.align 2
	.globl ClipVelocity
	.type	ClipVelocity, @function
ClipVelocity:
.LFB42:
	.loc 1 200 0
	.cfi_startproc
.LVL38:
	.loc 1 205 0
	lis 9,.LC3@ha
	.loc 1 206 0
	lfs 0,8(4)
	.loc 1 205 0
	lfs 13,.LC3@l(9)
	.loc 1 200 0
	mr 9,3
	.loc 1 205 0
	fcmpu 7,0,13
	mfcr 3
	rlwinm 3,3,30,1
.LVL39:
	.loc 1 208 0
	bne- 7,.L31
	.loc 1 209 0
	ori 3,3,2
.LVL40:
.L31:
	.loc 1 211 0
	lfs 13,4(4)
	lis 11,.LC6@ha
	lfs 11,4(9)
	.loc 1 217 0
	lis 10,.LC7@ha
	.loc 1 211 0
	lfs 10,0(9)
	.loc 1 218 0
	li 0,0
	.loc 1 211 0
	fmuls 11,11,13
	lfs 13,0(4)
	lfs 12,8(9)
	fmadds 13,10,13,11
	.loc 1 217 0
	lfd 11,.LC6@l(11)
	.loc 1 211 0
	li 11,0
	fmadds 0,0,12,13
	fmuls 0,0,1
.LVL41:
.L35:
	.loc 1 199 0
	lfsx 13,4,11
	.loc 1 213 0
	cmpwi 7,11,8
	.loc 1 216 0
	lfsx 12,9,11
	.loc 1 199 0
	fneg 13,13
	.loc 1 216 0
	fmadds 13,13,0,12
	.loc 1 217 0
	fmr 12,13
	.loc 1 216 0
	stfsx 13,5,11
	.loc 1 217 0
	fcmpu 6,12,11
	bng- 6,.L32
	.loc 1 217 0 is_stmt 0 discriminator 1
	lfd 13,.LC7@l(10)
	fcmpu 6,12,13
	bnl- 6,.L32
	.loc 1 218 0 is_stmt 1
	stwx 0,5,11
.L32:
	.loc 1 213 0
	addi 11,11,4
.LVL42:
	bne+ 7,.L35
	.loc 1 222 0
	blr
	.cfi_endproc
.LFE42:
	.size	ClipVelocity, .-ClipVelocity
	.align 2
	.globl SV_FlyMove
	.type	SV_FlyMove, @function
SV_FlyMove:
.LFB43:
	.loc 1 239 0
	.cfi_startproc
.LVL43:
	mflr 0
	stwu 1,-304(1)
.LCFI13:
	.cfi_def_cfa_offset 304
	.cfi_register 65, 0
	.loc 1 263 0
	lis 9,.LC3@ha
	.loc 1 239 0
	stfd 28,272(1)
	stw 0,308(1)
	.loc 1 255 0
	li 0,4
	.cfi_offset 65, 4
	.cfi_offset 60, -32
	.loc 1 239 0
	stfd 26,256(1)
	.loc 1 255 0
	lfs 28,668(3)
	.loc 1 239 0
	stfd 27,264(1)
	.loc 1 255 0
	lfs 26,672(3)
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	fmr 11,28
	lfs 27,676(3)
	.loc 1 239 0
	stfd 29,280(1)
	.loc 1 259 0
	fmr 29,1
	.cfi_offset 61, -24
	.loc 1 239 0
	stfd 31,296(1)
	stw 18,192(1)
	.loc 1 288 0
	lis 18,.LC9@ha
	.cfi_offset 18, -112
	.cfi_offset 63, -8
	.loc 1 239 0
	stfd 25,248(1)
	.loc 1 288 0
	la 18,.LC9@l(18)
	.loc 1 239 0
	stfd 30,288(1)
	stw 16,184(1)
	stw 17,188(1)
	.loc 1 255 0
	stfs 28,32(1)
	stfs 26,36(1)
	stfs 27,40(1)
.LVL44:
	stw 0,180(1)
	.loc 1 263 0
	lfs 31,.LC3@l(9)
	.loc 1 239 0
	stw 19,196(1)
	.loc 1 295 0
	lis 19,.LC13@ha
	.cfi_offset 19, -108
	.cfi_offset 17, -116
	.cfi_offset 16, -120
	.cfi_offset 62, -16
	.cfi_offset 57, -56
	.loc 1 239 0
	stw 20,200(1)
	.loc 1 296 0
	lis 20,sv@ha
	.cfi_offset 20, -104
	.loc 1 239 0
	stw 21,204(1)
	.loc 1 293 0
	lis 21,.LC11@ha
	.cfi_offset 21, -100
	.loc 1 239 0
	stw 22,208(1)
	.loc 1 269 0
	addi 22,3,644
	.cfi_offset 22, -96
	.loc 1 239 0
	stw 23,212(1)
	.loc 1 269 0
	addi 23,3,736
	.cfi_offset 23, -92
	.loc 1 239 0
	stw 24,216(1)
	.loc 1 269 0
	addi 24,3,748
	.cfi_offset 24, -88
	.loc 1 239 0
	stw 25,220(1)
	.loc 1 290 0
	lis 25,.LC10@ha
	.cfi_offset 25, -84
	.loc 1 239 0
	stw 26,224(1)
	.loc 1 284 0
	lis 26,.LC8@ha
	.cfi_offset 26, -80
	.loc 1 239 0
	stw 27,228(1)
	mr 27,4
	.cfi_offset 27, -76
	stw 28,232(1)
	.loc 1 254 0
	li 28,0
	.cfi_offset 28, -72
	.loc 1 239 0
	stw 29,236(1)
	addi 29,1,8
	.cfi_offset 29, -68
	stw 30,240(1)
	mr 30,3
	.cfi_offset 30, -64
	stw 31,244(1)
	.loc 1 257 0
	li 31,0
	.cfi_offset 31, -60
.LVL45:
.L63:
	.loc 1 263 0
	fcmpu 7,11,31
	bne- 7,.L40
	.loc 1 263 0 is_stmt 0 discriminator 1
	lfs 0,672(30)
	fcmpu 7,0,31
	bne- 7,.L40
	lfs 0,676(30)
	fcmpu 7,0,31
	beq- 7,.L43
.L40:
	.loc 1 263 0 discriminator 2
	mr 11,30
	.loc 1 257 0 is_stmt 1 discriminator 2
	li 9,0
	.loc 1 267 0 discriminator 2
	lfs 0,644(11)
	.loc 1 266 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 267 0 discriminator 2
	addi 11,11,4
	fmadds 11,29,11,0
	stfsx 11,29,9
	.loc 1 266 0 discriminator 2
	addi 9,9,4
	beq- 7,.L44
.LVL46:
.L73:
	.loc 1 266 0 is_stmt 0
	lfs 11,668(11)
	cmpwi 7,9,8
	.loc 1 267 0 is_stmt 1
	lfs 0,644(11)
	addi 11,11,4
	fmadds 11,29,11,0
	stfsx 11,29,9
	.loc 1 266 0
	addi 9,9,4
	bne+ 7,.L73
.L44:
	.loc 1 269 0
	addi 3,1,56
	mr 4,22
	mr 5,23
	mr 6,24
	mr 7,29
	li 8,0
	mr 9,30
	bl SV_Move
	.loc 1 271 0
	lbz 0,56(1)
	.loc 1 269 0
	lfs 25,60(1)
.LVL47:
	.loc 1 271 0
	cmpwi 7,0,0
	.loc 1 269 0
	lfs 30,84(1)
.LVL48:
	lwz 17,92(1)
	.loc 1 271 0
	bne- 7,.L72
	.loc 1 277 0
	fcmpu 7,25,31
	bng- 7,.L46
	.loc 1 279 0
	lwz 10,64(1)
	.loc 1 281 0
	li 31,0
	.loc 1 280 0
	lwz 11,668(30)
	.loc 1 279 0
	stw 10,644(30)
	lwz 10,68(1)
	.loc 1 280 0
	lwz 9,672(30)
	lwz 0,676(30)
	.loc 1 279 0
	stw 10,648(30)
	lwz 10,72(1)
	.loc 1 280 0
	stw 11,32(1)
	.loc 1 279 0
	stw 10,652(30)
	.loc 1 280 0
	stw 9,36(1)
	stw 0,40(1)
.LVL49:
.L46:
	.loc 1 284 0
	lfs 0,.LC8@l(26)
	fcmpu 7,25,0
	beq- 7,.L43
	.loc 1 287 0
	cmpwi 7,17,0
	beq- 7,.L74
.L48:
	.loc 1 290 0
	fmr 13,30
	lfd 0,.LC10@l(25)
	fcmpu 7,13,0
	bng- 7,.L49
	.loc 1 293 0
	lfs 0,.LC11@l(21)
	.loc 1 292 0
	ori 28,28,1
.LVL50:
	.loc 1 293 0
	lfs 13,640(17)
	fcmpu 7,13,0
	bne- 7,.L49
	.loc 1 295 0
	lfs 0,908(30)
	lis 0,0x4330
	addi 9,1,176
	stw 0,168(1)
	fctiwz 0,0
	stfiwx 0,0,9
	.loc 1 296 0
	la 9,sv@l(20)
	.loc 1 295 0
	lfs 0,.LC13@l(19)
	lwz 0,176(1)
	ori 0,0,512
	xoris 0,0,0x8000
	stw 0,172(1)
	lfd 13,168(1)
	.loc 1 296 0
	lwz 0,3500(9)
	.loc 1 295 0
	fsub 0,13,0
	.loc 1 296 0
	subf 0,0,17
	stw 0,792(30)
	.loc 1 295 0
	frsp 0,0
	stfs 0,908(30)
.LVL51:
.L49:
	.loc 1 299 0
	fcmpu 7,30,31
	bne- 7,.L51
	.loc 1 302 0
	cmpwi 7,27,0
	.loc 1 301 0
	ori 28,28,2
.LVL52:
	.loc 1 302 0
	beq- 7,.L51
	.loc 1 303 0
	mr 3,27
	addi 4,1,56
	li 5,40
	bl memcpy
	stfs 25,4(27)
	stfs 30,28(27)
	stw 17,36(27)
.L51:
	.loc 1 309 0
	mr 3,30
	mr 4,17
	bl SV_Impact
	.loc 1 310 0
	lbz 0,0(30)
	cmpwi 7,0,0
	bne- 7,.L43
	.loc 1 317 0
	cmpwi 7,31,4
	.loc 1 238 0
	fneg 0,29
	.loc 1 314 0
	fmadds 29,0,25,29
.LVL53:
	.loc 1 317 0
	bgt- 7,.L72
	.loc 1 323 0
	mulli 9,31,12
	lwz 0,76(1)
	.loc 1 324 0
	addi 31,31,1
.LVL54:
	.loc 1 331 0
	addi 16,1,96
	.loc 1 323 0
	add 9,29,9
	.loc 1 329 0
	li 17,0
	.loc 1 323 0
	stw 0,88(9)
	lwz 0,80(1)
	stfs 30,96(9)
	stw 0,92(9)
	.loc 1 331 0
	lfs 30,.LC8@l(26)
.LVL55:
.L57:
	fmr 1,30
	addi 3,1,32
	mr 4,16
	addi 5,1,20
	bl ClipVelocity
.LVL56:
	cmpwi 7,31,0
	.loc 1 335 0
	lfs 11,20(1)
	addi 9,1,96
	lfs 9,24(1)
	.loc 1 332 0
	li 11,0
	.loc 1 335 0
	lfs 10,28(1)
	mtctr 31
	ble- 7,.L75
.LVL57:
.L55:
	.loc 1 333 0
	cmpw 7,11,17
	beq- 7,.L53
	.loc 1 335 0
	lfs 0,4(9)
	lfs 12,0(9)
	fmuls 0,9,0
	lfs 13,8(9)
	fmadds 0,11,12,0
	fmadds 0,10,13,0
	fcmpu 7,0,31
	blt- 7,.L54
.L53:
	.loc 1 332 0
	addi 11,11,1
.LVL58:
	addi 9,9,12
	bdnz .L55
.LVL59:
.L54:
	.loc 1 338 0
	cmpw 7,11,31
	beq- 7,.L56
	.loc 1 329 0
	addi 17,17,1
.LVL60:
	addi 16,16,12
	cmpw 7,31,17
	bgt+ 7,.L57
.LVL61:
.L56:
	.loc 1 342 0
	cmpw 7,17,31
	beq- 7,.L58
	.loc 1 344 0
	stfs 11,668(30)
	stfs 9,672(30)
	stfs 10,676(30)
.L59:
	.loc 1 363 0
	fmuls 0,26,9
	fmadds 0,28,11,0
	fmadds 10,27,10,0
	fcmpu 7,10,31
	cror 30,28,30
	beq- 7,.L76
	.loc 1 261 0
	lwz 0,180(1)
	addic. 9,0,-1
	stw 9,180(1)
	bne+ 0,.L63
.LVL62:
.L43:
	.loc 1 371 0
	lwz 0,308(1)
	mr 3,28
	lwz 16,184(1)
	mtlr 0
	lwz 17,188(1)
	lwz 18,192(1)
	lwz 19,196(1)
	lwz 20,200(1)
	lwz 21,204(1)
	lwz 22,208(1)
	lwz 23,212(1)
	lwz 24,216(1)
	lwz 25,220(1)
	lwz 26,224(1)
	lwz 27,228(1)
.LVL63:
	lwz 28,232(1)
	lwz 29,236(1)
	lwz 30,240(1)
.LVL64:
	lwz 31,244(1)
	lfd 25,248(1)
	lfd 26,256(1)
.LVL65:
	lfd 27,264(1)
.LVL66:
	lfd 28,272(1)
.LVL67:
	lfd 29,280(1)
	lfd 30,288(1)
	lfd 31,296(1)
	addi 1,1,304
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
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
.LVL68:
.L58:
.LCFI15:
	.cfi_restore_state
	.loc 1 348 0
	cmpwi 7,17,2
	bne- 7,.L77
	.loc 1 354 0
	addi 3,1,96
	addi 4,1,108
	addi 5,1,44
	bl CrossProduct
.LVL69:
	.loc 1 355 0
	lfs 0,672(30)
	lfs 13,48(1)
	.loc 1 356 0
	addi 3,1,44
.LVL70:
	.loc 1 355 0
	lfs 12,44(1)
	.loc 1 356 0
	addi 4,30,668
	.loc 1 355 0
	fmuls 13,13,0
	lfs 0,668(30)
	.loc 1 356 0
	lfs 1,52(1)
	.loc 1 355 0
	fmadds 0,12,0,13
	lfs 13,676(30)
	.loc 1 356 0
	fmadds 1,1,13,0
	bl VectorScale
.LVL71:
	lfs 11,668(30)
	lfs 9,672(30)
	lfs 10,676(30)
	b .L59
.LVL72:
.L74:
	.loc 1 288 0
	mr 3,18
	crxor 6,6,6
	bl Sys_Error
	b .L48
.LVL73:
.L72:
	.loc 1 319 0
	lis 11,vec3_origin@ha
	.loc 1 320 0
	li 28,3
	.loc 1 319 0
	la 9,vec3_origin@l(11)
	lwz 10,vec3_origin@l(11)
	lwz 0,8(9)
	lwz 11,4(9)
	stw 10,668(30)
	stw 11,672(30)
	stw 0,676(30)
	.loc 1 320 0
	b .L43
.LVL74:
.L76:
	.loc 1 365 0
	lis 11,vec3_origin@ha
	la 9,vec3_origin@l(11)
	lwz 10,vec3_origin@l(11)
	lwz 0,8(9)
	lwz 11,4(9)
	stw 10,668(30)
	stw 11,672(30)
	stw 0,676(30)
	.loc 1 366 0
	b .L43
.LVL75:
.L75:
	li 0,1
	mtctr 0
	b .L55
.LVL76:
.L77:
	.loc 1 351 0
	lis 11,vec3_origin@ha
	.loc 1 352 0
	li 28,7
.LVL77:
	.loc 1 351 0
	la 9,vec3_origin@l(11)
	lwz 10,vec3_origin@l(11)
	lwz 0,8(9)
	lwz 11,4(9)
	stw 10,668(30)
	stw 11,672(30)
	stw 0,676(30)
	.loc 1 352 0
	b .L43
	.cfi_endproc
.LFE43:
	.size	SV_FlyMove, .-SV_FlyMove
	.align 2
	.globl SV_AddGravity
	.type	SV_AddGravity, @function
SV_AddGravity:
.LFB44:
	.loc 1 381 0
	.cfi_startproc
.LVL78:
	mflr 0
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 392 0
	lis 4,.LC14@ha
	la 4,.LC14@l(4)
	.loc 1 381 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 381 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 392 0
	bl GetEdictFieldValue
.LVL79:
	.loc 1 393 0
	cmpwi 0,3,0
	beq- 0,.L80
	.loc 1 393 0 is_stmt 0 discriminator 1
	lis 9,.LC3@ha
	lfs 0,0(3)
	lfs 13,.LC3@l(9)
	fcmpu 7,0,13
	beq- 7,.L80
.LVL80:
	.loc 1 398 0 is_stmt 1
	lis 9,.LANCHOR0+32@ha
	.loc 1 399 0
	lwz 0,20(1)
	.loc 1 398 0
	lfs 13,.LANCHOR0+32@l(9)
	lis 9,host_frametime@ha
	lfd 12,host_frametime@l(9)
	.loc 1 399 0
	mtlr 0
	.loc 1 398 0
	fmuls 0,0,13
	lfs 13,676(31)
	.loc 1 380 0
	fneg 0,0
	.loc 1 398 0
	fmadd 0,0,12,13
	frsp 0,0
	stfs 0,676(31)
	.loc 1 399 0
	lwz 31,12(1)
.LVL81:
	addi 1,1,16
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL82:
.L80:
.LCFI18:
	.cfi_restore_state
	.loc 1 396 0
	lis 9,.LC8@ha
	.loc 1 399 0
	lwz 0,20(1)
	.loc 1 396 0
	lfs 0,.LC8@l(9)
.LVL83:
	.loc 1 398 0
	lis 9,.LANCHOR0+32@ha
	lfs 13,.LANCHOR0+32@l(9)
	lis 9,host_frametime@ha
	lfd 12,host_frametime@l(9)
	.loc 1 399 0
	mtlr 0
	.loc 1 398 0
	fmuls 0,0,13
.LVL84:
	lfs 13,676(31)
	.loc 1 380 0
	fneg 0,0
	.loc 1 398 0
	fmadd 0,0,12,13
	frsp 0,0
	stfs 0,676(31)
	.loc 1 399 0
	lwz 31,12(1)
.LVL85:
	addi 1,1,16
	.cfi_restore 31
.LCFI19:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE44:
	.size	SV_AddGravity, .-SV_AddGravity
	.align 2
	.globl SV_PushEntity
	.type	SV_PushEntity, @function
SV_PushEntity:
.LFB45:
	.loc 1 418 0
	.cfi_startproc
.LVL86:
	mflr 0
	stwu 1,-88(1)
.LCFI20:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 424 0
	lis 9,.LC15@ha
	lfs 8,.LC15@l(9)
	.loc 1 418 0
	stw 0,92(1)
	stw 30,80(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 424 0
	lfs 7,636(4)
	.loc 1 422 0
	lfs 9,644(4)
	lfs 12,0(5)
	.loc 1 424 0
	fcmpu 7,7,8
	.loc 1 422 0
	lfs 10,648(4)
	lfs 13,4(5)
	fadds 12,9,12
	lfs 11,652(4)
	lfs 0,8(5)
	fadds 13,10,13
	.loc 1 418 0
	stw 31,84(1)
	mr 31,4
	.cfi_offset 31, -4
	.loc 1 422 0
	fadds 0,11,0
	.loc 1 418 0
	stw 28,72(1)
	stw 29,76(1)
	.loc 1 422 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 424 0
	beq- 7,.L87
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 426 0
	lis 9,.LC8@ha
	lfs 0,640(4)
	lfs 13,.LC8@l(9)
	.loc 1 428 0
	addi 29,1,20
	mr 3,29
.LVL87:
	addi 4,4,644
.LVL88:
	.loc 1 426 0
	fcmpu 7,0,13
	.loc 1 428 0
	addi 5,31,736
.LVL89:
	addi 6,31,748
	addi 7,1,8
	.loc 1 426 0
	beq- 7,.L84
	.loc 1 426 0 is_stmt 0 discriminator 1
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	fcmpu 7,0,13
	bne- 7,.L85
.L84:
	.loc 1 428 0 is_stmt 1
	li 8,1
	mr 9,31
	bl SV_Move
	lwz 28,56(1)
.L83:
	.loc 1 432 0
	lwz 0,28(1)
	.loc 1 433 0
	mr 3,31
	li 4,1
	.loc 1 432 0
	stw 0,644(31)
	lwz 0,32(1)
	stw 0,648(31)
	lwz 0,36(1)
	stw 0,652(31)
	.loc 1 433 0
	bl SV_LinkEdict
	.loc 1 435 0
	cmpwi 7,28,0
	beq- 7,.L86
	.loc 1 436 0
	mr 3,31
	mr 4,28
	bl SV_Impact
.L86:
	.loc 1 438 0
	mr 3,30
	mr 4,29
	li 5,40
	bl memcpy
	.loc 1 439 0
	lwz 0,92(1)
	.loc 1 438 0
	stw 28,36(30)
	.loc 1 439 0
	mr 3,30
	mtlr 0
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
.LVL90:
	lwz 31,84(1)
.LVL91:
	addi 1,1,88
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL92:
.L87:
.LCFI22:
	.cfi_restore_state
	.loc 1 425 0
	addi 29,1,20
	addi 4,4,644
.LVL93:
	mr 3,29
.LVL94:
	addi 5,31,736
.LVL95:
	addi 6,31,748
	addi 7,1,8
	li 8,2
	mr 9,31
	bl SV_Move
	lwz 28,56(1)
	b .L83
.L85:
	.loc 1 430 0
	li 8,0
	mr 9,31
	bl SV_Move
	lwz 28,56(1)
	b .L83
	.cfi_endproc
.LFE45:
	.size	SV_PushEntity, .-SV_PushEntity
	.align 2
	.globl SV_PushMove
	.type	SV_PushMove, @function
SV_PushMove:
.LFB46:
	.loc 1 449 0
	.cfi_startproc
.LVL96:
	lis 0,0xffff
	mr 12,1
	ori 0,0,32520
	.loc 1 459 0
	lis 9,.LC3@ha
	.loc 1 449 0
	stwux 1,1,0
.LCFI23:
	.cfi_def_cfa_offset 33016
	mflr 0
	.loc 1 459 0
	lfs 13,.LC3@l(9)
	.loc 1 449 0
	stfd 30,-16(12)
	stw 0,4(12)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	stw 27,-68(12)
	mr 27,3
	.cfi_offset 27, -68
	.loc 1 459 0
	lfs 0,668(3)
	.loc 1 449 0
	stfd 26,-48(12)
	.loc 1 459 0
	fcmpu 7,0,13
	.loc 1 449 0
	stfd 27,-40(12)
	stfd 28,-32(12)
	stfd 29,-24(12)
	stfd 31,-8(12)
	stw 14,-120(12)
	stw 15,-116(12)
	stw 16,-112(12)
	stw 17,-108(12)
	stw 18,-104(12)
	stw 19,-100(12)
	stw 20,-96(12)
	stw 21,-92(12)
	stw 22,-88(12)
	stw 23,-84(12)
	stw 24,-80(12)
	stw 25,-76(12)
	stw 26,-72(12)
	stw 28,-64(12)
	stw 29,-60(12)
	stw 30,-56(12)
	stw 31,-52(12)
	.loc 1 459 0
	bne- 7,.L89
	.cfi_offset 31, -52
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.cfi_offset 28, -64
	.cfi_offset 26, -72
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 22, -88
	.cfi_offset 21, -92
	.cfi_offset 20, -96
	.cfi_offset 19, -100
	.cfi_offset 18, -104
	.cfi_offset 17, -108
	.cfi_offset 16, -112
	.cfi_offset 15, -116
	.cfi_offset 14, -120
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.loc 1 459 0 is_stmt 0 discriminator 1
	lfs 12,672(3)
	fcmpu 7,12,13
	beq- 7,.L90
.L89:
	.loc 1 459 0 discriminator 2
	mr 11,27
	.loc 1 467 0 is_stmt 1 discriminator 2
	fmuls 0,30,0
	.loc 1 449 0 discriminator 2
	li 9,0
	.loc 1 468 0 discriminator 2
	lfs 12,608(11)
	.loc 1 469 0 discriminator 2
	lfs 13,620(11)
	.loc 1 465 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 468 0 discriminator 2
	fadds 12,0,12
	addi 25,1,8
	.loc 1 469 0 discriminator 2
	fadds 13,0,13
	addi 8,1,32
	addi 10,1,20
	.loc 1 467 0 discriminator 2
	stfsx 0,25,9
	.loc 1 468 0 discriminator 2
	stfsx 12,8,9
	.loc 1 469 0 discriminator 2
	addi 11,11,4
	stfsx 13,10,9
	.loc 1 465 0 discriminator 2
	addi 9,9,4
	beq- 7,.L93
.LVL97:
.L106:
	.loc 1 465 0 is_stmt 0
	lfs 0,668(11)
	cmpwi 7,9,8
	.loc 1 468 0 is_stmt 1
	lfs 12,608(11)
	.loc 1 467 0
	fmuls 0,30,0
	.loc 1 469 0
	lfs 13,620(11)
	addi 11,11,4
	.loc 1 468 0
	fadds 12,0,12
	.loc 1 467 0
	stfsx 0,25,9
	.loc 1 469 0
	fadds 13,0,13
	.loc 1 468 0
	stfsx 12,8,9
	.loc 1 469 0
	stfsx 13,10,9
	.loc 1 465 0
	addi 9,9,4
	bne+ 7,.L106
.L93:
	.loc 1 472 0
	lfs 27,644(27)
.LVL98:
	.loc 1 483 0
	lis 29,sv@ha
	.loc 1 472 0
	lfs 28,648(27)
.LVL99:
	.loc 1 483 0
	la 29,sv@l(29)
	.loc 1 472 0
	lfs 29,652(27)
.LVL100:
	.loc 1 478 0
	mr 3,27
.LVL101:
	.loc 1 477 0
	lfs 0,632(27)
	.loc 1 478 0
	li 4,0
	.loc 1 476 0
	lfs 11,8(1)
	.loc 1 483 0
	lis 28,pr_edict_size@ha
	.loc 1 476 0
	lfs 12,12(1)
	.loc 1 477 0
	fadds 0,0,30
	.loc 1 476 0
	lfs 13,16(1)
	fadds 11,27,11
	fadds 12,28,12
	fadds 13,29,13
	.loc 1 477 0
	stfs 0,632(27)
	.loc 1 476 0
	stfs 11,644(27)
	stfs 12,648(27)
	stfs 13,652(27)
	.loc 1 478 0
	bl SV_LinkEdict
.LVL102:
	.loc 1 484 0
	lwz 0,3492(29)
	.loc 1 483 0
	lwz 31,3500(29)
	.loc 1 484 0
	cmpwi 7,0,1
	.loc 1 483 0
	lwz 0,pr_edict_size@l(28)
.LVL103:
	.loc 1 484 0
	ble- 7,.L88
	.loc 1 489 0
	lis 11,.LC3@ha
	.loc 1 532 0
	addis 23,25,0x1
	.loc 1 489 0
	lfs 31,.LC3@l(11)
	.loc 1 483 0
	add 31,31,0
	.loc 1 482 0
	li 22,0
	.loc 1 484 0
	li 30,1
	.loc 1 488 0
	lis 26,.LC0@ha
	.loc 1 493 0
	lis 24,.LC1@ha
	.loc 1 514 0
	lis 21,.LC16@ha
	.loc 1 524 0
	lis 19,.LC11@ha
	.loc 1 532 0
	addi 20,23,-32712
	.loc 1 546 0
	lis 15,.LC8@ha
	.loc 1 525 0
	lis 18,.LC17@ha
	.loc 1 515 0
	lis 16,0x4330
	lis 17,.LC13@ha
.LVL104:
.L103:
	.loc 1 486 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L94
	.loc 1 488 0
	lfs 0,636(31)
	lfs 13,.LC0@l(26)
	fcmpu 7,0,13
	beq- 7,.L94
	.loc 1 489 0
	fcmpu 7,0,31
	beq- 7,.L94
	.loc 1 493 0
	lfs 13,.LC1@l(24)
	fcmpu 7,0,13
	beq- 7,.L94
	.loc 1 497 0
	lfs 13,908(31)
	addis 11,1,0x1
	addi 9,11,-32652
	fctiwz 13,13
	stfiwx 13,0,9
	lwz 0,-32652(11)
	andi. 9,0,512
	beq- 0,.L95
	.loc 1 498 0 discriminator 1
	lwz 9,3500(29)
	lwz 0,792(31)
	add 0,9,0
	.loc 1 497 0 discriminator 1
	cmpw 7,27,0
	beq- 7,.L96
.L95:
	.loc 1 500 0
	lfs 13,608(31)
	lfs 0,20(1)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L94
	.loc 1 501 0
	lfs 13,612(31)
	lfs 0,24(1)
	fcmpu 7,13,0
	cror 30,29,30
	bne- 7,.L107
.L94:
.LVL105:
	.loc 1 484 0
	lwz 0,3492(29)
	addi 30,30,1
.LVL106:
	cmpw 7,0,30
	lwz 0,pr_edict_size@l(28)
	add 31,31,0
.LVL107:
	bgt+ 7,.L103
.LVL108:
.L88:
	.loc 1 580 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 14,-120(11)
	mtlr 0
	lwz 15,-116(11)
	lwz 16,-112(11)
	lwz 17,-108(11)
	lwz 18,-104(11)
	lwz 19,-100(11)
	lwz 20,-96(11)
	lwz 21,-92(11)
	lwz 22,-88(11)
	lwz 23,-84(11)
	lwz 24,-80(11)
	lwz 25,-76(11)
	lwz 26,-72(11)
	lwz 27,-68(11)
	lwz 28,-64(11)
	lwz 29,-60(11)
	lwz 30,-56(11)
	lwz 31,-52(11)
	lfd 26,-48(11)
	lfd 27,-40(11)
	lfd 28,-32(11)
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
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
.LVL109:
.L107:
.LCFI25:
	.cfi_restore_state
	.loc 1 502 0
	lfs 13,616(31)
	lfs 0,28(1)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L94
	.loc 1 503 0
	lfs 13,620(31)
	lfs 0,32(1)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L94
	.loc 1 504 0
	lfs 13,624(31)
	lfs 0,36(1)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L94
	.loc 1 505 0
	lfs 13,628(31)
	lfs 0,40(1)
	fcmpu 7,13,0
	cror 30,28,30
	beq+ 7,.L94
	.loc 1 509 0
	mr 3,31
	bl SV_TestEntityPosition
	cmpwi 7,3,0
	beq- 7,.L94
	lfs 0,636(31)
.L96:
	.loc 1 514 0
	lfs 13,.LC16@l(21)
	fcmpu 7,0,13
	beq- 7,.L97
	.loc 1 515 0
	lfs 0,908(31)
	addis 11,1,0x1
	addi 9,11,-32656
	stw 16,-32720(23)
	fctiwz 0,0
	stfiwx 0,0,9
	lfs 0,.LC13@l(17)
	lwz 0,-32656(11)
	rlwinm 0,0,0,23,21
	xoris 0,0,0x8000
	stw 0,-32716(23)
	lfd 13,-32720(23)
	fsub 0,13,0
	frsp 0,0
	stfs 0,908(31)
.L97:
	.loc 1 523 0
	lfs 26,640(27)
	.loc 1 518 0
	mulli 11,22,12
	.loc 1 524 0
	lfs 0,.LC11@l(19)
	.loc 1 519 0
	slwi 10,22,2
	.loc 1 517 0
	lwz 9,644(31)
.LVL110:
	.loc 1 518 0
	add 11,25,11
	.loc 1 524 0
	fcmpu 7,26,0
	.loc 1 517 0
	lwz 0,648(31)
.LVL111:
	lwz 14,652(31)
.LVL112:
	.loc 1 519 0
	add 10,25,10
	.loc 1 518 0
	stw 9,8228(11)
	.loc 1 520 0
	addi 22,22,1
.LVL113:
	.loc 1 518 0
	stw 0,8232(11)
	stw 14,8236(11)
	.loc 1 519 0
	stw 31,36(10)
	.loc 1 524 0
	beq- 7,.L98
	.loc 1 525 0
	lfs 0,.LC17@l(18)
	fcmpu 7,26,0
	bne- 7,.L108
.L98:
	.loc 1 532 0
	addis 11,1,0x1
	.loc 1 531 0
	stfs 31,640(27)
	.loc 1 532 0
	stw 0,-32644(11)
	mr 3,20
	stw 9,-32648(11)
	mr 4,31
	mr 5,25
	bl SV_PushEntity
.LVL114:
	.loc 1 534 0
	stfs 26,640(27)
	.loc 1 537 0
	mr 3,31
	bl SV_TestEntityPosition
.LVL115:
	.loc 1 542 0
	addis 11,1,0x1
	cmpwi 7,3,0
	lwz 0,-32644(11)
	lwz 9,-32648(11)
	beq- 7,.L94
	.loc 1 544 0
	lfs 13,736(31)
	lfs 0,748(31)
	fcmpu 7,13,0
	beq- 7,.L94
	.loc 1 546 0
	lfs 0,640(31)
	fcmpu 7,0,31
	beq- 7,.L99
	.loc 1 546 0 is_stmt 0 discriminator 1
	lfs 13,.LC8@l(15)
	fcmpu 7,0,13
	bne- 7,.L100
.L99:
	.loc 1 549 0 is_stmt 1
	lwz 0,744(31)
	.loc 1 548 0
	stfs 31,740(31)
	stfs 31,736(31)
	.loc 1 549 0
	stfs 31,748(31)
	stfs 31,752(31)
	stw 0,756(31)
	.loc 1 550 0
	b .L94
.LVL116:
.L90:
	.loc 1 459 0 discriminator 1
	lfs 12,676(3)
	fcmpu 7,12,13
	bne+ 7,.L89
	.loc 1 461 0
	lfs 0,632(3)
	fadds 30,0,1
.LVL117:
	stfs 30,632(3)
	.loc 1 462 0
	b .L88
.LVL118:
.L108:
	.loc 1 526 0
	lfs 0,.LC16@l(21)
	fcmpu 7,26,0
	bne- 7,.L94
	b .L98
.LVL119:
.L100:
	.loc 1 553 0
	stw 9,644(31)
	.loc 1 554 0
	mr 3,31
.LVL120:
	.loc 1 553 0
	stw 0,648(31)
	.loc 1 554 0
	li 4,1
	.loc 1 553 0
	stw 14,652(31)
	.loc 1 554 0
	bl SV_LinkEdict
	.loc 1 556 0
	stfs 27,644(27)
	stfs 28,648(27)
	.loc 1 557 0
	mr 3,27
	.loc 1 556 0
	stfs 29,652(27)
	.loc 1 557 0
	li 4,0
	bl SV_LinkEdict
	.loc 1 562 0
	lwz 3,784(27)
	.loc 1 558 0
	lfs 0,632(27)
	.loc 1 562 0
	cmpwi 7,3,0
	.loc 1 558 0
	fsubs 30,0,30
.LVL121:
	stfs 30,632(27)
	.loc 1 562 0
	beq+ 7,.L101
	.loc 1 564 0
	lwz 0,3500(29)
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	subf 27,0,27
.LVL122:
	.loc 1 565 0
	subf 0,0,31
	.loc 1 564 0
	stw 27,112(9)
	.loc 1 565 0
	stw 0,116(9)
	.loc 1 566 0
	bl PR_ExecuteProgram
.L101:
.LVL123:
	.loc 1 566 0 is_stmt 0 discriminator 1
	addi 29,1,40
	addi 31,1,8236
	.loc 1 484 0 is_stmt 1 discriminator 1
	li 30,0
.LVL124:
.L102:
	.loc 1 572 0 discriminator 2
	lwzu 3,4(29)
	.loc 1 573 0 discriminator 2
	li 4,0
	.loc 1 572 0 discriminator 2
	lwz 11,0(31)
	.loc 1 570 0 discriminator 2
	addi 30,30,1
	.loc 1 572 0 discriminator 2
	lwz 9,4(31)
	lwz 0,8(31)
	.loc 1 570 0 discriminator 2
	addi 31,31,12
	.loc 1 572 0 discriminator 2
	stw 11,644(3)
	stw 9,648(3)
	stw 0,652(3)
	.loc 1 573 0 discriminator 2
	bl SV_LinkEdict
.LVL125:
	.loc 1 570 0 discriminator 2
	cmpw 7,30,22
	blt+ 7,.L102
	b .L88
	.cfi_endproc
.LFE46:
	.size	SV_PushMove, .-SV_PushMove
	.align 2
	.globl SV_FakePushMove
	.type	SV_FakePushMove, @function
SV_FakePushMove:
.LFB47:
	.loc 1 590 0
	.cfi_startproc
.LVL126:
	mflr 0
	stwu 1,-48(1)
.LCFI26:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 595 0
	lis 9,.LC3@ha
	.loc 1 590 0
	stfd 30,32(1)
	stw 0,52(1)
	.loc 1 595 0
	lfs 0,.LC3@l(9)
	lfs 30,668(3)
	.cfi_offset 65, 4
	.cfi_offset 62, -16
	.loc 1 590 0
	stfd 29,24(1)
	.loc 1 595 0
	fcmpu 7,30,0
	.loc 1 590 0
	stfd 31,40(1)
	stw 31,12(1)
	fmr 31,1
	.cfi_offset 31, -36
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	stfd 28,16(1)
	.loc 1 590 0
	mr 31,3
	.loc 1 595 0
	lfs 29,672(3)
	beq- 7,.L110
	.cfi_offset 60, -32
	lfs 28,676(3)
.L111:
.LVL127:
	.loc 1 611 0 discriminator 1
	fmr 1,31
.LVL128:
	addi 3,31,680
.LVL129:
	addi 4,31,692
	mr 5,3
	bl VectorMA
	.loc 1 615 0 discriminator 1
	lfs 11,644(31)
	lfs 12,648(31)
	.loc 1 617 0 discriminator 1
	mr 3,31
	.loc 1 615 0 discriminator 1
	lfs 13,652(31)
	fmadds 30,30,31,11
	.loc 1 616 0 discriminator 1
	lfs 0,632(31)
	.loc 1 615 0 discriminator 1
	fmadds 29,31,29,12
	fmadds 28,31,28,13
	.loc 1 617 0 discriminator 1
	li 4,0
	.loc 1 616 0 discriminator 1
	fadds 31,0,31
.LVL130:
	.loc 1 615 0 discriminator 1
	stfs 30,644(31)
	stfs 29,648(31)
	stfs 28,652(31)
	.loc 1 616 0 discriminator 1
	stfs 31,632(31)
	.loc 1 617 0 discriminator 1
	bl SV_LinkEdict
.LVL131:
.L109:
	.loc 1 618 0
	lwz 0,52(1)
	lwz 31,12(1)
.LVL132:
	mtlr 0
	lfd 28,16(1)
	lfd 29,24(1)
	lfd 30,32(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
.LVL133:
.L110:
.LCFI28:
	.cfi_restore_state
	.loc 1 595 0 discriminator 1
	fcmpu 7,29,0
	lfs 28,676(3)
	bne- 7,.L111
	fcmpu 7,28,0
	bne+ 7,.L111
	.loc 1 597 0
	lfs 0,632(3)
	.loc 1 598 0
	addi 3,3,680
.LVL134:
	addi 4,31,692
	mr 5,3
	.loc 1 597 0
	fadds 31,0,1
	stfs 31,632(31)
	.loc 1 598 0
	bl VectorMA
.LVL135:
	.loc 1 599 0
	b .L109
	.cfi_endproc
.LFE47:
	.size	SV_FakePushMove, .-SV_FakePushMove
	.align 2
	.globl SV_PushRotate
	.type	SV_PushRotate, @function
SV_PushRotate:
.LFB48:
	.loc 1 628 0
	.cfi_startproc
.LVL136:
	lis 0,0xffff
	mr 12,1
	ori 0,0,32472
	.loc 1 639 0
	lis 9,.LC3@ha
	.loc 1 628 0
	stwux 1,1,0
.LCFI29:
	.cfi_def_cfa_offset 33064
	mflr 0
	.loc 1 639 0
	lfs 13,.LC3@l(9)
	.loc 1 628 0
	stfd 28,-32(12)
	stw 0,4(12)
	stfd 30,-16(12)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_offset 60, -32
	.cfi_offset 65, 4
	.loc 1 639 0
	lfs 0,692(3)
	.loc 1 628 0
	stw 31,-92(12)
	mr 31,3
	.cfi_offset 31, -92
	.loc 1 639 0
	fcmpu 7,0,13
	.loc 1 628 0
	stfd 21,-88(12)
	stfd 22,-80(12)
	stfd 23,-72(12)
	stfd 24,-64(12)
	stfd 25,-56(12)
	stfd 26,-48(12)
	stfd 27,-40(12)
	stfd 29,-24(12)
	stfd 31,-8(12)
	stw 17,-148(12)
	stw 18,-144(12)
	stw 19,-140(12)
	stw 20,-136(12)
	stw 21,-132(12)
	stw 22,-128(12)
	stw 23,-124(12)
	stw 24,-120(12)
	stw 25,-116(12)
	stw 26,-112(12)
	stw 27,-108(12)
	stw 28,-104(12)
	stw 29,-100(12)
	stw 30,-96(12)
	.loc 1 639 0
	lfs 28,696(3)
	beq- 7,.L115
	.cfi_offset 30, -96
	.cfi_offset 29, -100
	.cfi_offset 28, -104
	.cfi_offset 27, -108
	.cfi_offset 26, -112
	.cfi_offset 25, -116
	.cfi_offset 24, -120
	.cfi_offset 23, -124
	.cfi_offset 22, -128
	.cfi_offset 21, -132
	.cfi_offset 20, -136
	.cfi_offset 19, -140
	.cfi_offset 18, -144
	.cfi_offset 17, -148
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	lfs 27,700(3)
.L116:
.LVL137:
	.loc 1 648 0 discriminator 1
	lis 11,vec3_origin@ha
	.loc 1 646 0 discriminator 1
	fmuls 29,0,30
.LVL138:
	.loc 1 648 0 discriminator 1
	la 9,vec3_origin@l(11)
	.loc 1 646 0 discriminator 1
	fmuls 28,30,28
.LVL139:
	fmuls 27,30,27
.LVL140:
	.loc 1 648 0 discriminator 1
	lfs 12,vec3_origin@l(11)
	lfs 13,4(9)
	.loc 1 649 0 discriminator 1
	addi 3,1,44
.LVL141:
	.loc 1 648 0 discriminator 1
	lfs 0,8(9)
	fsubs 12,12,29
	fsubs 13,13,28
	.loc 1 649 0 discriminator 1
	addi 4,1,32
	.loc 1 648 0 discriminator 1
	fsubs 0,0,27
	.loc 1 649 0 discriminator 1
	addi 5,1,20
	addi 6,1,8
	.loc 1 648 0 discriminator 1
	stfs 12,44(1)
	stfs 13,48(1)
	.loc 1 662 0 discriminator 1
	lis 28,sv@ha
	.loc 1 648 0 discriminator 1
	stfs 0,52(1)
	.loc 1 649 0 discriminator 1
	bl AngleVectors
.LVL142:
	.loc 1 651 0 discriminator 1
	lfs 24,680(31)
.LVL143:
	.loc 1 662 0 discriminator 1
	la 28,sv@l(28)
	.loc 1 651 0 discriminator 1
	lfs 25,684(31)
.LVL144:
	.loc 1 657 0 discriminator 1
	mr 3,31
	.loc 1 651 0 discriminator 1
	lfs 26,688(31)
.LVL145:
	.loc 1 655 0 discriminator 1
	fadds 11,24,29
	.loc 1 656 0 discriminator 1
	lfs 0,632(31)
	.loc 1 655 0 discriminator 1
	fadds 12,25,28
	fadds 13,26,27
	.loc 1 657 0 discriminator 1
	li 4,0
	.loc 1 656 0 discriminator 1
	fadds 0,0,30
	.loc 1 655 0 discriminator 1
	stfs 11,680(31)
	stfs 12,684(31)
	.loc 1 662 0 discriminator 1
	lis 27,pr_edict_size@ha
	.loc 1 655 0 discriminator 1
	stfs 13,688(31)
	.loc 1 656 0 discriminator 1
	stfs 0,632(31)
	.loc 1 657 0 discriminator 1
	bl SV_LinkEdict
.LVL146:
	.loc 1 663 0 discriminator 1
	lwz 0,3492(28)
	.loc 1 662 0 discriminator 1
	lwz 30,3500(28)
	.loc 1 663 0 discriminator 1
	cmpwi 7,0,1
	.loc 1 662 0 discriminator 1
	lwz 0,pr_edict_size@l(27)
.LVL147:
	.loc 1 663 0 discriminator 1
	ble- 7,.L114
	.loc 1 710 0
	addi 11,1,8
	.loc 1 668 0
	lis 9,.LC3@ha
	.loc 1 710 0
	addis 24,11,0x1
	.loc 1 668 0
	lfs 31,.LC3@l(9)
	.loc 1 662 0
	add 30,30,0
	.loc 1 661 0
	li 23,0
	.loc 1 663 0
	li 29,1
	.loc 1 667 0
	lis 26,.LC0@ha
	.loc 1 672 0
	lis 25,.LC1@ha
	.loc 1 693 0
	lis 20,.LC16@ha
	.loc 1 710 0
	addi 21,24,-32696
	.loc 1 711 0
	lis 22,.LC11@ha
	.loc 1 719 0
	lis 17,.LC8@ha
	.loc 1 694 0
	lis 18,0x4330
	lis 19,.LC13@ha
.LVL148:
.L129:
	.loc 1 665 0
	lbz 0,0(30)
	cmpwi 7,0,0
	bne- 7,.L120
	.loc 1 667 0
	lfs 13,636(30)
	lfs 12,.LC0@l(26)
	fcmpu 7,13,12
	beq- 7,.L120
	.loc 1 668 0
	fcmpu 7,13,31
	beq- 7,.L120
	.loc 1 672 0
	lfs 12,.LC1@l(25)
	fcmpu 7,13,12
	beq- 7,.L120
	.loc 1 676 0
	lfs 0,908(30)
	addis 11,1,0x1
	addi 9,11,-32636
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,-32636(11)
	andi. 9,0,512
	beq- 0,.L121
	.loc 1 677 0 discriminator 1
	lwz 9,3500(28)
	lwz 0,792(30)
	add 0,9,0
	.loc 1 676 0 discriminator 1
	cmpw 7,31,0
	beq- 7,.L122
.L121:
	.loc 1 679 0
	lfs 13,608(30)
	lfs 0,620(31)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L120
	.loc 1 680 0
	lfs 13,612(30)
	lfs 0,624(31)
	fcmpu 7,13,0
	cror 30,29,30
	bne- 7,.L132
.L120:
.LVL149:
	.loc 1 663 0
	lwz 0,3492(28)
	addi 29,29,1
.LVL150:
	cmpw 7,0,29
	lwz 0,pr_edict_size@l(27)
	add 30,30,0
.LVL151:
	bgt+ 7,.L129
.LVL152:
.L114:
	.loc 1 758 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 17,-148(11)
	mtlr 0
	lwz 18,-144(11)
	lwz 19,-140(11)
	lwz 20,-136(11)
	lwz 21,-132(11)
	lwz 22,-128(11)
	lwz 23,-124(11)
	lwz 24,-120(11)
	lwz 25,-116(11)
	lwz 26,-112(11)
	lwz 27,-108(11)
	lwz 28,-104(11)
	lwz 29,-100(11)
	lwz 30,-96(11)
	lwz 31,-92(11)
	lfd 21,-88(11)
	lfd 22,-80(11)
	lfd 23,-72(11)
	lfd 24,-64(11)
	lfd 25,-56(11)
	lfd 26,-48(11)
	lfd 27,-40(11)
	lfd 28,-32(11)
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
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
	blr
.LVL153:
.L115:
.LCFI31:
	.cfi_restore_state
	.loc 1 639 0 discriminator 1
	fcmpu 7,28,13
	lfs 27,700(3)
	bne- 7,.L116
	fcmpu 7,27,13
	bne+ 7,.L116
	.loc 1 641 0
	lfs 0,632(3)
	fadds 30,0,1
	stfs 30,632(3)
	.loc 1 642 0
	b .L114
.LVL154:
.L132:
	.loc 1 681 0
	lfs 13,616(30)
	lfs 0,628(31)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L120
	.loc 1 682 0
	lfs 13,620(30)
	lfs 0,608(31)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L120
	.loc 1 683 0
	lfs 13,624(30)
	lfs 0,612(31)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L120
	.loc 1 684 0
	lfs 13,628(30)
	lfs 0,616(31)
	fcmpu 7,13,0
	cror 30,28,30
	beq+ 7,.L120
	.loc 1 688 0
	mr 3,30
	bl SV_TestEntityPosition
	cmpwi 7,3,0
	beq- 7,.L120
	lfs 13,636(30)
.L122:
	.loc 1 693 0
	lfs 0,.LC16@l(20)
	fcmpu 7,13,0
	beq- 7,.L123
	.loc 1 694 0
	lfs 0,908(30)
	addis 11,1,0x1
	addi 9,11,-32640
	stw 18,-32704(24)
	fctiwz 0,0
	stfiwx 0,0,9
	lfs 0,.LC13@l(19)
	lwz 0,-32640(11)
	rlwinm 0,0,0,23,21
	xoris 0,0,0x8000
	stw 0,-32700(24)
	lfd 13,-32704(24)
	fsub 0,13,0
	frsp 0,0
	stfs 0,908(30)
.L123:
	.loc 1 696 0
	lfs 22,648(30)
	.loc 1 697 0
	mulli 9,23,12
	.loc 1 702 0
	lfs 12,648(31)
	.loc 1 697 0
	addi 0,1,8
	.loc 1 696 0
	lfs 21,644(30)
.LVL155:
	.loc 1 698 0
	slwi 11,23,2
	.loc 1 702 0
	fsubs 12,22,12
	lfs 13,644(31)
	.loc 1 704 0
	lfs 9,24(1)
	.loc 1 697 0
	add 9,0,9
	.loc 1 702 0
	fsubs 13,21,13
	.loc 1 705 0
	lfs 11,12(1)
	.loc 1 704 0
	fmuls 9,12,9
	lfs 8,20(1)
	.loc 1 705 0
	fmuls 11,12,11
	.loc 1 703 0
	lfs 10,36(1)
	.loc 1 696 0
	lfs 23,652(30)
.LVL156:
	.loc 1 698 0
	add 11,0,11
	.loc 1 704 0
	fmadds 9,13,8,9
	.loc 1 705 0
	lfs 8,8(1)
	.loc 1 703 0
	fmuls 10,12,10
	.loc 1 702 0
	lfs 0,652(31)
	.loc 1 705 0
	fmadds 11,13,8,11
	.loc 1 703 0
	lfs 8,32(1)
	.loc 1 702 0
	fsubs 0,23,0
	.loc 1 697 0
	stfs 21,8252(9)
	.loc 1 703 0
	fmadds 10,13,8,10
	.loc 1 704 0
	lfs 8,28(1)
	.loc 1 697 0
	stfs 22,8256(9)
	.loc 1 710 0
	mr 3,21
	.loc 1 704 0
	fnmadds 9,0,8,9
	.loc 1 705 0
	lfs 8,16(1)
	.loc 1 697 0
	stfs 23,8260(9)
	.loc 1 710 0
	mr 4,30
	.loc 1 705 0
	fmadds 11,0,8,11
	.loc 1 703 0
	lfs 8,40(1)
	.loc 1 706 0
	fsubs 12,9,12
	.loc 1 698 0
	stw 30,60(11)
	.loc 1 703 0
	fmadds 10,0,8,10
	.loc 1 709 0
	stfs 31,640(31)
	.loc 1 706 0
	fsubs 0,11,0
	.loc 1 710 0
	addi 5,1,56
	.loc 1 706 0
	stfs 12,60(1)
	.loc 1 699 0
	addi 23,23,1
	.loc 1 706 0
	fsubs 13,10,13
	stfs 0,64(1)
	stfs 13,56(1)
	.loc 1 710 0
	bl SV_PushEntity
.LVL157:
	.loc 1 711 0
	lwz 0,.LC11@l(22)
	.loc 1 714 0
	mr 3,30
	.loc 1 711 0
	stw 0,640(31)
	.loc 1 714 0
	bl SV_TestEntityPosition
.LVL158:
	.loc 1 715 0
	cmpwi 7,3,0
	beq- 7,.L124
	.loc 1 717 0
	lfs 13,736(30)
	lfs 0,748(30)
	fcmpu 7,13,0
	beq- 7,.L120
	.loc 1 719 0
	lfs 0,640(30)
	fcmpu 7,0,31
	beq- 7,.L125
	.loc 1 719 0 is_stmt 0 discriminator 1
	lfs 13,.LC8@l(17)
	fcmpu 7,0,13
	bne- 7,.L126
.L125:
	.loc 1 722 0 is_stmt 1
	lwz 0,744(30)
	.loc 1 721 0
	stfs 31,740(30)
	stfs 31,736(30)
	.loc 1 722 0
	stfs 31,748(30)
	stfs 31,752(30)
	stw 0,756(30)
	.loc 1 723 0
	b .L120
.L124:
	.loc 1 753 0
	lfs 12,680(30)
	lfs 13,684(30)
	lfs 0,688(30)
	fadds 12,12,29
	fadds 13,13,28
	fadds 0,0,27
	stfs 12,680(30)
	stfs 13,684(30)
	stfs 0,688(30)
	b .L120
.L126:
	.loc 1 726 0
	stfs 21,644(30)
	.loc 1 727 0
	mr 3,30
.LVL159:
	.loc 1 726 0
	stfs 22,648(30)
	.loc 1 727 0
	li 4,1
	.loc 1 726 0
	stfs 23,652(30)
	.loc 1 727 0
	bl SV_LinkEdict
	.loc 1 729 0
	stfs 24,680(31)
	stfs 25,684(31)
	.loc 1 730 0
	mr 3,31
	.loc 1 729 0
	stfs 26,688(31)
	.loc 1 730 0
	li 4,0
	bl SV_LinkEdict
	.loc 1 735 0
	lwz 3,784(31)
	.loc 1 731 0
	lfs 0,632(31)
	.loc 1 735 0
	cmpwi 7,3,0
	.loc 1 731 0
	fsubs 30,0,30
.LVL160:
	stfs 30,632(31)
	.loc 1 735 0
	beq+ 7,.L127
	.loc 1 737 0
	lwz 0,3500(28)
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	subf 31,0,31
.LVL161:
	.loc 1 738 0
	subf 0,0,30
	.loc 1 737 0
	stw 31,112(9)
	.loc 1 738 0
	stw 0,116(9)
	.loc 1 739 0
	bl PR_ExecuteProgram
.L127:
.LVL162:
	.loc 1 739 0 is_stmt 0 discriminator 1
	addi 29,1,64
	addi 31,1,8260
	.loc 1 663 0 is_stmt 1 discriminator 1
	li 30,0
.LVL163:
.L128:
	.loc 1 745 0 discriminator 2
	lwzu 3,4(29)
	.loc 1 747 0 discriminator 2
	li 4,0
	.loc 1 745 0 discriminator 2
	lwz 11,0(31)
	.loc 1 743 0 discriminator 2
	addi 30,30,1
	.loc 1 746 0 discriminator 2
	lfs 12,680(3)
	lfs 13,684(3)
	lfs 0,688(3)
	fsubs 12,12,29
	fsubs 13,13,28
	.loc 1 745 0 discriminator 2
	lwz 9,4(31)
	.loc 1 746 0 discriminator 2
	fsubs 0,0,27
	.loc 1 745 0 discriminator 2
	lwz 0,8(31)
	stw 11,644(3)
	.loc 1 743 0 discriminator 2
	addi 31,31,12
	.loc 1 745 0 discriminator 2
	stw 9,648(3)
	stw 0,652(3)
	.loc 1 746 0 discriminator 2
	stfs 12,680(3)
	stfs 13,684(3)
	stfs 0,688(3)
	.loc 1 747 0 discriminator 2
	bl SV_LinkEdict
.LVL164:
	.loc 1 743 0 discriminator 2
	cmpw 7,23,30
	bgt+ 7,.L128
	b .L114
	.cfi_endproc
.LFE48:
	.size	SV_PushRotate, .-SV_PushRotate
	.align 2
	.globl SV_Physics_Pusher
	.type	SV_Physics_Pusher, @function
SV_Physics_Pusher:
.LFB49:
	.loc 1 768 0
	.cfi_startproc
.LVL165:
	mflr 0
	stwu 1,-40(1)
.LCFI32:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 776 0
	lis 9,host_frametime@ha
	.loc 1 768 0
	stfd 30,24(1)
	stw 0,44(1)
	stfd 31,32(1)
	.loc 1 773 0
	lfs 30,632(3)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.cfi_offset 62, -16
.LVL166:
	.loc 1 775 0
	lfs 31,788(3)
.LVL167:
	.loc 1 776 0
	fmr 0,30
	lfd 1,host_frametime@l(9)
	fmr 13,31
	.loc 1 768 0
	stw 31,12(1)
	stfd 29,16(1)
	.loc 1 768 0
	mr 31,3
	.cfi_offset 61, -24
	.cfi_offset 31, -28
	.loc 1 776 0
	fadd 0,0,1
	fcmpu 7,13,0
	bnl- 7,.L147
	.loc 1 778 0
	fsubs 29,31,30
.LVL168:
	.loc 1 779 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,29,0
	blt- 7,.L143
.LVL169:
.L136:
	.loc 1 786 0
	lis 9,.LC3@ha
	lfs 13,692(31)
	lfs 0,.LC3@l(9)
	fcmpu 7,13,0
	bne- 7,.L137
	.loc 1 786 0 is_stmt 0 discriminator 1
	lfs 13,696(31)
	fcmpu 7,13,0
	beq- 7,.L149
.L137:
	.loc 1 787 0 is_stmt 1
	frsp 1,1
	mr 3,31
.LVL170:
	bl SV_PushRotate
.LVL171:
	.loc 1 789 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,29,0
	bne- 7,.L150
.L139:
	.loc 1 793 0
	fcmpu 7,31,30
	bng- 7,.L133
	.loc 1 793 0 is_stmt 0 discriminator 1
	lfs 0,632(31)
	fcmpu 7,0,31
	cror 30,29,30
	beq- 7,.L151
.L133:
	.loc 1 804 0 is_stmt 1
	lwz 0,44(1)
	lwz 31,12(1)
.LVL172:
	mtlr 0
	lfd 29,16(1)
.LVL173:
	lfd 30,24(1)
.LVL174:
	lfd 31,32(1)
.LVL175:
	addi 1,1,40
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.LVL176:
.L147:
.LCFI34:
	.cfi_restore_state
	.loc 1 783 0
	frsp 29,1
.LVL177:
	b .L136
.L149:
	.loc 1 786 0 discriminator 1
	lfs 13,700(31)
	fcmpu 7,13,0
	bne- 7,.L137
	.loc 1 789 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,29,0
	beq+ 7,.L139
.LVL178:
.L150:
	.loc 1 790 0
	fmr 1,29
	mr 3,31
	bl SV_PushMove
	b .L139
.L143:
	.loc 1 780 0
	fmr 29,0
.LVL179:
	b .L136
.LVL180:
.L151:
	.loc 1 796 0
	lis 9,sv@ha
	.loc 1 795 0
	li 11,0
	.loc 1 796 0
	la 9,sv@l(9)
	.loc 1 799 0
	lwz 3,780(31)
	.loc 1 796 0
	lfd 0,8(9)
	.loc 1 797 0
	lwz 0,3500(9)
	.loc 1 796 0
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	frsp 0,0
	.loc 1 797 0
	subf 0,0,31
	.loc 1 795 0
	stw 11,788(31)
	.loc 1 797 0
	stw 0,112(9)
	.loc 1 798 0
	li 0,0
	stw 0,116(9)
	.loc 1 796 0
	stfs 0,124(9)
	.loc 1 799 0
	bl PR_ExecuteProgram
	.loc 1 804 0
	lwz 0,44(1)
	lwz 31,12(1)
.LVL181:
	mtlr 0
	lfd 29,16(1)
.LVL182:
	lfd 30,24(1)
.LVL183:
	lfd 31,32(1)
.LVL184:
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI35:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE49:
	.size	SV_Physics_Pusher, .-SV_Physics_Pusher
	.align 2
	.globl SV_Physics_FakePusher
	.type	SV_Physics_FakePusher, @function
SV_Physics_FakePusher:
.LFB50:
	.loc 1 813 0
	.cfi_startproc
.LVL185:
	mflr 0
	stwu 1,-32(1)
.LCFI36:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 821 0
	lis 9,host_frametime@ha
	.loc 1 813 0
	stfd 30,16(1)
	stw 0,36(1)
	stfd 31,24(1)
	.loc 1 818 0
	lfs 30,632(3)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.cfi_offset 62, -16
.LVL186:
	.loc 1 820 0
	lfs 31,788(3)
.LVL187:
	.loc 1 821 0
	fmr 0,30
	lfd 1,host_frametime@l(9)
	fmr 13,31
	.loc 1 813 0
	stw 31,12(1)
	.loc 1 813 0
	mr 31,3
	.cfi_offset 31, -20
	.loc 1 821 0
	fadd 0,0,1
	fcmpu 7,13,0
	bnl- 7,.L163
.LVL188:
	.loc 1 823 0
	fsubs 1,31,30
.LVL189:
	.loc 1 824 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	bnl- 7,.L156
.LVL190:
.L155:
	.loc 1 836 0
	fcmpu 7,31,30
	bng- 7,.L152
	.loc 1 836 0 is_stmt 0 discriminator 1
	lfs 0,632(31)
	fcmpu 7,0,31
	cror 30,29,30
	beq- 7,.L164
.L152:
	.loc 1 847 0 is_stmt 1
	lwz 0,36(1)
	lwz 31,12(1)
.LVL191:
	mtlr 0
	lfd 30,16(1)
.LVL192:
	lfd 31,24(1)
.LVL193:
	addi 1,1,32
	.cfi_remember_state
.LCFI37:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
.LVL194:
.L163:
.LCFI38:
	.cfi_restore_state
	.loc 1 828 0
	frsp 1,1
.LVL195:
.L156:
	.loc 1 830 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	beq+ 7,.L155
	.loc 1 833 0
	mr 3,31
.LVL196:
	bl SV_FakePushMove
.LVL197:
	b .L155
.L164:
	.loc 1 839 0
	lis 9,sv@ha
	.loc 1 838 0
	li 11,0
	.loc 1 839 0
	la 9,sv@l(9)
	.loc 1 842 0
	lwz 3,780(31)
	.loc 1 839 0
	lfd 0,8(9)
	.loc 1 840 0
	lwz 0,3500(9)
	.loc 1 839 0
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	frsp 0,0
	.loc 1 840 0
	subf 0,0,31
	.loc 1 838 0
	stw 11,788(31)
	.loc 1 840 0
	stw 0,112(9)
	.loc 1 841 0
	li 0,0
	stw 0,116(9)
	.loc 1 839 0
	stfs 0,124(9)
	.loc 1 842 0
	bl PR_ExecuteProgram
	.loc 1 847 0
	lwz 0,36(1)
	lwz 31,12(1)
.LVL198:
	mtlr 0
	lfd 30,16(1)
.LVL199:
	lfd 31,24(1)
.LVL200:
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI39:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE50:
	.size	SV_Physics_FakePusher, .-SV_Physics_FakePusher
	.align 2
	.globl SV_CheckStuck
	.type	SV_CheckStuck, @function
SV_CheckStuck:
.LFB51:
	.loc 1 867 0
	.cfi_startproc
.LVL201:
	mflr 0
	stwu 1,-104(1)
.LCFI40:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -52
	stw 0,108(1)
	stfd 26,56(1)
	stfd 27,64(1)
	stfd 28,72(1)
	stfd 29,80(1)
	stfd 30,88(1)
	stfd 31,96(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	.loc 1 872 0
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.cfi_offset 28, -64
	.cfi_offset 27, -68
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	bl SV_TestEntityPosition
.LVL202:
	cmpwi 7,3,0
	beq- 7,.L177
	.loc 1 879 0
	lwz 11,656(31)
	.loc 1 880 0
	mr 3,31
	.loc 1 879 0
	lwz 9,660(31)
	lwz 0,664(31)
	.loc 1 878 0
	lfs 27,644(31)
.LVL203:
	lfs 28,648(31)
.LVL204:
	lfs 26,652(31)
.LVL205:
	.loc 1 879 0
	stw 11,644(31)
	stw 9,648(31)
	stw 0,652(31)
	.loc 1 880 0
	bl SV_TestEntityPosition
.LVL206:
	cmpwi 7,3,0
	beq- 7,.L176
	lis 9,.LC13@ha
	li 27,0
	.loc 1 891 0
	lfs 31,.LC13@l(9)
	lis 29,0x4330
.L168:
.LVL207:
	.loc 1 893 0 discriminator 1
	xoris 0,27,0x8000
	stw 29,24(1)
	stw 0,28(1)
	.loc 1 867 0 discriminator 1
	li 28,-1
	.loc 1 893 0 discriminator 1
	lfd 29,24(1)
	fsub 29,29,31
	frsp 29,29
	fadds 29,26,29
.LVL208:
.L173:
	.loc 1 891 0 discriminator 1
	xoris 0,28,0x8000
	stw 29,8(1)
	stw 0,12(1)
	.loc 1 867 0 discriminator 1
	li 30,-1
	.loc 1 891 0 discriminator 1
	lfd 30,8(1)
	fsub 30,30,31
	frsp 30,30
	fadds 30,27,30
.LVL209:
.L170:
	.loc 1 892 0
	xoris 0,30,0x8000
	stw 29,16(1)
	stw 0,20(1)
	.loc 1 894 0
	mr 3,31
	.loc 1 891 0
	stfs 30,644(31)
	.loc 1 892 0
	lfd 0,16(1)
	.loc 1 893 0
	stfs 29,652(31)
	.loc 1 892 0
	fsub 0,0,31
	frsp 0,0
	fadds 0,28,0
	stfs 0,648(31)
	.loc 1 894 0
	bl SV_TestEntityPosition
	.loc 1 889 0
	cmpwi 6,30,1
	.loc 1 894 0
	cmpwi 7,3,0
	.loc 1 889 0
	addi 30,30,1
	.loc 1 894 0
	beq- 7,.L176
	.loc 1 889 0
	bne+ 6,.L170
.LVL210:
	.loc 1 888 0
	cmpwi 7,28,1
	addi 28,28,1
.LVL211:
	bne+ 7,.L173
.LVL212:
	.loc 1 887 0
	cmpwi 7,27,17
	addi 27,27,1
.LVL213:
	bne+ 7,.L168
	.loc 1 902 0
	stfs 27,644(31)
	.loc 1 903 0
	lis 3,.LC19@ha
	.loc 1 902 0
	stfs 28,648(31)
	.loc 1 903 0
	la 3,.LC19@l(3)
	.loc 1 902 0
	stfs 26,652(31)
	.loc 1 903 0
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 904 0
	lwz 0,108(1)
	lwz 27,36(1)
.LVL214:
	mtlr 0
	lwz 28,40(1)
.LVL215:
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL216:
	lfd 26,56(1)
.LVL217:
	lfd 27,64(1)
.LVL218:
	lfd 28,72(1)
.LVL219:
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
.LVL220:
.L176:
.LCFI42:
	.cfi_restore_state
	.loc 1 896 0
	lis 3,.LC18@ha
	la 3,.LC18@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 897 0
	mr 3,31
	li 4,1
	bl SV_LinkEdict
	.loc 1 904 0
	lwz 0,108(1)
	lwz 27,36(1)
	mtlr 0
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL221:
	lfd 26,56(1)
.LVL222:
	lfd 27,64(1)
.LVL223:
	lfd 28,72(1)
.LVL224:
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL225:
.L177:
.LCFI44:
	.cfi_restore_state
	.loc 1 874 0
	lwz 0,652(31)
	lwz 11,644(31)
	stw 0,664(31)
	.loc 1 904 0
	lwz 0,108(1)
	.loc 1 874 0
	lwz 9,648(31)
	.loc 1 904 0
	mtlr 0
	.loc 1 874 0
	stw 11,656(31)
	stw 9,660(31)
	.loc 1 904 0
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL226:
	lfd 26,56(1)
	lfd 27,64(1)
	lfd 28,72(1)
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE51:
	.size	SV_CheckStuck, .-SV_CheckStuck
	.align 2
	.globl SV_CheckWater
	.type	SV_CheckWater, @function
SV_CheckWater:
.LFB52:
	.loc 1 913 0
	.cfi_startproc
.LVL227:
	mflr 0
	stwu 1,-48(1)
.LCFI46:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 922 0
	lis 9,.LC8@ha
	.loc 1 924 0
	li 11,0
	.loc 1 913 0
	stfd 31,40(1)
	stw 0,52(1)
	stw 31,36(1)
	.loc 1 913 0
	mr 31,3
	.cfi_offset 31, -12
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.loc 1 922 0
	lfs 13,652(3)
	lfs 0,744(3)
	lfs 31,.LC8@l(9)
	fadds 0,13,0
	.loc 1 924 0
	stw 11,936(3)
	.loc 1 925 0
	lis 11,.LC20@ha
	.loc 1 920 0
	lwz 9,644(3)
	.loc 1 925 0
	lwz 11,.LC20@l(11)
	.loc 1 922 0
	fadds 0,0,31
	.loc 1 921 0
	lwz 0,648(3)
	.loc 1 925 0
	stw 11,940(3)
	.loc 1 926 0
	addi 3,1,8
.LVL228:
	.loc 1 920 0
	stw 9,8(1)
	.loc 1 921 0
	stw 0,12(1)
	.loc 1 922 0
	stfs 0,16(1)
	.loc 1 926 0
	bl SV_PointContents
.LVL229:
	.loc 1 927 0
	cmpwi 7,3,-2
	blt- 7,.L179
.L184:
	.loc 1 941 0
	lfs 0,936(31)
	fcmpu 7,0,31
	mfcr 3
	rlwinm 3,3,30,1
.LVL230:
.L180:
	.loc 1 963 0
	lwz 0,52(1)
	lwz 31,36(1)
.LVL231:
	mtlr 0
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
.LVL232:
.L179:
.LCFI48:
	.cfi_restore_state
	.loc 1 932 0
	xoris 3,3,0x8000
.LVL233:
	lis 0,0x4330
	.loc 1 934 0
	lfs 13,744(31)
	.loc 1 932 0
	lis 9,.LC13@ha
	.loc 1 934 0
	lfs 0,756(31)
	.loc 1 932 0
	stw 3,28(1)
	.loc 1 935 0
	addi 3,1,8
.LVL234:
	.loc 1 932 0
	stw 0,24(1)
	.loc 1 934 0
	fadds 0,13,0
	.loc 1 932 0
	lfs 13,.LC13@l(9)
	.loc 1 934 0
	lis 9,.LC22@ha
	.loc 1 932 0
	lfd 12,24(1)
	.loc 1 934 0
	lfs 11,.LC22@l(9)
	.loc 1 932 0
	fsub 13,12,13
	.loc 1 934 0
	lfs 12,652(31)
	.loc 1 933 0
	stfs 31,936(31)
	.loc 1 934 0
	fmadd 0,0,11,12
	.loc 1 932 0
	frsp 13,13
	.loc 1 934 0
	frsp 0,0
	.loc 1 932 0
	stfs 13,940(31)
	.loc 1 934 0
	stfs 0,16(1)
	.loc 1 935 0
	bl SV_PointContents
.LVL235:
	.loc 1 936 0
	cmpwi 7,3,-2
	bge+ 7,.L184
	.loc 1 939 0
	lfs 13,652(31)
	.loc 1 938 0
	lis 9,.LC17@ha
	.loc 1 939 0
	lfs 0,860(31)
	.loc 1 940 0
	addi 3,1,8
.LVL236:
	.loc 1 938 0
	lwz 0,.LC17@l(9)
	.loc 1 939 0
	fadds 0,13,0
	.loc 1 938 0
	stw 0,936(31)
	.loc 1 939 0
	stfs 0,16(1)
	.loc 1 940 0
	bl SV_PointContents
.LVL237:
	.loc 1 941 0
	cmpwi 7,3,-2
	bge- 7,.L184
	.loc 1 942 0
	lis 9,.LC16@ha
	li 3,1
.LVL238:
	lwz 0,.LC16@l(9)
	stw 0,936(31)
	b .L180
	.cfi_endproc
.LFE52:
	.size	SV_CheckWater, .-SV_CheckWater
	.align 2
	.globl SV_WallFriction
	.type	SV_WallFriction, @function
SV_WallFriction:
.LFB53:
	.loc 1 972 0
	.cfi_startproc
.LVL239:
	stwu 1,-72(1)
.LCFI49:
	.cfi_def_cfa_offset 72
	mflr 0
	stw 30,56(1)
	.loc 1 977 0
	addi 5,1,32
	.loc 1 972 0
	mr 30,4
	.cfi_offset 30, -16
	.cfi_register 65, 0
	stw 31,60(1)
	.loc 1 977 0
	addi 4,1,44
.LVL240:
	.loc 1 972 0
	mr 31,3
	.cfi_offset 31, -12
	.loc 1 977 0
	addi 6,1,20
	addi 3,3,884
.LVL241:
	.loc 1 972 0
	stfd 31,64(1)
	stw 0,76(1)
	.loc 1 977 0
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	bl AngleVectors
	.loc 1 978 0
	lfs 12,24(30)
	.loc 1 980 0
	lis 9,.LC22@ha
	.loc 1 978 0
	lfs 31,48(1)
	lfs 11,44(1)
	fmuls 31,12,31
	lfs 13,20(30)
	lfs 0,28(30)
	fmadds 31,13,11,31
	lfs 11,52(1)
	fmadds 31,0,11,31
.LVL242:
	.loc 1 980 0
	lfs 11,.LC22@l(9)
	.loc 1 981 0
	lis 9,.LC3@ha
	.loc 1 980 0
	fadds 31,31,11
.LVL243:
	.loc 1 981 0
	lfs 11,.LC3@l(9)
	fcmpu 7,31,11
	cror 30,29,30
	beq+ 7,.L185
.LVL244:
	.loc 1 985 0
	lfs 10,672(31)
	.loc 1 986 0
	addi 3,30,20
	.loc 1 985 0
	lfs 11,668(31)
	.loc 1 986 0
	addi 4,1,8
	.loc 1 985 0
	fmuls 12,12,10
	lfs 1,676(31)
	fmadds 13,13,11,12
	.loc 1 986 0
	fmadds 1,0,1,13
	bl VectorScale
.LVL245:
	.loc 1 989 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	.loc 1 987 0
	lfs 13,672(31)
	.loc 1 989 0
	fadds 31,31,0
.LVL246:
	.loc 1 987 0
	lfs 0,12(1)
	lfs 12,668(31)
	fsubs 0,13,0
.LVL247:
	lfs 13,8(1)
	fsubs 13,12,13
	.loc 1 990 0
	fmuls 0,0,31
.LVL248:
	.loc 1 989 0
	fmuls 31,13,31
	.loc 1 990 0
	stfs 0,672(31)
	.loc 1 989 0
	stfs 31,668(31)
.LVL249:
.L185:
	.loc 1 991 0
	lwz 0,76(1)
	lwz 30,56(1)
.LVL250:
	mtlr 0
	lwz 31,60(1)
.LVL251:
	lfd 31,64(1)
	addi 1,1,72
.LCFI50:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE53:
	.size	SV_WallFriction, .-SV_WallFriction
	.align 2
	.globl SV_TryUnstick
	.type	SV_TryUnstick, @function
SV_TryUnstick:
.LFB54:
	.loc 1 1006 0
	.cfi_startproc
.LVL252:
	stwu 1,-192(1)
.LCFI51:
	.cfi_def_cfa_offset 192
	mflr 0
	stw 20,128(1)
	.loc 1 1014 0
	lis 20,vec3_origin@ha
	.cfi_offset 20, -64
	.cfi_register 65, 0
	.loc 1 1006 0
	stw 21,132(1)
	.loc 1 1014 0
	la 21,vec3_origin@l(20)
	.cfi_offset 21, -60
	.loc 1 1006 0
	stw 0,196(1)
	.loc 1 1014 0
	lwz 0,8(21)
	.cfi_offset 65, 4
	.loc 1 1006 0
	stw 25,148(1)
	lis 25,.LC24@ha
	.cfi_offset 25, -44
	stw 26,152(1)
	lis 26,.LC11@ha
	.cfi_offset 26, -40
	stw 27,156(1)
	.loc 1 1019 0
	lis 27,.L196@ha
	.cfi_offset 27, -36
	.loc 1 1006 0
	stfd 30,176(1)
	la 25,.LC24@l(25)
	stfd 31,184(1)
	la 26,.LC11@l(26)
	stw 22,136(1)
	.loc 1 1019 0
	la 27,.L196@l(27)
	.loc 1 1006 0
	stw 23,140(1)
	.loc 1 1021 0
	lis 22,.LC17@ha
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 1006 0
	stw 24,144(1)
	.loc 1 1028 0
	lis 23,.LC23@ha
	.loc 1 1006 0
	stw 28,160(1)
	.loc 1 1021 0
	li 28,0
	.cfi_offset 28, -32
	.cfi_offset 24, -48
	.loc 1 1006 0
	stw 29,164(1)
	mr 29,4
	.cfi_offset 29, -28
	stw 30,168(1)
	.loc 1 1016 0
	li 30,0
	.cfi_offset 30, -24
	.loc 1 1006 0
	stw 31,172(1)
	.loc 1 1006 0
	mr 31,3
	.cfi_offset 31, -20
	.loc 1 1013 0
	lfs 30,644(3)
.LVL253:
	lfs 31,648(3)
.LVL254:
	lwz 24,652(3)
.LVL255:
	.loc 1 1014 0
	stw 0,16(1)
.LVL256:
	b .L199
.LVL257:
.L188:
	.loc 1 1021 0
	lwz 0,.LC17@l(22)
	stw 28,12(1)
	stw 0,8(1)
.L197:
	.loc 1 1031 0
	addi 3,1,80
	mr 4,31
	addi 5,1,8
	bl SV_PushEntity
	.loc 1 1034 0
	lwz 0,0(29)
	.loc 1 1037 0
	lfs 1,0(25)
	mr 3,31
	.loc 1 1034 0
	stw 0,668(31)
	.loc 1 1037 0
	addi 4,1,20
	.loc 1 1035 0
	lwz 0,4(29)
	.loc 1 1036 0
	stw 28,676(31)
	.loc 1 1035 0
	stw 0,672(31)
	.loc 1 1037 0
	bl SV_FlyMove
	.loc 1 1039 0
	lfs 13,648(31)
	lfs 0,0(26)
	fsubs 13,31,13
	fabs 13,13
	fcmpu 7,13,0
	bgt- 7,.L198
	.loc 1 1040 0
	lfs 13,644(31)
	fsubs 13,30,13
	fabs 13,13
	fcmpu 7,13,0
	bgt- 7,.L198
.LVL258:
	.loc 1 1016 0
	cmpwi 7,30,7
	.loc 1 1047 0
	stfs 30,644(31)
	stfs 31,648(31)
	.loc 1 1016 0
	addi 30,30,1
.LVL259:
	.loc 1 1047 0
	stw 24,652(31)
	.loc 1 1016 0
	beq- 7,.L201
.LVL260:
.L199:
	.loc 1 1019 0
	cmplwi 7,30,7
	bgt- 7,.L188
	slwi 0,30,2
	lwzx 0,27,0
	add 0,0,27
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L196:
	.long .L188-.L196
	.long .L189-.L196
	.long .L190-.L196
	.long .L191-.L196
	.long .L192-.L196
	.long .L193-.L196
	.long .L194-.L196
	.long .L195-.L196
	.section	".text"
.L194:
	.loc 1 1027 0
	lwz 9,.LC17@l(22)
	lwz 0,.LC23@l(23)
	stw 9,8(1)
	stw 0,12(1)
	b .L197
.L193:
	.loc 1 1026 0
	lwz 9,.LC23@l(23)
	lwz 0,.LC17@l(22)
	stw 9,8(1)
	stw 0,12(1)
	b .L197
.L192:
	.loc 1 1025 0
	lwz 0,.LC17@l(22)
	stw 0,8(1)
	stw 0,12(1)
	b .L197
.L191:
	.loc 1 1024 0
	lwz 0,.LC23@l(23)
	stw 28,8(1)
	stw 0,12(1)
	b .L197
.L190:
	.loc 1 1023 0
	lwz 0,.LC23@l(23)
	stw 28,12(1)
	stw 0,8(1)
	b .L197
.L189:
	.loc 1 1022 0
	lwz 0,.LC17@l(22)
	stw 28,8(1)
	stw 0,12(1)
	b .L197
.L195:
	.loc 1 1028 0
	lwz 0,.LC23@l(23)
	stw 0,8(1)
	stw 0,12(1)
	b .L197
.LVL261:
.L201:
	.loc 1 1050 0
	lwz 11,vec3_origin@l(20)
	.loc 1 1051 0
	li 3,7
	.loc 1 1050 0
	lwz 9,4(21)
	lwz 0,8(21)
	stw 11,668(31)
	stw 9,672(31)
	stw 0,676(31)
.LVL262:
.L198:
	.loc 1 1052 0
	lwz 0,196(1)
	lwz 20,128(1)
	mtlr 0
	lwz 21,132(1)
	lwz 22,136(1)
	lwz 23,140(1)
	lwz 24,144(1)
.LVL263:
	lwz 25,148(1)
	lwz 26,152(1)
	lwz 27,156(1)
	lwz 28,160(1)
	lwz 29,164(1)
.LVL264:
	lwz 30,168(1)
	lwz 31,172(1)
.LVL265:
	lfd 30,176(1)
.LVL266:
	lfd 31,184(1)
.LVL267:
	addi 1,1,192
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
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
	blr
	.cfi_endproc
.LFE54:
	.size	SV_TryUnstick, .-SV_TryUnstick
	.align 2
	.globl SV_WalkMove
	.type	SV_WalkMove, @function
SV_WalkMove:
.LFB55:
	.loc 1 1063 0
	.cfi_startproc
.LVL268:
	mflr 0
	stwu 1,-288(1)
.LCFI53:
	.cfi_def_cfa_offset 288
	.cfi_register 65, 0
	.loc 1 1074 0
	addi 9,1,208
	.loc 1 1063 0
	stfd 30,272(1)
	stw 0,292(1)
	.loc 1 1075 0
	lis 0,0x4330
	.cfi_offset 65, 4
	.cfi_offset 62, -16
	.loc 1 1063 0
	stfd 31,280(1)
	.loc 1 1080 0
	addi 4,1,84
	.loc 1 1074 0
	lfs 0,908(3)
	.loc 1 1063 0
	stw 27,244(1)
	.loc 1 1074 0
	fctiwz 0,0
	.loc 1 1075 0
	stw 0,136(1)
	.loc 1 1063 0
	stw 28,248(1)
	stw 29,252(1)
	.loc 1 1075 0
	lis 29,.LC13@ha
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 63, -8
	.loc 1 1063 0
	stw 30,256(1)
	.loc 1 1080 0
	lis 30,host_frametime@ha
	.cfi_offset 30, -32
	.loc 1 1063 0
	stw 31,260(1)
	mr 31,3
	.cfi_offset 31, -28
	stfd 29,264(1)
	stw 23,228(1)
	stw 24,232(1)
	stw 25,236(1)
	stw 26,240(1)
	.loc 1 1074 0
	stfiwx 0,0,9
	.loc 1 1075 0
	lfs 0,.LC13@l(29)
	.loc 1 1074 0
	lwz 28,208(1)
.LVL269:
	.loc 1 1080 0
	lfd 1,host_frametime@l(30)
	.loc 1 1075 0
	rlwinm 0,28,0,23,21
	xoris 0,0,0x8000
	.loc 1 1080 0
	frsp 1,1
	.loc 1 1075 0
	stw 0,140(1)
	lfd 13,136(1)
	.loc 1 1078 0
	lwz 0,676(3)
	.loc 1 1075 0
	fsub 0,13,0
	.loc 1 1078 0
	lwz 11,668(3)
	lwz 9,672(3)
.LVL270:
	stw 0,16(1)
	.loc 1 1075 0
	frsp 0,0
	.loc 1 1077 0
	lfs 30,644(3)
.LVL271:
	lfs 31,648(3)
.LVL272:
	lwz 27,652(3)
.LVL273:
	.loc 1 1075 0
	stfs 0,908(3)
	.loc 1 1078 0
	stw 11,8(1)
	stw 9,12(1)
	.loc 1 1080 0
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 61, -24
	bl SV_FlyMove
.LVL274:
	.loc 1 1082 0
	andi. 0,3,2
	beq- 0,.L202
	.loc 1 1085 0
	andi. 9,28,512
	beq- 0,.L216
.L204:
	.loc 1 1088 0
	lis 9,.LC16@ha
	lfs 13,636(31)
	lfs 0,.LC16@l(9)
	fcmpu 7,13,0
	bne- 7,.L202
	.loc 1 1091 0
	lis 9,.LANCHOR0+52@ha
	lfs 0,.LANCHOR0+52@l(9)
	lis 9,.LC3@ha
	lfs 29,.LC3@l(9)
	fcmpu 7,0,29
	bne- 7,.L202
	.loc 1 1094 0
	lis 9,sv_player@ha
	lwz 9,sv_player@l(9)
	lfs 0,908(9)
	addi 9,1,204
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,204(1)
	andi. 9,0,2048
	bne+ 0,.L202
	.loc 1 1107 0
	lis 9,.LC25@ha
	.loc 1 1108 0
	lfs 11,16(1)
	.loc 1 1107 0
	lfs 0,.LC25@l(9)
	.loc 1 1105 0
	lis 9,vec3_origin@ha
	.loc 1 1108 0
	lfd 13,host_frametime@l(30)
	.loc 1 1105 0
	la 11,vec3_origin@l(9)
	.loc 1 1108 0
	fmr 12,0
	.loc 1 1105 0
	lwz 0,4(11)
	lwz 9,vec3_origin@l(9)
	.loc 1 1111 0
	addi 3,1,144
.LVL275:
	.loc 1 1097 0
	lwz 23,644(31)
.LVL276:
	.loc 1 1111 0
	mr 4,31
	.loc 1 1108 0
	fmsub 13,11,13,12
	.loc 1 1097 0
	lwz 24,648(31)
.LVL277:
	lwz 25,652(31)
.LVL278:
	.loc 1 1111 0
	addi 5,1,32
	.loc 1 1103 0
	stw 27,652(31)
	.loc 1 1108 0
	frsp 13,13
	.loc 1 1103 0
	stfs 30,644(31)
	stfs 31,648(31)
	.loc 1 1105 0
	stw 9,32(1)
	stw 0,36(1)
	.loc 1 1106 0
	stw 9,20(1)
	stw 0,24(1)
	.loc 1 1107 0
	stfs 0,40(1)
	.loc 1 1108 0
	stfs 13,28(1)
	.loc 1 1098 0
	lwz 26,668(31)
.LVL279:
	lwz 27,672(31)
.LVL280:
	lwz 28,676(31)
.LVL281:
	.loc 1 1111 0
	bl SV_PushEntity
.LVL282:
	.loc 1 1114 0
	lwz 0,8(1)
	.loc 1 1117 0
	mr 3,31
	lfd 1,host_frametime@l(30)
	addi 4,1,84
	.loc 1 1114 0
	stw 0,668(31)
	.loc 1 1115 0
	lwz 0,12(1)
	.loc 1 1117 0
	frsp 1,1
	.loc 1 1116 0
	stfs 29,676(31)
	.loc 1 1115 0
	stw 0,672(31)
	.loc 1 1117 0
	bl SV_FlyMove
.LVL283:
	.loc 1 1121 0
	cmpwi 0,3,0
	beq- 0,.L205
	.loc 1 1123 0
	lfs 0,648(31)
	lis 9,.LC27@ha
	fsubs 31,31,0
.LVL284:
	lfs 0,.LC27@l(9)
	fabs 31,31
	fcmpu 7,31,0
	bnl- 7,.L206
	.loc 1 1124 0
	lfs 13,644(31)
	fsubs 30,30,13
.LVL285:
	fabs 30,30
	fcmpu 7,30,0
	blt- 7,.L217
.L206:
	.loc 1 1131 0
	andi. 0,3,2
	beq- 0,.L205
	.loc 1 1132 0
	mr 3,31
.LVL286:
	addi 4,1,84
	bl SV_WallFriction
.L205:
	.loc 1 1135 0
	addi 3,1,44
	mr 4,31
	addi 5,1,20
	bl SV_PushEntity
	.loc 1 1137 0
	lis 9,.LC10@ha
	lfs 13,72(1)
	lfd 0,.LC10@l(9)
	fcmpu 7,13,0
	bng- 7,.L214
	.loc 1 1139 0
	lis 9,.LC11@ha
	lfs 13,640(31)
	lfs 0,.LC11@l(9)
	fcmpu 7,13,0
	bne- 7,.L202
	.loc 1 1141 0
	lfs 0,908(31)
	lis 0,0x4330
	addi 9,1,200
	stw 0,192(1)
	fctiwz 0,0
	stfiwx 0,0,9
	.loc 1 1142 0
	lis 9,sv+3500@ha
	.loc 1 1141 0
	lfs 0,.LC13@l(29)
	lwz 0,200(1)
	ori 0,0,512
	xoris 0,0,0x8000
	stw 0,196(1)
	.loc 1 1142 0
	lwz 0,sv+3500@l(9)
	.loc 1 1141 0
	lfd 13,192(1)
	.loc 1 1142 0
	lwz 9,80(1)
	.loc 1 1141 0
	fsub 0,13,0
	.loc 1 1142 0
	subf 0,0,9
	stw 0,792(31)
	.loc 1 1141 0
	frsp 0,0
	stfs 0,908(31)
.LVL287:
.L202:
	.loc 1 1153 0
	lwz 0,292(1)
	lwz 23,228(1)
	mtlr 0
	lwz 24,232(1)
	lwz 25,236(1)
	lwz 26,240(1)
	lwz 27,244(1)
	lwz 28,248(1)
	lwz 29,252(1)
	lwz 30,256(1)
	lwz 31,260(1)
.LVL288:
	lfd 29,264(1)
	lfd 30,272(1)
	lfd 31,280(1)
	addi 1,1,288
	.cfi_remember_state
.LCFI54:
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
	blr
.LVL289:
.L216:
.LCFI55:
	.cfi_restore_state
	.loc 1 1085 0 discriminator 1
	lis 9,.LC3@ha
	lfs 13,936(31)
	lfs 0,.LC3@l(9)
	fcmpu 7,13,0
	bne+ 7,.L204
	.loc 1 1153 0
	lwz 0,292(1)
	lwz 23,228(1)
	mtlr 0
	lwz 24,232(1)
	lwz 25,236(1)
	lwz 26,240(1)
	lwz 27,244(1)
.LVL290:
	lwz 28,248(1)
.LVL291:
	lwz 29,252(1)
	lwz 30,256(1)
	lwz 31,260(1)
.LVL292:
	lfd 29,264(1)
	lfd 30,272(1)
.LVL293:
	lfd 31,280(1)
.LVL294:
	addi 1,1,288
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI56:
	.cfi_def_cfa_offset 0
	blr
.LVL295:
.L214:
.LCFI57:
	.cfi_restore_state
	.loc 1 1150 0
	stw 23,644(31)
	stw 24,648(31)
	stw 25,652(31)
	.loc 1 1151 0
	stw 26,668(31)
	stw 27,672(31)
	stw 28,676(31)
	b .L202
.LVL296:
.L217:
	.loc 1 1126 0
	mr 3,31
.LVL297:
	addi 4,1,8
	bl SV_TryUnstick
.LVL298:
	b .L206
	.cfi_endproc
.LFE55:
	.size	SV_WalkMove, .-SV_WalkMove
	.align 2
	.globl SV_Physics_None
	.type	SV_Physics_None, @function
SV_Physics_None:
.LFB57:
	.loc 1 1247 0
	.cfi_startproc
.LVL299:
	.loc 1 1250 0
	.loc 1 1249 0
	b SV_RunThink
.LVL300:
	.cfi_endproc
.LFE57:
	.size	SV_Physics_None, .-SV_Physics_None
	.align 2
	.globl SV_Physics_Noclip
	.type	SV_Physics_Noclip, @function
SV_Physics_Noclip:
.LFB58:
	.loc 1 1277 0
	.cfi_startproc
.LVL301:
	mflr 0
	stwu 1,-16(1)
.LCFI58:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 1279 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl SV_RunThink
.LVL302:
	cmpwi 7,3,0
	beq+ 7,.L219
	.loc 1 1282 0
	lis 30,host_frametime@ha
	addi 3,31,680
	lfd 1,host_frametime@l(30)
	mr 5,3
	addi 4,31,692
	frsp 1,1
	bl VectorMA
	.loc 1 1283 0
	lfd 1,host_frametime@l(30)
	addi 3,31,644
	addi 4,31,668
	frsp 1,1
	mr 5,3
	bl VectorMA
	.loc 1 1285 0
	mr 3,31
	li 4,0
	bl SV_LinkEdict
.L219:
	.loc 1 1286 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL303:
	addi 1,1,16
.LCFI59:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE58:
	.size	SV_Physics_Noclip, .-SV_Physics_Noclip
	.align 2
	.globl SV_CheckWaterTransition
	.type	SV_CheckWaterTransition, @function
SV_CheckWaterTransition:
.LFB59:
	.loc 1 1303 0
	.cfi_startproc
.LVL304:
	stwu 1,-48(1)
.LCFI60:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 1313 0
	addi 3,3,644
.LVL305:
	.loc 1 1303 0
	stw 30,40(1)
	stw 0,52(1)
	stw 29,36(1)
	.loc 1 1313 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl SV_PointContents
	.loc 1 1315 0
	lis 9,.LC3@ha
	lfs 0,940(31)
	lfs 13,.LC3@l(9)
	.loc 1 1313 0
	mr 30,3
.LVL306:
	.loc 1 1315 0
	fcmpu 7,0,13
	beq- 7,.L228
	.loc 1 1322 0
	cmpwi 7,3,-2
	bge- 7,.L224
	.loc 1 1324 0
	lis 9,.LC20@ha
	lis 29,.LC8@ha
	lfs 13,.LC20@l(9)
	fcmpu 7,0,13
	beq- 7,.L229
.LVL307:
.L225:
	.loc 1 1328 0
	xoris 30,30,0x8000
.LVL308:
	lis 0,0x4330
	stw 30,20(1)
	lis 9,.LC13@ha
	stw 0,16(1)
	lfs 0,.LC13@l(9)
	lfd 13,16(1)
	.loc 1 1329 0
	lwz 0,.LC8@l(29)
	.loc 1 1328 0
	fsub 0,13,0
	.loc 1 1341 0
	lwz 29,36(1)
	.loc 1 1329 0
	stw 0,936(31)
	.loc 1 1341 0
	lwz 0,52(1)
	.loc 1 1328 0
	frsp 0,0
	.loc 1 1341 0
	lwz 30,40(1)
.LVL309:
	mtlr 0
	.loc 1 1328 0
	stfs 0,940(31)
	.loc 1 1341 0
	lwz 31,44(1)
.LVL310:
	addi 1,1,48
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL311:
.L224:
.LCFI62:
	.cfi_restore_state
	.loc 1 1333 0
	lis 29,.LC20@ha
	lfs 13,.LC20@l(29)
	fcmpu 7,0,13
	beq- 7,.L226
	.loc 1 1333 0 is_stmt 0 discriminator 1
	lis 9,.LC23@ha
	lfs 13,.LC23@l(9)
	fcmpu 7,0,13
	bne- 7,.L230
.LVL312:
.L226:
	.loc 1 1339 0 is_stmt 1
	xoris 30,30,0x8000
.LVL313:
	lis 0,0x4330
	stw 30,28(1)
	lis 9,.LC13@ha
	stw 0,24(1)
	lfs 0,.LC13@l(9)
	lfd 13,24(1)
	.loc 1 1338 0
	lwz 0,.LC20@l(29)
	.loc 1 1339 0
	fsub 0,13,0
	.loc 1 1341 0
	lwz 29,36(1)
	.loc 1 1338 0
	stw 0,940(31)
	.loc 1 1341 0
	lwz 0,52(1)
	.loc 1 1339 0
	frsp 0,0
	.loc 1 1341 0
	lwz 30,40(1)
.LVL314:
	mtlr 0
	.loc 1 1339 0
	stfs 0,936(31)
	.loc 1 1341 0
	lwz 31,44(1)
.LVL315:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI63:
	.cfi_def_cfa_offset 0
	blr
.LVL316:
.L228:
.LCFI64:
	.cfi_restore_state
	.loc 1 1317 0
	xoris 30,3,0x8000
	lis 0,0x4330
	stw 30,12(1)
	lis 9,.LC13@ha
	stw 0,8(1)
	lfs 0,.LC13@l(9)
	.loc 1 1318 0
	lis 9,.LC8@ha
	.loc 1 1317 0
	lfd 13,8(1)
	.loc 1 1318 0
	lwz 0,.LC8@l(9)
	.loc 1 1317 0
	fsub 0,13,0
	.loc 1 1341 0
	lwz 29,36(1)
	.loc 1 1318 0
	stw 0,936(31)
	.loc 1 1341 0
	lwz 0,52(1)
	.loc 1 1317 0
	frsp 0,0
	.loc 1 1341 0
	lwz 30,40(1)
	mtlr 0
	.loc 1 1317 0
	stfs 0,940(31)
	.loc 1 1341 0
	lwz 31,44(1)
.LVL317:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI65:
	.cfi_def_cfa_offset 0
	blr
.LVL318:
.L229:
.LCFI66:
	.cfi_restore_state
	.loc 1 1326 0
	lfs 1,.LC8@l(29)
	lis 5,.LC28@ha
	mr 3,31
.LVL319:
	li 4,0
	la 5,.LC28@l(5)
	li 6,255
	bl SV_StartSound
	b .L225
.L230:
	.loc 1 1336 0
	lis 9,.LC8@ha
	lis 5,.LC28@ha
	lfs 1,.LC8@l(9)
	mr 3,31
	li 4,0
	la 5,.LC28@l(5)
	li 6,255
	bl SV_StartSound
	b .L226
	.cfi_endproc
.LFE59:
	.size	SV_CheckWaterTransition, .-SV_CheckWaterTransition
	.align 2
	.globl SV_Physics_Toss
	.type	SV_Physics_Toss, @function
SV_Physics_Toss:
.LFB60:
	.loc 1 1351 0
	.cfi_startproc
.LVL320:
	mflr 0
	stwu 1,-160(1)
.LCFI67:
	.cfi_def_cfa_offset 160
	.cfi_register 65, 0
	stw 31,156(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,164(1)
	stw 29,148(1)
	stw 30,152(1)
	.loc 1 1366 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl SV_RunThink
.LVL321:
	cmpwi 7,3,0
	beq- 7,.L231
	.loc 1 1389 0
	lfs 0,908(31)
	addi 9,1,140
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,140(1)
	andi. 9,0,512
	beq- 0,.L240
.L231:
	.loc 1 1446 0
	lwz 0,164(1)
	lwz 29,148(1)
	mtlr 0
	lwz 30,152(1)
	lwz 31,156(1)
.LVL322:
	addi 1,1,160
	.cfi_remember_state
.LCFI68:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL323:
.L240:
.LCFI69:
	.cfi_restore_state
.LBB4:
.LBB5:
	.loc 1 1392 0
	mr 3,31
	bl SV_CheckVelocity
	.loc 1 1395 0
	lis 9,.LC30@ha
	lfs 0,636(31)
	lfs 13,.LC30@l(9)
	fcmpu 7,0,13
	beq- 7,.L233
	.loc 1 1396 0
	lis 9,.LC15@ha
	lfs 13,.LC15@l(9)
	fcmpu 7,0,13
	bne- 7,.L241
.L233:
	.loc 1 1401 0
	lis 30,host_frametime@ha
	addi 3,31,680
	lfd 1,host_frametime@l(30)
	mr 5,3
	addi 4,31,692
	frsp 1,1
	bl VectorMA
	.loc 1 1407 0
	lfd 1,host_frametime@l(30)
	addi 30,31,668
	addi 4,1,8
	frsp 1,1
	mr 3,30
	bl VectorScale
	.loc 1 1408 0
	addi 3,1,80
	mr 4,31
	addi 5,1,8
	bl SV_PushEntity
	addi 3,1,20
	addi 4,1,80
	li 5,40
	bl memcpy
	.loc 1 1412 0
	lis 9,.LC8@ha
	lfs 1,.LC8@l(9)
	lfs 0,24(1)
	fcmpu 7,0,1
	beq- 7,.L231
	.loc 1 1414 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L231
	.loc 1 1417 0
	lis 29,.LC31@ha
	lfs 13,636(31)
	lfs 0,.LC31@l(29)
	fcmpu 7,13,0
	bne- 7,.L234
	.loc 1 1418 0
	lis 9,.LC29@ha
	lfs 1,.LC29@l(9)
.L234:
.LVL324:
	.loc 1 1426 0
	mr 3,30
	addi 4,1,40
	mr 5,30
	bl ClipVelocity
.LVL325:
	.loc 1 1429 0
	lis 9,.LC10@ha
	lfs 13,48(1)
	lfd 0,.LC10@l(9)
	fcmpu 7,13,0
	bng- 7,.L235
	.loc 1 1434 0
	lis 9,.LC32@ha
	lfs 13,676(31)
	lfs 0,.LC32@l(9)
	fcmpu 7,13,0
	blt- 7,.L237
	lfs 0,.LC31@l(29)
	lfs 13,636(31)
	fcmpu 7,13,0
	beq- 7,.L235
.L237:
	.loc 1 1437 0
	lfs 0,908(31)
	lis 0,0x4330
	addi 9,1,136
	stw 0,128(1)
	fctiwz 0,0
	lis 11,.LC13@ha
	stfiwx 0,0,9
	.loc 1 1439 0
	lis 9,vec3_origin@ha
	.loc 1 1437 0
	lfs 0,.LC13@l(11)
	.loc 1 1439 0
	la 10,vec3_origin@l(9)
	.loc 1 1437 0
	lwz 0,136(1)
	.loc 1 1438 0
	lis 11,sv+3500@ha
	lwz 8,sv+3500@l(11)
	.loc 1 1437 0
	ori 0,0,512
	.loc 1 1439 0
	lwz 11,vec3_origin@l(9)
	.loc 1 1437 0
	xoris 0,0,0x8000
	stw 0,132(1)
	lfd 13,128(1)
	.loc 1 1439 0
	lwz 9,4(10)
	.loc 1 1437 0
	fsub 0,13,0
	.loc 1 1439 0
	lwz 0,8(10)
	.loc 1 1438 0
	lwz 10,56(1)
	.loc 1 1439 0
	stw 11,668(31)
	.loc 1 1437 0
	frsp 0,0
	.loc 1 1438 0
	subf 10,8,10
	stw 10,792(31)
	.loc 1 1439 0
	stw 9,672(31)
	.loc 1 1437 0
	stfs 0,908(31)
	.loc 1 1439 0
	stw 0,676(31)
	.loc 1 1440 0
	stw 11,692(31)
	stw 9,696(31)
	stw 0,700(31)
.L235:
	.loc 1 1445 0
	mr 3,31
	bl SV_CheckWaterTransition
	b .L231
.L241:
	.loc 1 1397 0
	mr 3,31
	bl SV_AddGravity
	b .L233
.LBE5:
.LBE4:
	.cfi_endproc
.LFE60:
	.size	SV_Physics_Toss, .-SV_Physics_Toss
	.align 2
	.globl SV_Physics_Client
	.type	SV_Physics_Client, @function
SV_Physics_Client:
.LFB56:
	.loc 1 1164 0
	.cfi_startproc
.LVL326:
	mflr 0
	stwu 1,-32(1)
.LCFI70:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1165 0
	addi 4,4,-1
.LVL327:
	slwi 9,4,8
	.loc 1 1164 0
	stw 31,28(1)
	stw 0,36(1)
	.loc 1 1165 0
	slwi 0,4,2
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	subf 0,0,9
	lis 9,svs+8@ha
	subf 0,4,0
	lwz 9,svs+8@l(9)
	slwi 0,0,5
	.loc 1 1164 0
	stw 29,20(1)
	.loc 1 1165 0
	subf 4,4,0
.LVL328:
	.loc 1 1164 0
	stw 30,24(1)
	.loc 1 1165 0
	slwi 4,4,3
	.loc 1 1164 0
	mr 31,3
	.loc 1 1165 0
	lbzx 0,9,4
	cmpwi 7,0,0
	bne- 7,.L253
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LVL329:
.L242:
	.loc 1 1235 0
	lwz 0,36(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL330:
	addi 1,1,32
	.cfi_remember_state
.LCFI71:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL331:
.L253:
.LCFI72:
	.cfi_restore_state
	.loc 1 1171 0
	lis 30,sv@ha
	lis 29,pr_global_struct@ha
	la 30,sv@l(30)
	lwz 9,pr_global_struct@l(29)
	lfd 0,8(30)
	.loc 1 1172 0
	lwz 0,3500(30)
	.loc 1 1171 0
	frsp 0,0
	.loc 1 1172 0
	subf 0,0,3
	.loc 1 1173 0
	lwz 3,336(9)
.LVL332:
	.loc 1 1172 0
	stw 0,112(9)
	.loc 1 1171 0
	stfs 0,124(9)
	.loc 1 1173 0
	bl PR_ExecuteProgram
	.loc 1 1178 0
	mr 3,31
	bl SV_CheckVelocity
	.loc 1 1183 0
	lfs 0,636(31)
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,12(1)
	cmplwi 7,4,10
	ble- 7,.L254
.L244:
	.loc 1 1224 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
.L251:
	.loc 1 1230 0
	mr 3,31
	li 4,1
	bl SV_LinkEdict
	.loc 1 1232 0
	lfd 0,8(30)
	.loc 1 1233 0
	lwz 0,3500(30)
	.loc 1 1232 0
	frsp 0,0
	lwz 9,pr_global_struct@l(29)
	.loc 1 1233 0
	subf 31,0,31
.LVL333:
	stw 31,112(9)
	.loc 1 1232 0
	stfs 0,124(9)
	.loc 1 1234 0
	lwz 3,340(9)
	bl PR_ExecuteProgram
	.loc 1 1235 0
	lwz 0,36(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI73:
	.cfi_def_cfa_offset 0
	blr
.LVL334:
.L254:
.LCFI74:
	.cfi_restore_state
	.loc 1 1183 0
	lis 9,.L250@ha
	slwi 0,4,2
	la 9,.L250@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L250:
	.long .L245-.L250
	.long .L244-.L250
	.long .L244-.L250
	.long .L246-.L250
	.long .L244-.L250
	.long .L247-.L250
	.long .L248-.L250
	.long .L244-.L250
	.long .L249-.L250
	.long .L244-.L250
	.long .L248-.L250
	.section	".text"
.L249:
	.loc 1 1218 0
	mr 3,31
	bl SV_RunThink
	cmpwi 7,3,0
	beq+ 7,.L242
	.loc 1 1220 0
	lis 9,host_frametime@ha
	addi 3,31,644
	lfd 1,host_frametime@l(9)
	addi 4,31,668
	mr 5,3
	frsp 1,1
	bl VectorMA
	.loc 1 1221 0
	b .L251
.L248:
	.loc 1 1208 0
	mr 3,31
	bl SV_Physics_Toss
	.loc 1 1209 0
	b .L251
.L247:
	.loc 1 1212 0
	mr 3,31
	bl SV_RunThink
	cmpwi 7,3,0
	beq+ 7,.L242
	.loc 1 1214 0
	lis 9,host_frametime@ha
	mr 3,31
	lfd 1,host_frametime@l(9)
	li 4,0
	frsp 1,1
	bl SV_FlyMove
	.loc 1 1215 0
	b .L251
.L246:
	.loc 1 1191 0
	mr 3,31
	bl SV_RunThink
	cmpwi 7,3,0
	beq+ 7,.L242
	.loc 1 1193 0
	mr 3,31
	bl SV_CheckWater
	cmpwi 7,3,0
	bne- 7,.L252
	.loc 1 1193 0 is_stmt 0 discriminator 1
	lfs 0,908(31)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
	andi. 9,0,2048
	beq- 0,.L255
.L252:
	.loc 1 1195 0 is_stmt 1
	mr 3,31
	bl SV_CheckStuck
	.loc 1 1199 0
	mr 3,31
	bl SV_WalkMove
	.loc 1 1204 0
	b .L251
.L245:
	.loc 1 1186 0
	mr 3,31
	bl SV_RunThink
	cmpwi 7,3,0
	bne+ 7,.L251
	b .L242
.L255:
	.loc 1 1194 0
	mr 3,31
	bl SV_AddGravity
	b .L252
	.cfi_endproc
.LFE56:
	.size	SV_Physics_Client, .-SV_Physics_Client
	.align 2
	.globl SV_Physics_Step
	.type	SV_Physics_Step, @function
SV_Physics_Step:
.LFB61:
	.loc 1 1574 0
	.cfi_startproc
.LVL335:
	mflr 0
	stwu 1,-40(1)
.LCFI75:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1578 0
	addi 9,1,12
	.loc 1 1574 0
	stw 31,20(1)
	stw 0,44(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -20
	stfd 30,24(1)
	.loc 1 1578 0
	lfs 0,908(3)
	.loc 1 1574 0
	stfd 31,32(1)
	.loc 1 1578 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,12(1)
	andi. 9,0,515
	bne- 0,.L257
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 1580 0
	lis 9,.LANCHOR0+32@ha
	lfs 31,676(3)
	lfs 30,.LANCHOR0+32@l(9)
.LVL336:
	.loc 1 1585 0
	bl SV_AddGravity
.LVL337:
	.loc 1 1586 0
	mr 3,31
	bl SV_CheckVelocity
	.loc 1 1587 0
	lis 9,host_frametime@ha
	lfd 1,host_frametime@l(9)
	li 4,0
	mr 3,31
	frsp 1,1
	bl SV_FlyMove
	.loc 1 1588 0
	mr 3,31
	li 4,1
	bl SV_LinkEdict
	.loc 1 1590 0
	lfs 0,908(31)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
	andi. 9,0,512
	beq- 0,.L257
	.loc 1 1580 0
	lis 9,.LC6@ha
	lfd 0,.LC6@l(9)
	fmul 30,30,0
.LVL338:
	.loc 1 1592 0
	fcmpu 7,31,30
	blt- 7,.L260
.L257:
	.loc 1 1598 0
	mr 3,31
	bl SV_RunThink
	.loc 1 1601 0
	lwz 0,44(1)
	lfd 30,24(1)
	.loc 1 1600 0
	mr 3,31
	.loc 1 1601 0
	lfd 31,32(1)
	mtlr 0
	lwz 31,20(1)
.LVL339:
	addi 1,1,40
	.cfi_remember_state
.LCFI76:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.loc 1 1600 0
	b SV_CheckWaterTransition
.LVL340:
.L260:
.LCFI77:
	.cfi_restore_state
	.loc 1 1593 0
	lis 9,.LC8@ha
	lis 5,.LC34@ha
	lfs 1,.LC8@l(9)
	mr 3,31
	li 4,0
	la 5,.LC34@l(5)
	li 6,255
	bl SV_StartSound
	.loc 1 1598 0
	mr 3,31
	bl SV_RunThink
	.loc 1 1601 0
	lwz 0,44(1)
	lfd 30,24(1)
	.loc 1 1600 0
	mr 3,31
	.loc 1 1601 0
	lfd 31,32(1)
	mtlr 0
	lwz 31,20(1)
.LVL341:
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI78:
	.cfi_def_cfa_offset 0
	.loc 1 1600 0
	b SV_CheckWaterTransition
.LVL342:
	.cfi_endproc
.LFE61:
	.size	SV_Physics_Step, .-SV_Physics_Step
	.align 2
	.globl SV_Physics
	.type	SV_Physics, @function
SV_Physics:
.LFB62:
	.loc 1 1613 0
	.cfi_startproc
	stwu 1,-88(1)
.LCFI79:
	.cfi_def_cfa_offset 88
	mflr 0
	stw 29,68(1)
	.loc 1 1620 0
	lis 29,sv@ha
	.cfi_offset 29, -20
	.cfi_register 65, 0
	la 29,sv@l(29)
	.loc 1 1613 0
	stw 27,60(1)
	.loc 1 1620 0
	lfd 0,8(29)
	.loc 1 1618 0
	lis 27,pr_global_struct@ha
	.cfi_offset 27, -28
	.loc 1 1613 0
	stw 0,92(1)
	.loc 1 1618 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 1620 0
	frsp 0,0
	.loc 1 1618 0
	lwz 9,pr_global_struct@l(27)
	.loc 1 1613 0
	stw 31,76(1)
	stfd 31,80(1)
	stw 17,20(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 26,56(1)
	stw 28,64(1)
	stw 30,72(1)
	.loc 1 1621 0
	lwz 3,332(9)
	.loc 1 1618 0
	stw 0,112(9)
	.loc 1 1619 0
	stw 0,116(9)
	.loc 1 1620 0
	stfs 0,124(9)
	.loc 1 1621 0
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	.cfi_offset 63, -8
	.cfi_offset 31, -12
	bl PR_ExecuteProgram
	.loc 1 1629 0
	lwz 0,3492(29)
	.loc 1 1628 0
	lwz 31,3500(29)
.LVL343:
	.loc 1 1629 0
	cmpwi 7,0,0
	ble- 7,.L262
	.loc 1 1634 0
	lis 9,.LC3@ha
	lis 28,pr_edict_size@ha
	.loc 1 1664 0
	lis 17,.LC37@ha
	.loc 1 1634 0
	lfs 31,.LC3@l(9)
	.loc 1 1629 0
	li 30,0
	la 28,pr_edict_size@l(28)
	.loc 1 1641 0
	lis 26,.LC0@ha
	.loc 1 1643 0
	lis 24,.LC35@ha
	.loc 1 1651 0
	lis 23,.LC1@ha
	.loc 1 1653 0
	lis 22,.LC11@ha
	.loc 1 1655 0
	lis 21,.LC36@ha
	.loc 1 1656 0
	lis 20,.LC31@ha
	.loc 1 1660 0
	lis 19,.LC30@ha
	.loc 1 1661 0
	lis 18,.LC15@ha
	.loc 1 1664 0
	la 17,.LC37@l(17)
	.loc 1 1639 0
	lis 25,svs@ha
.LVL344:
.L273:
	.loc 1 1631 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L263
	.loc 1 1634 0
	lwz 9,pr_global_struct@l(27)
	lfs 0,132(9)
	fcmpu 7,0,31
	bne- 7,.L276
.L264:
	.loc 1 1639 0
	cmpwi 7,30,0
	beq- 7,.L265
	.loc 1 1639 0 is_stmt 0 discriminator 1
	lwz 0,svs@l(25)
	cmpw 7,0,30
	bge- 7,.L277
.L265:
	.loc 1 1641 0 is_stmt 1
	lfs 0,636(31)
	lfs 13,.LC0@l(26)
	fcmpu 7,0,13
	beq- 7,.L278
	.loc 1 1643 0
	lfs 13,.LC35@l(24)
	fcmpu 7,0,13
	beq- 7,.L279
	.loc 1 1645 0
	fcmpu 7,0,31
	beq- 7,.L280
	.loc 1 1651 0
	lfs 13,.LC1@l(23)
	fcmpu 7,0,13
	beq- 7,.L281
	.loc 1 1653 0
	lfs 13,.LC11@l(22)
	fcmpu 7,0,13
	beq- 7,.L282
	.loc 1 1655 0
	lfs 13,.LC36@l(21)
	fcmpu 7,0,13
	beq- 7,.L271
	.loc 1 1656 0
	lfs 13,.LC31@l(20)
	fcmpu 7,0,13
	bne- 7,.L283
.L271:
	.loc 1 1662 0
	mr 3,31
	bl SV_Physics_Toss
.L263:
	.loc 1 1629 0
	lwz 0,3492(29)
	addi 30,30,1
.LVL345:
	cmpw 7,0,30
	lwz 0,0(28)
	add 31,31,0
.LVL346:
	bgt+ 7,.L273
.LVL347:
.L262:
	.loc 1 1667 0
	lwz 9,pr_global_struct@l(27)
	lis 11,.LC3@ha
	lfs 13,.LC3@l(11)
	lfs 0,132(9)
	fcmpu 7,0,13
	beq- 7,.L274
	.loc 1 1668 0
	lis 11,.LC8@ha
	lfs 13,.LC8@l(11)
	fsubs 0,0,13
	stfs 0,132(9)
.L274:
	.loc 1 1671 0
	lwz 0,92(1)
	.loc 1 1670 0
	lis 9,host_frametime@ha
	lfd 13,8(29)
	lfd 0,host_frametime@l(9)
	.loc 1 1671 0
	mtlr 0
	lwz 17,20(1)
	.loc 1 1670 0
	fadd 0,13,0
	.loc 1 1671 0
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
	lwz 30,72(1)
	lwz 31,76(1)
.LVL348:
	lfd 31,80(1)
	.loc 1 1670 0
	stfd 0,8(29)
	.loc 1 1671 0
	lwz 29,68(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI80:
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
	blr
.LVL349:
.L276:
.LCFI81:
	.cfi_restore_state
	.loc 1 1636 0
	mr 3,31
	li 4,1
	bl SV_LinkEdict
	b .L264
.L278:
	.loc 1 1642 0
	mr 3,31
	bl SV_Physics_Pusher
	b .L263
.L277:
	.loc 1 1640 0
	mr 3,31
	mr 4,30
	bl SV_Physics_Client
	b .L263
.L279:
	.loc 1 1644 0
	mr 3,31
	bl SV_Physics_FakePusher
	b .L263
.L280:
	.loc 1 1646 0
	mr 3,31
	bl SV_Physics_None
	b .L263
.L283:
	.loc 1 1660 0
	lfs 13,.LC30@l(19)
	fcmpu 7,0,13
	beq- 7,.L271
	.loc 1 1661 0
	lfs 13,.LC15@l(18)
	fcmpu 7,0,13
	beq+ 7,.L271
	.loc 1 1664 0
	fctiwz 0,0
	addi 11,1,8
	mr 3,17
	stfiwx 0,0,11
	lwz 4,8(1)
	crxor 6,6,6
	bl Sys_Error
	b .L263
.L281:
	.loc 1 1652 0
	mr 3,31
	bl SV_Physics_Noclip
	b .L263
.L282:
	.loc 1 1654 0
	mr 3,31
	bl SV_Physics_Step
	b .L263
	.cfi_endproc
.LFE62:
	.size	SV_Physics, .-SV_Physics
	.globl sv_nostep
	.globl sv_maxvelocity
	.globl sv_gravity
	.globl sv_stopspeed
	.globl sv_friction
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1088421888
.LC1:
	.4byte	1090519040
.LC3:
	.4byte	0
.LC8:
	.4byte	1065353216
.LC11:
	.4byte	1082130432
.LC13:
	.4byte	1501560836
.LC15:
	.4byte	1091567616
.LC16:
	.4byte	1077936128
.LC17:
	.4byte	1073741824
.LC20:
	.4byte	-1082130432
.LC22:
	.4byte	1056964608
.LC23:
	.4byte	-1073741824
.LC24:
	.4byte	1036831949
.LC25:
	.4byte	1099956224
.LC27:
	.4byte	1023410176
.LC29:
	.4byte	1069547520
.LC30:
	.4byte	1084227584
.LC31:
	.4byte	1092616192
.LC32:
	.4byte	1114636288
.LC35:
	.4byte	1095761920
.LC36:
	.4byte	1086324736
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC6:
	.4byte	-1078355559
	.4byte	-1717986918
.LC7:
	.4byte	1069128089
	.4byte	-1717986918
.LC10:
	.4byte	1072064102
	.4byte	1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	sv_maxvelocity, @object
	.size	sv_maxvelocity, 20
sv_maxvelocity:
	.long	.LC40
	.long	.LC41
	.zero	12
	.type	sv_gravity, @object
	.size	sv_gravity, 20
sv_gravity:
	.long	.LC42
	.long	.LC43
	.byte	0
	.byte	1
	.zero	10
	.type	sv_nostep, @object
	.size	sv_nostep, 20
sv_nostep:
	.long	.LC38
	.long	.LC39
	.zero	12
	.type	sv_stopspeed, @object
	.size	sv_stopspeed, 20
sv_stopspeed:
	.long	.LC44
	.long	.LC45
	.zero	12
	.type	sv_friction, @object
	.size	sv_friction, 20
sv_friction:
	.long	.LC46
	.long	.LC47
	.byte	0
	.byte	1
	.zero	10
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"entity in invalid position\n"
.LC4:
	.string	"Got a NaN velocity on %s\n"
	.zero	2
.LC5:
	.string	"Got a NaN origin on %s\n"
.LC9:
	.string	"SV_FlyMove: !trace.ent"
	.zero	1
.LC14:
	.string	"gravity"
.LC18:
	.string	"Unstuck.\n"
	.zero	2
.LC19:
	.string	"player is stuck.\n"
	.zero	2
.LC28:
	.string	"misc/h2ohit1.wav"
	.zero	3
.LC33:
	.string	"SV_Physics_client: bad movetype %i"
	.zero	1
.LC34:
	.string	"demon/dland2.wav"
	.zero	3
.LC37:
	.string	"SV_Physics: bad movetype %i"
.LC38:
	.string	"sv_nostep"
	.zero	2
.LC39:
	.string	"0"
	.zero	2
.LC40:
	.string	"sv_maxvelocity"
	.zero	1
.LC41:
	.string	"2000"
	.zero	3
.LC42:
	.string	"sv_gravity"
	.zero	1
.LC43:
	.string	"800"
.LC44:
	.string	"sv_stopspeed"
	.zero	3
.LC45:
	.string	"100"
.LC46:
	.string	"sv_friction"
.LC47:
	.string	"4"
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
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 19 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33f6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF609
	.byte	0x1
	.4byte	.LASF610
	.4byte	.LASF611
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
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x5f8
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x9
	.byte	0x20
	.4byte	0x69f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x9
	.byte	0x21
	.4byte	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0x22
	.4byte	0x919
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0x23
	.4byte	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x69f
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0xd0
	.4byte	0x1e65
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0xd2
	.4byte	0xc77
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0xd5
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0xd6
	.4byte	0x1e90
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xa
	.byte	0xd8
	.4byte	0x1e96
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xa
	.byte	0xdc
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5f8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0xd
	.4byte	.LASF102
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x919
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x9
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x9
	.byte	0x2d
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x9
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x9
	.byte	0x30
	.4byte	0x92a
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
	.4byte	.LASF108
	.byte	0x9
	.byte	0x32
	.4byte	0x92a
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
	.4byte	.LASF109
	.byte	0x9
	.byte	0x34
	.4byte	0xbf4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x9
	.byte	0x35
	.4byte	0x6a5
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
	.4byte	.LASF111
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
	.4byte	.LASF112
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x9
	.byte	0x44
	.4byte	0xc77
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
	.4byte	.LASF118
	.byte	0x9
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x9
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x9
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x9
	.byte	0x57
	.4byte	0xd97
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x9
	.byte	0x5c
	.4byte	0xd9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x9
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x9
	.byte	0x60
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x9
	.byte	0x61
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x9
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x9
	.byte	0x63
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x9
	.byte	0x64
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6ab
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x9
	.byte	0x24
	.4byte	0x5b3
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x940
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF134
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0xbf4
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x182
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x185
	.4byte	0x21d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x187
	.4byte	0x1a78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x19d
	.4byte	0x21e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x1e48
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x21eb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x21f1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x21f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x21fd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x1af
	.4byte	0x1e54
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x1e9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x2203
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x1f0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x1e96
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x2209
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x2219
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x1c2
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x1c3
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x296
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x940
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0xc77
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0xbc
	.4byte	0x1e65
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0xbe
	.4byte	0xc77
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xa
	.byte	0xc1
	.4byte	0x1e48
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xa
	.byte	0xc2
	.4byte	0x1e75
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbfa
	.uleb128 0x12
	.4byte	.LASF176
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xd97
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xd97
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0xb
	.2byte	0xa17
	.4byte	0x266c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xe04
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0xb
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0xb
	.2byte	0xa21
	.4byte	0x266c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0xb
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x2678
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0xb
	.2byte	0xa31
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xb
	.2byte	0xa33
	.4byte	0x26bd
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0xb
	.2byte	0xa37
	.4byte	0x26ce
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7d
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xdad
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0x9
	.byte	0x66
	.4byte	0x6ab
	.uleb128 0xa
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.4byte	0xdf9
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xc
	.byte	0x18
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xc
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xc
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xc
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0xc
	.byte	0x21
	.4byte	0xdb8
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdad
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xe1a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0xbf4
	.4byte	0xe2a
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF200
	.byte	0xd
	.byte	0x17
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0xd
	.byte	0x18
	.4byte	0x41
	.uleb128 0x13
	.2byte	0x170
	.byte	0xe
	.byte	0x4
	.4byte	0x117e
	.uleb128 0xf
	.string	"pad"
	.byte	0xe
	.byte	0x5
	.4byte	0x117e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xe
	.byte	0x6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xe
	.byte	0x7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xe
	.byte	0x8
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xe
	.byte	0x9
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xe
	.byte	0xa
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xe
	.byte	0xb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xe
	.byte	0xc
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xe
	.byte	0xd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xe
	.byte	0xe
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xe
	.byte	0xf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xe
	.byte	0x10
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xe
	.byte	0x11
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xe
	.byte	0x12
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xe
	.byte	0x13
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xe
	.byte	0x14
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xe
	.byte	0x15
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xe
	.byte	0x16
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xe
	.byte	0x17
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xe
	.byte	0x18
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xe
	.byte	0x19
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xe
	.byte	0x1a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xe
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xe
	.byte	0x1c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xe
	.byte	0x1d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xe
	.byte	0x1e
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xe
	.byte	0x1f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xe
	.byte	0x20
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xe
	.byte	0x21
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xe
	.byte	0x22
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xe
	.byte	0x23
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xe
	.byte	0x24
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xe
	.byte	0x25
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xe
	.byte	0x26
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xe
	.byte	0x27
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0xe
	.byte	0x28
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0xe
	.byte	0x29
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0xe
	.byte	0x2a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0xe
	.byte	0x2b
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xe
	.byte	0x2c
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xe
	.byte	0x2d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0xe
	.byte	0x2e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0xe
	.byte	0x2f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0xe
	.byte	0x30
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0xe
	.byte	0x31
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xe
	.byte	0x32
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xe
	.byte	0x33
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0xe
	.byte	0x34
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.4byte	.LASF249
	.byte	0xe
	.byte	0x35
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x9
	.4byte	.LASF250
	.byte	0xe
	.byte	0x36
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0xe
	.byte	0x37
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xe
	.byte	0x38
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xe
	.byte	0x39
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0xe
	.byte	0x3a
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0xe
	.byte	0x3b
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x118e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xe
	.byte	0x3c
	.4byte	0xe40
	.uleb128 0x13
	.2byte	0x1a4
	.byte	0xe
	.byte	0x3e
	.4byte	0x1616
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xe
	.byte	0x40
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xe
	.byte	0x41
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xe
	.byte	0x42
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0xe
	.byte	0x43
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0xe
	.byte	0x44
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF261
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
	.4byte	.LASF262
	.byte	0xe
	.byte	0x47
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF263
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
	.4byte	.LASF264
	.byte	0xe
	.byte	0x4a
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xe
	.byte	0x4b
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xe
	.byte	0x4c
	.4byte	0xe35
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xe
	.byte	0x4d
	.4byte	0xe35
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
	.4byte	.LASF267
	.byte	0xe
	.byte	0x53
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xe
	.byte	0x54
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xf
	.string	"use"
	.byte	0xe
	.byte	0x55
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0xe
	.byte	0x56
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0xe
	.byte	0x57
	.4byte	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xe
	.byte	0x58
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF272
	.byte	0xe
	.byte	0x59
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0xe
	.byte	0x5a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0xe
	.byte	0x5b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0xe
	.byte	0x5c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0xe
	.byte	0x5d
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0xe
	.byte	0x5e
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0xe
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0xe
	.byte	0x60
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0xe
	.byte	0x61
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0xe
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0xe
	.byte	0x63
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0xe
	.byte	0x64
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0xe
	.byte	0x65
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0xe
	.byte	0x66
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF286
	.byte	0xe
	.byte	0x67
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF287
	.byte	0xe
	.byte	0x68
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF288
	.byte	0xe
	.byte	0x69
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF289
	.byte	0xe
	.byte	0x6a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF290
	.byte	0xe
	.byte	0x6b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF291
	.byte	0xe
	.byte	0x6c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF292
	.byte	0xe
	.byte	0x6d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x9
	.4byte	.LASF293
	.byte	0xe
	.byte	0x6e
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x9
	.4byte	.LASF294
	.byte	0xe
	.byte	0x6f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF295
	.byte	0xe
	.byte	0x70
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x9
	.4byte	.LASF296
	.byte	0xe
	.byte	0x71
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x9
	.4byte	.LASF139
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
	.4byte	.LASF297
	.byte	0xe
	.byte	0x74
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.4byte	.LASF298
	.byte	0xe
	.byte	0x75
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x9
	.4byte	.LASF299
	.byte	0xe
	.byte	0x76
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.4byte	.LASF300
	.byte	0xe
	.byte	0x77
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x9
	.4byte	.LASF301
	.byte	0xe
	.byte	0x78
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x9
	.4byte	.LASF302
	.byte	0xe
	.byte	0x79
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x9
	.4byte	.LASF303
	.byte	0xe
	.byte	0x7a
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.4byte	.LASF304
	.byte	0xe
	.byte	0x7b
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x9
	.4byte	.LASF305
	.byte	0xe
	.byte	0x7c
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x9
	.4byte	.LASF306
	.byte	0xe
	.byte	0x7d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.4byte	.LASF307
	.byte	0xe
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.4byte	.LASF308
	.byte	0xe
	.byte	0x7f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF309
	.byte	0xe
	.byte	0x80
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x9
	.4byte	.LASF310
	.byte	0xe
	.byte	0x81
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x9
	.4byte	.LASF311
	.byte	0xe
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x9
	.4byte	.LASF312
	.byte	0xe
	.byte	0x83
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x9
	.4byte	.LASF313
	.byte	0xe
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.4byte	.LASF314
	.byte	0xe
	.byte	0x85
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x9
	.4byte	.LASF315
	.byte	0xe
	.byte	0x86
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.4byte	.LASF316
	.byte	0xe
	.byte	0x87
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x9
	.4byte	.LASF317
	.byte	0xe
	.byte	0x88
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x9
	.4byte	.LASF318
	.byte	0xe
	.byte	0x89
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x9
	.4byte	.LASF319
	.byte	0xe
	.byte	0x8a
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x9
	.4byte	.LASF320
	.byte	0xe
	.byte	0x8b
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x9
	.4byte	.LASF321
	.byte	0xe
	.byte	0x8c
	.4byte	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF322
	.byte	0xe
	.byte	0x8d
	.4byte	0x1199
	.uleb128 0x14
	.4byte	.LASF479
	.byte	0xc
	.byte	0xf
	.byte	0x18
	.4byte	0x1670
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0xf
	.byte	0x1a
	.4byte	0xe35
	.uleb128 0x15
	.4byte	.LASF323
	.byte	0xf
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF324
	.byte	0xf
	.byte	0x1c
	.4byte	0x1ba
	.uleb128 0x15
	.4byte	.LASF325
	.byte	0xf
	.byte	0x1d
	.4byte	0xe2a
	.uleb128 0x15
	.4byte	.LASF326
	.byte	0xf
	.byte	0x1e
	.4byte	0x41
	.uleb128 0x15
	.4byte	.LASF327
	.byte	0xf
	.byte	0x1f
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF328
	.byte	0xf
	.byte	0x20
	.4byte	0x1621
	.uleb128 0xd
	.4byte	.LASF329
	.2byte	0x400
	.byte	0xf
	.byte	0x25
	.4byte	0x16ec
	.uleb128 0x9
	.4byte	.LASF330
	.byte	0xf
	.byte	0x27
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF331
	.byte	0xf
	.byte	0x28
	.4byte	0x144
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF332
	.byte	0xf
	.byte	0x2a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xf
	.byte	0x2b
	.4byte	0x16ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xf
	.byte	0x2d
	.4byte	0x378
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF333
	.byte	0xf
	.byte	0x2f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0xf
	.string	"v"
	.byte	0xf
	.byte	0x30
	.4byte	0x1616
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x16fc
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF334
	.byte	0xf
	.byte	0x32
	.4byte	0x167b
	.uleb128 0xa
	.byte	0x14
	.byte	0x10
	.byte	0x16
	.4byte	0x1756
	.uleb128 0x9
	.4byte	.LASF335
	.byte	0x10
	.byte	0x18
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF336
	.byte	0x10
	.byte	0x19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF337
	.byte	0x10
	.byte	0x1a
	.4byte	0x186e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0x10
	.byte	0x1b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF338
	.byte	0x10
	.byte	0x1c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF339
	.2byte	0xfaf8
	.byte	0x10
	.byte	0x4e
	.4byte	0x186e
	.uleb128 0x9
	.4byte	.LASF340
	.byte	0x10
	.byte	0x50
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF341
	.byte	0x10
	.byte	0x51
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF342
	.byte	0x10
	.byte	0x52
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF343
	.byte	0x10
	.byte	0x53
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.4byte	.LASF344
	.byte	0x10
	.byte	0x54
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF345
	.byte	0x10
	.byte	0x56
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF346
	.byte	0x10
	.byte	0x59
	.4byte	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"cmd"
	.byte	0x10
	.byte	0x5b
	.4byte	0xdf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF347
	.byte	0x10
	.byte	0x5c
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF316
	.byte	0x10
	.byte	0x5e
	.4byte	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF348
	.byte	0x10
	.byte	0x60
	.4byte	0x1a42
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF327
	.byte	0x10
	.byte	0x61
	.4byte	0x1a20
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
	.4byte	.LASF349
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa6c
	.uleb128 0x9
	.4byte	.LASF350
	.byte	0x10
	.byte	0x65
	.4byte	0x1a53
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa70
	.uleb128 0x9
	.4byte	.LASF351
	.byte	0x10
	.byte	0x66
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab0
	.uleb128 0x9
	.4byte	.LASF352
	.byte	0x10
	.byte	0x69
	.4byte	0x1a53
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab4
	.uleb128 0x9
	.4byte	.LASF353
	.byte	0x10
	.byte	0x6c
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfaf4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1756
	.uleb128 0x6
	.4byte	.LASF354
	.byte	0x10
	.byte	0x1d
	.4byte	0x1707
	.uleb128 0x16
	.byte	0x4
	.byte	0x10
	.byte	0x21
	.4byte	0x1894
	.uleb128 0x17
	.4byte	.LASF355
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF356
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF357
	.byte	0x10
	.byte	0x21
	.4byte	0x187f
	.uleb128 0x18
	.4byte	0x10de8
	.byte	0x10
	.byte	0x23
	.4byte	0x1a00
	.uleb128 0x9
	.4byte	.LASF340
	.byte	0x10
	.byte	0x25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF358
	.byte	0x10
	.byte	0x27
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF359
	.byte	0x10
	.byte	0x28
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x10
	.byte	0x2a
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF360
	.byte	0x10
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF361
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
	.4byte	.LASF362
	.byte	0x10
	.byte	0x33
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF363
	.byte	0x10
	.byte	0x34
	.4byte	0xbf4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF364
	.byte	0x10
	.byte	0x35
	.4byte	0x1a00
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF365
	.byte	0x10
	.byte	0x36
	.4byte	0xe1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0x9
	.4byte	.LASF366
	.byte	0x10
	.byte	0x37
	.4byte	0x1a00
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a4
	.uleb128 0x9
	.4byte	.LASF367
	.byte	0x10
	.byte	0x38
	.4byte	0x1a10
	.byte	0x3
	.byte	0x23
	.uleb128 0xca4
	.uleb128 0x9
	.4byte	.LASF368
	.byte	0x10
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda4
	.uleb128 0x9
	.4byte	.LASF369
	.byte	0x10
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda8
	.uleb128 0x9
	.4byte	.LASF370
	.byte	0x10
	.byte	0x3b
	.4byte	0x1a20
	.byte	0x3
	.byte	0x23
	.uleb128 0xdac
	.uleb128 0x9
	.4byte	.LASF371
	.byte	0x10
	.byte	0x3e
	.4byte	0x1894
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb0
	.uleb128 0x9
	.4byte	.LASF372
	.byte	0x10
	.byte	0x40
	.4byte	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb4
	.uleb128 0x9
	.4byte	.LASF373
	.byte	0x10
	.byte	0x41
	.4byte	0x582
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc4
	.uleb128 0x9
	.4byte	.LASF374
	.byte	0x10
	.byte	0x43
	.4byte	0x10a
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dc4
	.uleb128 0x9
	.4byte	.LASF375
	.byte	0x10
	.byte	0x44
	.4byte	0x582
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dd4
	.uleb128 0x9
	.4byte	.LASF376
	.byte	0x10
	.byte	0x46
	.4byte	0x10a
	.byte	0x4
	.byte	0x23
	.uleb128 0x8dd4
	.uleb128 0x9
	.4byte	.LASF377
	.byte	0x10
	.byte	0x47
	.4byte	0x1a26
	.byte	0x4
	.byte	0x23
	.uleb128 0x8de4
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x1a10
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x1a20
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16fc
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1a37
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7fff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF378
	.byte	0x10
	.byte	0x48
	.4byte	0x189f
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1a53
	.uleb128 0xe
	.4byte	0x48
	.2byte	0xf9ff
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1a63
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x11
	.byte	0x34
	.4byte	0x1a78
	.uleb128 0x17
	.4byte	.LASF379
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF380
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF381
	.byte	0x11
	.byte	0x34
	.4byte	0x1a63
	.uleb128 0xa
	.byte	0x4
	.byte	0x11
	.byte	0x64
	.4byte	0x1aa6
	.uleb128 0xf
	.string	"v"
	.byte	0x11
	.byte	0x65
	.4byte	0x1aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF382
	.byte	0x11
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1ab6
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF383
	.byte	0x11
	.byte	0x67
	.4byte	0x1a83
	.uleb128 0xa
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0x1ad8
	.uleb128 0x9
	.4byte	.LASF384
	.byte	0xa
	.byte	0x3d
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF385
	.byte	0xa
	.byte	0x3e
	.4byte	0x1ac1
	.uleb128 0x8
	.4byte	.LASF386
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0x1b36
	.uleb128 0x9
	.4byte	.LASF387
	.byte	0xa
	.byte	0x54
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF388
	.byte	0xa
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xa
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF389
	.byte	0xa
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0x1b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1b46
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF390
	.byte	0xa
	.byte	0x59
	.4byte	0x1ae3
	.uleb128 0x8
	.4byte	.LASF391
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0x1c06
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0x5d
	.4byte	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF392
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF393
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF394
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF395
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF396
	.byte	0xa
	.byte	0x61
	.4byte	0x1d2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF397
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF398
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF399
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF400
	.byte	0xa
	.byte	0x64
	.4byte	0x1d31
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF401
	.byte	0xa
	.byte	0x65
	.4byte	0x1d31
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF402
	.byte	0xa
	.byte	0x66
	.4byte	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF403
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0x1d2b
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xa
	.byte	0x9a
	.4byte	0x1e48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF404
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF405
	.byte	0xa
	.byte	0xa0
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF406
	.byte	0xa
	.byte	0xa1
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF407
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF408
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0xa
	.byte	0xa5
	.4byte	0x1e4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF396
	.byte	0xa
	.byte	0xa6
	.4byte	0x1d2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF410
	.byte	0xa
	.byte	0xa7
	.4byte	0x1d2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0xa
	.byte	0xa9
	.4byte	0x1e54
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF411
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF412
	.byte	0xa
	.byte	0xb0
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF413
	.byte	0xa
	.byte	0xb1
	.4byte	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF414
	.byte	0xa
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF415
	.byte	0xa
	.byte	0xb3
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c06
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b51
	.uleb128 0x6
	.4byte	.LASF416
	.byte	0xa
	.byte	0x67
	.4byte	0x1b51
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0x1d65
	.uleb128 0xf
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF417
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF418
	.byte	0xa
	.byte	0x7c
	.4byte	0x1d42
	.uleb128 0xa
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0x1db1
	.uleb128 0x9
	.4byte	.LASF419
	.byte	0xa
	.byte	0x80
	.4byte	0x245
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF420
	.byte	0xa
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF421
	.byte	0xa
	.byte	0x82
	.4byte	0x1db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d37
	.uleb128 0x6
	.4byte	.LASF422
	.byte	0xa
	.byte	0x84
	.4byte	0x1d70
	.uleb128 0x8
	.4byte	.LASF423
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0x1e31
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.byte	0x8c
	.4byte	0x1e31
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0xa
	.byte	0x8d
	.4byte	0x1e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF424
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF425
	.byte	0xa
	.byte	0x92
	.4byte	0x1e37
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF426
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1dc2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e31
	.uleb128 0x6
	.4byte	.LASF427
	.byte	0xa
	.byte	0x94
	.4byte	0x1dc2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b46
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e3d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1db7
	.uleb128 0x6
	.4byte	.LASF428
	.byte	0xa
	.byte	0xb4
	.4byte	0x1c06
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1e75
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xc77
	.4byte	0x1e85
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF429
	.byte	0xa
	.byte	0xc6
	.4byte	0xbfa
	.uleb128 0x5
	.byte	0x4
	.4byte	0x91f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e5a
	.uleb128 0x6
	.4byte	.LASF430
	.byte	0xa
	.byte	0xdd
	.4byte	0x5f8
	.uleb128 0xa
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0x1f0a
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0xa
	.byte	0xe2
	.4byte	0x1f0a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0xa
	.byte	0xe3
	.4byte	0x1e48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF431
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF432
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF433
	.byte	0xa
	.byte	0xe6
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF434
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
	.4byte	.LASF435
	.byte	0xa
	.byte	0xe8
	.4byte	0x1ead
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x19
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x1f94
	.uleb128 0x11
	.4byte	.LASF436
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF437
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF438
	.byte	0xa
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF439
	.byte	0xa
	.2byte	0x123
	.4byte	0x1ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF440
	.byte	0xa
	.2byte	0x124
	.4byte	0x1ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x126
	.4byte	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF441
	.byte	0xa
	.2byte	0x127
	.4byte	0x1f21
	.uleb128 0x1b
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x2185
	.uleb128 0x11
	.4byte	.LASF442
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF443
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF444
	.byte	0xa
	.2byte	0x145
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF445
	.byte	0xa
	.2byte	0x146
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF446
	.byte	0xa
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF447
	.byte	0xa
	.2byte	0x148
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF448
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF449
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF450
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF424
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF451
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x14f
	.4byte	0x1a78
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0xa
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF437
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF452
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF453
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF454
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF455
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF456
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF457
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF458
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF394
	.byte	0xa
	.2byte	0x15e
	.4byte	0x2185
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF459
	.byte	0xa
	.2byte	0x15f
	.4byte	0x2185
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF460
	.byte	0xa
	.2byte	0x160
	.4byte	0xe0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF461
	.byte	0xa
	.2byte	0x161
	.4byte	0x219b
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x219b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x1f94
	.4byte	0x21ab
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF462
	.byte	0xa
	.2byte	0x162
	.4byte	0x1fa0
	.uleb128 0x1c
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x21d9
	.uleb128 0x17
	.4byte	.LASF463
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF464
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF465
	.sleb128 2
	.uleb128 0x17
	.4byte	.LASF466
	.sleb128 3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF467
	.byte	0xa
	.2byte	0x172
	.4byte	0x21b7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1da
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ea2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ad8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d65
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e85
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x1f10
	.4byte	0x2219
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1db1
	.uleb128 0xa
	.byte	0x10
	.byte	0x12
	.byte	0x16
	.4byte	0x2244
	.uleb128 0x9
	.4byte	.LASF387
	.byte	0x12
	.byte	0x18
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF388
	.byte	0x12
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF468
	.byte	0x12
	.byte	0x1a
	.4byte	0x221f
	.uleb128 0xa
	.byte	0x28
	.byte	0x12
	.byte	0x1c
	.4byte	0x22c8
	.uleb128 0x9
	.4byte	.LASF469
	.byte	0x12
	.byte	0x1e
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF470
	.byte	0x12
	.byte	0x1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF471
	.byte	0x12
	.byte	0x20
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF472
	.byte	0x12
	.byte	0x20
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.4byte	.LASF473
	.byte	0x12
	.byte	0x21
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF474
	.byte	0x12
	.byte	0x22
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x12
	.byte	0x23
	.4byte	0x2244
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"ent"
	.byte	0x12
	.byte	0x24
	.4byte	0x1a20
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF475
	.byte	0x12
	.byte	0x25
	.4byte	0x224f
	.uleb128 0x1d
	.4byte	.LASF476
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x22ff
	.uleb128 0x11
	.4byte	.LASF477
	.byte	0xb
	.2byte	0x983
	.4byte	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0xb
	.2byte	0x985
	.4byte	0x22ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22d3
	.uleb128 0x1a
	.4byte	.LASF478
	.byte	0xb
	.2byte	0x987
	.4byte	0x22d3
	.uleb128 0x1e
	.4byte	.LASF480
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x234f
	.uleb128 0x1f
	.4byte	.LASF481
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1f
	.4byte	.LASF482
	.byte	0xb
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1f
	.4byte	.LASF483
	.byte	0xb
	.2byte	0x993
	.4byte	0x2a1
	.uleb128 0x1f
	.4byte	.LASF484
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF485
	.byte	0xb
	.2byte	0x997
	.4byte	0x2311
	.uleb128 0x10
	.4byte	.LASF486
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x250f
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0xb
	.2byte	0x99f
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF487
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF488
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF489
	.byte	0xb
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF490
	.byte	0xb
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF491
	.byte	0xb
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF492
	.byte	0xb
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x21eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x20
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x250f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF493
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x250f
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF494
	.byte	0xb
	.2byte	0x9b7
	.4byte	0x1e96
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF495
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x2203
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF496
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1f1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF497
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF498
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x2520
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF499
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xe04
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF500
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x2305
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF501
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF502
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF503
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF504
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF505
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x2520
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x234f
	.uleb128 0x1a
	.4byte	.LASF506
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x235b
	.uleb128 0x12
	.4byte	.LASF507
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x266c
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF508
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF509
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF510
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF511
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF512
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xe04
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF513
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x266c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF514
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x2672
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF515
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF516
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF517
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF518
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x2678
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF519
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF520
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF349
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x2678
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF521
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x268f
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF458
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x26a0
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF451
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21ab
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2526
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x268f
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x26a0
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x26b1
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF522
	.byte	0xb
	.2byte	0xa05
	.4byte	0x2532
	.uleb128 0xb
	.4byte	0x2244
	.4byte	0x26ce
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x26b1
	.uleb128 0x1e
	.4byte	.LASF523
	.byte	0x4
	.byte	0x13
	.2byte	0x490
	.4byte	0x2734
	.uleb128 0x21
	.string	"U8"
	.byte	0x13
	.2byte	0x492
	.4byte	0x2734
	.uleb128 0x21
	.string	"S8"
	.byte	0x13
	.2byte	0x493
	.4byte	0x2739
	.uleb128 0x21
	.string	"U16"
	.byte	0x13
	.2byte	0x494
	.4byte	0x273e
	.uleb128 0x21
	.string	"S16"
	.byte	0x13
	.2byte	0x495
	.4byte	0x2743
	.uleb128 0x21
	.string	"U32"
	.byte	0x13
	.2byte	0x496
	.4byte	0x2748
	.uleb128 0x21
	.string	"S32"
	.byte	0x13
	.2byte	0x497
	.4byte	0x274d
	.uleb128 0x21
	.string	"F32"
	.byte	0x13
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
	.uleb128 0x1a
	.4byte	.LASF524
	.byte	0x13
	.2byte	0x499
	.4byte	0x26d4
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF612
	.byte	0x1
	.2byte	0x546
	.byte	0x1
	.byte	0x1
	.4byte	0x279e
	.uleb128 0x23
	.string	"ent"
	.byte	0x1
	.2byte	0x546
	.4byte	0x1a20
	.uleb128 0x24
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x548
	.4byte	0x22c8
	.uleb128 0x24
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x549
	.4byte	0x2ac
	.uleb128 0x24
	.4byte	.LASF527
	.byte	0x1
	.2byte	0x54a
	.4byte	0x7a
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF529
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x27d4
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.byte	0x3f
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LASF528
	.byte	0x1
	.byte	0x40
	.4byte	0x1a20
	.4byte	.LLST2
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF530
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST3
	.4byte	0x2819
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.byte	0x5a
	.4byte	0x1a20
	.4byte	.LLST4
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x27
	.4byte	.LASF531
	.byte	0x1
	.byte	0x5d
	.4byte	0x7a
	.4byte	.LLST6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF536
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST7
	.4byte	0x2855
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.byte	0x87
	.4byte	0x1a20
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LASF532
	.byte	0x1
	.byte	0x89
	.4byte	0x7a
	.4byte	.LLST9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF533
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST10
	.4byte	0x28a9
	.uleb128 0x28
	.string	"e1"
	.byte	0x1
	.byte	0xa2
	.4byte	0x1a20
	.4byte	.LLST11
	.uleb128 0x28
	.string	"e2"
	.byte	0x1
	.byte	0xa2
	.4byte	0x1a20
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	.LASF534
	.byte	0x1
	.byte	0xa4
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	.LASF535
	.byte	0x1
	.byte	0xa4
	.4byte	0x41
	.4byte	.LLST14
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF537
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x292d
	.uleb128 0x28
	.string	"in"
	.byte	0x1
	.byte	0xc7
	.4byte	0x292d
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF387
	.byte	0x1
	.byte	0xc7
	.4byte	0x292d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.string	"out"
	.byte	0x1
	.byte	0xc7
	.4byte	0x292d
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF538
	.byte	0x1
	.byte	0xc7
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2d
	.4byte	.LASF527
	.byte	0x1
	.byte	0xc9
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x2e
	.4byte	.LASF539
	.byte	0x1
	.byte	0xca
	.4byte	0x7a
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x41
	.uleb128 0x27
	.4byte	.LASF270
	.byte	0x1
	.byte	0xcb
	.4byte	0x41
	.4byte	.LLST16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF540
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST17
	.4byte	0x2a52
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.byte	0xee
	.4byte	0x1a20
	.4byte	.LLST18
	.uleb128 0x30
	.4byte	.LASF205
	.byte	0x1
	.byte	0xee
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0x30
	.4byte	.LASF541
	.byte	0x1
	.byte	0xee
	.4byte	0x2a52
	.4byte	.LLST20
	.uleb128 0x27
	.4byte	.LASF542
	.byte	0x1
	.byte	0xf0
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LASF543
	.byte	0x1
	.byte	0xf0
	.4byte	0x41
	.byte	0x4
	.uleb128 0x32
	.string	"dir"
	.byte	0x1
	.byte	0xf1
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.byte	0xf2
	.4byte	0x7a
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.byte	0xf3
	.4byte	0x41
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF149
	.byte	0x1
	.byte	0xf4
	.4byte	0x2a58
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.4byte	.LASF544
	.byte	0x1
	.byte	0xf5
	.4byte	0x2ac
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	.LASF545
	.byte	0x1
	.byte	0xf5
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.4byte	.LASF546
	.byte	0x1
	.byte	0xf5
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0xf6
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.byte	0xf6
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	.LASF525
	.byte	0x1
	.byte	0xf7
	.4byte	0x22c8
	.4byte	.LLST26
	.uleb128 0x32
	.string	"end"
	.byte	0x1
	.byte	0xf8
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.4byte	.LASF547
	.byte	0x1
	.byte	0xf9
	.4byte	0x7a
	.4byte	.LLST27
	.uleb128 0x27
	.4byte	.LASF270
	.byte	0x1
	.byte	0xfa
	.4byte	0x41
	.4byte	.LLST28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22c8
	.uleb128 0xb
	.4byte	0x2a1
	.4byte	0x2a6e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x4
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF548
	.byte	0x1
	.2byte	0x17c
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST29
	.4byte	0x2ab7
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1a20
	.4byte	.LLST30
	.uleb128 0x35
	.4byte	.LASF549
	.byte	0x1
	.2byte	0x17e
	.4byte	0x7a
	.4byte	.LLST31
	.uleb128 0x36
	.string	"val"
	.byte	0x1
	.2byte	0x186
	.4byte	0x2ab7
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1670
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF550
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1
	.4byte	0x22c8
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST32
	.4byte	0x2b1c
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x1a20
	.4byte	.LLST33
	.uleb128 0x38
	.4byte	.LASF551
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x292d
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x22c8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF552
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST35
	.4byte	0x2c28
	.uleb128 0x38
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x1a20
	.4byte	.LLST36
	.uleb128 0x38
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x7a
	.4byte	.LLST37
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x3a
	.string	"e"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x35
	.4byte	.LASF528
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1a20
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	.LASF555
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1a20
	.4byte	.LLST41
	.uleb128 0x39
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -32984
	.uleb128 0x39
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -32996
	.uleb128 0x39
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33008
	.uleb128 0x35
	.4byte	.LASF556
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x2ac
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x2ac
	.4byte	.LLST43
	.uleb128 0x35
	.4byte	.LASF558
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x41
	.4byte	.LLST44
	.uleb128 0x39
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x2c28
	.byte	0x4
	.byte	0x91
	.sleb128 -32972
	.uleb128 0x39
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x2678
	.byte	0x4
	.byte	0x91
	.sleb128 -24780
	.uleb128 0x35
	.4byte	.LASF561
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x7a
	.4byte	.LLST45
	.byte	0
	.uleb128 0xb
	.4byte	0x1a20
	.4byte	0x2c39
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x24d
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST46
	.4byte	0x2cb2
	.uleb128 0x38
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x24d
	.4byte	0x1a20
	.4byte	.LLST47
	.uleb128 0x38
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x24d
	.4byte	0x7a
	.4byte	.LLST48
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x24f
	.4byte	0x41
	.4byte	.LLST49
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x250
	.4byte	0x2ac
	.uleb128 0x24
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x250
	.4byte	0x2ac
	.uleb128 0x24
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x250
	.4byte	0x2ac
	.uleb128 0x24
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x251
	.4byte	0x2ac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x273
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST50
	.4byte	0x2df5
	.uleb128 0x38
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x273
	.4byte	0x1a20
	.4byte	.LLST51
	.uleb128 0x38
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x273
	.4byte	0x7a
	.4byte	.LLST52
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x275
	.4byte	0x41
	.4byte	.LLST53
	.uleb128 0x3a
	.string	"e"
	.byte	0x1
	.2byte	0x275
	.4byte	0x41
	.4byte	.LLST54
	.uleb128 0x35
	.4byte	.LASF528
	.byte	0x1
	.2byte	0x276
	.4byte	0x1a20
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	.LASF555
	.byte	0x1
	.2byte	0x276
	.4byte	0x1a20
	.4byte	.LLST56
	.uleb128 0x39
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x277
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33008
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.2byte	0x277
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33020
	.uleb128 0x35
	.4byte	.LASF564
	.byte	0x1
	.2byte	0x277
	.4byte	0x2ac
	.4byte	.LLST57
	.uleb128 0x35
	.4byte	.LASF556
	.byte	0x1
	.2byte	0x278
	.4byte	0x2ac
	.4byte	.LLST58
	.uleb128 0x35
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x278
	.4byte	0x2ac
	.4byte	.LLST59
	.uleb128 0x35
	.4byte	.LASF558
	.byte	0x1
	.2byte	0x279
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x39
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x27a
	.4byte	0x2c28
	.byte	0x4
	.byte	0x91
	.sleb128 -32996
	.uleb128 0x39
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x27b
	.4byte	0x2678
	.byte	0x4
	.byte	0x91
	.sleb128 -24804
	.uleb128 0x3b
	.string	"org"
	.byte	0x1
	.2byte	0x27c
	.4byte	0x2ac
	.uleb128 0x24
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x27c
	.4byte	0x2ac
	.uleb128 0x39
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x27d
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33032
	.uleb128 0x39
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x27d
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33044
	.uleb128 0x36
	.string	"up"
	.byte	0x1
	.2byte	0x27d
	.4byte	0x2ac
	.byte	0x4
	.byte	0x91
	.sleb128 -33056
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST61
	.4byte	0x2e50
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x1a20
	.4byte	.LLST62
	.uleb128 0x35
	.4byte	.LASF532
	.byte	0x1
	.2byte	0x301
	.4byte	0x7a
	.4byte	.LLST63
	.uleb128 0x35
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x302
	.4byte	0x7a
	.4byte	.LLST64
	.uleb128 0x35
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x303
	.4byte	0x7a
	.4byte	.LLST65
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x32c
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST66
	.4byte	0x2eab
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x1a20
	.4byte	.LLST67
	.uleb128 0x35
	.4byte	.LASF532
	.byte	0x1
	.2byte	0x32e
	.4byte	0x7a
	.4byte	.LLST68
	.uleb128 0x35
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x32f
	.4byte	0x7a
	.4byte	.LLST69
	.uleb128 0x35
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x330
	.4byte	0x7a
	.4byte	.LLST70
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF571
	.byte	0x1
	.2byte	0x362
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST71
	.4byte	0x2f10
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x362
	.4byte	0x1a20
	.4byte	.LLST72
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x364
	.4byte	0x41
	.4byte	.LLST73
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x364
	.4byte	0x41
	.4byte	.LLST74
	.uleb128 0x3a
	.string	"z"
	.byte	0x1
	.2byte	0x365
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x3a
	.string	"org"
	.byte	0x1
	.2byte	0x366
	.4byte	0x2ac
	.4byte	.LLST76
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF572
	.byte	0x1
	.2byte	0x390
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST77
	.4byte	0x2f5e
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x390
	.4byte	0x1a20
	.4byte	.LLST78
	.uleb128 0x39
	.4byte	.LASF573
	.byte	0x1
	.2byte	0x392
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x393
	.4byte	0x41
	.4byte	.LLST79
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF575
	.byte	0x1
	.2byte	0x3cb
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST80
	.4byte	0x2ffc
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x1a20
	.4byte	.LLST81
	.uleb128 0x38
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x2a52
	.4byte	.LLST82
	.uleb128 0x39
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"up"
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"d"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x7a
	.4byte	.LLST83
	.uleb128 0x3b
	.string	"i"
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x7a
	.uleb128 0x39
	.4byte	.LASF576
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x2ac
	.4byte	.LLST84
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x3ed
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST85
	.4byte	0x3087
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x1a20
	.4byte	.LLST86
	.uleb128 0x38
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x292d
	.4byte	.LLST87
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x3ef
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x35
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x2ac
	.4byte	.LLST89
	.uleb128 0x36
	.string	"dir"
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x39
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x3f2
	.4byte	0x41
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x22c8
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x426
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST90
	.4byte	0x3152
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x426
	.4byte	0x1a20
	.4byte	.LLST91
	.uleb128 0x39
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x428
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x39
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x428
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x35
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x429
	.4byte	0x2ac
	.4byte	.LLST92
	.uleb128 0x39
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x429
	.4byte	0x2ac
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x35
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2ac
	.4byte	.LLST93
	.uleb128 0x35
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x42a
	.4byte	0x2ac
	.4byte	.LLST94
	.uleb128 0x35
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x42b
	.4byte	0x41
	.4byte	.LLST95
	.uleb128 0x35
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x42c
	.4byte	0x41
	.4byte	.LLST96
	.uleb128 0x39
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x42d
	.4byte	0x22c8
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x39
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x42d
	.4byte	0x22c8
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x4de
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x317c
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x4de
	.4byte	0x1a20
	.4byte	.LLST97
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x4fc
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST98
	.4byte	0x31a7
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x4fc
	.4byte	0x1a20
	.4byte	.LLST99
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x516
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST100
	.4byte	0x31e2
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x516
	.4byte	0x1a20
	.4byte	.LLST101
	.uleb128 0x35
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x518
	.4byte	0x41
	.4byte	.LLST102
	.byte	0
	.uleb128 0x3d
	.4byte	0x275e
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST103
	.4byte	0x324d
	.uleb128 0x3e
	.4byte	0x276d
	.4byte	.LLST104
	.uleb128 0x3f
	.4byte	0x2779
	.uleb128 0x3f
	.4byte	0x2785
	.uleb128 0x3f
	.4byte	0x2791
	.uleb128 0x40
	.4byte	0x275e
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.2byte	0x546
	.uleb128 0x41
	.4byte	0x276d
	.byte	0x1
	.byte	0x6f
	.uleb128 0x42
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x43
	.4byte	0x2779
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x43
	.4byte	0x2785
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x44
	.4byte	0x2791
	.4byte	.LLST105
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF591
	.byte	0x1
	.2byte	0x48b
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST106
	.4byte	0x3288
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x48b
	.4byte	0x1a20
	.4byte	.LLST107
	.uleb128 0x34
	.string	"num"
	.byte	0x1
	.2byte	0x48b
	.4byte	0x41
	.4byte	.LLST108
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x625
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST109
	.4byte	0x32bf
	.uleb128 0x34
	.string	"ent"
	.byte	0x1
	.2byte	0x625
	.4byte	0x1a20
	.4byte	.LLST110
	.uleb128 0x24
	.4byte	.LASF593
	.byte	0x1
	.2byte	0x627
	.4byte	0x9f
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF594
	.byte	0x1
	.2byte	0x64c
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST111
	.4byte	0x32f8
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x64e
	.4byte	0x41
	.4byte	.LLST112
	.uleb128 0x3a
	.string	"ent"
	.byte	0x1
	.2byte	0x64f
	.4byte	0x1a20
	.4byte	.LLST113
	.byte	0
	.uleb128 0x45
	.4byte	.LASF595
	.byte	0x5
	.byte	0x28
	.4byte	0x2ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF596
	.byte	0x5
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF597
	.byte	0xf
	.byte	0x41
	.4byte	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF598
	.byte	0xf
	.byte	0x45
	.4byte	0x332c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x118e
	.uleb128 0x45
	.4byte	.LASF599
	.byte	0xf
	.byte	0x48
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"svs"
	.byte	0x10
	.byte	0xce
	.4byte	0x1874
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"sv"
	.byte	0x10
	.byte	0xcf
	.4byte	0x1a37
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF600
	.byte	0x10
	.byte	0xd7
	.4byte	0x1a20
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF601
	.byte	0xb
	.2byte	0xc2c
	.4byte	0x1e9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x48
	.4byte	.LASF602
	.byte	0x13
	.2byte	0x548
	.4byte	0x3386
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	0x338b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2752
	.uleb128 0x48
	.4byte	.LASF603
	.byte	0x6
	.2byte	0x14c
	.4byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.4byte	.LASF604
	.byte	0x1
	.byte	0x2a
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_friction
	.uleb128 0x4a
	.4byte	.LASF605
	.byte	0x1
	.byte	0x2b
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_stopspeed
	.uleb128 0x4a
	.4byte	.LASF606
	.byte	0x1
	.byte	0x2c
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_gravity
	.uleb128 0x4a
	.4byte	.LASF607
	.byte	0x1
	.byte	0x2d
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_maxvelocity
	.uleb128 0x4a
	.4byte	.LASF608
	.byte	0x1
	.byte	0x2e
	.4byte	0x3ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_nostep
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0x8e
	.sleb128 -668
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 788
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 788
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 112
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 116
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 304
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 304
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 668
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 672
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 676
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x9
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -244
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -244
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.byte	0x91
	.sleb128 -220
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0xf
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.byte	0x91
	.sleb128 -220
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6c
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
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-1-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 33016
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 33016
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x9
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-1-.Ltext0
	.2byte	0xf
	.byte	0x8b
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8b
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x8b
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL102-1-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 640
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 33064
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 33064
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL142-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL142-1-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
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
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL152-.Ltext0
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
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE48-.Ltext0
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
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0xc
	.byte	0x8e
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0xf
	.byte	0x8e
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x35
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 680
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 680
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 684
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 680
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 684
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 688
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x38
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x38
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL157-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 788
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 788
	.4byte	.LVL171-1-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 632
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 632
	.4byte	.LVL171-1-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 788
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 632
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202-1-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL232-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-1-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	.LCFI52-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0xb
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 288
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 288
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 288
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL274-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274-1-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-1-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL274-1-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0xb
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL282-1-.Ltext0
	.2byte	0xd
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL282-1-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0xb
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL282-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 644
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 648
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 652
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL282-1-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x9
	.byte	0x67
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x69
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x9
	.byte	0x67
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x69
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 668
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 668
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 672
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 668
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 672
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 676
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL282-1-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL274-1-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL274-1-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL302-1-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI65-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL318-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL321-1-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL323-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB56-.Ltext0
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
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI73-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL334-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI78-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL337-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL337-1-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI79-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI81-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 3500
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL349-.Ltext0
	.4byte	.LFE62-.Ltext0
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
.LASF572:
	.string	"SV_CheckWater"
.LASF69:
	.string	"canSend"
.LASF52:
	.string	"pflags"
.LASF288:
	.string	"button0"
.LASF316:
	.string	"message"
.LASF375:
	.string	"reliable_datagram_buf"
.LASF476:
	.string	"screenrect_s"
.LASF478:
	.string	"screenrect_t"
.LASF577:
	.string	"side"
.LASF419:
	.string	"vecs"
.LASF198:
	.string	"upmove"
.LASF297:
	.string	"team"
.LASF539:
	.string	"change"
.LASF555:
	.string	"block"
.LASF302:
	.string	"waterlevel"
.LASF416:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF102:
	.string	"entity_s"
.LASF194:
	.string	"entity_t"
.LASF514:
	.string	"lastlight"
.LASF255:
	.string	"SetChangeParms"
.LASF148:
	.string	"numplanes"
.LASF530:
	.string	"SV_CheckVelocity"
.LASF579:
	.string	"oldvel"
.LASF235:
	.string	"v_right"
.LASF261:
	.string	"solid"
.LASF365:
	.string	"models"
.LASF118:
	.string	"frame_start_time"
.LASF550:
	.string	"SV_PushEntity"
.LASF113:
	.string	"lightTimestamp"
.LASF456:
	.string	"binormals"
.LASF401:
	.string	"alternate_anims"
.LASF382:
	.string	"lightnormalindex"
.LASF415:
	.string	"samples"
.LASF294:
	.string	"idealpitch"
.LASF185:
	.string	"lastshadowonly"
.LASF432:
	.string	"lastclipnode"
.LASF326:
	.string	"_int"
.LASF90:
	.string	"entnext"
.LASF63:
	.string	"sa_data"
.LASF117:
	.string	"topnode"
.LASF385:
	.string	"mvertex_t"
.LASF355:
	.string	"ss_loading"
.LASF25:
	.string	"next"
.LASF468:
	.string	"plane_t"
.LASF188:
	.string	"vertices"
.LASF131:
	.string	"angles1"
.LASF132:
	.string	"angles2"
.LASF335:
	.string	"maxclients"
.LASF256:
	.string	"globalvars_t"
.LASF237:
	.string	"trace_startsolid"
.LASF503:
	.string	"cubescale"
.LASF474:
	.string	"endpos"
.LASF393:
	.string	"height"
.LASF412:
	.string	"styles"
.LASF513:
	.string	"lasthdr"
.LASF454:
	.string	"commands"
.LASF124:
	.string	"brushlightinstant"
.LASF299:
	.string	"teleport_time"
.LASF489:
	.string	"visible"
.LASF134:
	.string	"model_s"
.LASF319:
	.string	"noise1"
.LASF320:
	.string	"noise2"
.LASF321:
	.string	"noise3"
.LASF421:
	.string	"texture"
.LASF307:
	.string	"goalentity"
.LASF595:
	.string	"vec3_origin"
.LASF336:
	.string	"maxclientslimit"
.LASF166:
	.string	"hulls"
.LASF96:
	.string	"compressed_vis"
.LASF324:
	.string	"vector"
.LASF213:
	.string	"total_secrets"
.LASF62:
	.string	"sa_family"
.LASF499:
	.string	"numVisSurf"
.LASF159:
	.string	"numsurfaces"
.LASF570:
	.string	"SV_Physics_FakePusher"
.LASF281:
	.string	"ammo_rockets"
.LASF315:
	.string	"movedir"
.LASF304:
	.string	"ideal_yaw"
.LASF40:
	.string	"vec_t"
.LASF268:
	.string	"touch"
.LASF296:
	.string	"enemy"
.LASF145:
	.string	"nummodelsurfaces"
.LASF192:
	.string	"triplanes"
.LASF212:
	.string	"serverflags"
.LASF547:
	.string	"time_left"
.LASF563:
	.string	"SV_PushRotate"
.LASF422:
	.string	"mtexinfo_t"
.LASF13:
	.string	"byte"
.LASF486:
	.string	"shadowlight_s"
.LASF506:
	.string	"shadowlight_t"
.LASF272:
	.string	"groundentity"
.LASF280:
	.string	"ammo_nails"
.LASF330:
	.string	"free"
.LASF600:
	.string	"sv_player"
.LASF589:
	.string	"SV_Physics_Noclip"
.LASF285:
	.string	"chain"
.LASF100:
	.string	"index"
.LASF103:
	.string	"forcelink"
.LASF42:
	.string	"angles"
.LASF446:
	.string	"boundingradius"
.LASF101:
	.string	"ambient_sound_level"
.LASF160:
	.string	"surfaces"
.LASF138:
	.string	"synctype"
.LASF357:
	.string	"server_state_t"
.LASF123:
	.string	"aliasframeinstant"
.LASF75:
	.string	"ackSequence"
.LASF152:
	.string	"vertexes"
.LASF206:
	.string	"frametime"
.LASF79:
	.string	"sendMessage"
.LASF199:
	.string	"usercmd_t"
.LASF127:
	.string	"translate_start_time"
.LASF329:
	.string	"edict_s"
.LASF334:
	.string	"edict_t"
.LASF511:
	.string	"lastvorg"
.LASF262:
	.string	"oldorigin"
.LASF370:
	.string	"edicts"
.LASF606:
	.string	"sv_gravity"
.LASF356:
	.string	"ss_active"
.LASF293:
	.string	"v_angle"
.LASF581:
	.string	"clip"
.LASF65:
	.string	"connecttime"
.LASF51:
	.string	"light_lev"
.LASF28:
	.string	"maxs"
.LASF136:
	.string	"type"
.LASF462:
	.string	"aliashdr_t"
.LASF250:
	.string	"ClientKill"
.LASF156:
	.string	"nodes"
.LASF395:
	.string	"gl_lumitex"
.LASF89:
	.string	"entity"
.LASF583:
	.string	"downmove"
.LASF265:
	.string	"punchangle"
.LASF564:
	.string	"amove"
.LASF403:
	.string	"msurface_s"
.LASF428:
	.string	"msurface_t"
.LASF111:
	.string	"syncbase"
.LASF578:
	.string	"SV_TryUnstick"
.LASF504:
	.string	"haloalpha"
.LASF258:
	.string	"absmax"
.LASF175:
	.string	"firstsurface"
.LASF491:
	.string	"castShadow"
.LASF352:
	.string	"spawn_parms"
.LASF300:
	.string	"armortype"
.LASF601:
	.string	"causticschain"
.LASF312:
	.string	"dmg_save"
.LASF174:
	.string	"plane"
.LASF179:
	.string	"updateframe"
.LASF120:
	.string	"blend"
.LASF1:
	.string	"unsigned char"
.LASF337:
	.string	"clients"
.LASF183:
	.string	"lastblend"
.LASF500:
	.string	"scizz"
.LASF522:
	.string	"aliaslightinstant_t"
.LASF247:
	.string	"StartFrame"
.LASF10:
	.string	"float"
.LASF46:
	.string	"skin"
.LASF310:
	.string	"targetname"
.LASF520:
	.string	"tshalfangles"
.LASF33:
	.string	"numfaces"
.LASF554:
	.string	"movetime"
.LASF533:
	.string	"SV_Impact"
.LASF407:
	.string	"light_s"
.LASF408:
	.string	"light_t"
.LASF467:
	.string	"modtype_t"
.LASF309:
	.string	"target"
.LASF458:
	.string	"indecies"
.LASF404:
	.string	"firstedge"
.LASF121:
	.string	"pose1"
.LASF122:
	.string	"pose2"
.LASF599:
	.string	"pr_edict_size"
.LASF496:
	.string	"volumeVerts"
.LASF322:
	.string	"entvars_t"
.LASF181:
	.string	"lastpose1"
.LASF182:
	.string	"lastpose2"
.LASF283:
	.string	"items"
.LASF16:
	.string	"allowoverflow"
.LASF19:
	.string	"maxsize"
.LASF238:
	.string	"trace_fraction"
.LASF207:
	.string	"force_retouch"
.LASF325:
	.string	"function"
.LASF493:
	.string	"entvis"
.LASF434:
	.string	"clip_maxs"
.LASF413:
	.string	"cached_light"
.LASF353:
	.string	"old_frags"
.LASF423:
	.string	"glpoly_s"
.LASF427:
	.string	"glpoly_t"
.LASF31:
	.string	"visleafs"
.LASF350:
	.string	"ping_times"
.LASF603:
	.string	"host_frametime"
.LASF141:
	.string	"clipbox"
.LASF477:
	.string	"coords"
.LASF92:
	.string	"contents"
.LASF546:
	.string	"new_velocity"
.LASF540:
	.string	"SV_FlyMove"
.LASF354:
	.string	"server_static_t"
.LASF203:
	.string	"other"
.LASF376:
	.string	"signon"
.LASF527:
	.string	"backoff"
.LASF373:
	.string	"datagram_buf"
.LASF604:
	.string	"sv_friction"
.LASF323:
	.string	"_float"
.LASF562:
	.string	"SV_FakePushMove"
.LASF444:
	.string	"scale"
.LASF110:
	.string	"efrag"
.LASF460:
	.string	"texels"
.LASF186:
	.string	"lastpaliashdr"
.LASF267:
	.string	"size"
.LASF339:
	.string	"client_s"
.LASF567:
	.string	"right"
.LASF314:
	.string	"owner"
.LASF43:
	.string	"modelindex"
.LASF545:
	.string	"original_velocity"
.LASF128:
	.string	"origin1"
.LASF459:
	.string	"gl_lumatex"
.LASF470:
	.string	"startsolid"
.LASF176:
	.string	"aliasframeinstant_s"
.LASF399:
	.string	"anim_max"
.LASF257:
	.string	"absmin"
.LASF303:
	.string	"watertype"
.LASF363:
	.string	"worldmodel"
.LASF509:
	.string	"lastlorg"
.LASF333:
	.string	"freetime"
.LASF591:
	.string	"SV_Physics_Client"
.LASF597:
	.string	"pr_strings"
.LASF249:
	.string	"PlayerPostThink"
.LASF441:
	.string	"maliasframedesc_t"
.LASF23:
	.string	"link_s"
.LASF26:
	.string	"link_t"
.LASF154:
	.string	"edges"
.LASF180:
	.string	"paliashdr"
.LASF344:
	.string	"sendsignon"
.LASF585:
	.string	"nostepvel"
.LASF84:
	.string	"addr"
.LASF209:
	.string	"deathmatch"
.LASF610:
	.string	"d:/Data/Nintendo/TenebraeGX/src/sv_phys.c"
.LASF208:
	.string	"mapname"
.LASF372:
	.string	"datagram"
.LASF104:
	.string	"update_type"
.LASF445:
	.string	"scale_origin"
.LASF114:
	.string	"dlightframe"
.LASF409:
	.string	"polys"
.LASF560:
	.string	"moved_from"
.LASF473:
	.string	"fraction"
.LASF537:
	.string	"ClipVelocity"
.LASF402:
	.string	"offsets"
.LASF32:
	.string	"firstface"
.LASF129:
	.string	"origin2"
.LASF341:
	.string	"spawned"
.LASF236:
	.string	"trace_allsolid"
.LASF612:
	.string	"SV_Physics_Toss"
.LASF521:
	.string	"triangleVis"
.LASF475:
	.string	"trace_t"
.LASF270:
	.string	"blocked"
.LASF184:
	.string	"lastent"
.LASF119:
	.string	"frame_interval"
.LASF391:
	.string	"texture_s"
.LASF345:
	.string	"last_message"
.LASF66:
	.string	"lastMessageTime"
.LASF165:
	.string	"marksurfaces"
.LASF381:
	.string	"synctype_t"
.LASF17:
	.string	"overflowed"
.LASF346:
	.string	"netconnection"
.LASF135:
	.string	"needload"
.LASF548:
	.string	"SV_AddGravity"
.LASF588:
	.string	"SV_Physics_None"
.LASF490:
	.string	"isStatic"
.LASF461:
	.string	"frames"
.LASF608:
	.string	"sv_nostep"
.LASF411:
	.string	"lightmaptexturenum"
.LASF531:
	.string	"wishspeed"
.LASF494:
	.string	"visSurf"
.LASF59:
	.string	"value"
.LASF396:
	.string	"texturechain"
.LASF116:
	.string	"trivial_accept"
.LASF248:
	.string	"PlayerPreThink"
.LASF177:
	.string	"_next"
.LASF292:
	.string	"fixangle"
.LASF85:
	.string	"address"
.LASF308:
	.string	"spawnflags"
.LASF241:
	.string	"trace_plane_dist"
.LASF528:
	.string	"check"
.LASF587:
	.string	"downtrace"
.LASF410:
	.string	"shadowchain"
.LASF431:
	.string	"firstclipnode"
.LASF76:
	.string	"sendSequence"
.LASF405:
	.string	"texturemins"
.LASF360:
	.string	"lastcheck"
.LASF201:
	.string	"string_t"
.LASF301:
	.string	"armorvalue"
.LASF112:
	.string	"skinnum"
.LASF573:
	.string	"point"
.LASF576:
	.string	"into"
.LASF298:
	.string	"max_health"
.LASF398:
	.string	"anim_min"
.LASF150:
	.string	"leafs"
.LASF364:
	.string	"model_precache"
.LASF566:
	.string	"forward"
.LASF30:
	.string	"headnode"
.LASF142:
	.string	"clipmins"
.LASF305:
	.string	"yaw_speed"
.LASF358:
	.string	"paused"
.LASF455:
	.string	"triangles"
.LASF479:
	.string	"eval_s"
.LASF328:
	.string	"eval_t"
.LASF14:
	.string	"qboolean"
.LASF551:
	.string	"push"
.LASF279:
	.string	"ammo_shells"
.LASF55:
	.string	"name"
.LASF440:
	.string	"bboxmax"
.LASF594:
	.string	"SV_Physics"
.LASF202:
	.string	"self"
.LASF271:
	.string	"nextthink"
.LASF602:
	.string	"wgPipe"
.LASF91:
	.string	"mleaf_s"
.LASF430:
	.string	"mleaf_t"
.LASF74:
	.string	"driverdata"
.LASF590:
	.string	"SV_CheckWaterTransition"
.LASF565:
	.string	"org2"
.LASF108:
	.string	"msg_angles"
.LASF495:
	.string	"volumeCmds"
.LASF526:
	.string	"move"
.LASF532:
	.string	"thinktime"
.LASF252:
	.string	"PutClientInServer"
.LASF163:
	.string	"numclipnodes"
.LASF327:
	.string	"edict"
.LASF362:
	.string	"modelname"
.LASF311:
	.string	"dmg_take"
.LASF3:
	.string	"short unsigned int"
.LASF266:
	.string	"classname"
.LASF0:
	.string	"signed char"
.LASF342:
	.string	"dropasap"
.LASF197:
	.string	"sidemove"
.LASF146:
	.string	"numsubmodels"
.LASF519:
	.string	"tslights"
.LASF536:
	.string	"SV_RunThink"
.LASF386:
	.string	"mplane_s"
.LASF390:
	.string	"mplane_t"
.LASF217:
	.string	"parm1"
.LASF218:
	.string	"parm2"
.LASF219:
	.string	"parm3"
.LASF220:
	.string	"parm4"
.LASF221:
	.string	"parm5"
.LASF222:
	.string	"parm6"
.LASF223:
	.string	"parm7"
.LASF224:
	.string	"parm8"
.LASF225:
	.string	"parm9"
.LASF556:
	.string	"entorig"
.LASF242:
	.string	"trace_ent"
.LASF388:
	.string	"dist"
.LASF343:
	.string	"privileged"
.LASF191:
	.string	"binomials"
.LASF359:
	.string	"loadgame"
.LASF383:
	.string	"trivertx_t"
.LASF245:
	.string	"msg_entity"
.LASF161:
	.string	"numsurfedges"
.LASF41:
	.string	"vec3_t"
.LASF457:
	.string	"texcoords"
.LASF167:
	.string	"numtextures"
.LASF88:
	.string	"leafnext"
.LASF98:
	.string	"firstmarksurface"
.LASF592:
	.string	"SV_Physics_Step"
.LASF35:
	.string	"planenum"
.LASF200:
	.string	"func_t"
.LASF586:
	.string	"oldonground"
.LASF61:
	.string	"qsockaddr"
.LASF371:
	.string	"state"
.LASF414:
	.string	"cached_dlight"
.LASF463:
	.string	"mod_brush"
.LASF580:
	.string	"oldorg"
.LASF524:
	.string	"WGPipe"
.LASF442:
	.string	"ident"
.LASF447:
	.string	"eyeposition"
.LASF171:
	.string	"entities"
.LASF596:
	.string	"nanmask"
.LASF210:
	.string	"coop"
.LASF214:
	.string	"total_monsters"
.LASF485:
	.string	"lightcmd_t"
.LASF480:
	.string	"lightcmd_u"
.LASF106:
	.string	"msgtime"
.LASF492:
	.string	"halo"
.LASF510:
	.string	"lasteangles"
.LASF216:
	.string	"killed_monsters"
.LASF348:
	.string	"msgbuf"
.LASF226:
	.string	"parm10"
.LASF227:
	.string	"parm11"
.LASF228:
	.string	"parm12"
.LASF229:
	.string	"parm13"
.LASF230:
	.string	"parm14"
.LASF231:
	.string	"parm15"
.LASF232:
	.string	"parm16"
.LASF259:
	.string	"ltime"
.LASF22:
	.string	"sizebuf_s"
.LASF21:
	.string	"sizebuf_t"
.LASF205:
	.string	"time"
.LASF471:
	.string	"inopen"
.LASF20:
	.string	"cursize"
.LASF264:
	.string	"avelocity"
.LASF593:
	.string	"hitsound"
.LASF155:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF195:
	.string	"viewangles"
.LASF168:
	.string	"textures"
.LASF378:
	.string	"server_t"
.LASF561:
	.string	"solid_backup"
.LASF53:
	.string	"entity_state_t"
.LASF439:
	.string	"bboxmin"
.LASF196:
	.string	"forwardmove"
.LASF544:
	.string	"primal_velocity"
.LASF574:
	.string	"cont"
.LASF211:
	.string	"teamplay"
.LASF515:
	.string	"lightpos"
.LASF291:
	.string	"impulse"
.LASF99:
	.string	"nummarksurfaces"
.LASF525:
	.string	"trace"
.LASF438:
	.string	"interval"
.LASF501:
	.string	"filtercube"
.LASF244:
	.string	"trace_inwater"
.LASF94:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF498:
	.string	"lightCmds"
.LASF263:
	.string	"velocity"
.LASF137:
	.string	"numframes"
.LASF215:
	.string	"found_secrets"
.LASF384:
	.string	"position"
.LASF287:
	.string	"view_ofs"
.LASF70:
	.string	"sendNext"
.LASF7:
	.string	"long unsigned int"
.LASF295:
	.string	"netname"
.LASF505:
	.string	"oldlightorigin"
.LASF190:
	.string	"tangents"
.LASF54:
	.string	"cvar_s"
.LASF60:
	.string	"cvar_t"
.LASF523:
	.string	"_wgpipe"
.LASF549:
	.string	"ent_gravity"
.LASF417:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF151:
	.string	"numvertexes"
.LASF464:
	.string	"mod_sprite"
.LASF487:
	.string	"baseColor"
.LASF437:
	.string	"numposes"
.LASF406:
	.string	"extents"
.LASF83:
	.string	"receiveMessage"
.LASF187:
	.string	"shadowonly"
.LASF48:
	.string	"color"
.LASF426:
	.string	"firstvertex"
.LASF115:
	.string	"dlightbits"
.LASF313:
	.string	"dmg_inflictor"
.LASF483:
	.string	"asVec"
.LASF559:
	.string	"moved_edict"
.LASF306:
	.string	"aiment"
.LASF189:
	.string	"normals"
.LASF449:
	.string	"skinwidth"
.LASF38:
	.string	"cache_user_s"
.LASF39:
	.string	"cache_user_t"
.LASF374:
	.string	"reliable_datagram"
.LASF284:
	.string	"takedamage"
.LASF178:
	.string	"lockframe"
.LASF397:
	.string	"anim_total"
.LASF57:
	.string	"archive"
.LASF472:
	.string	"inwater"
.LASF169:
	.string	"visdata"
.LASF87:
	.string	"leaf"
.LASF553:
	.string	"pusher"
.LASF452:
	.string	"poseverts"
.LASF77:
	.string	"unreliableSendSequence"
.LASF234:
	.string	"v_up"
.LASF541:
	.string	"steptrace"
.LASF481:
	.string	"asInt"
.LASF488:
	.string	"brightness"
.LASF450:
	.string	"skinheight"
.LASF420:
	.string	"mipadjust"
.LASF331:
	.string	"area"
.LASF71:
	.string	"driver"
.LASF275:
	.string	"weapon"
.LASF369:
	.string	"max_edicts"
.LASF97:
	.string	"efrags"
.LASF86:
	.string	"efrag_s"
.LASF133:
	.string	"efrag_t"
.LASF278:
	.string	"currentammo"
.LASF286:
	.string	"deadflag"
.LASF36:
	.string	"children"
.LASF50:
	.string	"style"
.LASF542:
	.string	"bumpcount"
.LASF9:
	.string	"double"
.LASF379:
	.string	"ST_SYNC"
.LASF502:
	.string	"rspeed"
.LASF157:
	.string	"numtexinfo"
.LASF317:
	.string	"sounds"
.LASF269:
	.string	"think"
.LASF240:
	.string	"trace_plane_normal"
.LASF153:
	.string	"numedges"
.LASF193:
	.string	"lightinstant"
.LASF568:
	.string	"SV_Physics_Pusher"
.LASF394:
	.string	"gl_texturenum"
.LASF68:
	.string	"disconnected"
.LASF529:
	.string	"SV_CheckAllEnts"
.LASF332:
	.string	"num_leafs"
.LASF418:
	.string	"medge_t"
.LASF170:
	.string	"lightdata"
.LASF45:
	.string	"colormap"
.LASF18:
	.string	"data"
.LASF482:
	.string	"asFloat"
.LASF543:
	.string	"numbumps"
.LASF93:
	.string	"visframe"
.LASF607:
	.string	"sv_maxvelocity"
.LASF361:
	.string	"lastchecktime"
.LASF400:
	.string	"anim_next"
.LASF349:
	.string	"colors"
.LASF425:
	.string	"neighbours"
.LASF276:
	.string	"weaponmodel"
.LASF149:
	.string	"planes"
.LASF392:
	.string	"width"
.LASF27:
	.string	"mins"
.LASF387:
	.string	"normal"
.LASF552:
	.string	"SV_PushMove"
.LASF73:
	.string	"socket"
.LASF107:
	.string	"msg_origins"
.LASF81:
	.string	"unreliableReceiveSequence"
.LASF516:
	.string	"vieworg"
.LASF611:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF436:
	.string	"firstpose"
.LASF605:
	.string	"sv_stopspeed"
.LASF37:
	.string	"dclipnode_t"
.LASF389:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF351:
	.string	"num_pings"
.LASF95:
	.string	"parent"
.LASF518:
	.string	"extvertices"
.LASF260:
	.string	"movetype"
.LASF72:
	.string	"landriver"
.LASF368:
	.string	"num_edicts"
.LASF366:
	.string	"sound_precache"
.LASF143:
	.string	"clipmaxs"
.LASF289:
	.string	"button1"
.LASF290:
	.string	"button2"
.LASF448:
	.string	"numskins"
.LASF582:
	.string	"SV_WalkMove"
.LASF47:
	.string	"effects"
.LASF497:
	.string	"numVolumeVerts"
.LASF435:
	.string	"hull_t"
.LASF535:
	.string	"old_other"
.LASF484:
	.string	"asVoid"
.LASF125:
	.string	"numleafs"
.LASF274:
	.string	"frags"
.LASF109:
	.string	"model"
.LASF49:
	.string	"alpha"
.LASF424:
	.string	"numverts"
.LASF433:
	.string	"clip_mins"
.LASF277:
	.string	"weaponframe"
.LASF254:
	.string	"SetNewParms"
.LASF451:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF273:
	.string	"health"
.LASF584:
	.string	"nosteporg"
.LASF243:
	.string	"trace_inopen"
.LASF56:
	.string	"string"
.LASF512:
	.string	"lastlradius"
.LASF318:
	.string	"noise"
.LASF517:
	.string	"lastframeinstant"
.LASF465:
	.string	"mod_alias"
.LASF80:
	.string	"receiveSequence"
.LASF105:
	.string	"baseline"
.LASF338:
	.string	"changelevel_issued"
.LASF204:
	.string	"world"
.LASF158:
	.string	"texinfo"
.LASF164:
	.string	"clipnodes"
.LASF282:
	.string	"ammo_cells"
.LASF575:
	.string	"SV_WallFriction"
.LASF569:
	.string	"oldltime"
.LASF126:
	.string	"leafnums"
.LASF233:
	.string	"v_forward"
.LASF558:
	.string	"num_moved"
.LASF34:
	.string	"dmodel_t"
.LASF144:
	.string	"firstmodelsurface"
.LASF82:
	.string	"receiveMessageLength"
.LASF469:
	.string	"allsolid"
.LASF598:
	.string	"pr_global_struct"
.LASF147:
	.string	"submodels"
.LASF251:
	.string	"ClientConnect"
.LASF29:
	.string	"origin"
.LASF78:
	.string	"sendMessageLength"
.LASF246:
	.string	"main"
.LASF239:
	.string	"trace_endpos"
.LASF172:
	.string	"cache"
.LASF609:
	.string	"GNU C 4.6.3"
.LASF443:
	.string	"version"
.LASF162:
	.string	"surfedges"
.LASF64:
	.string	"qsocket_s"
.LASF380:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF173:
	.string	"mnode_s"
.LASF429:
	.string	"mnode_t"
.LASF253:
	.string	"ClientDisconnect"
.LASF67:
	.string	"lastSendTime"
.LASF538:
	.string	"overbounce"
.LASF534:
	.string	"old_self"
.LASF571:
	.string	"SV_CheckStuck"
.LASF340:
	.string	"active"
.LASF367:
	.string	"lightstyles"
.LASF2:
	.string	"short int"
.LASF377:
	.string	"signon_buf"
.LASF347:
	.string	"wishdir"
.LASF466:
	.string	"mod_alias3"
.LASF557:
	.string	"pushorig"
.LASF24:
	.string	"prev"
.LASF58:
	.string	"server"
.LASF44:
	.string	"frame"
.LASF508:
	.string	"lasteorg"
.LASF453:
	.string	"posedata"
.LASF139:
	.string	"flags"
.LASF130:
	.string	"rotate_start_time"
.LASF140:
	.string	"radius"
.LASF507:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
