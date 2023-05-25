	.file	"gl_shadow.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl AllocShadowLight
	.type	AllocShadowLight, @function
AllocShadowLight:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_shadow.c"
	.loc 1 65 0
	.cfi_startproc
	.loc 1 67 0
	lis 11,numShadowLights@ha
	.loc 1 68 0
	li 3,0
	.loc 1 67 0
	lwz 9,numShadowLights@l(11)
	cmpwi 7,9,127
	bgtlr- 7
	.loc 1 71 0
	mulli 0,9,2192
	lis 10,shadowlights@ha
	la 10,shadowlights@l(10)
	.loc 1 72 0
	addi 9,9,1
	.loc 1 71 0
	add 10,10,0
	.loc 1 72 0
	stw 9,numShadowLights@l(11)
	.loc 1 71 0
	stw 3,2128(10)
	.loc 1 73 0
	mr 3,10
	.loc 1 74 0
	blr
	.cfi_endproc
.LFE38:
	.size	AllocShadowLight, .-AllocShadowLight
	.align 2
	.globl R_ShadowFromDlight
	.type	R_ShadowFromDlight, @function
R_ShadowFromDlight:
.LFB39:
	.loc 1 81 0
	.cfi_startproc
.LVL0:
.LBB42:
.LBB43:
	.loc 1 67 0
	lis 11,numShadowLights@ha
.LBE43:
.LBE42:
	.loc 1 81 0
	stwu 1,-48(1)
.LCFI0:
	.cfi_def_cfa_offset 48
.LBB53:
.LBB44:
	.loc 1 67 0
	lwz 9,numShadowLights@l(11)
.LBE44:
.LBE53:
	.loc 1 81 0
	stw 22,8(1)
.LBB54:
.LBB45:
	.loc 1 67 0
	cmpwi 7,9,127
.LBE45:
.LBE54:
	.loc 1 81 0
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
.LBB55:
.LBB46:
	.loc 1 67 0
	bgt- 7,.L5
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.loc 1 71 0
	mulli 4,9,2192
.LBE46:
.LBE55:
	.loc 1 97 0
	lis 10,.LC0@ha
.LBB56:
.LBB47:
	.loc 1 71 0
	lis 12,shadowlights@ha
.LBE47:
.LBE56:
	.loc 1 88 0
	lwz 22,0(3)
	.loc 1 92 0
	lwz 0,40(3)
.LBB57:
.LBB48:
	.loc 1 71 0
	la 12,shadowlights@l(12)
.LBE48:
.LBE57:
	.loc 1 88 0
	lwz 23,4(3)
.LBB58:
.LBB49:
	.loc 1 71 0
	li 8,0
.LBE49:
.LBE58:
	.loc 1 88 0
	lwz 24,8(3)
.LBB59:
.LBB50:
	.loc 1 72 0
	addi 9,9,1
.LBE50:
.LBE59:
	.loc 1 89 0
	lwz 25,12(3)
	.loc 1 90 0
	lwz 5,32(3)
	.loc 1 91 0
	lwz 6,36(3)
	.loc 1 101 0
	lwz 26,44(3)
	.loc 1 102 0
	lwz 27,68(3)
	.loc 1 107 0
	lwz 28,48(3)
	.loc 1 108 0
	lwz 29,56(3)
	.loc 1 109 0
	lwz 30,52(3)
	.loc 1 97 0
	lwz 7,.LC0@l(10)
.LBB60:
.LBB51:
	.loc 1 71 0
	add 10,12,4
.LBE51:
.LBE60:
	.loc 1 111 0
	lwz 31,60(3)
.LBB61:
.LBB52:
	.loc 1 72 0
	stw 9,numShadowLights@l(11)
.LBE52:
.LBE61:
	.loc 1 88 0
	stwx 22,12,4
	.loc 1 92 0
	stw 0,32(10)
	.loc 1 95 0
	stw 0,20(10)
	.loc 1 88 0
	stw 23,4(10)
	stw 24,8(10)
	.loc 1 89 0
	stw 25,36(10)
	.loc 1 90 0
	stw 5,24(10)
	.loc 1 91 0
	stw 6,28(10)
	.loc 1 93 0
	stw 5,12(10)
	.loc 1 94 0
	stw 6,16(10)
	.loc 1 97 0
	stw 7,40(10)
	.loc 1 98 0
	stb 8,45(10)
	.loc 1 99 0
	stw 8,2120(10)
	.loc 1 100 0
	stw 8,2100(10)
	.loc 1 101 0
	stw 26,2124(10)
	.loc 1 102 0
	stw 27,2128(10)
	.loc 1 107 0
	stw 28,2160(10)
	.loc 1 108 0
	stw 29,2156(10)
	.loc 1 109 0
	stw 30,2164(10)
	.loc 1 117 0
	lwz 0,64(3)
	.loc 1 111 0
	stw 31,2152(10)
	.loc 1 117 0
	andi. 9,0,1
	.loc 1 112 0
	li 9,0
	stw 9,2168(10)
	.loc 1 114 0
	li 9,1
	.loc 1 113 0
	stw 7,2172(10)
	.loc 1 114 0
	stb 9,46(10)
	.loc 1 117 0
	bne- 0,.L9
	.loc 1 123 0
	andi. 0,0,2
	bne- 0,.L10
.L8:
	.loc 1 126 0
	stb 0,47(10)
.L5:
	.loc 1 128 0
	lwz 22,8(1)
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
.LCFI1:
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
.L9:
.LCFI2:
	.cfi_restore_state
	.loc 1 123 0
	andi. 0,0,2
	.loc 1 118 0
	stb 8,46(10)
	.loc 1 123 0
	beq+ 0,.L8
.L10:
	.loc 1 124 0
	li 0,1
	.loc 1 128 0
	lwz 22,8(1)
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	.loc 1 124 0
	stb 0,47(10)
	.loc 1 128 0
	addi 1,1,48
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
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE39:
	.size	R_ShadowFromDlight, .-R_ShadowFromDlight
	.align 2
	.globl R_CubeMapLookup
	.type	R_CubeMapLookup, @function
R_CubeMapLookup:
.LFB40:
	.loc 1 140 0
	.cfi_startproc
.LVL1:
	.loc 1 154 0
	li 3,0
.LVL2:
	blr
	.cfi_endproc
.LFE40:
	.size	R_CubeMapLookup, .-R_CubeMapLookup
	.align 2
	.globl R_ShadowFromEntity
	.type	R_ShadowFromEntity, @function
R_ShadowFromEntity:
.LFB41:
	.loc 1 161 0
	.cfi_startproc
.LVL3:
.LBB62:
.LBB63:
	.loc 1 67 0
	lis 11,numShadowLights@ha
.LBE63:
.LBE62:
	.loc 1 161 0
	stwu 1,-32(1)
.LCFI4:
	.cfi_def_cfa_offset 32
.LBB72:
.LBB64:
	.loc 1 67 0
	lwz 9,numShadowLights@l(11)
.LBE64:
.LBE72:
	.loc 1 161 0
	stw 29,20(1)
.LBB73:
.LBB65:
	.loc 1 67 0
	cmpwi 7,9,127
.LBE65:
.LBE73:
	.loc 1 161 0
	stw 30,24(1)
	stw 31,28(1)
.LBB74:
.LBB66:
	.loc 1 67 0
	bgt- 7,.L12
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LBE66:
.LBE74:
	.loc 1 183 0
	lwz 4,232(3)
.LBB75:
.LBB67:
	.loc 1 71 0
	mulli 6,9,2192
	.loc 1 72 0
	addi 9,9,1
.LBE67:
.LBE75:
	.loc 1 168 0
	lwz 29,112(3)
	.loc 1 183 0
	cmpwi 7,4,0
	.loc 1 170 0
	lis 8,.LC0@ha
.LBB76:
.LBB68:
	.loc 1 71 0
	lis 5,shadowlights@ha
	.loc 1 72 0
	stw 9,numShadowLights@l(11)
.LBE68:
.LBE76:
	.loc 1 169 0
	lis 9,.LC1@ha
	.loc 1 168 0
	lwz 30,116(3)
	lwz 31,120(3)
.LBB77:
.LBB69:
	.loc 1 71 0
	la 5,shadowlights@l(5)
.LBE69:
.LBE77:
	.loc 1 181 0
	lwz 12,228(3)
.LBB78:
.LBB70:
	.loc 1 71 0
	add 10,5,6
.LBE70:
.LBE78:
	.loc 1 170 0
	lwz 0,.LC0@l(8)
.LBB79:
.LBB71:
	.loc 1 71 0
	li 7,0
.LBE71:
.LBE79:
	.loc 1 169 0
	lwz 9,.LC1@l(9)
	.loc 1 168 0
	stwx 29,5,6
	.loc 1 169 0
	stw 9,36(10)
	.loc 1 168 0
	stw 30,4(10)
	stw 31,8(10)
	.loc 1 170 0
	stw 0,24(10)
	.loc 1 171 0
	stw 0,28(10)
	.loc 1 172 0
	stw 0,32(10)
	.loc 1 174 0
	stw 0,40(10)
	.loc 1 175 0
	stb 7,45(10)
	.loc 1 176 0
	stw 7,2120(10)
	.loc 1 177 0
	stw 7,2100(10)
	.loc 1 179 0
	stw 3,2128(10)
	.loc 1 181 0
	stw 12,2124(10)
	.loc 1 183 0
	beq- 7,.L14
	.loc 1 184 0
	xoris 4,4,0x8000
	lis 0,0x4330
	stw 4,12(1)
	lis 9,.LC3@ha
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(10)
.L14:
	.loc 1 191 0
	lis 9,.LC5@ha
	.loc 1 189 0
	lfs 0,212(3)
	.loc 1 191 0
	lfs 13,.LC5@l(9)
	.loc 1 189 0
	lfs 12,216(3)
	.loc 1 191 0
	fcmpu 7,0,13
	.loc 1 189 0
	lfs 11,220(3)
	stfs 0,12(10)
	stfs 12,16(10)
	stfs 11,20(10)
	.loc 1 191 0
	beq- 7,.L17
.L15:
	.loc 1 213 0
	lwz 0,236(3)
	.loc 1 209 0
	lfs 13,224(3)
	.loc 1 161 0
	andi. 9,0,1
	.loc 1 209 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	.loc 1 204 0
	lwz 5,148(3)
	.loc 1 161 0
	mfcr 9
	rlwinm 9,9,3,1
	.loc 1 209 0
	fmuls 0,13,0
	.loc 1 205 0
	lwz 6,156(3)
	.loc 1 206 0
	lwz 7,152(3)
	.loc 1 219 0
	andi. 0,0,2
	.loc 1 210 0
	lwz 11,.LC0@l(8)
	.loc 1 194 0
	li 8,0
	stw 8,2152(10)
	.loc 1 204 0
	stw 5,2160(10)
	.loc 1 205 0
	stw 6,2156(10)
	.loc 1 206 0
	stw 7,2164(10)
	.loc 1 209 0
	stfs 0,2168(10)
	.loc 1 210 0
	stw 11,2172(10)
	.loc 1 161 0
	stb 9,46(10)
	.loc 1 219 0
	bne- 0,.L18
	.loc 1 222 0
	stb 0,47(10)
.L12:
	.loc 1 225 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L17:
.LCFI6:
	.cfi_restore_state
	.loc 1 191 0 discriminator 1
	fcmpu 7,12,13
	bne- 7,.L15
	fcmpu 7,11,13
	bne- 7,.L15
	.loc 1 192 0
	lwz 0,.LC0@l(8)
	stw 0,12(10)
	.loc 1 193 0
	stw 0,16(10)
	.loc 1 194 0
	stw 0,20(10)
	b .L15
.L18:
	.loc 1 220 0
	li 0,1
	.loc 1 225 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	.loc 1 220 0
	stb 0,47(10)
	.loc 1 225 0
	addi 1,1,32
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE41:
	.size	R_ShadowFromEntity, .-R_ShadowFromEntity
	.align 2
	.globl R_MarkDlights
	.type	R_MarkDlights, @function
R_MarkDlights:
.LFB42:
	.loc 1 235 0
	.cfi_startproc
.LVL4:
	stwu 1,-32(1)
.LCFI8:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 242 0
	lis 9,.LC5@ha
	.loc 1 235 0
	stw 31,20(1)
	.loc 1 234 0
	lis 31,cl_dlights@ha
	.cfi_offset 31, -12
	.cfi_register 65, 0
	.loc 1 235 0
	stw 30,16(1)
	.loc 1 234 0
	la 31,cl_dlights@l(31)
	lis 30,cl@ha
	.cfi_offset 30, -16
	.loc 1 235 0
	stfd 31,24(1)
	stw 29,12(1)
	la 30,cl@l(30)
	stw 0,36(1)
	.loc 1 234 0
	addi 29,31,2304
	.cfi_offset 65, 4
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.loc 1 242 0
	lfs 31,.LC5@l(9)
	b .L21
.LVL5:
.L20:
	.loc 1 240 0
	addi 31,31,72
.LVL6:
	cmpw 7,31,29
	beq- 7,.L23
.LVL7:
.L21:
	.loc 1 242 0
	lfs 13,16(31)
	lfd 0,568(30)
	fcmpu 7,13,0
	blt- 7,.L20
	.loc 1 242 0 is_stmt 0 discriminator 1
	lfs 0,12(31)
	fcmpu 7,0,31
	beq+ 7,.L20
	.loc 1 244 0 is_stmt 1
	mr 3,31
	.loc 1 240 0
	addi 31,31,72
	.loc 1 244 0
	bl R_ShadowFromDlight
.LVL8:
	.loc 1 240 0
	cmpw 7,31,29
	bne+ 7,.L21
.L23:
	.loc 1 246 0
	lwz 0,36(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL9:
	lfd 31,24(1)
	addi 1,1,32
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE42:
	.size	R_MarkDlights, .-R_MarkDlights
	.align 2
	.globl R_MarkEntities
	.type	R_MarkEntities, @function
R_MarkEntities:
.LFB43:
	.loc 1 260 0
	.cfi_startproc
.LVL10:
	stwu 1,-40(1)
.LCFI10:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 28,24(1)
	.loc 1 264 0
	lis 28,cl@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	la 28,cl@l(28)
	.loc 1 260 0
	stw 0,44(1)
	.loc 1 264 0
	lwz 0,2700(28)
	.cfi_offset 65, 4
	.loc 1 260 0
	stw 25,12(1)
	.loc 1 264 0
	cmpwi 7,0,0
	.loc 1 260 0
	stw 26,16(1)
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 264 0
	ble- 7,.L24
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	lis 25,cl_static_entities@ha
	lis 26,.LC6@ha
	.loc 1 269 0
	lis 27,.LC7@ha
	.loc 1 264 0
	li 31,0
	la 25,cl_static_entities@l(25)
	la 26,.LC6@l(26)
	.loc 1 269 0
	la 27,.LC7@l(27)
.LVL11:
.L28:
	.loc 1 266 0
	mulli 29,31,584
	.loc 1 268 0
	mr 4,26
	.loc 1 264 0
	addi 31,31,1
	.loc 1 266 0
	add 29,25,29
.LVL12:
	.loc 1 268 0
	lwz 30,160(29)
	mr 3,30
	bl strcmp
	.loc 1 269 0
	mr 4,27
	.loc 1 268 0
	cmpwi 7,3,0
	.loc 1 269 0
	mr 3,30
	.loc 1 268 0
	beq- 7,.L26
	.loc 1 269 0
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L27
.L26:
	.loc 1 271 0
	mr 3,29
	bl R_ShadowFromEntity
.L27:
.LVL13:
	.loc 1 264 0
	lwz 0,2700(28)
	cmpw 7,0,31
	bgt+ 7,.L28
.LVL14:
.L24:
	.loc 1 274 0
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
	.cfi_endproc
.LFE43:
	.size	R_MarkEntities, .-R_MarkEntities
	.align 2
	.globl R_MarkShadowSurf
	.type	R_MarkShadowSurf, @function
R_MarkShadowSurf:
.LFB45:
	.loc 1 322 0
	.cfi_startproc
.LVL15:
	stwu 1,-24(1)
.LCFI12:
	.cfi_def_cfa_offset 24
	.loc 1 322 0
	mr 9,3
	.loc 1 328 0
	lwz 0,8(3)
	.loc 1 329 0
	li 3,0
.LVL16:
	.loc 1 328 0
	andi. 0,0,20
	bne- 0,.L31
.LVL17:
.LBB82:
.LBB83:
	.loc 1 334 0
	lwz 10,36(9)
	.loc 1 336 0
	lis 11,r_lightTimestamp@ha
	lwz 8,r_lightTimestamp@l(11)
	.loc 1 337 0
	mr 3,0
	.loc 1 336 0
	lwz 7,16(10)
	.loc 1 332 0
	lwz 11,4(9)
.LVL18:
	.loc 1 336 0
	cmpw 7,7,8
	beq- 7,.L31
	.loc 1 340 0
	lbz 0,16(11)
	cmpwi 7,0,1
	beq- 7,.L35
	cmplwi 7,0,1
	blt- 7,.L34
	cmpwi 7,0,2
	beq- 7,.L46
	.loc 1 352 0
	lfs 0,4(11)
	lfs 13,4(4)
	lfs 12,0(4)
	fmuls 13,13,0
	lfs 0,0(11)
	lfs 11,8(4)
	fmadds 12,12,0,13
	lfs 0,8(11)
	lfs 13,12(11)
	fmadds 0,11,0,12
	fsubs 0,0,13
.LVL19:
.L37:
	.loc 1 357 0
	lwz 0,8(9)
	lis 9,.LC5@ha
.LVL20:
	lfs 13,.LC5@l(9)
	.loc 1 360 0
	li 3,0
	.loc 1 357 0
	andi. 9,0,2
	fcmpu 7,0,13
	bne- 0,.L47
.L38:
	.loc 1 358 0
	blt- 7,.L31
.L39:
	.loc 1 364 0
	fctiwz 0,0
.LVL21:
	addi 9,1,16
	lis 0,0x4330
	.loc 1 366 0
	li 3,0
	.loc 1 364 0
	stfiwx 0,0,9
	stw 0,8(1)
	lwz 0,16(1)
	lfs 0,36(4)
	srawi 9,0,31
	xor 0,9,0
	subf 0,9,0
	lis 9,.LC3@ha
	xoris 0,0,0x8000
	lfs 13,.LC3@l(9)
	stw 0,12(1)
	lfd 12,8(1)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,13,0
	bgt- 7,.L31
	.loc 1 369 0
	stw 8,16(10)
	.loc 1 371 0
	li 3,1
.LVL22:
.L31:
.LBE83:
.LBE82:
	.loc 1 372 0
	addi 1,1,24
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	blr
.LVL23:
.L34:
.LCFI14:
	.cfi_restore_state
.LBB85:
.LBB84:
	.loc 1 343 0
	lfs 13,0(4)
	.loc 1 360 0
	li 3,0
	.loc 1 357 0
	lwz 0,8(9)
	lis 9,.LC5@ha
.LVL24:
	.loc 1 343 0
	lfs 0,12(11)
	fsubs 0,13,0
.LVL25:
	.loc 1 357 0
	lfs 13,.LC5@l(9)
	andi. 9,0,2
	fcmpu 7,0,13
	beq- 0,.L38
.L47:
	bng+ 7,.L39
	b .L31
.LVL26:
.L35:
	.loc 1 346 0
	lfs 13,4(4)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL27:
	b .L37
.LVL28:
.L46:
	.loc 1 349 0
	lfs 13,8(4)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL29:
	b .L37
.LBE84:
.LBE85:
	.cfi_endproc
.LFE45:
	.size	R_MarkShadowSurf, .-R_MarkShadowSurf
	.align 2
	.globl InShadowEntity
	.type	InShadowEntity, @function
InShadowEntity:
.LFB46:
	.loc 1 388 0
	.cfi_startproc
.LVL30:
	stwu 1,-40(1)
.LCFI15:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 30,24(1)
	.loc 1 397 0
	lis 30,currentshadowlight@ha
	.cfi_offset 30, -16
	.cfi_register 65, 0
	.loc 1 388 0
	stw 0,44(1)
	.loc 1 397 0
	lwz 9,currentshadowlight@l(30)
	lfs 12,112(3)
	lfs 9,0(9)
	lfs 10,4(9)
	lfs 11,8(9)
	fsubs 12,9,12
	lfs 13,116(3)
	lfs 0,120(3)
	fsubs 13,10,13
	.loc 1 396 0
	lwz 9,160(3)
	.loc 1 397 0
	fsubs 0,11,0
	.loc 1 388 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -12
	.cfi_offset 65, 4
.LVL31:
	.loc 1 398 0
	addi 3,1,8
.LVL32:
	.loc 1 388 0
	stfd 31,32(1)
	.loc 1 397 0
	stfs 0,16(1)
	.loc 1 396 0
	lfs 31,108(9)
	.cfi_offset 63, -8
.LVL33:
	.loc 1 397 0
	stfs 12,8(1)
	stfs 13,12(1)
	.loc 1 398 0
	bl Length
.LVL34:
	.loc 1 400 0
	lwz 11,currentshadowlight@l(30)
	.loc 1 418 0
	li 3,0
	.loc 1 400 0
	lfs 0,36(11)
	fadds 0,31,0
	fcmpu 7,0,1
	bng- 7,.L49
	.loc 1 402 0
	lis 9,sh_noefrags+12@ha
	li 3,1
	lfs 13,sh_noefrags+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fcmpu 7,13,0
	bne- 7,.L49
.LVL35:
	.loc 1 404 0 discriminator 1
	lwz 0,268(31)
	cmpwi 7,0,0
	ble- 7,.L51
	.loc 1 405 0
	lha 9,272(31)
.LVL36:
	.loc 1 388 0
	mtctr 0
	addi 31,31,272
.LVL37:
	.loc 1 407 0
	srawi 10,9,3
	rlwinm 9,9,0,29,31
.LVL38:
	add 10,11,10
	lbz 10,1076(10)
	sraw 9,10,9
	andi. 10,9,1
	bne- 0,.L49
.LVL39:
.L52:
	.loc 1 404 0
	bdz .L51
	.loc 1 405 0
	lhau 0,2(31)
.LVL40:
	.loc 1 407 0
	srawi 9,0,3
	rlwinm 0,0,0,29,31
.LVL41:
	add 9,11,9
	lbz 9,1076(9)
	sraw 0,9,0
	andi. 9,0,1
	beq+ 0,.L52
	.loc 1 409 0
	li 3,1
.L49:
	.loc 1 419 0
	lwz 0,44(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 31,32(1)
.LVL42:
	addi 1,1,40
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL43:
.L51:
.LCFI17:
	.cfi_restore_state
	lwz 0,44(1)
	.loc 1 388 0
	mfcr 3
	rlwinm 3,3,31,1
	.loc 1 419 0
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 31,32(1)
.LVL44:
	addi 1,1,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE46:
	.size	InShadowEntity, .-InShadowEntity
	.align 2
	.globl MarkShadowEntities
	.type	MarkShadowEntities, @function
MarkShadowEntities:
.LFB47:
	.loc 1 429 0
	.cfi_startproc
	.loc 1 434 0
	lis 9,r_drawentities+12@ha
	.loc 1 429 0
	mflr 0
	.loc 1 434 0
	lfs 13,r_drawentities+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	.loc 1 429 0
	stwu 1,-96(1)
.LCFI19:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 434 0
	fcmpu 7,13,0
	.loc 1 429 0
	stw 0,100(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
	stw 30,88(1)
	stw 31,92(1)
	.loc 1 434 0
	beq- 7,.L60
	.cfi_offset 31, -4
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
	.cfi_offset 65, 4
	.loc 1 438 0
	lis 28,cl_numvisedicts@ha
	.loc 1 437 0
	lis 25,cl_numlightvisedicts@ha
	.loc 1 438 0
	lwz 0,cl_numvisedicts@l(28)
	cmpwi 7,0,0
	.loc 1 437 0
	li 0,0
	stw 0,cl_numlightvisedicts@l(25)
.LVL45:
	.loc 1 438 0
	ble- 7,.L60
	lis 30,cl_visedicts-4@ha
	lis 29,currententity@ha
	.loc 1 465 0
	lis 23,cl_lightvisedicts@ha
	.loc 1 453 0
	lis 21,mirror_far_plane@ha
	.loc 1 438 0
	la 30,cl_visedicts-4@l(30)
	li 31,0
	la 29,currententity@l(29)
	.loc 1 446 0
	lis 27,mirror@ha
	.loc 1 461 0
	lis 26,currentshadowlight@ha
	.loc 1 467 0
	lis 24,cut_ent@ha
	.loc 1 464 0
	lis 22,r_lightTimestamp@ha
	.loc 1 465 0
	la 23,cl_lightvisedicts@l(23)
	.loc 1 449 0
	lis 19,mirror_plane@ha
	lis 20,mirror_clipside@ha
	.loc 1 453 0
	la 21,mirror_far_plane@l(21)
	b .L65
.LVL46:
.L68:
	.loc 1 465 0
	lwz 11,cl_numlightvisedicts@l(25)
	.loc 1 464 0
	lwz 9,0(29)
	lwz 10,r_lightTimestamp@l(22)
	.loc 1 465 0
	slwi 0,11,2
	.loc 1 466 0
	addi 11,11,1
	.loc 1 464 0
	stw 10,192(9)
	.loc 1 466 0
	stw 11,cl_numlightvisedicts@l(25)
	.loc 1 465 0
	stwx 9,23,0
.L62:
	.loc 1 438 0
	lwz 0,cl_numvisedicts@l(28)
	addi 31,31,1
.LVL47:
	cmpw 7,0,31
	ble- 7,.L60
.LVL48:
.L65:
	.loc 1 440 0
	lwzu 9,4(30)
	.loc 1 442 0
	lwz 11,160(9)
	.loc 1 440 0
	stw 9,0(29)
	.loc 1 442 0
	lwz 0,80(11)
	rlwinm 0,0,0,21,22
	cmpwi 7,0,1536
	beq- 7,.L62
	.loc 1 446 0
	lbz 0,mirror@l(27)
	cmpwi 7,0,0
	bne- 7,.L67
.L63:
	.loc 1 461 0
	lwz 11,currentshadowlight@l(26)
	.loc 1 463 0
	mr 3,9
	.loc 1 461 0
	lwz 0,2128(11)
	cmpw 7,9,0
	beq- 7,.L62
	.loc 1 463 0
	bl InShadowEntity
	cmpwi 7,3,0
	bne- 7,.L68
	.loc 1 467 0
	lwz 9,cut_ent@l(24)
	.loc 1 438 0
	addi 31,31,1
.LVL49:
	.loc 1 467 0
	addi 0,9,1
	stw 0,cut_ent@l(24)
	.loc 1 438 0
	lwz 0,cl_numvisedicts@l(28)
	cmpw 7,0,31
	bgt+ 7,.L65
.LVL50:
.L60:
	.loc 1 470 0
	lwz 0,100(1)
	lwz 19,44(1)
	mtlr 0
	lwz 20,48(1)
	lwz 21,52(1)
	lwz 22,56(1)
	lwz 23,60(1)
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI20:
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
	blr
.L67:
.LCFI21:
	.cfi_restore_state
	.loc 1 447 0
	lfs 12,112(9)
	.loc 1 449 0
	addi 4,1,8
	.loc 1 447 0
	lfs 13,116(9)
	.loc 1 449 0
	addi 3,1,20
	.loc 1 447 0
	lfs 0,120(9)
	lfs 9,84(11)
	lfs 10,88(11)
	lfs 11,92(11)
	fadds 9,12,9
	.loc 1 448 0
	lfs 6,96(11)
	.loc 1 447 0
	fadds 10,13,10
	.loc 1 448 0
	lfs 7,100(11)
	.loc 1 447 0
	fadds 11,0,11
	.loc 1 448 0
	lfs 8,104(11)
	fadds 12,12,6
	fadds 13,13,7
	.loc 1 449 0
	lwz 5,mirror_plane@l(19)
	.loc 1 448 0
	fadds 0,0,8
	.loc 1 447 0
	stfs 9,20(1)
	stfs 10,24(1)
	stfs 11,28(1)
	.loc 1 448 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 449 0
	bl BoxOnPlaneSide
	lwz 0,mirror_clipside@l(20)
	.loc 1 453 0
	addi 4,1,8
	mr 5,21
	.loc 1 449 0
	cmpw 7,3,0
	.loc 1 453 0
	addi 3,1,20
	.loc 1 449 0
	beq- 7,.L62
	.loc 1 453 0
	bl BoxOnPlaneSide
	cmpwi 7,3,1
	beq- 7,.L60
	lwz 9,0(29)
	b .L63
	.cfi_endproc
.LFE47:
	.size	MarkShadowEntities, .-MarkShadowEntities
	.align 2
	.globl R_ProjectSphere
	.type	R_ProjectSphere, @function
R_ProjectSphere:
.LFB48:
	.loc 1 483 0
	.cfi_startproc
.LVL51:
	stwu 1,-224(1)
.LCFI22:
	.cfi_def_cfa_offset 224
	.loc 1 496 0
	lis 9,.LC11@ha
	.loc 1 483 0
	mflr 0
	stfd 28,192(1)
	.loc 1 496 0
	lfs 28,.LC11@l(9)
	.cfi_offset 60, -32
	.cfi_register 65, 0
	.loc 1 494 0
	lis 9,.LC13@ha
	.loc 1 483 0
	stfd 27,184(1)
	.loc 1 494 0
	lfs 27,.LC13@l(9)
	.cfi_offset 59, -40
	.loc 1 491 0
	lis 9,.LC8@ha
	.loc 1 483 0
	stw 0,228(1)
	stfd 29,200(1)
	.loc 1 496 0
	fmr 29,28
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.loc 1 483 0
	stfd 30,208(1)
	.loc 1 494 0
	fmr 30,27
	.cfi_offset 62, -16
	.loc 1 491 0
	lfd 1,.LC8@l(9)
	lis 9,.LC9@ha
	.loc 1 483 0
	stfd 26,176(1)
	stfd 31,216(1)
	stw 16,104(1)
	lis 16,r_Iviewport@ha
	.cfi_offset 16, -120
	.cfi_offset 63, -8
	.cfi_offset 58, -48
	stw 18,112(1)
	lis 18,.LC3@ha
	.cfi_offset 18, -112
	stw 21,124(1)
	lis 21,r_Dworld_matrix@ha
	.cfi_offset 21, -100
	stw 22,128(1)
	lis 22,r_Dproject_matrix@ha
	.cfi_offset 22, -96
	stw 23,132(1)
	lis 23,glheight@ha
	.cfi_offset 23, -92
	stw 28,152(1)
	lis 28,vup@ha
	.cfi_offset 28, -72
	stw 29,156(1)
	lis 29,vright@ha
	.cfi_offset 29, -68
	stfd 25,168(1)
	la 28,vup@l(28)
	.loc 1 537 0
	lfs 31,36(3)
	la 29,vright@l(29)
	.loc 1 491 0
	lfd 26,.LC9@l(9)
	la 21,r_Dworld_matrix@l(21)
	.loc 1 483 0
	stw 17,108(1)
	la 22,r_Dproject_matrix@l(22)
	stw 19,116(1)
	mr 17,4
	.cfi_offset 19, -108
	.cfi_offset 17, -116
	.cfi_offset 57, -56
	stw 20,120(1)
	la 23,glheight@l(23)
	stw 24,136(1)
	.loc 1 506 0
	lis 19,.LC15@ha
	.loc 1 483 0
	stw 25,140(1)
	la 24,r_Iviewport@l(16)
	.cfi_offset 25, -84
	.cfi_offset 24, -88
	.cfi_offset 20, -104
	stw 26,144(1)
	la 25,.LC3@l(18)
	stw 27,148(1)
	.loc 1 518 0
	lis 26,0x4330
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.loc 1 483 0
	stw 30,160(1)
	addi 27,1,32
	stw 31,164(1)
	.loc 1 483 0
	mr 30,3
	.cfi_offset 31, -60
	.cfi_offset 30, -64
.LVL52:
	.loc 1 506 0
	li 31,16
	lis 20,.LC16@ha
.LVL53:
.L76:
	li 9,0
.LVL54:
.L70:
	.loc 1 510 0 discriminator 2
	lfsx 0,29,9
	.loc 1 509 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 510 0 discriminator 2
	lfsx 13,28,9
	fmul 0,0,26
	lfsx 12,30,9
	fmul 13,13,1
	fmadd 0,0,31,12
	fmadd 0,13,31,0
	frsp 0,0
	stfsx 0,27,9
	.loc 1 509 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L70
	.loc 1 512 0
	lfs 1,32(1)
	mr 3,21
	lfs 2,36(1)
	mr 4,22
	lfs 3,40(1)
	mr 5,24
	addi 6,1,24
	addi 7,1,16
	addi 8,1,8
	bl gluProject
	.loc 1 518 0
	lwz 0,0(23)
	stw 26,56(1)
	xoris 0,0,0x8000
	lfs 0,0(25)
	stw 0,60(1)
	.loc 1 520 0
	lfd 13,24(1)
	.loc 1 518 0
	lfd 12,56(1)
	.loc 1 520 0
	fcmpu 7,13,28
	.loc 1 518 0
	fsub 0,12,0
	lfd 12,16(1)
	fsub 0,0,12
	stfd 0,16(1)
	.loc 1 520 0
	bng- 7,.L71
	fmr 28,13
.L71:
.LVL55:
	.loc 1 521 0
	fcmpu 7,27,13
	bng- 7,.L72
	fmr 27,13
.L72:
.LVL56:
	.loc 1 522 0
	fcmpu 7,29,0
	bnl- 7,.L73
	fmr 29,0
.L73:
.LVL57:
	.loc 1 523 0
	fcmpu 7,30,0
	bng- 7,.L74
	fmr 30,0
.L74:
.LVL58:
	.loc 1 506 0
	cmpwi 7,31,0
	addi 31,31,-1
.LVL59:
	beq- 7,.L75
.LVL60:
	xoris 0,31,0x8000
	stw 26,64(1)
	stw 0,68(1)
	lfs 0,0(25)
	lfd 25,64(1)
	lfs 13,.LC15@l(19)
	fsub 25,25,0
	lfd 0,.LC16@l(20)
	fmul 25,25,13
	fmul 25,25,0
	fadd 25,25,25
	frsp 25,25
	.loc 1 482 0
	fmr 1,25
	bl cos
	fmr 26,1
	fmr 1,25
	bl sin
	b .L76
.L75:
	.loc 1 527 0
	lwz 0,r_Iviewport@l(16)
	lfs 0,.LC3@l(18)
	xoris 0,0,0x8000
	stw 0,76(1)
	lis 0,0x4330
	stw 0,72(1)
	lfd 13,72(1)
	fsub 0,13,0
	fcmpu 7,0,27
	bng- 7,.L77
	fmr 27,0
.LVL61:
.L77:
	.loc 1 528 0
	fcmpu 7,0,28
	bng- 7,.L78
	fmr 28,0
.LVL62:
.L78:
	.loc 1 530 0
	lwz 0,8(24)
	lfs 0,.LC3@l(18)
	xoris 0,0,0x8000
	stw 0,84(1)
	lis 0,0x4330
	stw 0,80(1)
	lfd 13,80(1)
	fsub 0,13,0
	fcmpu 7,0,28
	bnl- 7,.L79
	fmr 28,0
.LVL63:
.L79:
	.loc 1 531 0
	fcmpu 7,27,0
	bng- 7,.L80
	fmr 27,0
.LVL64:
.L80:
	.loc 1 533 0
	lwz 0,4(24)
	lfs 0,.LC3@l(18)
	xoris 0,0,0x8000
	stw 0,92(1)
	lis 0,0x4330
	stw 0,88(1)
	lfd 13,88(1)
	fsub 0,13,0
	fcmpu 7,0,30
	bng- 7,.L81
	fmr 30,0
.LVL65:
.L81:
	.loc 1 534 0
	fcmpu 7,0,29
	bng- 7,.L82
	fmr 29,0
.LVL66:
.L82:
	.loc 1 536 0
	lwz 0,12(24)
	lfs 0,.LC3@l(18)
	xoris 0,0,0x8000
	stw 0,100(1)
	lis 0,0x4330
	stw 0,96(1)
	lfd 13,96(1)
	fsub 0,13,0
	fcmpu 7,0,29
	bnl- 7,.L83
	fmr 29,0
.LVL67:
.L83:
	.loc 1 537 0
	fcmpu 7,30,0
	bng- 7,.L84
	fmr 30,0
.LVL68:
.L84:
	.loc 1 544 0
	lwz 0,228(1)
	.loc 1 540 0
	fctiwz 27,27
.LVL69:
	.loc 1 541 0
	fctiwz 30,30
.LVL70:
	addi 10,17,4
	.loc 1 544 0
	mtlr 0
	.loc 1 542 0
	fctiwz 28,28
.LVL71:
	.loc 1 543 0
	fctiwz 29,29
.LVL72:
	.loc 1 542 0
	addi 11,17,8
	.loc 1 543 0
	addi 9,17,12
	.loc 1 540 0
	stfiwx 27,0,17
	.loc 1 544 0
	lwz 16,104(1)
	.loc 1 541 0
	stfiwx 30,0,10
	.loc 1 544 0
	lwz 17,108(1)
.LVL73:
	.loc 1 542 0
	stfiwx 28,0,11
	.loc 1 544 0
	lwz 18,112(1)
	.loc 1 543 0
	stfiwx 29,0,9
	.loc 1 544 0
	lwz 19,116(1)
	lwz 20,120(1)
	lwz 21,124(1)
	lwz 22,128(1)
	lwz 23,132(1)
	lwz 24,136(1)
	lwz 25,140(1)
	lwz 26,144(1)
	lwz 27,148(1)
	lwz 28,152(1)
	lwz 29,156(1)
	lwz 30,160(1)
.LVL74:
	lwz 31,164(1)
.LVL75:
	lfd 25,168(1)
	lfd 26,176(1)
	lfd 27,184(1)
	lfd 28,192(1)
	lfd 29,200(1)
	lfd 30,208(1)
	lfd 31,216(1)
	addi 1,1,224
.LCFI23:
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
	.cfi_endproc
.LFE48:
	.size	R_ProjectSphere, .-R_ProjectSphere
	.align 2
	.globl HasSharedLeafs
	.type	HasSharedLeafs, @function
HasSharedLeafs:
.LFB49:
	.loc 1 562 0
	.cfi_startproc
.LVL76:
	.loc 1 566 0
	lis 9,cl+2688@ha
	.loc 1 562 0
	mr 11,3
	.loc 1 566 0
	lwz 9,cl+2688@l(9)
	.loc 1 574 0
	li 3,0
.LVL77:
	.loc 1 566 0
	lwz 0,164(9)
	cmpwi 7,0,0
	blelr- 7
	mtctr 0
	li 9,0
.LVL78:
.L101:
	.loc 1 568 0
	srawi 10,9,3
	rlwinm 0,9,0,29,31
	lbzx 8,11,10
	.loc 1 566 0
	addi 9,9,1
	.loc 1 568 0
	sraw 8,8,0
	andi. 7,8,1
	beq- 0,.L100
	.loc 1 570 0
	lbzx 10,4,10
	sraw 0,10,0
	andi. 10,0,1
	bne- 0,.L103
.L100:
.LVL79:
	.loc 1 566 0
	bdnz .L101
	.loc 1 574 0
	li 3,0
	blr
.LVL80:
.L103:
	.loc 1 571 0
	li 3,1
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE49:
	.size	HasSharedLeafs, .-HasSharedLeafs
	.align 2
	.globl R_MarkShadowCasting
	.type	R_MarkShadowCasting, @function
R_MarkShadowCasting:
.LFB50:
	.loc 1 597 0
	.cfi_startproc
.LVL81:
	mflr 0
	stwu 1,-32(1)
.LCFI24:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
.LVL82:
.L120:
	.loc 1 604 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L123
.L107:
	.loc 1 629 0
	lwz 9,36(31)
.LVL83:
	.loc 1 630 0
	lfs 12,4(30)
	lfs 0,4(9)
	lfs 13,0(30)
	fmuls 12,12,0
	lfs 0,0(9)
	lfs 11,8(30)
	fmadds 0,13,0,12
	lfs 13,8(9)
	lfs 12,12(9)
	fmadds 13,11,13,0
	.loc 1 632 0
	lfs 0,36(30)
	.loc 1 630 0
	fsubs 13,13,12
.LVL84:
	.loc 1 637 0
	fneg 12,0
	.loc 1 632 0
	fcmpu 7,0,13
	bnl- 7,.L119
	.loc 1 634 0
	lwz 31,40(31)
.LVL85:
	.loc 1 604 0
	lwz 0,0(31)
	cmpwi 7,0,0
	bge+ 7,.L107
.LVL86:
.L123:
	.loc 1 607 0
	lwz 9,56(31)
	addi 0,9,-1
.LVL87:
	.loc 1 610 0
	lis 9,lightvis@ha
	lwz 11,lightvis@l(9)
	srawi 9,0,3
	rlwinm 0,0,0,29,31
.LVL88:
	lbzx 9,11,9
	sraw 0,9,0
	andi. 9,0,1
	beq- 0,.L105
.LVL89:
	.loc 1 617 0
	lwz 0,48(31)
	.loc 1 615 0
	lwz 28,44(31)
.LVL90:
	.loc 1 617 0
	cmpwi 7,0,0
	ble- 7,.L105
	.loc 1 596 0
	addi 28,28,-4
	.loc 1 617 0
	li 29,0
	.loc 1 620 0
	lis 27,shadowchain@ha
.LVL91:
.L110:
	.loc 1 619 0
	lwzu 3,4(28)
	mr 4,30
	.loc 1 617 0
	addi 29,29,1
	.loc 1 619 0
	bl R_MarkShadowSurf
	cmpwi 7,3,0
	beq- 7,.L109
	.loc 1 620 0
	lwz 0,shadowchain@l(27)
	lwz 9,0(28)
	stw 0,44(9)
	.loc 1 621 0
	lwz 0,0(28)
	stw 0,shadowchain@l(27)
.L109:
.LVL92:
	.loc 1 617 0
	lwz 0,48(31)
	cmpw 7,0,29
	bgt+ 7,.L110
.LVL93:
.L105:
	.loc 1 645 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL94:
	lwz 31,28(1)
.LVL95:
	addi 1,1,32
	.cfi_remember_state
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL96:
.L119:
.LCFI26:
	.cfi_restore_state
	.loc 1 637 0
	fcmpu 7,12,13
	bng- 7,.L121
	.loc 1 644 0
	lwz 31,44(31)
	b .L120
.L121:
	.loc 1 643 0
	lwz 4,40(31)
	mr 3,30
	bl R_MarkShadowCasting
.LVL97:
	.loc 1 644 0
	lwz 31,44(31)
	b .L120
	.cfi_endproc
.LFE50:
	.size	R_MarkShadowCasting, .-R_MarkShadowCasting
	.align 2
	.globl SphereInFrustum
	.type	SphereInFrustum, @function
SphereInFrustum:
.LFB51:
	.loc 1 648 0
	.cfi_startproc
.LVL98:
	.loc 1 647 0
	li 0,6
	.loc 1 656 0
	fneg 7,1
	lis 9,frustumPlanes@ha
	lfs 8,0(3)
	lfs 9,4(3)
	.loc 1 647 0
	mtctr 0
	.loc 1 656 0
	lfs 10,8(3)
	la 9,frustumPlanes@l(9)
.LVL99:
.L126:
	.loc 1 654 0
	lfs 0,4(9)
	lfs 11,0(9)
	fmuls 0,9,0
	lfs 12,8(9)
	lfs 13,12(9)
	.loc 1 655 0
	addi 9,9,16
	.loc 1 654 0
	fmadds 0,11,8,0
	fmadds 0,12,10,0
	fadds 0,0,13
.LVL100:
	.loc 1 655 0
	fcmpu 7,0,7
	cror 30,28,30
	beq- 7,.L127
.LVL101:
	.loc 1 652 0
	bdnz .L126
	.loc 1 658 0
	fadds 1,1,0
.LVL102:
	blr
.LVL103:
.L127:
	.loc 1 656 0
	lis 9,.LC5@ha
	lfs 1,.LC5@l(9)
.LVL104:
	.loc 1 659 0
	blr
	.cfi_endproc
.LFE51:
	.size	SphereInFrustum, .-SphereInFrustum
	.align 2
	.globl R_ContributeFrame
	.type	R_ContributeFrame, @function
R_ContributeFrame:
.LFB52:
	.loc 1 670 0
	.cfi_startproc
.LVL105:
	mflr 0
	stwu 1,-48(1)
.LCFI27:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 674 0
	lis 9,d_lightstylevalue@ha
	la 9,d_lightstylevalue@l(9)
	.loc 1 670 0
	stw 29,36(1)
	stw 0,52(1)
	.loc 1 682 0
	li 29,0
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 670 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 674 0
	lwz 0,2124(3)
	.loc 1 670 0
	stw 30,40(1)
	.loc 1 674 0
	slwi 0,0,2
	lwzx 0,9,0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lis 9,.LC18@ha
	xoris 0,0,0x8000
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 13,24(1)
	fsub 0,13,0
	lfs 13,.LC18@l(9)
	.loc 1 682 0
	lis 9,.LC19@ha
	.loc 1 674 0
	fdiv 0,0,13
	.loc 1 682 0
	lfd 13,.LC19@l(9)
	.loc 1 674 0
	frsp 0,0
.LVL106:
	.loc 1 682 0
	fmr 12,0
	fcmpu 7,12,13
	blt- 7,.L130
	.cfi_offset 30, -8
	.loc 1 684 0
	lfs 12,12(3)
	.loc 1 685 0
	lfs 13,16(3)
	.loc 1 686 0
	lfs 11,20(3)
	.loc 1 684 0
	fmuls 12,12,0
	.loc 1 685 0
	fmuls 13,13,0
	.loc 1 690 0
	lfs 1,36(3)
	.loc 1 686 0
	fmuls 0,11,0
.LVL107:
	.loc 1 684 0
	stfs 12,24(3)
	.loc 1 685 0
	stfs 13,28(3)
	.loc 1 686 0
	stfs 0,32(3)
	.loc 1 690 0
	bl SphereInFrustum
.LVL108:
	.loc 1 704 0
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fcmpu 7,1,0
	beq- 7,.L130
	.loc 1 711 0
	lis 9,sh_noscissor+12@ha
	lfs 13,sh_noscissor+12@l(9)
	fcmpu 7,13,0
	crnot 30,30
	mfcr 30
	rlwinm 30,30,31,1
	bne- 7,.L142
.LVL109:
.L131:
	.loc 1 747 0
	lbz 0,45(31)
	.loc 1 746 0
	lis 9,shadowchain@ha
	.loc 1 747 0
	cmpwi 7,0,0
	.loc 1 746 0
	li 0,0
	stw 0,shadowchain@l(9)
	.loc 1 747 0
	beq- 7,.L134
	.loc 1 748 0
	addi 3,31,52
	lis 9,lightvis@ha
	stw 3,lightvis@l(9)
.L135:
	.loc 1 756 0
	lis 4,worldvis@ha
	la 4,worldvis@l(4)
	bl HasSharedLeafs
	mr 29,3
.L130:
	.loc 1 780 0
	lwz 0,52(1)
	mr 3,29
	lwz 30,40(1)
	mtlr 0
	lwz 29,36(1)
	lwz 31,44(1)
.LVL110:
	addi 1,1,48
	.cfi_remember_state
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL111:
.L142:
.LCFI29:
	.cfi_restore_state
.LBB86:
	.loc 1 714 0
	lis 9,r_refdef@ha
	lfs 9,0(31)
	la 9,r_refdef@l(9)
	lfs 10,4(31)
	lfs 12,112(9)
	.loc 1 715 0
	addi 3,1,8
	.loc 1 714 0
	lfs 13,116(9)
	lfs 11,8(31)
	fsubs 12,9,12
	lfs 0,120(9)
	fsubs 13,10,13
	fsubs 0,11,0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 715 0
	bl Length
.LVL112:
	.loc 1 717 0
	lfs 0,36(31)
	fcmpu 7,0,1
	blt- 7,.L143
	.loc 1 736 0
	lis 11,r_Iviewport@ha
	la 9,r_Iviewport@l(11)
	lwz 11,r_Iviewport@l(11)
	.loc 1 737 0
	lwz 0,4(9)
	.loc 1 738 0
	lwz 10,8(9)
	.loc 1 739 0
	lwz 9,12(9)
	.loc 1 738 0
	add 10,11,10
	.loc 1 736 0
	stw 11,2132(31)
	.loc 1 739 0
	add 9,0,9
	.loc 1 737 0
	stw 0,2136(31)
	.loc 1 738 0
	stw 10,2140(31)
	.loc 1 739 0
	stw 9,2144(31)
	b .L131
.LVL113:
.L134:
.LBE86:
	.loc 1 750 0
	lis 30,cl@ha
	mr 3,31
	la 30,cl@l(30)
	lwz 4,2688(30)
	bl Mod_PointInLeaf
	.loc 1 751 0
	lwz 4,2688(30)
	lis 30,lightvis@ha
	bl Mod_LeafPVS
	.loc 1 752 0
	li 5,1024
	.loc 1 751 0
	mr 0,3
	.loc 1 752 0
	mr 4,3
	addi 3,31,52
	.loc 1 751 0
	stw 0,lightvis@l(30)
	.loc 1 752 0
	bl Q_memcpy
	.loc 1 753 0
	lwz 4,lightvis@l(30)
	addi 3,31,1076
	li 5,1024
	bl Q_memcpy
	lwz 3,lightvis@l(30)
	b .L135
.LVL114:
.L143:
.LBB87:
	.loc 1 719 0
	mr 3,31
	addi 4,31,2132
	bl R_ProjectSphere
.LVL115:
	.loc 1 722 0
	lwz 0,2132(31)
	lwz 9,2140(31)
	.loc 1 724 0
	mr 29,30
	.loc 1 722 0
	cmpw 7,0,9
	bge- 7,.L130
	.loc 1 723 0 discriminator 1
	lwz 11,2136(31)
	lwz 10,2144(31)
	.loc 1 722 0 discriminator 1
	cmpw 7,11,10
	bge- 7,.L130
	.loc 1 728 0
	addi 9,9,1
	.loc 1 729 0
	addi 10,10,1
	.loc 1 728 0
	rlwinm 8,9,0,0,30
	.loc 1 726 0
	rlwinm 0,0,0,0,30
	.loc 1 727 0
	rlwinm 11,11,0,0,30
	.loc 1 729 0
	rlwinm 9,10,0,0,30
	.loc 1 726 0
	stw 0,2132(31)
	.loc 1 727 0
	stw 11,2136(31)
	.loc 1 728 0
	stw 8,2140(31)
	.loc 1 729 0
	stw 9,2144(31)
	b .L131
.LBE87:
	.cfi_endproc
.LFE52:
	.size	R_ContributeFrame, .-R_ContributeFrame
	.align 2
	.globl R_InitShadowsForFrame
	.type	R_InitShadowsForFrame, @function
R_InitShadowsForFrame:
.LFB44:
	.loc 1 285 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI30:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 290 0
	lis 9,numStaticShadowLights@ha
	.loc 1 285 0
	stw 29,28(1)
	.loc 1 299 0
	lis 29,worldvis@ha
	.cfi_offset 29, -12
	.loc 1 285 0
	stw 0,44(1)
	.loc 1 299 0
	la 29,worldvis@l(29)
	.loc 1 290 0
	lwz 0,numStaticShadowLights@l(9)
	.cfi_offset 65, 4
	.loc 1 285 0
	stw 30,32(1)
	.loc 1 290 0
	lis 30,numShadowLights@ha
	.cfi_offset 30, -8
	.loc 1 285 0
	stw 31,36(1)
	.loc 1 295 0
	lis 31,numUsedShadowLights@ha
	.cfi_offset 31, -4
	.loc 1 290 0
	stw 0,numShadowLights@l(30)
	.loc 1 285 0
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	.loc 1 292 0
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl R_MarkDlights
	.loc 1 295 0
	li 0,0
	.loc 1 299 0
	li 5,1024
	.loc 1 298 0
	lis 9,cut_ent@ha
	.loc 1 299 0
	mr 3,29
	li 4,0
	.loc 1 298 0
	stw 0,cut_ent@l(9)
	.loc 1 295 0
	stw 0,numUsedShadowLights@l(31)
	.loc 1 299 0
	bl Q_memset
	.loc 1 301 0
	lis 9,r_viewleaf@ha
	lwz 3,r_viewleaf@l(9)
	lis 9,cl+2688@ha
	lwz 4,cl+2688@l(9)
	bl Mod_LeafPVS
	.loc 1 302 0
	li 5,1024
	.loc 1 301 0
	mr 4,3
.LVL116:
	.loc 1 302 0
	mr 3,29
.LVL117:
	bl Q_memcpy
.LVL118:
	.loc 1 304 0
	lwz 0,numShadowLights@l(30)
	cmpwi 7,0,0
	ble- 7,.L144
	lis 27,shadowlights@ha
	lis 28,currentshadowlight@ha
	.loc 1 312 0
	lis 24,.LC20@ha
	.loc 1 309 0
	lis 25,usedshadowlights@ha
	.loc 1 304 0
	li 29,0
	la 27,shadowlights@l(27)
	la 28,currentshadowlight@l(28)
	la 30,numShadowLights@l(30)
	.loc 1 307 0
	li 26,1
	.loc 1 312 0
	la 24,.LC20@l(24)
	.loc 1 309 0
	la 25,usedshadowlights@l(25)
	b .L149
.LVL119:
.L151:
	.loc 1 308 0
	lwz 9,numUsedShadowLights@l(31)
	.loc 1 307 0
	lwz 11,0(28)
	.loc 1 308 0
	cmpwi 7,9,63
	.loc 1 309 0
	slwi 0,9,2
	.loc 1 307 0
	stb 26,44(11)
	.loc 1 310 0
	addi 9,9,1
	.loc 1 308 0
	bgt- 7,.L147
	.loc 1 309 0
	stwx 11,25,0
	.loc 1 310 0
	stw 9,numUsedShadowLights@l(31)
.L148:
	.loc 1 304 0
	lwz 0,0(30)
	addi 29,29,1
.LVL120:
	cmpw 7,0,29
	ble- 7,.L144
.LVL121:
.L149:
	.loc 1 305 0
	mulli 0,29,2192
	add 0,27,0
	.loc 1 306 0
	mr 3,0
	.loc 1 305 0
	stw 0,0(28)
	.loc 1 306 0
	bl R_ContributeFrame
	cmpwi 0,3,0
	bne- 0,.L151
	.loc 1 304 0
	lwz 0,0(30)
	addi 29,29,1
.LVL122:
	.loc 1 315 0
	lwz 9,0(28)
	.loc 1 304 0
	cmpw 7,0,29
	.loc 1 315 0
	stb 3,44(9)
	.loc 1 304 0
	bgt+ 7,.L149
.LVL123:
.L144:
	.loc 1 318 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI31:
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
.L147:
.LCFI32:
	.cfi_restore_state
	.loc 1 312 0
	mr 3,24
	crxor 6,6,6
	bl Con_Printf
	b .L148
	.cfi_endproc
.LFE44:
	.size	R_InitShadowsForFrame, .-R_InitShadowsForFrame
	.align 2
	.globl R_FillShadowChain
	.type	R_FillShadowChain, @function
R_FillShadowChain:
.LFB53:
	.loc 1 791 0
	.cfi_startproc
.LVL124:
	.loc 1 793 0
	lis 9,r_lightTimestamp@ha
	.loc 1 791 0
	stwu 1,-16(1)
.LCFI33:
	.cfi_def_cfa_offset 16
	.loc 1 793 0
	lwz 11,r_lightTimestamp@l(9)
	.loc 1 791 0
	mflr 0
	stw 31,12(1)
	.loc 1 795 0
	lis 31,shadowchain@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 793 0
	addi 11,11,1
	.loc 1 791 0
	stw 30,8(1)
	.loc 1 793 0
	stw 11,r_lightTimestamp@l(9)
	.loc 1 795 0
	li 9,0
	.loc 1 791 0
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	.loc 1 795 0
	stw 9,shadowchain@l(31)
	.loc 1 797 0
	addi 0,3,52
	.cfi_offset 65, 4
	lis 9,lightvis@ha
	stw 0,lightvis@l(9)
	.loc 1 801 0
	bl MarkShadowEntities
.LVL125:
	.loc 1 804 0
	lbz 0,45(30)
	.loc 1 807 0
	li 3,1
	.loc 1 804 0
	cmpwi 7,0,0
	bne+ 7,.L153
	.loc 1 805 0
	lis 9,cl+2688@ha
	mr 3,30
	lwz 9,cl+2688@l(9)
	lwz 4,192(9)
	bl R_MarkShadowCasting
	.loc 1 810 0
	lwz 3,shadowchain@l(31)
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.L153:
	.loc 1 811 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL126:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE53:
	.size	R_FillShadowChain, .-R_FillShadowChain
	.align 2
	.globl R_MarkBrushModelSurfaces
	.type	R_MarkBrushModelSurfaces, @function
R_MarkBrushModelSurfaces:
.LFB56:
	.loc 1 884 0
	.cfi_startproc
.LVL127:
	mflr 0
	stwu 1,-128(1)
.LCFI35:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	.loc 1 902 0
	lis 9,.LC5@ha
	.loc 1 897 0
	lis 11,currententity@ha
	.loc 1 902 0
	lfs 0,.LC5@l(9)
	.loc 1 884 0
	stw 0,132(1)
	.loc 1 898 0
	li 0,-1
	.cfi_offset 65, 4
	.loc 1 884 0
	stw 28,64(1)
	.loc 1 895 0
	lis 28,currentshadowlight@ha
	.cfi_offset 28, -64
	.loc 1 902 0
	lfs 13,148(3)
	.loc 1 895 0
	lwz 9,currentshadowlight@l(28)
	.loc 1 902 0
	fcmpu 7,13,0
	.loc 1 884 0
	stfd 29,104(1)
	.loc 1 895 0
	lfs 29,0(9)
	.cfi_offset 61, -24
.LVL128:
	.loc 1 897 0
	stw 3,currententity@l(11)
	.loc 1 898 0
	lis 11,currenttexture@ha
	.loc 1 884 0
	stfd 30,112(1)
	stfd 31,120(1)
	stw 30,72(1)
	mr 30,3
	.cfi_offset 30, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	stw 31,76(1)
	.loc 1 898 0
	stw 0,currenttexture@l(11)
	.loc 1 904 0
	li 0,1
	.loc 1 884 0
	stfd 26,80(1)
	stfd 27,88(1)
	stfd 28,96(1)
	stw 27,60(1)
	stw 29,68(1)
	.loc 1 895 0
	lfs 30,4(9)
.LVL129:
	lfs 31,8(9)
.LVL130:
	.loc 1 900 0
	lwz 31,160(3)
	.cfi_offset 29, -60
	.cfi_offset 27, -68
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 31, -52
.LVL131:
	.loc 1 902 0
	bne- 7,.L156
.LVL132:
	.loc 1 902 0 is_stmt 0 discriminator 1
	lfs 13,152(3)
	fcmpu 7,13,0
	beq- 7,.L163
.LVL133:
.L156:
	.loc 1 918 0 is_stmt 1
	lis 11,r_refdef@ha
	lfs 12,112(30)
	la 11,r_refdef@l(11)
	lfs 13,116(30)
	lfs 0,120(30)
	.loc 1 920 0
	cmpwi 7,0,0
	.loc 1 918 0
	lfs 27,112(11)
	lis 27,modelorg@ha
	lfs 26,116(11)
	la 29,modelorg@l(27)
	lfs 28,120(11)
	fsubs 27,27,12
	fsubs 26,26,13
	fsubs 28,28,0
	.loc 1 919 0
	fsubs 12,29,12
	.loc 1 918 0
	stfs 27,modelorg@l(27)
	.loc 1 919 0
	fsubs 13,30,13
	.loc 1 918 0
	stfs 26,4(29)
	.loc 1 919 0
	fsubs 0,31,0
	.loc 1 918 0
	stfs 28,8(29)
	.loc 1 919 0
	stfs 12,0(9)
	stfs 13,4(9)
	stfs 0,8(9)
	.loc 1 920 0
	bne- 7,.L164
.LVL134:
.L157:
	.loc 1 938 0
	lwz 27,208(31)
	lwz 29,140(31)
.LVL135:
	.loc 1 940 0
	bl glPushMatrix
.LVL136:
	.loc 1 941 0
	lfs 0,148(30)
	.loc 1 942 0
	mr 3,30
	.loc 1 941 0
	fneg 0,0
	stfs 0,148(30)
	.loc 1 942 0
	bl R_RotateForEntity
	.loc 1 946 0
	lwz 0,144(31)
	.loc 1 943 0
	lfs 0,148(30)
	.loc 1 946 0
	cmpwi 7,0,0
	.loc 1 943 0
	fneg 0,0
	stfs 0,148(30)
.LVL137:
	.loc 1 946 0
	ble- 7,.L158
	.loc 1 938 0
	mulli 29,29,92
.LVL138:
	.loc 1 946 0
	li 30,0
.LVL139:
	.loc 1 938 0
	add 29,27,29
	lis 27,currentshadowlight@ha
	la 27,currentshadowlight@l(27)
.LVL140:
.L159:
	.loc 1 948 0 discriminator 2
	lwz 4,0(27)
	mr 3,29
	.loc 1 946 0 discriminator 2
	addi 30,30,1
	addi 29,29,92
	.loc 1 948 0 discriminator 2
	bl R_MarkShadowSurf
.LVL141:
	.loc 1 946 0 discriminator 2
	lwz 0,144(31)
	cmpw 7,0,30
	bgt+ 7,.L159
.LVL142:
.L158:
	.loc 1 951 0
	lwz 9,currentshadowlight@l(28)
	stfs 29,0(9)
	stfs 30,4(9)
	stfs 31,8(9)
	.loc 1 952 0
	bl glPopMatrix
	.loc 1 953 0
	lwz 0,132(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL143:
	lfd 26,80(1)
	lfd 27,88(1)
	lfd 28,96(1)
	lfd 29,104(1)
.LVL144:
	lfd 30,112(1)
.LVL145:
	lfd 31,120(1)
.LVL146:
	addi 1,1,128
	.cfi_remember_state
.LCFI36:
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
.LVL147:
.L163:
.LCFI37:
	.cfi_restore_state
	.loc 1 884 0 discriminator 1
	lfs 13,156(3)
	fcmpu 7,13,0
	crnot 30,30
	mfcr 0
	rlwinm 0,0,31,1
	b .L156
.LVL148:
.L164:
.LBB88:
	.loc 1 926 0
	addi 3,30,148
.LVL149:
	addi 4,1,32
	addi 5,1,20
	addi 6,1,8
	bl AngleVectors
.LVL150:
	.loc 1 931 0
	lwz 9,currentshadowlight@l(28)
	.loc 1 927 0
	lfs 11,36(1)
	.loc 1 931 0
	lfs 0,4(9)
	.loc 1 928 0
	lfs 12,24(1)
	.loc 1 927 0
	fmuls 9,26,11
	.loc 1 929 0
	lfs 13,12(1)
	.loc 1 932 0
	fmuls 6,11,0
	.loc 1 928 0
	fmuls 10,26,12
	.loc 1 927 0
	lfs 11,32(1)
	.loc 1 933 0
	fmuls 7,12,0
	.loc 1 928 0
	lfs 12,20(1)
	.loc 1 934 0
	fmuls 8,13,0
	.loc 1 931 0
	lfs 0,0(9)
.LVL151:
	.loc 1 929 0
	fmuls 26,26,13
	lfs 13,8(1)
	.loc 1 927 0
	fmadds 9,27,11,9
	.loc 1 928 0
	fmadds 10,27,12,10
	.loc 1 932 0
	fmadds 6,11,0,6
	.loc 1 927 0
	lfs 11,40(1)
	.loc 1 933 0
	fmadds 7,12,0,7
	.loc 1 928 0
	lfs 12,28(1)
	.loc 1 934 0
	fmadds 8,13,0,8
	.loc 1 931 0
	lfs 0,8(9)
.LVL152:
	.loc 1 929 0
	fmadds 27,27,13,26
	lfs 13,16(1)
	.loc 1 927 0
	fmadds 9,28,11,9
	.loc 1 928 0
	fnmadds 10,28,12,10
	.loc 1 932 0
	fmadds 11,11,0,6
	.loc 1 933 0
	fnmadds 12,12,0,7
	.loc 1 927 0
	stfs 9,modelorg@l(27)
	.loc 1 929 0
	fmadds 28,28,13,27
	.loc 1 928 0
	stfs 10,4(29)
	.loc 1 934 0
	fmadds 0,13,0,8
	.loc 1 929 0
	stfs 28,8(29)
	.loc 1 932 0
	stfs 11,0(9)
	.loc 1 933 0
	stfs 12,4(9)
	.loc 1 934 0
	stfs 0,8(9)
	b .L157
.LBE88:
	.cfi_endproc
.LFE56:
	.size	R_MarkBrushModelSurfaces, .-R_MarkBrushModelSurfaces
	.align 2
	.globl R_DrawBrushModelVolumes
	.type	R_DrawBrushModelVolumes, @function
R_DrawBrushModelVolumes:
.LFB57:
	.loc 1 1120 0
	.cfi_startproc
.LVL153:
	mflr 0
	stwu 1,-64(1)
.LCFI38:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
	stw 19,12(1)
	stw 25,36(1)
	.loc 1 1122 0
	lwz 19,160(3)
	.cfi_offset 25, -28
	.cfi_offset 19, -52
	.cfi_offset 65, 4
.LVL154:
	.loc 1 1120 0
	stw 28,48(1)
	.loc 1 1126 0
	lwz 25,264(3)
.LVL155:
	.loc 1 1120 0
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 29,52(1)
	stw 30,56(1)
	.loc 1 1131 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 28, -16
	bl glPushMatrix
.LVL156:
	.loc 1 1132 0
	lfs 0,148(31)
	.loc 1 1133 0
	mr 3,31
	.loc 1 1132 0
	fneg 0,0
	stfs 0,148(31)
	.loc 1 1133 0
	bl R_RotateForEntity
	.loc 1 1134 0
	lfs 0,148(31)
	fneg 0,0
	stfs 0,148(31)
	.loc 1 1136 0
	bl GX_LoadGLModelView
	.loc 1 1139 0
	lwz 9,144(19)
	.loc 1 1138 0
	lwz 28,208(19)
	.loc 1 1139 0
	cmpwi 7,9,0
	.loc 1 1138 0
	lwz 0,140(19)
.LVL157:
	.loc 1 1139 0
	ble- 7,.L166
	.loc 1 1138 0
	mulli 0,0,92
	.loc 1 1120 0
	addis 20,25,0x2
	addi 20,20,-32677
	.loc 1 1128 0
	li 26,0
	.loc 1 1138 0
	add 28,28,0
	.loc 1 1139 0
	li 21,0
	lis 24,wgPipe@ha
.LBB89:
.LBB90:
	.loc 1 1150 0
	lis 23,globalVertexTable@ha
.LVL158:
.L176:
.LBE90:
	.loc 1 1141 0
	lbzu 0,1(20)
	cmpwi 7,0,0
	beq- 7,.L167
	.loc 1 1145 0
	lwz 29,16(28)
	.loc 1 1143 0
	lwz 22,36(28)
.LVL159:
	.loc 1 1145 0
	cmpwi 7,29,0
	ble- 7,.L168
	li 31,1
	li 30,0
	add 27,25,26
	b .L171
.LVL160:
.L170:
	lwz 29,16(28)
	addi 30,30,1
	addi 31,31,1
	cmpw 7,29,0
	ble- 7,.L181
.LVL161:
.L171:
	.loc 1 1120 0
	add 9,27,30
	.loc 1 1147 0
	mr 0,31
	.loc 1 1120 0
	addis 9,9,0x2
	.loc 1 1147 0
	lbz 9,-30628(9)
	cmpwi 7,9,0
	beq+ 7,.L170
.LBB103:
	.loc 1 1148 0
	li 3,152
	li 4,3
	li 5,4
	bl GX_Begin
	.loc 1 1152 0
	lwz 8,8(22)
	.loc 1 1150 0
	lwz 9,36(28)
	.loc 1 1120 0
	add 4,30,26
	.loc 1 1152 0
	divw 6,31,8
	.loc 1 1150 0
	lwz 11,globalVertexTable@l(23)
	lwz 7,24(9)
	.loc 1 1152 0
	mr 0,31
.LBB91:
.LBB92:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 2123 0
	lwz 9,wgPipe@l(24)
.LBE92:
.LBE91:
	.loc 1 1150 0
	add 10,7,30
	.loc 1 1152 0
	mullw 6,6,8
	subf 6,6,31
	.loc 1 1150 0
	mulli 10,10,28
	.loc 1 1153 0
	add 8,26,6
	.loc 1 1151 0
	mulli 4,4,12
	.loc 1 1153 0
	mulli 8,8,12
	.loc 1 1152 0
	add 6,7,6
	.loc 1 1154 0
	lwzx 12,11,10
	.loc 1 1152 0
	mulli 6,6,28
	.loc 1 1151 0
	addi 4,4,80
	.loc 1 1153 0
	addi 8,8,80
	.loc 1 1150 0
	add 10,11,10
.LVL162:
	.loc 1 1151 0
	add 4,25,4
	.loc 1 1153 0
	add 8,25,8
	.loc 1 1154 0
	lwz 29,4(10)
	lwz 3,8(10)
	.loc 1 1151 0
	addi 5,4,12
.LVL163:
.LBB95:
.LBB93:
	.loc 2 2123 0
	stw 12,0(9)
.LBE93:
.LBE95:
	.loc 1 1152 0
	add 7,11,6
.LVL164:
	.loc 1 1153 0
	addi 10,8,12
.LVL165:
.LBB96:
.LBB94:
	.loc 2 2124 0
	.loc 2 2125 0
	stw 29,0(9)
	.loc 2 2126 0
	.loc 2 2127 0
	stw 3,0(9)
	.loc 2 2128 0
.LBE94:
.LBE96:
	.loc 1 1155 0
	lwz 3,12(4)
.LVL166:
	lwz 5,8(5)
.LVL167:
	lwz 4,16(4)
.LVL168:
.LBB97:
.LBB98:
	.loc 2 2123 0
	stw 3,0(9)
	.loc 2 2124 0
	.loc 2 2125 0
	stw 4,0(9)
	.loc 2 2126 0
	.loc 2 2127 0
	stw 5,0(9)
	.loc 2 2128 0
.LBE98:
.LBE97:
	.loc 1 1156 0
	lwzx 5,11,6
.LVL169:
	lwz 6,4(7)
	lwz 11,8(7)
.LVL170:
.LBB99:
.LBB100:
	.loc 2 2123 0
	stw 5,0(9)
	.loc 2 2124 0
	.loc 2 2125 0
	stw 6,0(9)
	.loc 2 2126 0
	.loc 2 2127 0
	stw 11,0(9)
	.loc 2 2128 0
.LBE100:
.LBE99:
	.loc 1 1157 0
	lwz 7,12(8)
.LVL171:
	lwz 11,8(10)
.LVL172:
	lwz 8,16(8)
.LVL173:
.LBB101:
.LBB102:
	.loc 2 2123 0
	stw 7,0(9)
	.loc 2 2124 0
	.loc 2 2125 0
	stw 8,0(9)
	.loc 2 2126 0
	.loc 2 2127 0
	stw 11,0(9)
	.loc 2 2128 0
.LVL174:
.LBE102:
.LBE101:
.LBE103:
	.loc 1 1145 0
	lwz 29,16(28)
.LVL175:
	addi 30,30,1
	addi 31,31,1
.LVL176:
	cmpw 7,29,0
	bgt+ 7,.L171
.LVL177:
.L181:
	.loc 1 1173 0
	rlwinm 31,29,0,0xffff
	li 3,160
	li 4,3
	mr 5,31
	bl GX_Begin
.LVL178:
	.loc 1 1174 0
	cmpwi 7,29,0
	ble- 7,.L172
.LBB104:
.LBB105:
.LBB106:
	.loc 2 2123 0
	lwz 11,wgPipe@l(24)
	mtctr 29
.LBE106:
.LBE105:
.LBE104:
	.loc 1 1174 0
	li 9,0
	la 6,globalVertexTable@l(23)
.LVL179:
.L173:
.LBB109:
	.loc 1 1178 0 discriminator 2
	lwz 10,36(28)
	lwz 8,0(6)
	lwz 10,24(10)
	add 10,9,10
	mulli 10,10,28
	.loc 1 1179 0 discriminator 2
	lwzx 7,8,10
	.loc 1 1178 0 discriminator 2
	add 10,8,10
.LVL180:
	.loc 1 1179 0 discriminator 2
	lwz 8,4(10)
	lwz 0,8(10)
.LVL181:
.LBB108:
.LBB107:
	.loc 2 2123 0 discriminator 2
	stw 7,0(11)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 8,0(11)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(11)
	.loc 2 2128 0 discriminator 2
.LBE107:
.LBE108:
.LBE109:
	.loc 1 1174 0 discriminator 2
	addi 9,9,1
.LVL182:
	bdnz .L173
.LVL183:
.L172:
	.loc 1 1186 0
	li 3,160
	li 4,3
	mr 5,31
	bl GX_Begin
.LVL184:
	.loc 1 1187 0
	addic. 9,29,-1
	blt- 0,.L174
.LVL185:
.LBB110:
.LBB111:
.LBB112:
	.loc 2 2123 0
	lwz 11,wgPipe@l(24)
	mtctr 29
.LVL186:
.L175:
.LBE112:
.LBE111:
	.loc 1 1120 0 discriminator 2
	add 10,9,26
	.loc 1 1190 0 discriminator 2
	mulli 10,10,12
	addi 10,10,80
	add 10,25,10
	.loc 1 1191 0 discriminator 2
	lwz 7,12(10)
.LVL187:
	lwz 8,16(10)
	lwz 0,20(10)
.LVL188:
.LBB114:
.LBB113:
	.loc 2 2123 0 discriminator 2
	stw 7,0(11)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 8,0(11)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(11)
	.loc 2 2128 0 discriminator 2
.LBE113:
.LBE114:
.LBE110:
	.loc 1 1187 0 discriminator 2
	addi 9,9,-1
.LVL189:
	bdnz .L175
.LVL190:
.L174:
	.loc 1 1196 0
	lwz 0,16(28)
	lwz 9,144(19)
.LVL191:
	add 26,26,0
.LVL192:
.L167:
.LBE89:
	.loc 1 1139 0
	addi 21,21,1
.LVL193:
	addi 28,28,92
.LVL194:
	cmpw 7,9,21
	bgt+ 7,.L176
.LVL195:
.L166:
	.loc 1 1199 0
	bl glPopMatrix
	.loc 1 1200 0
	lwz 0,68(1)
	lwz 19,12(1)
.LVL196:
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
.LVL197:
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI39:
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
	blr
.LVL198:
.L168:
.LCFI40:
	.cfi_restore_state
.LBB115:
	.loc 1 1173 0
	rlwinm 31,29,0,0xffff
	li 3,160
	li 4,3
	mr 5,31
	bl GX_Begin
	b .L172
.LBE115:
	.cfi_endproc
.LFE57:
	.size	R_DrawBrushModelVolumes, .-R_DrawBrushModelVolumes
	.align 2
	.globl getVertexIndexFromSurf
	.type	getVertexIndexFromSurf, @function
getVertexIndexFromSurf:
.LFB58:
	.loc 1 1218 0
	.cfi_startproc
.LVL199:
	.loc 1 1220 0
	lwz 0,12(3)
	lwz 9,216(5)
	add 0,4,0
	slwi 0,0,2
	lwzx 0,9,0
.LVL200:
	.loc 1 1227 0
	lwz 9,184(5)
	.loc 1 1223 0
	cmpwi 7,0,0
	ble- 7,.L183
	.loc 1 1227 0
	slwi 0,0,3
.LVL201:
	lhzx 3,9,0
.LVL202:
	blr
.LVL203:
.L183:
	.loc 1 1233 0
	mulli 0,0,-8
.LVL204:
	add 9,9,0
	lhz 3,2(9)
.LVL205:
	.loc 1 1235 0
	blr
	.cfi_endproc
.LFE58:
	.size	getVertexIndexFromSurf, .-getVertexIndexFromSurf
	.align 2
	.globl PrecalcVolumesForLight
	.type	PrecalcVolumesForLight, @function
PrecalcVolumesForLight:
.LFB59:
	.loc 1 1252 0
	.cfi_startproc
.LVL206:
	stwu 1,-160(1)
.LCFI41:
	.cfi_def_cfa_offset 160
	.loc 1 1276 0
	lis 9,shadowchain@ha
	.loc 1 1252 0
	mflr 0
	stw 31,140(1)
	.loc 1 1276 0
	lwz 31,shadowchain@l(9)
	.cfi_offset 31, -20
	.cfi_register 65, 0
.LVL207:
	.loc 1 1252 0
	stw 0,164(1)
	.loc 1 1280 0
	cmpwi 7,31,0
	.loc 1 1252 0
	stfd 30,144(1)
	stfd 31,152(1)
	stw 14,72(1)
	stw 15,76(1)
	stw 16,80(1)
	stw 17,84(1)
	stw 18,88(1)
	stw 19,92(1)
	stw 20,96(1)
	stw 21,100(1)
	stw 22,104(1)
	stw 23,108(1)
	stw 24,112(1)
	stw 25,116(1)
	stw 26,120(1)
	stw 27,124(1)
	stw 28,128(1)
	stw 29,132(1)
	stw 30,136(1)
	.loc 1 1280 0
	beq- 7,.L215
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 21, -60
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 17, -76
	.cfi_offset 16, -80
	.cfi_offset 15, -84
	.cfi_offset 14, -88
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 1418 0
	lis 8,.LC5@ha
	lis 28,volumeVertsBuff@ha
	lis 25,volumeCmdsBuff@ha
	lis 26,lightCmdsBuff@ha
	.loc 1 1407 0
	lis 27,currentshadowlight@ha
	.loc 1 1418 0
	lfs 31,.LC5@l(8)
	la 28,volumeVertsBuff@l(28)
	.loc 1 1280 0
	li 23,0
	li 21,0
	li 30,0
	li 22,0
	li 29,0
	la 25,volumeCmdsBuff@l(25)
	la 26,lightCmdsBuff@l(26)
	.loc 1 1407 0
	la 27,currentshadowlight@l(27)
	.loc 1 1410 0
	lis 18,.LC3@ha
	.loc 1 1415 0
	lis 19,.LC27@ha
	lis 20,.LC0@ha
.LVL208:
.L213:
	.loc 1 1285 0
	lwz 0,8(31)
	.loc 1 1283 0
	lwz 17,36(31)
.LVL209:
	.loc 1 1285 0
	andi. 9,0,20
	bne- 0,.L224
.LVL210:
	.loc 1 1293 0
	slwi 0,29,2
	li 9,6
	stwx 9,25,0
.LVL211:
	.loc 1 1294 0
	addi 0,29,1
	slwi 0,0,2
	.loc 1 1293 0
	mr 11,29
	.loc 1 1294 0
	lwz 9,16(31)
	addi 29,29,2
.LVL212:
	stwx 9,25,0
	.loc 1 1296 0
	lis 9,0x5555
	ori 9,9,21846
	srawi 0,30,31
	.loc 1 1297 0
	lwz 10,16(31)
	.loc 1 1296 0
	mulhw 9,30,9
	.loc 1 1297 0
	cmpwi 7,10,0
	.loc 1 1296 0
	subf 0,0,9
	stw 0,52(1)
	.loc 1 1322 0
	mr 6,0
	.loc 1 1297 0
	ble- 7,.L189
	.loc 1 1252 0
	addi 0,11,1
	.loc 1 1306 0
	stw 26,56(1)
	.loc 1 1252 0
	slwi 0,0,2
	.loc 1 1306 0
	stw 25,60(1)
	.loc 1 1252 0
	add 0,0,25
	.loc 1 1283 0
	mr 9,17
	.loc 1 1297 0
	li 24,0
	.loc 1 1306 0
	mr 26,0
	mr 25,6
	b .L193
.LVL213:
.L225:
	lis 11,.LC0@ha
	lis 8,.LC22@ha
	la 11,.LC0@l(11)
	lfs 0,.LC22@l(8)
	lfs 13,0(11)
	fdivs 1,13,1
.LVL214:
	fmuls 1,1,0
	bl VectorScale
.L191:
.LVL215:
	.loc 1 1318 0
	lwz 0,16(31)
	nor 9,24,24
	.loc 1 1314 0
	lfs 13,4(16)
	.loc 1 1297 0
	addi 24,24,1
	.loc 1 1318 0
	add 0,9,0
	.loc 1 1314 0
	lfs 11,24(1)
	.loc 1 1318 0
	add 0,0,25
	.loc 1 1314 0
	lfs 0,8(16)
	lfsx 12,14,15
	fadds 13,11,13
.LVL216:
	.loc 1 1318 0
	stwu 0,4(26)
	.loc 1 1315 0
	slwi 0,30,2
	.loc 1 1314 0
	lfs 11,28(1)
	.loc 1 1315 0
	add 9,28,0
	.loc 1 1297 0
	lwz 10,16(31)
	.loc 1 1316 0
	addi 30,30,3
.LVL217:
	.loc 1 1314 0
	fadds 0,11,0
.LVL218:
	lfs 11,20(1)
	.loc 1 1297 0
	cmpw 7,10,24
	.loc 1 1318 0
	addi 29,29,1
.LVL219:
	.loc 1 1314 0
	fadds 12,11,12
	.loc 1 1315 0
	stfsx 12,28,0
	stfs 13,4(9)
	stfs 0,8(9)
	.loc 1 1297 0
	ble- 7,.L192
	lwz 9,36(31)
.LVL220:
.L193:
	.loc 1 1300 0
	lwz 15,24(9)
	lis 8,globalVertexTable@ha
	la 8,globalVertexTable@l(8)
	.loc 1 1301 0
	lwz 9,0(27)
	.loc 1 1300 0
	add 15,24,15
	lwz 14,0(8)
	mulli 15,15,28
	.loc 1 1301 0
	lfs 0,0(9)
	lfs 13,4(9)
	.loc 1 1303 0
	addi 3,1,20
	.loc 1 1301 0
	lfsx 12,14,15
	.loc 1 1300 0
	add 16,14,15
.LVL221:
	.loc 1 1301 0
	fsubs 12,12,0
	lfs 0,8(9)
	stfs 12,20(1)
	lfs 12,4(16)
	fsubs 13,12,13
	stfs 13,24(1)
	lfs 13,8(16)
	fsubs 0,13,0
	stfs 0,28(1)
	.loc 1 1303 0
	bl Length
.LVL222:
	.loc 1 1304 0
	lis 9,sh_visiblevolumes@ha
	.loc 1 1306 0
	addi 3,1,20
	.loc 1 1304 0
	la 9,sh_visiblevolumes@l(9)
	.loc 1 1306 0
	mr 4,3
	.loc 1 1304 0
	lfs 0,12(9)
	fcmpu 7,0,31
	bne- 7,.L225
	.loc 1 1310 0
	lis 9,.LC0@ha
	lis 11,.LC23@ha
	la 9,.LC0@l(9)
	addi 3,1,20
	lfs 0,0(9)
	mr 4,3
	lwz 9,0(27)
	fdivs 1,0,1
.LVL223:
	lfs 0,.LC23@l(11)
	lfs 13,36(9)
	fmuls 1,1,13
	fmuls 1,1,0
	bl VectorScale
	b .L191
.LVL224:
.L192:
	.loc 1 1322 0
	lis 6,0x5555
	.loc 1 1323 0
	cmpwi 7,10,0
	.loc 1 1322 0
	ori 6,6,21846
	srawi 0,30,31
	mulhw 6,30,6
	lwz 26,56(1)
	lwz 25,60(1)
	subf 6,0,6
.LVL225:
	.loc 1 1323 0
	ble- 7,.L189
	.loc 1 1327 0
	lwz 11,36(31)
	lis 8,globalVertexTable@ha
	la 8,globalVertexTable@l(8)
	.loc 1 1323 0
	mtctr 10
	.loc 1 1327 0
	lwz 0,24(11)
	.loc 1 1252 0
	slwi 11,30,2
	.loc 1 1327 0
	lwz 9,0(8)
	.loc 1 1252 0
	lis 8,volumeVertsBuff@ha
	.loc 1 1327 0
	mulli 0,0,28
	.loc 1 1252 0
	la 8,volumeVertsBuff@l(8)
	add 11,11,8
	.loc 1 1323 0
	li 8,0
	.loc 1 1327 0
	add 9,9,0
.LVL226:
.L194:
	.loc 1 1327 0 is_stmt 0 discriminator 2
	lwz 0,0(9)
	.loc 1 1323 0 is_stmt 1 discriminator 2
	addi 8,8,1
.LVL227:
	.loc 1 1327 0 discriminator 2
	stw 0,0(11)
	.loc 1 1328 0 discriminator 2
	lwz 0,4(9)
	stw 0,4(11)
	.loc 1 1329 0 discriminator 2
	lwz 0,8(9)
	.loc 1 1323 0 discriminator 2
	addi 9,9,28
	.loc 1 1329 0 discriminator 2
	stw 0,8(11)
.LVL228:
	.loc 1 1323 0 discriminator 2
	addi 11,11,12
	bdnz .L194
	.loc 1 1252 0
	mulli 8,8,3
.LVL229:
	add 30,30,8
.LVL230:
.L189:
	.loc 1 1333 0
	lis 0,0x1
	ori 0,0,21845
	cmpw 7,30,0
	bgt- 7,.L195
.LVL231:
	.loc 1 1343 0 discriminator 1
	cmpwi 7,10,0
	ble- 7,.L197
	.loc 1 1252 0
	lwz 11,52(1)
	li 0,0
	lwz 7,20(17)
	mr 8,6
	subf 4,6,11
	mr 16,11
	addi 7,7,-4
	li 9,1
	.loc 1 1360 0
	li 24,8
	.loc 1 1362 0
	li 3,4
	mr 11,0
	b .L203
.LVL232:
.L198:
	.loc 1 1358 0
	cmpwi 7,11,0
	addi 23,23,2
.LVL233:
	bne- 7,.L201
	.loc 1 1360 0
	addi 21,29,1
.LVL234:
	.loc 1 1366 0
	addi 10,29,2
	.loc 1 1367 0
	addi 0,29,3
	.loc 1 1360 0
	slwi 23,29,2
.LVL235:
	.loc 1 1362 0
	slwi 5,21,2
	.loc 1 1366 0
	slwi 10,10,2
	.loc 1 1367 0
	slwi 0,0,2
	.loc 1 1252 0
	add 11,4,8
	.loc 1 1360 0
	stwx 24,25,23
	.loc 1 1367 0
	addi 29,29,4
	.loc 1 1362 0
	stwx 3,25,5
.LVL236:
	.loc 1 1367 0
	li 23,4
	.loc 1 1366 0
	stwx 8,25,10
.LVL237:
	.loc 1 1367 0
	stwx 11,25,0
.LVL238:
.L201:
	.loc 1 1371 0
	lwz 0,8(17)
	slwi 15,29,2
	.loc 1 1372 0
	addi 10,29,1
	.loc 1 1371 0
	mr 5,9
	divw 14,9,0
	.loc 1 1372 0
	slwi 10,10,2
	addi 29,29,2
.LVL239:
	li 11,1
	.loc 1 1371 0
	mullw 0,14,0
	subf 0,0,9
	add 0,0,6
	stwx 0,25,15
.LVL240:
	.loc 1 1372 0
	lwz 0,8(17)
	divw 15,9,0
	mullw 0,15,0
	subf 0,0,9
	add 0,0,16
	stwx 0,25,10
	lwz 10,16(31)
.LVL241:
.L202:
	.loc 1 1343 0
	cmpw 7,10,5
	.loc 1 1379 0
	addi 9,9,1
.LVL242:
	addi 8,8,1
	.loc 1 1343 0
	ble- 7,.L226
.LVL243:
.L203:
	.loc 1 1348 0
	lwzu 5,4(7)
	cmpwi 7,5,0
	beq- 7,.L198
	.loc 1 1349 0
	lwz 5,16(5)
	lwz 0,16(17)
	cmpw 7,5,0
	bne+ 7,.L198
	.loc 1 1377 0
	cmpwi 7,11,0
	mr 5,9
	beq- 7,.L202
	.loc 1 1379 0
	slwi 0,21,2
	mr 5,9
	stwx 23,25,0
	.loc 1 1346 0
	li 11,0
.LVL244:
	.loc 1 1379 0
	addi 9,9,1
.LVL245:
	addi 8,8,1
	lwz 10,16(31)
	.loc 1 1343 0
	cmpw 7,10,5
	bgt+ 7,.L203
.LVL246:
.L226:
	.loc 1 1385 0
	cmpwi 7,11,0
	beq- 7,.L197
	.loc 1 1387 0
	slwi 0,21,2
	stwx 23,25,0
.L197:
	.loc 1 1390 0
	lis 0,0x2
	cmpw 7,29,0
	bgt- 7,.L227
	.loc 1 1405 0
	lwz 9,4(31)
	.loc 1 1410 0
	lis 0,0x4330
	.loc 1 1407 0
	lwz 3,0(27)
	.loc 1 1410 0
	addi 8,1,48
	.loc 1 1407 0
	lfs 0,4(9)
	lfs 13,4(3)
	lfs 12,0(3)
	fmuls 0,13,0
	lfs 13,0(9)
	lfs 11,8(3)
	.loc 1 1397 0
	lwz 24,48(31)
	.loc 1 1407 0
	fmadds 12,12,13,0
	lfs 13,8(9)
.LVL247:
	lfs 0,12(9)
	.loc 1 1398 0
	addi 5,24,16
.LVL248:
	.loc 1 1410 0
	stw 0,40(1)
	.loc 1 1407 0
	fmadds 13,11,13,12
	fsubs 0,13,0
	.loc 1 1410 0
	lfs 13,.LC3@l(18)
	fctiwz 0,0
	stfiwx 0,0,8
	lwz 0,48(1)
	srawi 9,0,31
	xor 0,9,0
	subf 0,9,0
	xoris 0,0,0x8000
	stw 0,44(1)
	lfd 30,40(1)
	.loc 1 1412 0
	lfs 0,36(3)
	.loc 1 1410 0
	fsub 30,30,13
	frsp 30,30
.LVL249:
	.loc 1 1412 0
	fcmpu 7,0,30
	blt- 7,.L228
.LVL250:
.L205:
	.loc 1 1413 0
	mr 4,24
	addi 6,1,8
	bl ProjectPlane
	.loc 1 1415 0
	lwz 10,0(27)
	lfs 13,.LC0@l(20)
	lfs 12,36(10)
	lfs 11,.LC27@l(19)
	.loc 1 1416 0
	fdivs 0,30,12
	fsubs 0,13,0
	.loc 1 1415 0
	fmsubs 12,12,11,30
	.loc 1 1418 0
	fcmpu 7,0,31
	.loc 1 1415 0
	fdivs 11,13,12
.LVL251:
	.loc 1 1418 0
	bnl- 7,.L207
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
.LVL252:
.L207:
	.loc 1 1420 0
	addi 0,22,1
	slwi 9,22,2
	.loc 1 1422 0
	slwi 0,0,2
	.loc 1 1420 0
	li 11,6
	stwx 11,26,9
	.loc 1 1423 0
	addi 9,22,3
	.loc 1 1422 0
	stwx 31,26,0
.LVL253:
	addi 0,22,2
	.loc 1 1423 0
	slwi 0,0,2
	.loc 1 1424 0
	slwi 9,9,2
	.loc 1 1423 0
	lfs 13,24(10)
	.loc 1 1424 0
	addi 7,22,4
	.loc 1 1425 0
	slwi 7,7,2
	.loc 1 1429 0
	lis 8,globalVertexTable@ha
	.loc 1 1423 0
	fmuls 13,13,0
	.loc 1 1426 0
	addi 11,22,6
	.loc 1 1423 0
	stfsx 13,26,0
.LVL254:
	.loc 1 1425 0
	addi 0,22,5
	.loc 1 1426 0
	slwi 0,0,2
	.loc 1 1424 0
	lfs 13,28(10)
	fmuls 13,13,0
	stfsx 13,26,9
	.loc 1 1429 0
	lwz 9,globalVertexTable@l(8)
	.loc 1 1425 0
	lfs 13,32(10)
	fmuls 13,13,0
	stfsx 13,26,7
.LVL255:
	.loc 1 1426 0
	stfsx 0,26,0
	.loc 1 1430 0
	lwz 5,8(17)
	.loc 1 1429 0
	lwz 8,36(31)
	.loc 1 1430 0
	cmpwi 7,5,0
	.loc 1 1429 0
	lwz 0,24(8)
.LVL256:
	.loc 1 1430 0
	ble- 7,.L219
	.loc 1 1429 0
	mulli 0,0,28
	.loc 1 1436 0
	lis 8,.LC28@ha
	.loc 1 1252 0
	mulli 6,5,28
	.loc 1 1429 0
	lfs 3,8(1)
	add 9,9,0
	lfs 4,12(1)
	lfs 5,16(1)
	.loc 1 1252 0
	add 6,9,6
	.loc 1 1436 0
	lfs 10,.LC28@l(8)
	b .L211
.LVL257:
.L230:
.LBB116:
	.loc 1 1446 0
	fnmadds 9,0,8,9
.LVL258:
.L210:
	.loc 1 1452 0
	lfs 7,4(24)
.LBE116:
	.loc 1 1430 0
	addi 9,9,28
.LBB117:
	.loc 1 1451 0
	lfs 8,20(24)
.LBE117:
	.loc 1 1430 0
	cmpw 7,9,6
.LBB118:
	.loc 1 1451 0
	lfs 6,16(24)
	.loc 1 1252 0
	addi 7,11,2
	.loc 1 1451 0
	fmuls 8,12,8
	.loc 1 1252 0
	addi 8,11,3
	.loc 1 1452 0
	fmuls 12,12,7
.LVL259:
	lfs 7,0(24)
	.loc 1 1252 0
	addi 0,11,4
	.loc 1 1453 0
	slwi 7,7,2
	.loc 1 1451 0
	fmadds 8,13,6,8
	.loc 1 1454 0
	slwi 8,8,2
	.loc 1 1452 0
	fmadds 13,13,7,12
.LVL260:
	.loc 1 1451 0
	lfs 7,24(24)
	.loc 1 1452 0
	lfs 12,8(24)
	.loc 1 1455 0
	slwi 0,0,2
	.loc 1 1451 0
	fnmadds 8,0,7,8
.LVL261:
	.loc 1 1455 0
	addi 11,11,5
.LVL262:
	.loc 1 1452 0
	fmadds 0,0,12,13
.LVL263:
	.loc 1 1453 0
	stfsx 0,26,7
.LVL264:
	.loc 1 1454 0
	stfsx 8,26,8
.LVL265:
	.loc 1 1455 0
	stfsx 9,26,0
.LBE118:
	.loc 1 1430 0
	beq- 7,.L229
.LVL266:
.L211:
	.loc 1 1433 0
	lfs 12,4(9)
	.loc 1 1436 0
	slwi 8,11,2
	.loc 1 1433 0
	lfs 13,0(9)
	.loc 1 1252 0
	addi 0,11,1
	.loc 1 1433 0
	fsubs 12,12,4
	.loc 1 1436 0
	lfs 9,4(24)
	.loc 1 1433 0
	fsubs 13,13,3
.LVL267:
	.loc 1 1436 0
	lfs 8,0(24)
	.loc 1 1433 0
	lfs 0,8(9)
	.loc 1 1437 0
	slwi 0,0,2
	.loc 1 1436 0
	fmuls 9,12,9
	.loc 1 1433 0
	fsubs 0,0,5
.LVL268:
	.loc 1 1436 0
	fmadds 9,13,8,9
	lfs 8,8(24)
	fmadds 9,0,8,9
	fmadds 9,9,11,10
	stfsx 9,26,8
.LVL269:
	.loc 1 1437 0
	lfs 9,20(24)
	lfs 8,16(24)
	fmuls 12,12,9
.LVL270:
	lfs 9,24(24)
	fmadds 13,13,8,12
.LVL271:
	fmadds 0,0,9,13
.LVL272:
	fmadds 0,0,11,10
	stfsx 0,26,0
.LVL273:
.LBB119:
	.loc 1 1445 0
	lwz 0,8(31)
	.loc 1 1443 0
	lfs 8,4(10)
	lfs 12,4(9)
	.loc 1 1445 0
	andi. 8,0,2
	.loc 1 1443 0
	lfs 9,8(10)
	.loc 1 1446 0
	lwz 8,4(31)
	.loc 1 1443 0
	fsubs 12,8,12
	lfs 0,8(9)
	lfs 7,0(10)
	lfs 13,0(9)
	fsubs 0,9,0
	.loc 1 1446 0
	lfs 9,4(8)
	.loc 1 1443 0
	fsubs 13,7,13
.LVL274:
	.loc 1 1446 0
	lfs 7,0(8)
	fmuls 9,12,9
	lfs 8,8(8)
	fmadds 9,13,7,9
	.loc 1 1445 0
	bne- 0,.L230
	.loc 1 1448 0
	fmadds 9,0,8,9
.LVL275:
	b .L210
.LVL276:
.L229:
.LBE119:
	.loc 1 1252 0
	mulli 5,5,5
	.loc 1 1458 0
	lis 0,0x1
	.loc 1 1252 0
	add 22,22,5
	addi 22,22,6
	.loc 1 1458 0
	cmpw 7,22,0
	bgt- 7,.L231
.LVL277:
.L212:
	.loc 1 1463 0
	lwz 31,44(31)
.LVL278:
.L188:
	.loc 1 1280 0 discriminator 1
	cmpwi 7,31,0
	bne+ 7,.L213
	.loc 1 1280 0 is_stmt 0
	addi 9,22,1
	addi 0,29,1
.LVL279:
.L186:
	.loc 1 1468 0 is_stmt 1
	li 11,0
	slwi 22,22,2
	.loc 1 1469 0
	slwi 29,29,2
	.loc 1 1468 0
	stwx 11,26,22
.LVL280:
	.loc 1 1469 0
	stwx 11,25,29
.LVL281:
	.loc 1 1471 0
	lis 11,numLightCmds@ha
	stw 9,numLightCmds@l(11)
	.loc 1 1472 0
	lis 9,numVolumeCmds@ha
.LVL282:
	stw 0,numVolumeCmds@l(9)
	.loc 1 1473 0
	lis 9,numVolumeVerts@ha
	.loc 1 1474 0
	lwz 0,164(1)
.LVL283:
	lwz 14,72(1)
	mtlr 0
	lwz 15,76(1)
	lwz 16,80(1)
	lwz 17,84(1)
	lwz 18,88(1)
	lwz 19,92(1)
	lwz 20,96(1)
	lwz 21,100(1)
	lwz 22,104(1)
	lwz 23,108(1)
	lwz 24,112(1)
	lwz 25,116(1)
	lwz 26,120(1)
	lwz 27,124(1)
	lwz 28,128(1)
	lwz 29,132(1)
	lwz 31,140(1)
.LVL284:
	lfd 30,144(1)
	lfd 31,152(1)
	.loc 1 1473 0
	stw 30,numVolumeVerts@l(9)
	.loc 1 1474 0
	lwz 30,136(1)
.LVL285:
	addi 1,1,160
	.cfi_remember_state
.LCFI42:
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
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL286:
.L224:
.LCFI43:
	.cfi_restore_state
	.loc 1 1287 0
	lis 11,.LC30@ha
	.loc 1 1286 0
	lwz 31,44(31)
.LVL287:
	.loc 1 1287 0
	lwz 3,.LC30@l(11)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 1288 0
	b .L188
.LVL288:
.L228:
	.loc 1 1412 0 discriminator 1
	lis 11,.LC31@ha
	stw 5,64(1)
	lwz 3,.LC31@l(11)
	crxor 6,6,6
	bl Con_Printf
.LVL289:
	lwz 3,0(27)
	lwz 5,64(1)
	b .L205
.LVL290:
.L219:
	.loc 1 1426 0
	mr 22,11
	.loc 1 1458 0
	lis 0,0x1
.LVL291:
	cmpw 7,22,0
	ble+ 7,.L212
.LVL292:
.L231:
	.loc 1 1459 0
	lis 3,.LC29@ha
	mr 4,22
	la 3,.LC29@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL293:
	addi 9,22,1
	addi 0,29,1
	.loc 1 1460 0
	b .L186
.LVL294:
.L227:
	.loc 1 1391 0
	lis 3,.LC25@ha
	mr 4,29
	la 3,.LC25@l(3)
	crxor 6,6,6
	bl Con_Printf
	addi 9,22,1
	addi 0,29,1
	.loc 1 1392 0
	b .L186
.LVL295:
.L195:
	.loc 1 1334 0
	lis 3,.LC24@ha
	mr 4,29
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Con_Printf
	addi 9,22,1
	addi 0,29,1
	.loc 1 1335 0
	b .L186
.LVL296:
.L215:
	lis 25,volumeCmdsBuff@ha
	lis 26,lightCmdsBuff@ha
	.loc 1 1280 0
	li 0,1
	li 29,0
	li 9,1
	li 22,0
	.loc 1 1260 0
	li 30,0
	la 25,volumeCmdsBuff@l(25)
	la 26,lightCmdsBuff@l(26)
	b .L186
	.cfi_endproc
.LFE59:
	.size	PrecalcVolumesForLight, .-PrecalcVolumesForLight
	.align 2
	.globl R_ConstructShadowVolume
	.type	R_ConstructShadowVolume, @function
R_ConstructShadowVolume:
.LFB54:
	.loc 1 822 0
	.cfi_startproc
.LVL297:
	mflr 0
	stwu 1,-16(1)
.LCFI44:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 824 0
	lbz 0,45(3)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L233
	lwz 4,2108(3)
.LVL298:
.L234:
	.loc 1 833 0
	lis 9,gl_var@ha
	.loc 1 831 0
	lis 31,VolumeVertsPointer@ha
	.loc 1 833 0
	lbz 0,gl_var@l(9)
	.loc 1 831 0
	stw 4,VolumeVertsPointer@l(31)
	.loc 1 833 0
	cmpwi 7,0,0
	beq- 7,.L232
	.loc 1 834 0
	lwz 5,2112(30)
	cmpwi 7,5,2047
	ble- 7,.L236
.L232:
	.loc 1 839 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL299:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL300:
.L236:
.LCFI46:
	.cfi_restore_state
	.loc 1 835 0
	lis 30,AGP_Buffer@ha
.LVL301:
	slwi 5,5,2
	lwz 3,AGP_Buffer@l(30)
	bl memcpy
	.loc 1 836 0
	lwz 0,AGP_Buffer@l(30)
	.loc 1 839 0
	lwz 30,8(1)
	.loc 1 836 0
	stw 0,VolumeVertsPointer@l(31)
	.loc 1 839 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
.LVL302:
.L233:
.LCFI48:
	.cfi_restore_state
	.loc 1 825 0
	lis 9,cl+2688@ha
	lwz 3,cl+2688@l(9)
.LVL303:
	bl PrecalcVolumesForLight
	.loc 1 826 0
	lis 9,volumeCmdsBuff@ha
	la 0,volumeCmdsBuff@l(9)
	.loc 1 827 0
	lis 4,volumeVertsBuff@ha
	.loc 1 828 0
	lis 9,lightCmdsBuff@ha
	.loc 1 827 0
	la 4,volumeVertsBuff@l(4)
	.loc 1 826 0
	stw 0,2104(30)
	.loc 1 828 0
	la 0,lightCmdsBuff@l(9)
	.loc 1 827 0
	stw 4,2108(30)
	.loc 1 828 0
	stw 0,2116(30)
	b .L234
	.cfi_endproc
.LFE54:
	.size	R_ConstructShadowVolume, .-R_ConstructShadowVolume
	.align 2
	.globl DrawVolumeFromCmds
	.type	DrawVolumeFromCmds, @function
DrawVolumeFromCmds:
.LFB60:
	.loc 1 1482 0
	.cfi_startproc
.LVL304:
	mflr 0
	stwu 1,-40(1)
.LCFI49:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 26,16(1)
	stw 0,44(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 24,8(1)
	lis 24,wgPipe@ha
	.cfi_offset 24, -32
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	stw 25,12(1)
	mr 25,4
	.cfi_offset 25, -28
	stw 27,20(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 30,32(1)
	.loc 1 1485 0
	li 30,0
	.cfi_offset 30, -8
	.loc 1 1482 0
	stw 31,36(1)
	.loc 1 1482 0
	mr 31,5
	.cfi_offset 31, -4
.LVL305:
.L253:
	.loc 1 1495 0
	slwi 0,30,2
	lwzx 29,27,0
.LVL306:
	.loc 1 1496 0
	cmpwi 7,29,0
	beq- 7,.L239
.LVL307:
.L255:
	.loc 1 1497 0
	addi 26,30,1
	.loc 1 1502 0
	mr 3,29
	.loc 1 1497 0
	slwi 26,26,2
	.loc 1 1504 0
	addi 29,29,-7
.LVL308:
	.loc 1 1497 0
	lwzx 28,27,26
.LVL309:
	.loc 1 1502 0
	bl GX_AsGXPrimitiveType
.LVL310:
	rlwinm 3,3,0,0xff
	li 4,3
	rlwinm 5,28,0,0xffff
	.loc 1 1497 0
	add 26,27,26
	.loc 1 1502 0
	bl GX_Begin
	.loc 1 1504 0
	cmplwi 7,29,1
	.loc 1 1497 0
	addi 0,30,2
.LVL311:
	.loc 1 1504 0
	ble- 7,.L240
.LVL312:
	.loc 1 1512 0 discriminator 1
	cmpwi 7,28,0
	ble- 7,.L249
.LBB120:
.LBB121:
.LBB122:
	.loc 2 2123 0
	lwz 9,wgPipe@l(24)
	mtctr 28
.LBE122:
.LBE121:
.LBE120:
	.loc 1 1482 0
	li 10,0
.LVL313:
.L244:
.LBB125:
	.loc 1 1514 0 discriminator 2
	lwzu 11,4(26)
.LVL314:
	mulli 11,11,12
	.loc 1 1515 0 discriminator 2
	lwzx 7,31,11
	.loc 1 1514 0 discriminator 2
	add 11,31,11
.LVL315:
	.loc 1 1515 0 discriminator 2
	lwz 8,4(11)
	lwz 0,8(11)
.LVL316:
.LBB124:
.LBB123:
	.loc 2 2123 0 discriminator 2
	stw 7,0(9)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 8,0(9)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(9)
	.loc 2 2128 0 discriminator 2
.LBE123:
.LBE124:
.LBE125:
	.loc 1 1512 0 discriminator 2
	addi 10,10,1
.LVL317:
	bdnz .L244
	.loc 1 1482 0
	add 30,30,10
	addi 30,30,2
.LVL318:
.L258:
	.loc 1 1495 0
	slwi 0,30,2
	lwzx 29,27,0
.LVL319:
	.loc 1 1496 0
	cmpwi 7,29,0
	bne+ 7,.L255
.LVL320:
.L239:
	.loc 1 1548 0
	lis 9,sh_visiblevolumes+12@ha
	lfs 13,sh_visiblevolumes+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fcmpu 7,13,0
	bne- 7,.L237
	li 31,0
.LVL321:
	.loc 1 1562 0
	lis 27,globalVertexTable@ha
.LVL322:
	.loc 1 1552 0
	slwi 0,31,2
	lis 26,wgPipe@ha
.LVL323:
	lwzx 3,25,0
.LVL324:
	.loc 1 1553 0
	cmpwi 7,3,0
	beq- 7,.L237
.LVL325:
.L257:
	.loc 1 1555 0
	addi 0,31,1
	.loc 1 1556 0
	addi 28,31,6
	.loc 1 1555 0
	slwi 0,0,2
	lwzx 29,25,0
.LVL326:
	.loc 1 1557 0
	lwz 9,36(29)
	lwz 30,8(9)
.LVL327:
	.loc 1 1559 0
	bl GX_AsGXPrimitiveType
.LVL328:
	rlwinm 3,3,0,0xff
	li 4,3
	rlwinm 5,30,0,0xffff
	bl GX_Begin
	.loc 1 1563 0
	cmpwi 7,30,0
	.loc 1 1562 0
	lwz 9,36(29)
	lwz 0,globalVertexTable@l(27)
	lwz 9,24(9)
.LVL329:
	.loc 1 1563 0
	bgt- 7,.L256
	.loc 1 1548 0
	mr 31,28
.LVL330:
.L259:
	.loc 1 1552 0
	slwi 0,31,2
	lwzx 3,25,0
.LVL331:
	.loc 1 1553 0
	cmpwi 7,3,0
	bne+ 7,.L257
.LVL332:
.L237:
	.loc 1 1574 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
.LVL333:
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI50:
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
.LVL334:
.L240:
.LCFI51:
	.cfi_restore_state
	.loc 1 1505 0 discriminator 1
	cmpwi 7,28,0
	ble- 7,.L249
.LBB126:
.LBB127:
.LBB128:
	.loc 2 2123 0
	lwz 9,wgPipe@l(24)
	mtctr 28
.LBE128:
.LBE127:
.LBE126:
	.loc 1 1482 0
	li 10,0
.LVL335:
.L243:
.LBB131:
	.loc 1 1507 0 discriminator 2
	lwzu 11,4(26)
.LVL336:
	mulli 11,11,12
	.loc 1 1508 0 discriminator 2
	lwzx 7,31,11
	.loc 1 1507 0 discriminator 2
	add 11,31,11
.LVL337:
	.loc 1 1508 0 discriminator 2
	lwz 8,4(11)
	lwz 0,8(11)
.LVL338:
.LBB130:
.LBB129:
	.loc 2 2123 0 discriminator 2
	stw 7,0(9)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 8,0(9)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(9)
	.loc 2 2128 0 discriminator 2
.LBE129:
.LBE130:
.LBE131:
	.loc 1 1505 0 discriminator 2
	addi 10,10,1
.LVL339:
	bdnz .L243
	.loc 1 1482 0
	add 30,30,10
	addi 30,30,2
	b .L258
.LVL340:
.L256:
	.loc 1 1562 0
	mulli 9,9,28
.LVL341:
.LBB132:
.LBB133:
	.loc 2 2123 0
	lwz 11,wgPipe@l(26)
.LBE133:
.LBE132:
	.loc 1 1482 0
	mulli 7,30,28
	.loc 1 1562 0
	add 9,0,9
	.loc 1 1482 0
	add 7,9,7
.LVL342:
.L247:
	.loc 1 1569 0 discriminator 2
	lwz 8,0(9)
	lwz 10,4(9)
	lwz 0,8(9)
.LVL343:
.LBB135:
.LBB134:
	.loc 2 2123 0 discriminator 2
	stw 8,0(11)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 10,0(11)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(11)
	.loc 2 2128 0 discriminator 2
.LBE134:
.LBE135:
	.loc 1 1563 0 discriminator 2
	addi 9,9,28
.LVL344:
	cmpw 7,9,7
	bne- 7,.L247
	.loc 1 1482 0
	mulli 30,30,5
.LVL345:
	add 31,31,30
	addi 28,31,6
	.loc 1 1548 0
	mr 31,28
	b .L259
.LVL346:
.L249:
	.loc 1 1505 0
	mr 30,0
	b .L253
	.cfi_endproc
.LFE60:
	.size	DrawVolumeFromCmds, .-DrawVolumeFromCmds
	.align 2
	.globl R_DrawShadowVolume
	.type	R_DrawShadowVolume, @function
R_DrawShadowVolume:
.LFB55:
	.loc 1 850 0
	.cfi_startproc
.LVL347:
	.loc 1 850 0
	mr 9,3
	.loc 1 861 0
	lwz 3,2104(3)
.LVL348:
	lwz 4,2116(9)
	lis 9,VolumeVertsPointer@ha
.LVL349:
	lwz 5,VolumeVertsPointer@l(9)
	.loc 1 866 0
	.loc 1 861 0
	b DrawVolumeFromCmds
	.cfi_endproc
.LFE55:
	.size	R_DrawShadowVolume, .-R_DrawShadowVolume
	.align 2
	.globl R_RenderGlow
	.type	R_RenderGlow, @function
R_RenderGlow:
.LFB61:
	.loc 1 1594 0
	.cfi_startproc
.LVL350:
	mflr 0
	stwu 1,-128(1)
.LCFI52:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	.loc 1 1595 0
	lis 9,.LC5@ha
	.loc 1 1594 0
	stfd 31,120(1)
	stw 0,132(1)
	.loc 1 1595 0
	lfs 31,.LC5@l(9)
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.loc 1 1601 0
	lbz 0,47(3)
	.loc 1 1594 0
	stw 31,108(1)
	mr 31,3
	.cfi_offset 31, -20
	.loc 1 1601 0
	cmpwi 7,0,0
	.loc 1 1594 0
	stfd 30,112(1)
	stw 30,104(1)
	.loc 1 1595 0
	stfs 31,40(1)
	stfs 31,44(1)
	stfs 31,48(1)
	.loc 1 1601 0
	beq- 7,.L261
	.cfi_offset 30, -24
	.cfi_offset 62, -16
	.loc 1 1601 0 is_stmt 0 discriminator 1
	lis 9,gl_wireframe+12@ha
	lfs 0,gl_wireframe+12@l(9)
	fcmpu 7,0,31
	beq- 7,.L268
.LVL351:
.L261:
	.loc 1 1705 0 is_stmt 1
	lwz 0,132(1)
	lwz 30,104(1)
	mtlr 0
	lwz 31,108(1)
.LVL352:
	lfd 30,112(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI53:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL353:
.L268:
.LCFI54:
	.cfi_restore_state
	.loc 1 1605 0
	mr 4,3
	lis 3,r_refdef+112@ha
.LVL354:
	addi 5,1,40
	la 3,r_refdef+112@l(3)
	bl TraceLine
	.loc 1 1608 0
	addi 3,1,40
	bl Length
	fcmpu 7,1,31
	beq- 7,.L263
	.loc 1 1609 0
	lis 9,cl@ha
	la 9,cl@l(9)
	lfd 13,568(9)
	lfd 0,576(9)
	lis 9,.LC27@ha
	lfs 12,.LC27@l(9)
	fsub 0,13,0
	lfs 13,2176(31)
	.loc 1 1593 0
	fneg 0,0
	.loc 1 1609 0
	fmadd 0,0,12,13
	frsp 0,0
	.loc 1 1610 0
	fcmpu 7,0,31
	.loc 1 1609 0
	stfs 0,2176(31)
	.loc 1 1610 0
	blt- 7,.L261
.LVL355:
	.loc 1 1623 0
	lfs 1,0(31)
	lis 3,r_Dworld_matrix@ha
	lfs 2,4(31)
	lis 4,r_Dproject_matrix@ha
	lfs 3,8(31)
	lis 5,r_Iviewport@ha
	la 3,r_Dworld_matrix@l(3)
	la 4,r_Dproject_matrix@l(4)
	la 5,r_Iviewport@l(5)
	addi 6,1,32
	addi 7,1,24
	addi 8,1,16
	bl gluProject
	lis 30,.LC0@ha
.LVL356:
.L264:
	.loc 1 1643 0
	lis 9,glheight@ha
	lis 0,0x4330
	lwz 11,glheight@l(9)
	.loc 1 1645 0
	lis 9,glwidth@ha
	lwz 9,glwidth@l(9)
	.loc 1 1643 0
	xoris 11,11,0x8000
	stw 0,56(1)
	.loc 1 1645 0
	xoris 9,9,0x8000
	stw 0,64(1)
	stw 9,68(1)
	.loc 1 1643 0
	lis 9,.LC3@ha
	stw 11,60(1)
	lfs 13,.LC3@l(9)
	.loc 1 1645 0
	lis 9,vid@ha
	lfd 12,64(1)
	la 9,vid@l(9)
	.loc 1 1643 0
	lfd 0,56(1)
	lfd 11,24(1)
	fsub 0,0,13
	.loc 1 1645 0
	lwz 11,20(9)
	fsub 13,12,13
	.loc 1 1646 0
	lwz 9,24(9)
	.loc 1 1645 0
	stw 0,72(1)
	.loc 1 1646 0
	frsp 12,0
	stw 0,88(1)
	.loc 1 1643 0
	fsub 0,0,11
.LVL357:
	.loc 1 1645 0
	lfd 11,32(1)
	frsp 13,13
	stw 11,76(1)
	.loc 1 1646 0
	stw 9,92(1)
	.loc 1 1645 0
	lis 9,.LC34@ha
	.loc 1 1646 0
	fdiv 12,0,12
.LVL358:
	.loc 1 1645 0
	lfs 0,.LC34@l(9)
.LVL359:
	.loc 1 1646 0
	lfd 10,88(1)
	.loc 1 1649 0
	lis 9,halo_texture_object@ha
	lwz 3,halo_texture_object@l(9)
	.loc 1 1645 0
	fdiv 13,11,13
	lfd 11,72(1)
	fsub 11,11,0
	.loc 1 1646 0
	fsub 0,10,0
	.loc 1 1645 0
	fmul 13,13,11
	.loc 1 1646 0
	fmul 0,12,0
	.loc 1 1645 0
	stfd 13,32(1)
	.loc 1 1646 0
	stfd 0,24(1)
.LVL360:
	.loc 1 1649 0
	bl GL_Bind
.LVL361:
	.loc 1 1650 0
	lis 9,.LC35@ha
	li 4,8704
	lfs 1,.LC35@l(9)
	li 3,8960
	bl glTexEnvf
	.loc 1 1651 0
	li 3,7425
	bl glShadeModel
	.loc 1 1652 0
	li 3,3042
	bl glEnable
	.loc 1 1653 0
	li 4,1
	li 3,770
	bl glBlendFunc
	.loc 1 1654 0
	li 3,3008
	bl glDisable
	.loc 1 1658 0
	li 3,7
	bl glBegin
	.loc 1 1660 0
	lis 9,.LC36@ha
	lfd 0,.LC36@l(9)
	lfs 4,2176(31)
	lfs 3,32(31)
	fmul 4,4,0
	lfs 1,24(31)
	lfs 2,28(31)
	frsp 4,4
	bl glColor4f
	.loc 1 1662 0
	lis 9,.LC5@ha
	lfs 1,.LC5@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 1663 0
	lis 9,.LC38@ha
	lfs 30,.LC38@l(9)
	lfd 1,32(1)
	lfd 2,24(1)
	fsub 1,1,30
	fsub 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 1664 0
	lfs 31,.LC0@l(30)
	lis 9,.LC5@ha
	fmr 1,31
	lfs 2,.LC5@l(9)
	bl glTexCoord2f
	.loc 1 1665 0
	lfd 1,32(1)
	lfd 2,24(1)
	fadd 1,1,30
	fsub 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 1666 0
	fmr 1,31
	fmr 2,31
	bl glTexCoord2f
	.loc 1 1667 0
	lfd 1,32(1)
	lfd 2,24(1)
	fadd 1,1,30
	fadd 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 1668 0
	lis 9,.LC5@ha
	fmr 2,31
	lfs 1,.LC5@l(9)
	bl glTexCoord2f
	.loc 1 1669 0
	lfd 0,24(1)
	lfd 1,32(1)
	fsub 1,1,30
	fadd 30,0,30
	frsp 1,1
	frsp 2,30
	bl glVertex2f
	.loc 1 1671 0
	bl glEnd
	.loc 1 1698 0
	li 3,3008
	bl glEnable
	.loc 1 1699 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	bl glColor3f
	.loc 1 1700 0
	li 3,3042
	bl glDisable
	.loc 1 1702 0
	li 4,771
	li 3,770
	bl glBlendFunc
	.loc 1 1703 0
	li 3,1
	bl glDepthMask
	.loc 1 1704 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	bl glColor3f
	.loc 1 1705 0
	lwz 0,132(1)
	lwz 30,104(1)
	mtlr 0
	lwz 31,108(1)
.LVL362:
	lfd 30,112(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI55:
	.cfi_def_cfa_offset 0
	blr
.LVL363:
.L263:
.LCFI56:
	.cfi_restore_state
	.loc 1 1623 0
	lfs 1,0(31)
	lis 4,r_Dproject_matrix@ha
	lfs 2,4(31)
	lis 5,r_Iviewport@ha
	lfs 3,8(31)
	lis 3,r_Dworld_matrix@ha
	la 4,r_Dproject_matrix@l(4)
	la 5,r_Iviewport@l(5)
	addi 6,1,32
	addi 7,1,24
	addi 8,1,16
	la 3,r_Dworld_matrix@l(3)
	bl gluProject
.LVL364:
	.loc 1 1630 0
	lfd 13,32(1)
.LVL365:
	lfd 0,24(1)
	addi 9,1,96
	fctiwz 13,13
	li 5,1
	fctiwz 0,0
	li 6,1
	li 7,6402
	li 8,5126
	stfiwx 13,0,9
	addi 9,1,100
	stfiwx 0,0,9
	addi 9,1,8
	lwz 3,96(1)
	lwz 4,100(1)
	bl glReadPixels
.LVL366:
	.loc 1 1631 0
	lfs 13,8(1)
.LVL367:
	lfd 0,16(1)
	fcmpu 7,13,0
	bnl- 7,.L269
	.loc 1 1632 0
	lis 9,cl@ha
	lfs 13,2176(31)
	la 9,cl@l(9)
	lis 30,.LC0@ha
	lfd 0,576(9)
	lfd 12,568(9)
	lis 9,.LC27@ha
	fsub 12,12,0
	lfs 0,.LC27@l(9)
	.loc 1 1593 0
	fneg 12,12
	.loc 1 1632 0
	fmadd 0,12,0,13
	frsp 0,0
	.loc 1 1633 0
	fcmpu 7,0,31
	.loc 1 1632 0
	stfs 0,2176(31)
	.loc 1 1633 0
	bnl+ 7,.L264
	b .L261
.L269:
	.loc 1 1636 0
	lis 30,.LC0@ha
	lwz 0,.LC0@l(30)
	stw 0,2176(31)
	b .L264
	.cfi_endproc
.LFE61:
	.size	R_RenderGlow, .-R_RenderGlow
	.align 2
	.globl CutLeafs
	.type	CutLeafs, @function
CutLeafs:
.LFB62:
	.loc 1 1727 0
	.cfi_startproc
.LVL368:
	.loc 1 1735 0
	lis 9,sh_norevis+12@ha
	.loc 1 1727 0
	mflr 0
	.loc 1 1735 0
	lfs 13,sh_norevis+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	.loc 1 1727 0
	stwu 1,-48(1)
.LCFI57:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 1735 0
	fcmpu 7,13,0
	.loc 1 1727 0
	stw 27,28(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 0,52(1)
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 1735 0
	bne- 7,.L270
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
.LVL369:
	.loc 1 1737 0 discriminator 1
	lis 25,cl@ha
	la 25,cl@l(25)
	lwz 9,2688(25)
	lwz 0,164(9)
	cmpwi 7,0,0
	ble- 7,.L270
	.loc 1 1748 0
	lis 23,.LC39@ha
	.loc 1 1737 0
	li 31,0
	.loc 1 1759 0
	li 22,1
	.loc 1 1751 0
	lis 24,r_lightTimestamp@ha
	.loc 1 1748 0
	la 23,.LC39@l(23)
.LVL370:
.L277:
	.loc 1 1740 0
	srawi 30,31,3
	rlwinm 29,31,0,29,31
	lbzx 0,27,30
	sraw 0,0,29
	andi. 11,0,1
	beq- 0,.L272
	.loc 1 1744 0
	lwz 28,168(9)
	.loc 1 1727 0
	slwi 0,31,6
	.loc 1 1744 0
	add 28,28,0
.LVL371:
	.loc 1 1748 0
	lwz 5,56(28)
	.loc 1 1746 0
	lwz 26,44(28)
.LVL372:
	.loc 1 1748 0
	cmpw 7,5,31
	beq- 7,.L273
	.loc 1 1748 0 is_stmt 0 discriminator 1
	mr 3,23
	mr 4,31
	crxor 6,6,6
	bl Con_Printf
.LVL373:
.L273:
	.loc 1 1750 0 is_stmt 1
	lwz 0,48(28)
	cmpwi 7,0,0
	ble- 7,.L274
	.loc 1 1751 0
	lwz 9,0(26)
	.loc 1 1750 0
	mtctr 0
	.loc 1 1751 0
	lwz 11,r_lightTimestamp@l(24)
	lwz 9,36(9)
	lwz 9,16(9)
	cmpw 7,9,11
	beq- 7,.L272
.LVL374:
.L275:
	.loc 1 1750 0
	bdz .L274
	.loc 1 1751 0
	lwzu 9,4(26)
	lwz 9,36(9)
	lwz 0,16(9)
	cmpw 7,0,11
	bne+ 7,.L275
.LVL375:
.L272:
	.loc 1 1737 0
	lwz 9,2688(25)
	addi 31,31,1
.LVL376:
	lwz 0,164(9)
	cmpw 7,0,31
	bgt+ 7,.L277
.LVL377:
.L270:
	.loc 1 1766 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL378:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI58:
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
.LVL379:
.L274:
.LCFI59:
	.cfi_restore_state
	.loc 1 1759 0
	lbzx 0,27,30
	slw 29,22,29
	.loc 1 1737 0
	addi 31,31,1
	.loc 1 1759 0
	andc 29,0,29
	stbx 29,27,30
.LVL380:
	.loc 1 1737 0
	lwz 9,2688(25)
	lwz 0,164(9)
	cmpw 7,0,31
	bgt+ 7,.L277
	b .L270
	.cfi_endproc
.LFE62:
	.size	CutLeafs, .-CutLeafs
	.align 2
	.globl AddToShadowBsp
	.type	AddToShadowBsp, @function
AddToShadowBsp:
.LFB63:
	.loc 1 1776 0
	.cfi_startproc
.LVL381:
	mflr 0
	stwu 1,-392(1)
.LCFI60:
	.cfi_def_cfa_offset 392
	.cfi_register 65, 0
	mr 6,3
	stw 0,396(1)
	.loc 1 1824 0
	lwz 5,16(3)
	cmpwi 7,5,32
	bgt- 7,.L286
	.cfi_offset 65, 4
	.loc 1 1832 0
	cmpwi 7,5,0
	lwz 8,36(3)
	.loc 1 1829 0
	li 0,0
	.loc 1 1832 0
	lis 9,globalVertexTable@ha
	.loc 1 1829 0
	stw 0,0(3)
.LVL382:
	.loc 1 1832 0
	lwz 0,globalVertexTable@l(9)
	lwz 9,24(8)
.LVL383:
	ble- 7,.L282
	mulli 9,9,28
	addi 11,1,8
	.loc 1 1776 0
	mulli 10,5,28
	.loc 1 1832 0
	add 9,0,9
	.loc 1 1776 0
	add 10,9,10
.LVL384:
.L283:
	.loc 1 1833 0 discriminator 2
	lwz 0,0(9)
	stw 0,0(11)
	lwz 0,4(9)
	stw 0,4(11)
	lwz 0,8(9)
	.loc 1 1832 0 discriminator 2
	addi 9,9,28
	cmpw 7,9,10
	.loc 1 1833 0 discriminator 2
	stw 0,8(11)
.LVL385:
	.loc 1 1832 0 discriminator 2
	addi 11,11,12
	bne+ 7,.L283
.LVL386:
.L282:
	.loc 1 1836 0
	lis 9,sh_nosvbsp+12@ha
	lfs 13,sh_nosvbsp+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fcmpu 7,13,0
	beq- 7,.L287
	.loc 1 1843 0
	lis 9,svBsp_NumKeptPolys@ha
	.loc 1 1840 0
	lis 11,shadowchain@ha
	.loc 1 1843 0
	lwz 5,svBsp_NumKeptPolys@l(9)
	.loc 1 1841 0
	lis 10,r_lightTimestamp@ha
	.loc 1 1840 0
	lwz 7,shadowchain@l(11)
	.loc 1 1843 0
	addi 0,5,1
	.loc 1 1841 0
	lwz 10,r_lightTimestamp@l(10)
	.loc 1 1843 0
	stw 0,svBsp_NumKeptPolys@l(9)
	.loc 1 1845 0
	lwz 0,396(1)
	.loc 1 1840 0
	stw 7,44(6)
	.loc 1 1845 0
	mtlr 0
	.loc 1 1841 0
	stw 10,16(8)
	.loc 1 1842 0
	stw 6,shadowchain@l(11)
	.loc 1 1845 0
	addi 1,1,392
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	blr
.LVL387:
.L286:
.LCFI62:
	.cfi_restore_state
	.loc 1 1825 0
	lis 3,.LC40@ha
.LVL388:
	la 3,.LC40@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL389:
	.loc 1 1845 0
	lwz 0,396(1)
	addi 1,1,392
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL390:
.L287:
.LCFI64:
	.cfi_restore_state
	.loc 1 1837 0
	lis 9,svBsp_NumAddedPolys@ha
	.loc 1 1838 0
	lis 10,currentlightroot@ha
	.loc 1 1837 0
	lwz 11,svBsp_NumAddedPolys@l(9)
	.loc 1 1838 0
	addi 4,1,8
	lwz 3,currentlightroot@l(10)
.LVL391:
	li 7,0
	.loc 1 1837 0
	addi 0,11,1
	stw 0,svBsp_NumAddedPolys@l(9)
	.loc 1 1838 0
	bl R_AddShadowCaster
.LVL392:
	.loc 1 1845 0
	lwz 0,396(1)
	addi 1,1,392
.LCFI65:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE63:
	.size	AddToShadowBsp, .-AddToShadowBsp
	.align 2
	.globl R_RecursiveShadowAdd
	.type	R_RecursiveShadowAdd, @function
R_RecursiveShadowAdd:
.LFB64:
	.loc 1 1855 0
	.cfi_startproc
.LVL393:
	mflr 0
	stwu 1,-48(1)
.LCFI66:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 0,52(1)
	stfd 31,40(1)
	.loc 1 1865 0
	lwz 0,0(3)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 1855 0
	stw 26,16(1)
	.loc 1 1865 0
	cmpwi 7,0,0
	.loc 1 1855 0
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 31,36(1)
	.loc 1 1865 0
	blt- 7,.L288
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	lis 9,.LC41@ha
	lis 27,currentshadowlight@ha
	.loc 1 1889 0
	lfd 31,.LC41@l(9)
	la 27,currentshadowlight@l(27)
	.loc 1 1904 0
	lis 26,cl@ha
	.loc 1 1908 0
	lis 29,r_lightTimestamp@ha
.LVL394:
.L298:
	.loc 1 1871 0
	lwz 9,36(30)
.LVL395:
	.loc 1 1873 0
	lbz 0,16(9)
	cmpwi 7,0,1
	beq- 7,.L292
	cmplwi 7,0,1
	bge- 7,.L302
	.loc 1 1876 0
	lwz 11,0(27)
	lfs 0,12(9)
	lfs 13,0(11)
	fsubs 0,13,0
.LVL396:
.L294:
	.loc 1 1889 0
	fcmpu 7,0,31
	cror 30,29,30
	mfcr 28
	rlwinm 28,28,31,1
	.loc 1 1890 0
	xori 28,28,1
.LVL397:
	.loc 1 1895 0
	addi 9,28,8
	slwi 9,9,2
	add 9,30,9
	lwz 3,8(9)
	bl R_RecursiveShadowAdd
.LVL398:
	.loc 1 1899 0
	lhz 0,50(30)
	.loc 1 1901 0
	cmpwi 7,0,0
	.loc 1 1899 0
	stw 0,8(1)
.LVL399:
	.loc 1 1901 0
	beq- 7,.L295
	.loc 1 1904 0
	la 9,cl@l(26)
	lhz 31,48(30)
	lwz 9,2688(9)
	mulli 31,31,92
	lwz 0,208(9)
.LVL400:
	add 31,0,31
.LVL401:
.L297:
	.loc 1 1907 0
	lwz 9,36(31)
	cmpwi 7,9,0
	beq- 7,.L296
	.loc 1 1908 0
	lwz 9,16(9)
	lwz 0,r_lightTimestamp@l(29)
	cmpw 7,9,0
	beq- 7,.L303
.L296:
	.loc 1 1914 0
	lwz 0,8(1)
	.loc 1 1913 0
	addi 31,31,92
.LVL402:
	.loc 1 1914 0
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L297
.LVL403:
.L295:
	.loc 1 1918 0
	xori 28,28,1
.LVL404:
	addi 28,28,8
.LVL405:
	slwi 28,28,2
.LVL406:
	add 30,30,28
	lwz 30,8(30)
	.loc 1 1865 0
	lwz 0,0(30)
	cmpwi 7,0,0
	bge+ 7,.L298
.LVL407:
.L288:
	.loc 1 1919 0
	lwz 0,52(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI67:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL408:
.L303:
.LCFI68:
	.cfi_restore_state
	.loc 1 1910 0
	mr 3,31
	bl AddToShadowBsp
	b .L296
.LVL409:
.L302:
	.loc 1 1873 0
	cmpwi 7,0,2
	beq- 7,.L304
	.loc 1 1885 0
	lwz 11,0(27)
	lfs 0,4(9)
	lfs 13,4(11)
	lfs 12,0(11)
	fmuls 13,13,0
	lfs 0,0(9)
	lfs 11,8(11)
	fmadds 12,12,0,13
	lfs 0,8(9)
	lfs 13,12(9)
	fmadds 0,11,0,12
	fsubs 0,0,13
.LVL410:
	.loc 1 1886 0
	b .L294
.LVL411:
.L292:
	.loc 1 1879 0
	lwz 11,0(27)
	lfs 0,12(9)
	lfs 13,4(11)
	fsubs 0,13,0
.LVL412:
	.loc 1 1880 0
	b .L294
.LVL413:
.L304:
	.loc 1 1882 0
	lwz 11,0(27)
	lfs 0,12(9)
	lfs 13,8(11)
	fsubs 0,13,0
.LVL414:
	.loc 1 1883 0
	b .L294
	.cfi_endproc
.LFE64:
	.size	R_RecursiveShadowAdd, .-R_RecursiveShadowAdd
	.align 2
	.globl R_MarkLightLeaves
	.type	R_MarkLightLeaves, @function
R_MarkLightLeaves:
.LFB65:
	.loc 1 1931 0
	.cfi_startproc
	mflr 0
	stwu 1,-4112(1)
.LCFI69:
	.cfi_def_cfa_offset 4112
	.cfi_register 65, 0
	.loc 1 1936 0
	lis 9,r_visframecount@ha
	.loc 1 1937 0
	lis 10,currentshadowlight@ha
	.loc 1 1931 0
	stw 31,4108(1)
	.loc 1 1937 0
	lis 31,cl@ha
	.cfi_offset 31, -4
	.loc 1 1931 0
	stw 0,4116(1)
	.loc 1 1937 0
	la 31,cl@l(31)
	.loc 1 1936 0
	lwz 11,r_visframecount@l(9)
	.loc 1 1937 0
	lwz 3,currentshadowlight@l(10)
	lwz 4,2688(31)
	.loc 1 1936 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,r_visframecount@l(9)
	.loc 1 1937 0
	bl Mod_PointInLeaf
	.loc 1 1939 0
	lis 9,r_novis+12@ha
	lfs 13,r_novis+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fcmpu 7,13,0
	bne- 7,.L308
	.loc 1 1945 0
	lwz 4,2688(31)
	bl Mod_LeafPVS
	.loc 1 1946 0
	lwz 0,4116(1)
	.loc 1 1945 0
	lis 9,lightvis@ha
	.loc 1 1946 0
	lwz 31,4108(1)
	mtlr 0
	.loc 1 1945 0
	stw 3,lightvis@l(9)
	.loc 1 1946 0
	addi 1,1,4112
	.cfi_remember_state
.LCFI70:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L308:
.LCFI71:
	.cfi_restore_state
	.loc 1 1942 0
	lwz 9,2688(31)
	.loc 1 1941 0
	addi 0,1,8
	.loc 1 1942 0
	mr 3,0
	li 4,255
	lwz 5,164(9)
	.loc 1 1941 0
	lis 9,lightvis@ha
	stw 0,lightvis@l(9)
	.loc 1 1942 0
	addi 5,5,7
	srawi 5,5,3
	bl memset
	.loc 1 1946 0
	lwz 0,4116(1)
	lwz 31,4108(1)
	mtlr 0
	addi 1,1,4112
	.cfi_restore 31
.LCFI72:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE65:
	.size	R_MarkLightLeaves, .-R_MarkLightLeaves
	.align 2
	.globl ShadowVolumeBsp
	.type	ShadowVolumeBsp, @function
ShadowVolumeBsp:
.LFB66:
	.loc 1 1956 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI73:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 1959 0
	lis 31,cl@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 1956 0
	stw 0,20(1)
	.loc 1 1959 0
	la 31,cl@l(31)
	.loc 1 1957 0
	.cfi_offset 65, 4
	bl R_CreateEmptyTree
	lis 9,currentlightroot@ha
	stw 3,currentlightroot@l(9)
	.loc 1 1958 0
	bl R_MarkLightLeaves
	.loc 1 1959 0
	lwz 9,2688(31)
	lis 11,currentshadowlight@ha
	lwz 3,currentshadowlight@l(11)
	lwz 4,192(9)
	bl R_MarkShadowCasting
	.loc 1 1962 0
	lwz 9,2688(31)
	.loc 1 1960 0
	li 0,0
	.loc 1 1963 0
	lwz 31,12(1)
	.loc 1 1962 0
	lwz 3,192(9)
	.loc 1 1960 0
	lis 9,shadowchain@ha
	stw 0,shadowchain@l(9)
	.loc 1 1961 0
	lis 9,svBsp_NumKeptPolys@ha
	stw 0,svBsp_NumKeptPolys@l(9)
	.loc 1 1963 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI74:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	.loc 1 1962 0
	b R_RecursiveShadowAdd
	.cfi_endproc
.LFE66:
	.size	ShadowVolumeBsp, .-ShadowVolumeBsp
	.align 2
	.globl R_CalcSvBsp
	.type	R_CalcSvBsp, @function
R_CalcSvBsp:
.LFB67:
	.loc 1 1974 0
	.cfi_startproc
.LVL415:
	mflr 0
	stwu 1,-40(1)
.LCFI75:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	stw 0,44(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 1983 0
	lwz 31,160(3)
	.loc 1 1974 0
	stw 25,12(1)
	.loc 1 1983 0
	cmpwi 7,31,0
	.loc 1 1974 0
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 1983 0
	beq- 7,.L332
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.loc 1 1988 0
	lis 26,.LC6@ha
	mr 3,31
.LVL416:
	la 26,.LC6@l(26)
	mr 4,26
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L313
	.loc 1 1989 0
	lis 4,.LC7@ha
	mr 3,31
	la 4,.LC7@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L333
.L313:
	.loc 1 2001 0
	lis 9,r_framecount@ha
	.loc 1 1995 0
	lis 11,done@ha
	.loc 1 2001 0
	lwz 10,r_framecount@l(9)
	.loc 1 2000 0
	lis 28,r_lightTimestamp@ha
	.loc 1 1995 0
	lwz 7,done@l(11)
	.loc 1 1994 0
	li 0,0
	.loc 1 2000 0
	lwz 8,r_lightTimestamp@l(28)
	.loc 1 2001 0
	addi 10,10,1
	stw 10,r_framecount@l(9)
	.loc 1 2003 0
	lis 9,svBsp_NumCutPolys@ha
	stw 0,svBsp_NumCutPolys@l(9)
	.loc 1 1995 0
	addi 7,7,1
	.loc 1 2005 0
	lis 9,svBsp_NumAddedPolys@ha
	.loc 1 2000 0
	addi 8,8,1
	.loc 1 1994 0
	lis 29,shadowchain@ha
	.loc 1 2004 0
	lis 27,svBsp_NumKeptPolys@ha
	.loc 1 2008 0
	mr 3,30
	.loc 1 2005 0
	stw 0,svBsp_NumAddedPolys@l(9)
	.loc 1 1994 0
	stw 0,shadowchain@l(29)
	.loc 1 1995 0
	stw 7,done@l(11)
	.loc 1 2004 0
	stw 0,svBsp_NumKeptPolys@l(27)
	.loc 1 2000 0
	stw 8,r_lightTimestamp@l(28)
	.loc 1 2008 0
	bl R_ShadowFromEntity
	.loc 1 2011 0
	lis 9,numShadowLights@ha
	lwz 11,numShadowLights@l(9)
	.loc 1 2009 0
	lis 9,numStaticShadowLights@ha
	lwz 10,numStaticShadowLights@l(9)
	.loc 1 2011 0
	cmpwi 7,11,127
	.loc 1 2009 0
	addi 0,10,1
	stw 0,numStaticShadowLights@l(9)
	.loc 1 2011 0
	bgt- 7,.L334
	.loc 1 2016 0
	addi 9,11,-1
	.loc 1 2019 0
	lwz 25,160(30)
	.loc 1 2016 0
	mulli 9,9,2192
	lis 11,shadowlights@ha
	la 0,shadowlights@l(11)
	lis 31,currentshadowlight@ha
	.loc 1 2019 0
	mr 3,25
	.loc 1 2016 0
	add 30,9,0
.LVL417:
	.loc 1 2019 0
	mr 4,26
	.loc 1 2016 0
	stw 30,currentshadowlight@l(31)
	.loc 1 2019 0
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L315
.L331:
	.loc 1 2028 0
	lis 9,.LC0@ha
	lwz 0,.LC0@l(9)
	.loc 1 2029 0
	lis 9,.LC47@ha
	.loc 1 2028 0
	stw 0,12(30)
	.loc 1 2029 0
	lwz 0,.LC47@l(9)
	.loc 1 2030 0
	lis 9,.LC48@ha
	.loc 1 2029 0
	stw 0,16(30)
	.loc 1 2030 0
	lwz 0,.LC48@l(9)
	stw 0,20(30)
.L316:
	.loc 1 2033 0
	li 0,1
	stb 0,45(30)
	.loc 1 2049 0
	lis 30,cl@ha
	la 30,cl@l(30)
	.loc 1 2036 0
	bl ShadowVolumeBsp
	.loc 1 2044 0
	lwz 3,svBsp_NumKeptPolys@l(27)
	lwz 26,currentshadowlight@l(31)
	slwi 3,3,2
	bl Hunk_Alloc
	.loc 1 2049 0
	lwz 10,2688(30)
	.loc 1 2045 0
	lwz 9,currentshadowlight@l(31)
	.loc 1 2049 0
	lwz 11,396(10)
	.loc 1 2045 0
	lwz 0,svBsp_NumKeptPolys@l(27)
	.loc 1 2049 0
	cmpwi 7,11,0
	.loc 1 2044 0
	stw 3,2100(26)
	.loc 1 2045 0
	stw 0,2120(9)
	.loc 1 2046 0
	lwz 8,shadowchain@l(29)
.LVL418:
	.loc 1 2049 0
	ble- 7,.L318
	.loc 1 1974 0
	lwz 10,400(10)
	.loc 1 2052 0
	mtctr 11
	li 7,0
	.loc 1 1974 0
	addi 10,10,-4
.LVL419:
.L320:
	.loc 1 2051 0
	lwzu 11,4(10)
	cmpwi 7,11,0
	beq- 7,.L319
	.loc 1 2052 0
	stw 7,32(11)
.L319:
	.loc 1 2049 0
	bdnz .L320
.L318:
	.loc 1 2057 0
	cmpwi 7,0,0
	.loc 1 2056 0
	lwz 7,r_lightTimestamp@l(28)
	addi 7,7,1
	stw 7,r_lightTimestamp@l(28)
.LVL420:
	.loc 1 2057 0
	ble- 7,.L321
	li 11,0
	mtctr 0
	b .L322
.LVL421:
.L335:
	lwz 9,currentshadowlight@l(31)
.LVL422:
.L322:
	.loc 1 2058 0 discriminator 2
	lwz 10,36(8)
	.loc 1 2059 0 discriminator 2
	slwi 0,11,2
	lwz 9,2100(9)
	.loc 1 2057 0 discriminator 2
	addi 11,11,1
.LVL423:
	.loc 1 2058 0 discriminator 2
	stw 7,16(10)
	.loc 1 2059 0 discriminator 2
	stwx 8,9,0
	.loc 1 2061 0 discriminator 2
	lwz 9,48(8)
	lwz 9,36(9)
	lwz 0,32(9)
	stw 0,40(8)
	.loc 1 2062 0 discriminator 2
	stw 8,32(9)
	.loc 1 2057 0 discriminator 2
	lwz 8,44(8)
.LVL424:
	bdnz .L335
.LVL425:
.L321:
	.loc 1 2067 0
	lwz 4,2688(30)
	.loc 1 2066 0
	li 0,0
	stw 0,shadowchain@l(29)
.LVL426:
	.loc 1 2067 0
	lwz 7,396(4)
	cmpwi 7,7,0
	ble- 7,.L323
	lwz 6,400(4)
	li 10,0
.LVL427:
.L326:
	.loc 1 2069 0
	slwi 0,10,2
	lwzx 8,6,0
.LVL428:
	.loc 1 2070 0
	cmpwi 7,8,0
	beq- 7,.L324
	.loc 1 2072 0
	lwz 9,32(8)
.LVL429:
	.loc 1 2073 0
	lwz 11,shadowchain@l(29)
	cmpwi 7,9,0
	bne+ 7,.L325
	b .L324
.LVL430:
.L327:
	.loc 1 2077 0
	mr 9,0
.LVL431:
.L325:
	.loc 1 2077 0 is_stmt 0 discriminator 2
	lwz 0,40(9)
.LVL432:
	.loc 1 2078 0 is_stmt 1 discriminator 2
	stw 11,44(9)
	.loc 1 2077 0 discriminator 2
	mr 11,9
	cmpwi 7,0,0
	bne+ 7,.L327
	.loc 1 2077 0 is_stmt 0
	stw 9,shadowchain@l(29)
	.loc 1 2082 0 is_stmt 1
	stw 0,32(8)
.LVL433:
.L324:
	.loc 1 2067 0
	addi 10,10,1
.LVL434:
	cmpw 7,7,10
	bgt+ 7,.L326
.LVL435:
.L323:
	.loc 1 2086 0
	lwz 29,currentshadowlight@l(31)
	mr 3,29
	bl Mod_PointInLeaf
	.loc 1 2087 0
	lwz 9,currentshadowlight@l(31)
	.loc 1 2086 0
	stw 3,48(29)
	.loc 1 2087 0
	lis 29,lightvis@ha
	lwz 4,2688(30)
	lwz 3,48(9)
	bl Mod_LeafPVS
	.loc 1 2088 0
	li 5,1024
	.loc 1 2087 0
	mr 0,3
	.loc 1 2088 0
	lwz 3,currentshadowlight@l(31)
	mr 4,0
	.loc 1 2087 0
	stw 0,lightvis@l(29)
	.loc 1 2088 0
	addi 3,3,52
	bl Q_memcpy
	.loc 1 2089 0
	lwz 3,currentshadowlight@l(31)
	lwz 4,lightvis@l(29)
	li 5,1024
	addi 3,3,1076
	.loc 1 2094 0
	lis 29,numVolumeCmds@ha
	.loc 1 2089 0
	bl Q_memcpy
	.loc 1 2090 0
	lwz 3,currentshadowlight@l(31)
	addi 3,3,52
	bl CutLeafs
	.loc 1 2093 0
	lwz 3,2688(30)
	.loc 1 2097 0
	lis 30,numVolumeVerts@ha
	.loc 1 2093 0
	bl PrecalcVolumesForLight
	.loc 1 2094 0
	lwz 3,numVolumeCmds@l(29)
	lwz 28,currentshadowlight@l(31)
	slwi 3,3,2
	bl Hunk_Alloc
	.loc 1 2095 0
	lwz 9,currentshadowlight@l(31)
	.loc 1 2094 0
	stw 3,2104(28)
	.loc 1 2095 0
	lis 4,volumeCmdsBuff@ha
	lwz 5,numVolumeCmds@l(29)
	la 4,volumeCmdsBuff@l(4)
	lwz 3,2104(9)
	slwi 5,5,2
	bl Q_memcpy
	.loc 1 2097 0
	lwz 3,numVolumeVerts@l(30)
	lwz 29,currentshadowlight@l(31)
	slwi 3,3,2
	bl Hunk_Alloc
	.loc 1 2098 0
	lwz 9,currentshadowlight@l(31)
	lwz 5,numVolumeVerts@l(30)
	.loc 1 2099 0
	lis 4,volumeVertsBuff@ha
	.loc 1 2097 0
	stw 3,2108(29)
	.loc 1 2099 0
	la 4,volumeVertsBuff@l(4)
	.loc 1 2098 0
	stw 5,2112(9)
	.loc 1 2101 0
	lis 30,numLightCmds@ha
	.loc 1 2099 0
	lwz 3,2108(9)
	slwi 5,5,2
	bl Q_memcpy
	.loc 1 2101 0
	lwz 3,numLightCmds@l(30)
	lwz 29,currentshadowlight@l(31)
	slwi 3,3,2
	bl Hunk_Alloc
	.loc 1 2102 0
	lwz 9,currentshadowlight@l(31)
	.loc 1 2101 0
	stw 3,2116(29)
	.loc 1 2102 0
	lis 4,lightCmdsBuff@ha
	lwz 5,numLightCmds@l(30)
	la 4,lightCmdsBuff@l(4)
	lwz 3,2116(9)
	slwi 5,5,2
	bl Q_memcpy
.L310:
	.loc 1 2108 0
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
.LCFI76:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L315:
.LCFI77:
	.cfi_restore_state
	.loc 1 2023 0
	lis 4,.LC7@ha
	mr 3,25
	la 4,.LC7@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L331
	.loc 1 2027 0
	lis 4,.LC43@ha
	mr 3,25
	la 4,.LC43@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L316
	b .L331
.LVL436:
.L333:
	.loc 1 1990 0
	lis 4,.LC43@ha
	mr 3,31
	la 4,.LC43@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L313
	.loc 1 1991 0
	lis 4,.LC44@ha
	mr 3,31
	la 4,.LC44@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L313
	.loc 1 1992 0
	lis 4,.LC45@ha
	mr 3,31
	la 4,.LC45@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq+ 7,.L313
	b .L310
.L334:
	.loc 1 2012 0
	lis 3,.LC46@ha
	la 3,.LC46@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 2108 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL437:
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
.LCFI78:
	.cfi_def_cfa_offset 0
	blr
.LVL438:
.L332:
.LCFI79:
	.cfi_restore_state
	.loc 1 1984 0
	lis 3,.LC42@ha
.LVL439:
	la 3,.LC42@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 1985 0
	b .L310
	.cfi_endproc
.LFE67:
	.size	R_CalcSvBsp, .-R_CalcSvBsp
	.align 2
	.globl LightFromSurface
	.type	LightFromSurface, @function
LightFromSurface:
.LFB68:
	.loc 1 2115 0
	.cfi_startproc
.LVL440:
	mflr 0
	stwu 1,-696(1)
.LCFI80:
	.cfi_def_cfa_offset 696
	.cfi_register 65, 0
	.loc 1 2125 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lis 9,.LC0@ha
	.loc 1 2115 0
	stw 0,700(1)
	.loc 1 2125 0
	lis 0,0x4330
	.cfi_offset 65, 4
	.loc 1 2115 0
	stw 31,692(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 2124 0
	lwz 10,36(3)
.LVL441:
	.loc 1 2115 0
	stw 25,668(1)
	.loc 1 2125 0
	lwz 11,8(10)
	stw 0,648(1)
	xoris 0,11,0x8000
	.loc 1 2131 0
	cmpwi 7,11,0
	.loc 1 2125 0
	stw 0,652(1)
	.loc 1 2130 0
	li 0,0
	.loc 1 2115 0
	stw 26,672(1)
	.loc 1 2125 0
	lfd 1,648(1)
	.loc 1 2115 0
	stw 27,676(1)
	.loc 1 2125 0
	fsub 1,1,0
	lfs 0,.LC0@l(9)
	.loc 1 2129 0
	lis 9,globalVertexTable@ha
	.loc 1 2115 0
	stw 28,680(1)
	.loc 1 2129 0
	lwz 8,globalVertexTable@l(9)
	.loc 1 2125 0
	fdiv 1,0,1
	.loc 1 2115 0
	stw 29,684(1)
	stw 30,688(1)
	.loc 1 2129 0
	lwz 9,24(10)
	.loc 1 2130 0
	stw 0,52(1)
	stw 0,48(1)
	stw 0,44(1)
	.loc 1 2125 0
	frsp 1,1
.LVL442:
	.loc 1 2131 0
	ble- 7,.L337
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
.LVL443:
	.loc 1 2129 0
	stw 0,656(1)
	mulli 9,9,28
	.loc 1 2131 0
	mtctr 11
	.loc 1 2129 0
	lfs 0,656(1)
	add 9,8,9
	fmr 12,0
	fmr 13,0
.LVL444:
.L338:
	.loc 1 2133 0 discriminator 2
	lfs 11,0(9)
	fadds 13,13,11
	stfs 13,44(1)
	lfs 11,4(9)
	fadds 12,12,11
	stfs 12,48(1)
	lfs 11,8(9)
	.loc 1 2131 0 discriminator 2
	addi 9,9,28
	.loc 1 2133 0 discriminator 2
	fadds 0,0,11
	stfs 0,52(1)
.LVL445:
	.loc 1 2131 0 discriminator 2
	bdnz .L338
.LVL446:
.L337:
	.loc 1 2135 0
	addi 3,1,44
.LVL447:
	mr 4,3
	bl VectorScale
.LVL448:
	.loc 1 2137 0
	lwz 0,8(31)
	andi. 9,0,2
	bne- 0,.L348
	.loc 1 2140 0
	lwz 9,4(31)
	addi 30,1,20
	lwz 10,0(9)
	lwz 11,4(9)
	lwz 0,8(9)
	stw 10,20(1)
	stw 11,24(1)
	stw 0,28(1)
.L340:
	.loc 1 2143 0
	lis 9,.LC51@ha
	addi 3,1,44
	lfs 1,.LC51@l(9)
	mr 4,30
	addi 5,1,32
	.loc 1 2149 0
	lis 28,numShadowLights@ha
	.loc 1 2143 0
	bl VectorMA
.LVL449:
	.loc 1 2149 0
	lwz 0,numShadowLights@l(28)
	cmpwi 7,0,0
	ble- 7,.L341
	lis 29,shadowlights@ha
	lis 26,sh_radiusscale@ha
	lis 27,.LC1@ha
	li 25,0
	li 31,0
.LVL450:
	la 29,shadowlights@l(29)
	la 26,sh_radiusscale@l(26)
	la 27,.LC1@l(27)
	la 28,numShadowLights@l(28)
.LVL451:
.L343:
.LBB136:
	.loc 1 2152 0
	mulli 0,31,2192
	.loc 1 2153 0
	lfs 11,32(1)
	.loc 1 2154 0
	addi 3,1,8
.LBE136:
	.loc 1 2149 0
	addi 31,31,1
.LBB137:
	.loc 1 2153 0
	lfsx 12,29,0
	.loc 1 2152 0
	add 30,29,0
.LVL452:
	.loc 1 2153 0
	lfs 13,4(30)
	fsubs 12,11,12
	lfs 11,36(1)
	lfs 0,8(30)
	fsubs 13,11,13
	lfs 11,40(1)
	stfs 12,8(1)
	fsubs 0,11,0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 2154 0
	bl Length
.LVL453:
	.loc 1 2156 0
	lfs 0,12(26)
	lfs 13,36(30)
	fmr 12,0
.LBE137:
	.loc 1 2149 0
	lwz 0,0(28)
.LBB138:
	.loc 1 2156 0
	fmuls 0,0,13
	lfs 13,0(27)
.LBE138:
	.loc 1 2149 0
	cmpw 7,0,31
.LBB139:
	.loc 1 2156 0
	fmadd 13,12,13,0
	fcmpu 6,1,13
	bnl- 6,.L342
	.loc 1 2157 0
	li 25,1
.L342:
.LVL454:
.LBE139:
	.loc 1 2149 0
	bgt+ 7,.L343
	.loc 1 2162 0
	cmpwi 7,25,0
	beq- 7,.L341
	.loc 1 2171 0
	lwz 0,700(1)
	lwz 25,668(1)
	mtlr 0
	lwz 26,672(1)
	lwz 27,676(1)
	lwz 28,680(1)
	lwz 29,684(1)
	lwz 30,688(1)
.LVL455:
	lwz 31,692(1)
.LVL456:
	addi 1,1,696
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL457:
.L341:
.LCFI82:
	.cfi_restore_state
	.loc 1 2163 0
	li 5,584
	addi 3,1,56
	li 4,0
	bl Q_memset
	.loc 1 2164 0
	li 0,350
	stw 0,288(1)
	.loc 1 2166 0
	lis 3,.LC45@ha
	.loc 1 2165 0
	lwz 0,32(1)
	.loc 1 2166 0
	li 4,1
	la 3,.LC45@l(3)
	.loc 1 2165 0
	stw 0,168(1)
	lwz 0,36(1)
	stw 0,172(1)
	lwz 0,40(1)
	stw 0,176(1)
	.loc 1 2166 0
	bl Mod_ForName
	stw 3,216(1)
	.loc 1 2167 0
	addi 3,1,56
	bl R_CalcSvBsp
	.loc 1 2168 0
	lis 3,.LC53@ha
	la 3,.LC53@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 2171 0
	lwz 0,700(1)
	lwz 25,668(1)
	mtlr 0
	lwz 26,672(1)
	lwz 27,676(1)
	lwz 28,680(1)
	lwz 29,684(1)
	lwz 30,688(1)
	lwz 31,692(1)
	addi 1,1,696
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI83:
	.cfi_def_cfa_offset 0
	blr
.LVL458:
.L348:
.LCFI84:
	.cfi_restore_state
	.loc 1 2138 0
	lis 9,.LC50@ha
	addi 30,1,20
	lwz 3,4(31)
	mr 4,30
	lfs 1,.LC50@l(9)
	bl VectorScale
	b .L340
	.cfi_endproc
.LFE68:
	.size	LightFromSurface, .-LightFromSurface
	.align 2
	.globl LightFromFile
	.type	LightFromFile, @function
LightFromFile:
.LFB69:
	.loc 1 2179 0
	.cfi_startproc
.LVL459:
	stwu 1,-648(1)
.LCFI85:
	.cfi_def_cfa_offset 648
	mflr 0
	stw 27,628(1)
	.loc 1 2191 0
	lis 27,numShadowLights@ha
	.cfi_offset 27, -20
	.cfi_register 65, 0
	.loc 1 2179 0
	stw 0,652(1)
	.loc 1 2191 0
	lwz 0,numShadowLights@l(27)
	.cfi_offset 65, 4
	.loc 1 2179 0
	stw 31,644(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 2191 0
	cmpwi 7,0,0
	.loc 1 2179 0
	stw 24,616(1)
	stw 25,620(1)
	stw 26,624(1)
	stw 28,632(1)
	stw 29,636(1)
	stw 30,640(1)
	.loc 1 2191 0
	ble- 7,.L350
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	lis 28,shadowlights@ha
	lis 25,sh_radiusscale@ha
	lis 26,.LC1@ha
	li 24,0
	li 30,0
	la 28,shadowlights@l(28)
	la 25,sh_radiusscale@l(25)
	la 26,.LC1@l(26)
	la 27,numShadowLights@l(27)
.LVL460:
.L352:
.LBB140:
	.loc 1 2194 0
	mulli 0,30,2192
	.loc 1 2195 0
	lfs 9,0(31)
	lfs 10,4(31)
	.loc 1 2196 0
	addi 3,1,8
	.loc 1 2195 0
	lfs 11,8(31)
.LBE140:
	.loc 1 2191 0
	addi 30,30,1
.LBB141:
	.loc 1 2194 0
	add 29,28,0
.LVL461:
	.loc 1 2195 0
	lfsx 12,28,0
	lfs 13,4(29)
	lfs 0,8(29)
	fsubs 12,9,12
	fsubs 13,10,13
	fsubs 0,11,0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 2196 0
	bl Length
.LVL462:
	.loc 1 2198 0
	lfs 0,12(25)
	lfs 13,36(29)
	fmr 12,0
.LBE141:
	.loc 1 2191 0
	lwz 0,0(27)
.LBB142:
	.loc 1 2198 0
	fmuls 0,0,13
	lfs 13,0(26)
.LBE142:
	.loc 1 2191 0
	cmpw 7,0,30
.LBB143:
	.loc 1 2198 0
	fmadd 13,12,13,0
	fcmpu 6,1,13
	bnl- 6,.L351
	.loc 1 2199 0
	li 24,1
.L351:
.LVL463:
.LBE143:
	.loc 1 2191 0
	bgt+ 7,.L352
	.loc 1 2204 0
	cmpwi 7,24,0
	beq- 7,.L350
	.loc 1 2214 0
	lwz 0,652(1)
	lwz 24,616(1)
	mtlr 0
	lwz 25,620(1)
	lwz 26,624(1)
	lwz 27,628(1)
	lwz 28,632(1)
	lwz 29,636(1)
.LVL464:
	lwz 30,640(1)
.LVL465:
	lwz 31,644(1)
.LVL466:
	addi 1,1,648
	.cfi_remember_state
.LCFI86:
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
.LVL467:
.L350:
.LCFI87:
	.cfi_restore_state
	.loc 1 2205 0
	addi 3,1,24
	li 5,584
	li 4,0
	bl Q_memset
	.loc 1 2207 0
	lwz 0,8(31)
	lwz 11,0(31)
	.loc 1 2208 0
	lis 3,.LC45@ha
	.loc 1 2207 0
	lwz 9,4(31)
	.loc 1 2206 0
	li 10,350
	.loc 1 2208 0
	li 4,1
	la 3,.LC45@l(3)
	.loc 1 2207 0
	stw 0,144(1)
	.loc 1 2206 0
	stw 10,256(1)
	.loc 1 2207 0
	stw 11,136(1)
	stw 9,140(1)
	.loc 1 2208 0
	bl Mod_ForName
	stw 3,184(1)
	.loc 1 2209 0
	addi 3,1,24
	bl R_CalcSvBsp
	.loc 1 2214 0
	lwz 0,652(1)
	lwz 24,616(1)
	mtlr 0
	lwz 25,620(1)
	lwz 26,624(1)
	lwz 27,628(1)
	lwz 28,632(1)
	lwz 29,636(1)
	lwz 30,640(1)
	lwz 31,644(1)
.LVL468:
	addi 1,1,648
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI88:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE69:
	.size	LightFromFile, .-LightFromFile
	.align 2
	.globl ParseVector
	.type	ParseVector, @function
ParseVector:
.LFB70:
	.loc 1 2218 0
	.cfi_startproc
.LVL469:
	mflr 0
	stwu 1,-152(1)
.LCFI89:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	.loc 1 2223 0
	li 5,128
	.loc 1 2218 0
	stw 31,148(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,156(1)
	mr 0,3
	.cfi_offset 65, 4
	.loc 1 2223 0
	mr 4,0
.LVL470:
	addi 3,1,8
.LVL471:
	.loc 1 2218 0
	stw 28,136(1)
	.loc 1 2230 0
	li 28,0
	.cfi_offset 28, -16
	.loc 1 2218 0
	stw 29,140(1)
	.loc 1 2223 0
	li 29,0
	.cfi_offset 29, -12
	.loc 1 2218 0
	stw 30,144(1)
	.loc 1 2223 0
	.cfi_offset 30, -8
	bl strncpy
.LVL472:
	.loc 1 2224 0
	addi 3,1,8
.LVL473:
.L357:
	.loc 1 2228 0 discriminator 1
	lbz 0,0(3)
	mr 30,3
	cmpwi 7,0,0
	beq- 7,.L358
.LVL474:
	.loc 1 2228 0 is_stmt 0
	cmpwi 7,0,32
	mr 9,3
	bne+ 7,.L359
	b .L358
.LVL475:
.L364:
	.loc 1 2228 0 discriminator 2
	beq- 6,.L358
.L359:
	.loc 1 2228 0
	lbzu 0,1(9)
	.loc 1 2229 0 is_stmt 1
	addi 30,30,1
.LVL476:
	.loc 1 2228 0
	cmpwi 7,0,0
	cmpwi 6,0,32
	bne+ 7,.L364
.L358:
	.loc 1 2230 0
	stb 28,0(30)
	.loc 1 2231 0
	bl atof
.LVL477:
	.loc 1 2226 0
	cmpwi 7,29,8
	.loc 1 2231 0
	frsp 1,1
	.loc 1 2232 0
	addi 3,30,1
.LVL478:
	.loc 1 2231 0
	stfsx 1,31,29
	.loc 1 2226 0
	addi 29,29,4
	bne+ 7,.L357
	.loc 1 2234 0
	lwz 0,156(1)
	lwz 28,136(1)
	mtlr 0
	lwz 29,140(1)
	lwz 30,144(1)
	lwz 31,148(1)
.LVL479:
	addi 1,1,152
.LCFI90:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE70:
	.size	ParseVector, .-ParseVector
	.align 2
	.globl ParseEnt
	.type	ParseEnt, @function
ParseEnt:
.LFB71:
	.loc 1 2239 0
	.cfi_startproc
.LVL480:
	mflr 0
	stwu 1,-320(1)
.LCFI91:
	.cfi_def_cfa_offset 320
	.cfi_register 65, 0
	stw 20,272(1)
	.loc 1 2253 0
	lis 20,.LC54@ha
	.cfi_offset 20, -48
	.loc 1 2239 0
	stw 21,276(1)
	.loc 1 2260 0
	lis 21,.LC55@ha
	.cfi_offset 21, -44
	.loc 1 2239 0
	stw 22,280(1)
	.loc 1 2263 0
	lis 22,.LC56@ha
	.cfi_offset 22, -40
	.loc 1 2239 0
	stw 26,296(1)
	.loc 1 2276 0
	lis 26,.LC60@ha
	.cfi_offset 26, -24
	.loc 1 2239 0
	stw 28,304(1)
	.loc 1 2274 0
	lis 28,.LC59@ha
	.cfi_offset 28, -16
	.loc 1 2239 0
	stw 29,308(1)
	.loc 1 2268 0
	lis 29,.LC57@ha
	.cfi_offset 29, -12
	.loc 1 2239 0
	stw 31,316(1)
	lis 31,com_token@ha
	.cfi_offset 31, -4
	stw 0,324(1)
	la 31,com_token@l(31)
	stw 19,268(1)
	.loc 1 2253 0
	la 20,.LC54@l(20)
	.loc 1 2239 0
	stw 23,284(1)
	.loc 1 2260 0
	la 21,.LC55@l(21)
	.loc 1 2239 0
	stw 24,288(1)
	.loc 1 2242 0
	li 23,0
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	.loc 1 2239 0
	stw 25,292(1)
	mr 24,5
	stw 27,300(1)
	.loc 1 2263 0
	la 22,.LC56@l(22)
	.loc 1 2239 0
	stw 30,312(1)
	.loc 1 2239 0
	mr 27,4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	mr 30,3
	.loc 1 2268 0
	la 29,.LC57@l(29)
	.loc 1 2274 0
	la 28,.LC59@l(28)
	.loc 1 2276 0
	la 26,.LC60@l(26)
	.loc 1 2279 0
	lis 25,.LC62@ha
.LVL481:
.L384:
	.loc 1 2249 0
	mr 3,30
	bl COM_Parse
	.loc 1 2250 0
	lbz 0,0(31)
	.loc 1 2249 0
	mr 30,3
.LVL482:
	.loc 1 2250 0
	cmpwi 7,0,125
	beq- 7,.L367
.L388:
	.loc 1 2252 0
	cmpwi 7,3,0
	beq- 7,.L385
.LVL483:
.L368:
	.loc 1 2255 0
	mr 4,31
	li 5,256
	addi 3,1,8
	bl strncpy
	.loc 1 2258 0
	mr 3,30
	bl COM_Parse
.LVL484:
	.loc 1 2259 0
	mr. 30,3
	beq- 0,.L386
.LVL485:
.L369:
	.loc 1 2262 0
	lbz 0,0(31)
	cmpwi 7,0,125
	beq- 7,.L387
.L370:
.LVL486:
	.loc 1 2268 0
	addi 3,1,8
	mr 4,29
	bl strcmp
	mr. 19,3
	bne- 0,.L371
	.loc 1 2269 0
	lis 4,.LC58@ha
	mr 3,31
	la 4,.LC58@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L372
	.loc 1 2270 0
	li 0,1
	.loc 1 2249 0
	mr 3,30
	.loc 1 2270 0
	stb 0,0(27)
	.loc 1 2249 0
	bl COM_Parse
	.loc 1 2250 0
	lbz 0,0(31)
	.loc 1 2249 0
	mr 30,3
.LVL487:
	.loc 1 2250 0
	cmpwi 7,0,125
	bne+ 7,.L388
.LVL488:
.L367:
	.loc 1 2306 0
	lwz 0,324(1)
	.loc 1 2304 0
	addic 3,23,-1
	subfe 3,3,3
.LVL489:
	.loc 1 2306 0
	and 3,30,3
	lwz 19,268(1)
	mtlr 0
	lwz 20,272(1)
	lwz 21,276(1)
	lwz 22,280(1)
	lwz 23,284(1)
	lwz 24,288(1)
.LVL490:
	lwz 25,292(1)
	lwz 26,296(1)
	lwz 27,300(1)
.LVL491:
	lwz 28,304(1)
	lwz 29,308(1)
	lwz 30,312(1)
.LVL492:
	lwz 31,316(1)
	addi 1,1,320
	.cfi_remember_state
.LCFI92:
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
	blr
.LVL493:
.L371:
.LCFI93:
	.cfi_restore_state
	.loc 1 2274 0
	addi 3,1,8
	mr 4,28
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L389
	.loc 1 2276 0
	addi 3,1,8
	mr 4,26
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L390
	.loc 1 2279 0
	addi 3,1,8
	la 4,.LC62@l(25)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L391
	.loc 1 2281 0
	lis 4,.LC63@ha
	addi 3,1,8
	la 4,.LC63@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L392
	.loc 1 2283 0
	lis 4,.LC64@ha
	addi 3,1,8
	la 4,.LC64@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L393
	.loc 1 2286 0
	lis 4,.LC67@ha
	addi 3,1,8
	la 4,.LC67@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L394
	.loc 1 2291 0
	lis 4,.LC71@ha
	addi 3,1,8
	la 4,.LC71@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L395
	.loc 1 2293 0
	lis 4,.LC73@ha
	addi 3,1,8
	la 4,.LC73@l(4)
	bl strcmp
	cmpwi 7,3,0
	bne+ 7,.L384
	.loc 1 2294 0
	lis 3,.LC74@ha
	mr 4,31
	la 3,.LC74@l(3)
	bl Cvar_Set
	b .L384
.L372:
	.loc 1 2272 0
	stb 19,0(27)
	b .L384
.L389:
	.loc 1 2275 0
	mr 3,31
	mr 4,24
	bl ParseVector
	b .L384
.LVL494:
.L387:
	.loc 1 2263 0
	mr 3,22
	crxor 6,6,6
	bl Sys_Error
	b .L370
.LVL495:
.L390:
	.loc 1 2277 0
	lis 3,.LC61@ha
	.loc 1 2278 0
	li 23,1
	.loc 1 2277 0
	la 3,.LC61@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL496:
	b .L384
.LVL497:
.L391:
	.loc 1 2280 0
	lis 3,skybox_name@ha
	mr 4,31
	li 5,64
	la 3,skybox_name@l(3)
	bl strncpy
	b .L384
.LVL498:
.L386:
	.loc 1 2260 0
	mr 3,21
	crxor 6,6,6
	bl Sys_Error
	b .L369
.LVL499:
.L385:
	.loc 1 2253 0
	mr 3,20
.LVL500:
	crxor 6,6,6
	bl Sys_Error
	b .L368
.LVL501:
.L392:
	.loc 1 2282 0
	mr 3,31
	bl atof
	lis 9,skybox_cloudspeed@ha
	frsp 1,1
	stfs 1,skybox_cloudspeed@l(9)
	b .L384
.L393:
	.loc 1 2284 0
	lis 3,.LC65@ha
	mr 4,31
	la 3,.LC65@l(3)
	bl Cvar_Set
	.loc 1 2285 0
	lis 9,sh_lightmapbright+12@ha
	lfs 1,sh_lightmapbright+12@l(9)
	lis 3,.LC66@ha
	la 3,.LC66@l(3)
	creqv 6,6,6
	bl Con_Printf
	b .L384
.L394:
	.loc 1 2287 0
	mr 4,24
	mr 3,31
	bl ParseVector
	.loc 1 2288 0
	lfs 1,0(24)
	lis 3,.LC68@ha
	la 3,.LC68@l(3)
	bl Cvar_SetValue
	.loc 1 2289 0
	lfs 1,4(24)
	lis 3,.LC69@ha
	la 3,.LC69@l(3)
	bl Cvar_SetValue
	.loc 1 2290 0
	lfs 1,8(24)
	lis 3,.LC70@ha
	la 3,.LC70@l(3)
	bl Cvar_SetValue
	b .L384
.L395:
	.loc 1 2292 0
	lis 3,.LC72@ha
	mr 4,31
	la 3,.LC72@l(3)
	bl Cvar_Set
	b .L384
	.cfi_endproc
.LFE71:
	.size	ParseEnt, .-ParseEnt
	.align 2
	.globl LoadLightsFromFile
	.type	LoadLightsFromFile, @function
LoadLightsFromFile:
.LFB72:
	.loc 1 2309 0
	.cfi_startproc
.LVL502:
	stwu 1,-40(1)
.LCFI94:
	.cfi_def_cfa_offset 40
	mflr 0
	.loc 1 2313 0
	lis 9,.LC5@ha
	lfs 1,.LC5@l(9)
	.loc 1 2309 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 2313 0
	lis 3,.LC72@ha
.LVL503:
	.loc 1 2309 0
	stw 0,44(1)
	.loc 1 2313 0
	la 3,.LC72@l(3)
	.loc 1 2309 0
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 2324 0
	lis 29,.LC75@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 2309 0
	stw 31,36(1)
	.loc 1 2313 0
	.cfi_offset 31, -4
	bl Cvar_SetValue
	.loc 1 2314 0
	lis 9,.LC5@ha
	lis 3,.LC74@ha
	lfs 1,.LC5@l(9)
	la 3,.LC74@l(3)
	.loc 1 2323 0
	lis 31,com_token@ha
	.loc 1 2324 0
	la 29,.LC75@l(29)
	.loc 1 2314 0
	bl Cvar_SetValue
	.loc 1 2323 0
	la 31,com_token@l(31)
	.loc 1 2326 0
	li 28,0
.LVL504:
.L404:
	.loc 1 2320 0
	mr 3,30
	bl COM_Parse
.LVL505:
	.loc 1 2324 0
	mr 4,31
	.loc 1 2321 0
	mr. 30,3
	.loc 1 2324 0
	mr 3,29
.LVL506:
	.loc 1 2321 0
	beq- 0,.L398
.L405:
	.loc 1 2323 0
	lbz 0,0(31)
	cmpwi 7,0,123
	beq- 7,.L399
	.loc 1 2324 0
	crxor 6,6,6
	bl Sys_Error
.L399:
	.loc 1 2327 0
	mr 3,30
	addi 4,1,8
	addi 5,1,12
	.loc 1 2326 0
	stb 28,8(1)
.LVL507:
	.loc 1 2327 0
	bl ParseEnt
	.loc 1 2328 0
	lbz 0,8(1)
.LVL508:
	.loc 1 2327 0
	mr 30,3
.LVL509:
	.loc 1 2328 0
	cmpwi 7,0,0
.LVL510:
	beq+ 7,.L404
	.loc 1 2329 0
	addi 3,1,12
.LVL511:
	bl LightFromFile
.LVL512:
	.loc 1 2320 0
	mr 3,30
	bl COM_Parse
.LVL513:
	.loc 1 2324 0
	mr 4,31
	.loc 1 2321 0
	mr. 30,3
	.loc 1 2324 0
	mr 3,29
.LVL514:
	.loc 1 2321 0
	bne+ 0,.L405
.L398:
	.loc 1 2334 0
	lis 9,fog_start+12@ha
	lfs 0,fog_start+12@l(9)
	lis 9,.LC5@ha
	lfs 1,.LC5@l(9)
	fcmpu 7,0,1
	bne- 7,.L396
	.loc 1 2334 0 is_stmt 0 discriminator 1
	lis 9,fog_end+12@ha
	lfs 0,fog_end+12@l(9)
	fcmpu 7,0,1
	beq- 7,.L406
.L396:
	.loc 1 2337 0 is_stmt 1
	lwz 0,44(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
.LVL515:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI95:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL516:
.L406:
.LCFI96:
	.cfi_restore_state
	.loc 1 2335 0
	lis 3,.LC76@ha
	la 3,.LC76@l(3)
	bl Cvar_SetValue
	.loc 1 2337 0
	lwz 0,44(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
.LVL517:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI97:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE72:
	.size	LoadLightsFromFile, .-LoadLightsFromFile
	.align 2
	.globl R_AutomaticLightPos
	.type	R_AutomaticLightPos, @function
R_AutomaticLightPos:
.LFB73:
	.loc 1 2339 0
	.cfi_startproc
	.loc 1 2349 0
	lis 9,cl+2688@ha
	lwz 9,cl+2688@l(9)
	lwz 3,412(9)
	.loc 1 2350 0
	.loc 1 2349 0
	b LoadLightsFromFile
	.cfi_endproc
.LFE73:
	.size	R_AutomaticLightPos, .-R_AutomaticLightPos
	.globl done
	.globl testvect
	.comm	currentlightroot,4,4
	.comm	VolumeVertsPointer,4,4
	.comm	numLeafList,4,4
	.comm	leafList,128,4
	.comm	cut_ent,4,4
	.comm	cubemap_tex_obj,256,4
	.comm	worldvis,1024,4
	.comm	lightvis,4,4
	.comm	shadowchain,4,4
	.comm	numVolumeVerts,4,4
	.comm	numLightCmds,4,4
	.comm	numVolumeCmds,4,4
	.comm	lightCmdsBuff,262656,4
	.comm	volumeVertsBuff,350036,4
	.comm	volumeCmdsBuff,524800,4
	.comm	currentshadowlight,4,4
	.comm	usedshadowlights,256,4
	.comm	shadowlights,280576,4
	.comm	numUsedShadowLights,4,4
	.comm	numStaticShadowLights,4,4
	.comm	numShadowLights,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	1135542272
.LC3:
	.4byte	1501560836
.LC4:
	.4byte	1140850688
.LC5:
	.4byte	0
.LC11:
	.4byte	-915135488
.LC13:
	.4byte	1232348160
.LC15:
	.4byte	1031798784
.LC18:
	.4byte	1132396544
.LC22:
	.4byte	1112014848
.LC23:
	.4byte	1092616192
.LC27:
	.4byte	1073741824
.LC28:
	.4byte	1056964608
.LC30:
	.4byte	.LC21
.LC31:
	.4byte	.LC26
.LC34:
	.4byte	1501560832
.LC35:
	.4byte	1174667264
.LC38:
	.4byte	1106247680
.LC47:
	.4byte	1063675494
.LC48:
	.4byte	1061158912
.LC50:
	.4byte	-1082130432
.LC51:
	.4byte	1098907648
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC8:
	.4byte	1049065381
	.4byte	-814559571
.LC9:
	.4byte	1072693247
	.4byte	-138
.LC16:
	.4byte	1074340347
	.4byte	1413754136
.LC19:
	.4byte	1069128089
	.4byte	-1717986918
.LC36:
	.4byte	1072064102
	.4byte	1717986918
.LC41:
	.4byte	0
	.4byte	0
	.section	".data"
	.align 2
	.type	testvect, @object
	.size	testvect, 12
testvect:
	.long	1092616192
	.long	1092616192
	.long	1092616192
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"progs/flame2.mdl"
	.zero	3
.LC7:
	.string	"progs/flame.mdl"
.LC20:
	.string	"R_InitShadowsForFrame: More than MAXUSEDSHADOWLIGHS lights for frame\n"
	.zero	2
.LC21:
	.string	"Water/Sky in shadow chain!!"
.LC24:
	.string	"More than MAX_VOLUME_VERTS vetices! %i\n"
.LC25:
	.string	"More than MAX_VOLUME_COMMANDS commands! %i\n"
.LC26:
	.string	"Polygon to far\n"
.LC29:
	.string	"More than MAX_LIGHT_COMMANDS commands %i\n"
	.zero	2
.LC39:
	.string	"Weird leaf index %i, %i\n"
	.zero	3
.LC40:
	.string	"Error: to many edges"
	.zero	3
.LC42:
	.string	"null model"
	.zero	1
.LC43:
	.string	"progs/s_light.spr"
	.zero	2
.LC44:
	.string	"progs/b_light.spr"
	.zero	2
.LC45:
	.string	"progs/w_light.spr"
	.zero	2
.LC46:
	.string	"R_CalcSvBsp: More than MAXSHADOWLIGHTS lights"
	.zero	2
.LC53:
	.string	"Added surface light"
.LC54:
	.string	"ParseEnt: EOF without closing brace"
.LC55:
	.string	"ED_ParseEntity: EOF without closing brace"
	.zero	2
.LC56:
	.string	"ED_ParseEntity: closing brace without data"
	.zero	1
.LC57:
	.string	"classname"
	.zero	2
.LC58:
	.string	"light"
	.zero	2
.LC59:
	.string	"origin"
	.zero	1
.LC60:
	.string	"_noautolight"
	.zero	3
.LC61:
	.string	"Automatic light gen disabled\n"
	.zero	2
.LC62:
	.string	"_skybox"
.LC63:
	.string	"_cloudspeed"
.LC64:
	.string	"_lightmapbright"
.LC65:
	.string	"sh_lightmapbright"
	.zero	2
.LC66:
	.string	"Lightmap brightness set to %f\n"
	.zero	1
.LC67:
	.string	"_fog_color"
	.zero	1
.LC68:
	.string	"fog_r"
	.zero	2
.LC69:
	.string	"fog_g"
	.zero	2
.LC70:
	.string	"fog_b"
	.zero	2
.LC71:
	.string	"_fog_start"
	.zero	1
.LC72:
	.string	"fog_start"
	.zero	2
.LC73:
	.string	"_fog_end"
	.zero	3
.LC74:
	.string	"fog_end"
.LC75:
	.string	"ED_LoadFromFile: found %s when expecting {"
	.zero	1
.LC76:
	.string	"fog_enabled"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	done, @object
	.size	done, 4
done:
	.zero	4
	.section	".text"
.Letext0:
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 18 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3b1b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF584
	.byte	0x1
	.4byte	.LASF585
	.4byte	.LASF586
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
	.byte	0x3
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x7
	.string	"f32"
	.byte	0x12
	.byte	0x2b
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.byte	0x40
	.byte	0x4
	.byte	0x52
	.4byte	0x12d
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x54
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x54
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x55
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x56
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x13d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x14d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x59
	.4byte	0xc2
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x168
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x178
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x188
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0xa5
	.4byte	0x1ad
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0xa8
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0xa9
	.4byte	0x188
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1ce
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x1de
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1a
	.4byte	0x8f
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x14
	.byte	0x5
	.byte	0x1c
	.4byte	0x248
	.uleb128 0xe
	.string	"x"
	.byte	0x5
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0x5
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.4byte	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x20
	.4byte	0x1f9
	.uleb128 0x9
	.byte	0x44
	.byte	0x5
	.byte	0x22
	.4byte	0x350
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x24
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x25
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0x26
	.4byte	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x5
	.byte	0x2e
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x5
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x5
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x5
	.byte	0x34
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x36
	.4byte	0x259
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x377
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x4
	.byte	0x6
	.byte	0x6f
	.4byte	0x392
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x6
	.byte	0x72
	.4byte	0x377
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x7
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x17
	.4byte	0x3b3
	.uleb128 0xb
	.4byte	0x39d
	.4byte	0x3c3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x48
	.byte	0x8
	.byte	0xef
	.4byte	0x474
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x8
	.byte	0xf1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0xf2
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.byte	0xf9
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x8
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x8
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x8
	.byte	0xfe
	.4byte	0x3c3
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x14
	.byte	0x9
	.byte	0x38
	.4byte	0x4e0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x9
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x9
	.byte	0x3c
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x9
	.byte	0x3d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x9
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x9
	.byte	0x3f
	.4byte	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47f
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x9
	.byte	0x40
	.4byte	0x47f
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x502
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x512
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x522
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x44
	.byte	0xa
	.byte	0x23
	.4byte	0x54b
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xa
	.byte	0x25
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xa
	.byte	0x26
	.4byte	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x10
	.byte	0xb
	.byte	0x1e
	.4byte	0x590
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xb
	.byte	0x20
	.4byte	0x637
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xb
	.byte	0x21
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xb
	.byte	0x22
	.4byte	0x8b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xb
	.byte	0x23
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x40
	.byte	0xc
	.byte	0xca
	.4byte	0x637
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0xd0
	.4byte	0x17e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0xd2
	.4byte	0xc0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xc
	.byte	0xd5
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xc
	.byte	0xd6
	.4byte	0x180b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0xd8
	.4byte	0x1811
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xc
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0xc
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xc
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.byte	0xdc
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x590
	.uleb128 0x5
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x10
	.4byte	.LASF91
	.2byte	0x248
	.byte	0xb
	.byte	0x27
	.4byte	0x8b1
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xb
	.byte	0x29
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xb
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xb
	.byte	0x2d
	.4byte	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xb
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xb
	.byte	0x30
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xb
	.byte	0x31
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xb
	.byte	0x32
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xb
	.byte	0x33
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xb
	.byte	0x34
	.4byte	0xb8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xb
	.byte	0x35
	.4byte	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xb
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xb
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xb
	.byte	0x38
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xb
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xb
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xb
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xb
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xb
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xb
	.byte	0x44
	.4byte	0xc0f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xb
	.byte	0x48
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xb
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xb
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xb
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xb
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xb
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0xb
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xb
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xb
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0xb
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xb
	.byte	0x57
	.4byte	0xd2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xb
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0xb
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xb
	.byte	0x5c
	.4byte	0xd35
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xb
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xb
	.byte	0x60
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xb
	.byte	0x61
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xb
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xb
	.byte	0x63
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xb
	.byte	0x64
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x643
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0xb
	.byte	0x24
	.4byte	0x54b
	.uleb128 0xb
	.4byte	0x39d
	.4byte	0x8d8
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF123
	.2byte	0x1a4
	.byte	0xc
	.2byte	0x180
	.4byte	0xb8c
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xc
	.2byte	0x182
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x183
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x185
	.4byte	0x1b54
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x187
	.4byte	0x13a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0xc
	.2byte	0x18e
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x18e
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xc
	.2byte	0x194
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0xc
	.2byte	0x195
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xc
	.2byte	0x195
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xc
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xc
	.2byte	0x19d
	.4byte	0x1b60
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xc
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xc
	.2byte	0x1a0
	.4byte	0x17c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xc
	.2byte	0x1a3
	.4byte	0x1b66
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xc
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xc
	.2byte	0x1a6
	.4byte	0x1b6c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xc
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x1a9
	.4byte	0x1b72
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xc
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xc
	.2byte	0x1ac
	.4byte	0x1b78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xc
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xc
	.2byte	0x1af
	.4byte	0x17cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xc
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xc
	.2byte	0x1b2
	.4byte	0x1817
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xc
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xc
	.2byte	0x1b5
	.4byte	0x1b7e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xc
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xc
	.2byte	0x1b8
	.4byte	0x1885
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0xc
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xc
	.2byte	0x1bb
	.4byte	0x1811
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xc
	.2byte	0x1bd
	.4byte	0x1b84
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x1c0
	.4byte	0x1b94
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xc
	.2byte	0x1c2
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xc
	.2byte	0x1c3
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xc
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x1c9
	.4byte	0x392
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d8
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x34
	.byte	0xc
	.byte	0xb6
	.4byte	0xc0f
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0xbc
	.4byte	0x17e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0xbe
	.4byte	0xc0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0xc
	.byte	0xc1
	.4byte	0x17c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0xc
	.byte	0xc2
	.4byte	0x17f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF163
	.byte	0xc
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0xc
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb92
	.uleb128 0x13
	.4byte	.LASF164
	.4byte	0x20030
	.byte	0xd
	.2byte	0xa09
	.4byte	0xd2f
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xd
	.2byte	0xa0f
	.4byte	0xd2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xd
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xd
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0xd
	.2byte	0xa17
	.4byte	0x1f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0xd
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xd
	.2byte	0xa1d
	.4byte	0x105d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xd
	.2byte	0xa1f
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0xd
	.2byte	0xa21
	.4byte	0x1f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xd
	.2byte	0xa25
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0xd
	.2byte	0xa2b
	.4byte	0x1f86
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0xd
	.2byte	0xa2d
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xd
	.2byte	0xa2f
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xd
	.2byte	0xa31
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0xd
	.2byte	0xa33
	.4byte	0x1fcb
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0xd
	.2byte	0xa37
	.4byte	0x1fdc
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc15
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xd45
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0xb
	.byte	0x66
	.4byte	0x643
	.uleb128 0x9
	.byte	0x94
	.byte	0xb
	.byte	0x69
	.4byte	0xeba
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xb
	.byte	0x6b
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0xb
	.byte	0x6d
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0xb
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xb
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xb
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xb
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0xb
	.byte	0x70
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xb
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0xb
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0xb
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0xb
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xb
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0xb
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0xb
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xb
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xb
	.byte	0x78
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0xb
	.byte	0x79
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0xb
	.byte	0x7a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0xb
	.byte	0x7c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0xb
	.byte	0x7d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xb
	.byte	0x7f
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xb
	.byte	0x80
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xb
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0xb
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0xb
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0xb
	.byte	0x85
	.4byte	0xd50
	.uleb128 0x9
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.4byte	0xf06
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xe
	.byte	0x18
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0xe
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0xe
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xe
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF212
	.byte	0xe
	.byte	0x21
	.4byte	0xec5
	.uleb128 0x14
	.2byte	0x402c
	.byte	0xe
	.byte	0x29
	.4byte	0xf61
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xe
	.byte	0x2b
	.4byte	0x512
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xe
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0xe
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0xe
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0xe
	.byte	0x2f
	.4byte	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF217
	.byte	0xe
	.byte	0x30
	.4byte	0xf11
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x32
	.4byte	0xf91
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0xe
	.byte	0x34
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0xe
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xfa1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF220
	.byte	0xe
	.byte	0x36
	.4byte	0xf6c
	.uleb128 0x9
	.byte	0x48
	.byte	0xe
	.byte	0x48
	.4byte	0x105d
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xe
	.byte	0x4a
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xe
	.byte	0x4b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"die"
	.byte	0xe
	.byte	0x4c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0xe
	.byte	0x4d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0xe
	.byte	0x4e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"key"
	.byte	0xe
	.byte	0x4f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xe
	.byte	0x50
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xe
	.byte	0x51
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xe
	.byte	0x52
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0xe
	.byte	0x53
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xe
	.byte	0x54
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0xe
	.byte	0x58
	.4byte	0x105d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd45
	.uleb128 0x6
	.4byte	.LASF225
	.byte	0xe
	.byte	0x59
	.4byte	0xfac
	.uleb128 0x14
	.2byte	0xce8
	.byte	0xe
	.byte	0x9a
	.4byte	0x1309
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xe
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0xe
	.byte	0xa0
	.4byte	0xf06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xe
	.byte	0xa3
	.4byte	0x1309
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xe
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0xe
	.byte	0xa5
	.4byte	0x1319
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xe
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0xe
	.byte	0xa8
	.4byte	0x1329
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0xe
	.byte	0xa9
	.4byte	0x1329
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0xe
	.byte	0xaf
	.4byte	0x8c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xe
	.byte	0xb1
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0xe
	.byte	0xb3
	.4byte	0x8c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0xe
	.byte	0xb5
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0xe
	.byte	0xb7
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0xe
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0xe
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0xe
	.byte	0xbc
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0xe
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0xe
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0xe
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0xe
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0xe
	.byte	0xc3
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0xe
	.byte	0xc4
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0xe
	.byte	0xc5
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0xe
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xa
	.4byte	.LASF248
	.byte	0xe
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF249
	.byte	0xe
	.byte	0xca
	.4byte	0x1339
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xa
	.4byte	.LASF250
	.byte	0xe
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xa
	.4byte	.LASF251
	.byte	0xe
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xa
	.4byte	.LASF252
	.byte	0xe
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xa
	.4byte	.LASF253
	.byte	0xe
	.byte	0xd7
	.4byte	0x1349
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xa
	.4byte	.LASF254
	.byte	0xe
	.byte	0xd8
	.4byte	0x1359
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xa
	.4byte	.LASF255
	.byte	0xe
	.byte	0xda
	.4byte	0x136f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xa
	.4byte	.LASF256
	.byte	0xe
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xa
	.4byte	.LASF257
	.byte	0xe
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xe
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xa
	.4byte	.LASF259
	.byte	0xe
	.byte	0xe0
	.4byte	0xb8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xe
	.byte	0xe1
	.4byte	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0xe
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xa
	.4byte	.LASF262
	.byte	0xe
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xa
	.4byte	.LASF263
	.byte	0xe
	.byte	0xe4
	.4byte	0xd45
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xa
	.4byte	.LASF264
	.byte	0xe
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xa
	.4byte	.LASF265
	.byte	0xe
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xa
	.4byte	.LASF266
	.byte	0xe
	.byte	0xe9
	.4byte	0x137f
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xa
	.4byte	.LASF267
	.byte	0xe
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1319
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1329
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0xfa1
	.4byte	0x1339
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x73
	.4byte	0x1349
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xb8c
	.4byte	0x1359
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	0x1369
	.4byte	0x1369
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x522
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x137f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf61
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0xe
	.byte	0xf3
	.4byte	0x106e
	.uleb128 0x15
	.byte	0x4
	.byte	0xf
	.byte	0x34
	.4byte	0x13a5
	.uleb128 0x16
	.4byte	.LASF269
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF270
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF271
	.byte	0xf
	.byte	0x34
	.4byte	0x1390
	.uleb128 0x9
	.byte	0x4
	.byte	0xf
	.byte	0x64
	.4byte	0x13d3
	.uleb128 0xe
	.string	"v"
	.byte	0xf
	.byte	0x65
	.4byte	0x13d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF272
	.byte	0xf
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x13e3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF273
	.byte	0xf
	.byte	0x67
	.4byte	0x13b0
	.uleb128 0x9
	.byte	0xc
	.byte	0xc
	.byte	0x3b
	.4byte	0x1405
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0xc
	.byte	0x3d
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF275
	.byte	0xc
	.byte	0x3e
	.4byte	0x13ee
	.uleb128 0x9
	.byte	0x1c
	.byte	0xc
	.byte	0x43
	.4byte	0x1443
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0xc
	.byte	0x45
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0xc
	.byte	0x46
	.4byte	0x1443
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0xc
	.byte	0x47
	.4byte	0x1443
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1453
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF278
	.byte	0xc
	.byte	0x48
	.4byte	0x1410
	.uleb128 0xd
	.4byte	.LASF279
	.byte	0x14
	.byte	0xc
	.byte	0x52
	.4byte	0x14b1
	.uleb128 0xa
	.4byte	.LASF280
	.byte	0xc
	.byte	0x54
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xc
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xc
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF282
	.byte	0xc
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xc
	.byte	0x58
	.4byte	0x14b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x14c1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF283
	.byte	0xc
	.byte	0x59
	.4byte	0x145e
	.uleb128 0xd
	.4byte	.LASF284
	.byte	0x48
	.byte	0xc
	.byte	0x5b
	.4byte	0x1581
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.byte	0x5d
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0xc
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0xc
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0xc
	.byte	0x61
	.4byte	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0xc
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0xc
	.byte	0x64
	.4byte	0x16ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0xc
	.byte	0x65
	.4byte	0x16ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF293
	.byte	0xc
	.byte	0x66
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF294
	.byte	0x5c
	.byte	0xc
	.byte	0x96
	.4byte	0x16a6
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0xc
	.byte	0x9a
	.4byte	0x17c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xc
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0xc
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xc
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0xc
	.byte	0xa0
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0xc
	.byte	0xa1
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0xc
	.byte	0xa5
	.4byte	0x17c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0xc
	.byte	0xa6
	.4byte	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0xc
	.byte	0xa7
	.4byte	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0xc
	.byte	0xa9
	.4byte	0x17cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xc
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xc
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF302
	.byte	0xc
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF303
	.byte	0xc
	.byte	0xb0
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF304
	.byte	0xc
	.byte	0xb1
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF305
	.byte	0xc
	.byte	0xb2
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0xc
	.byte	0xb3
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1581
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14cc
	.uleb128 0x6
	.4byte	.LASF307
	.byte	0xc
	.byte	0x67
	.4byte	0x14cc
	.uleb128 0x9
	.byte	0x8
	.byte	0xc
	.byte	0x78
	.4byte	0x16e0
	.uleb128 0xe
	.string	"v"
	.byte	0xc
	.byte	0x7a
	.4byte	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0xc
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF309
	.byte	0xc
	.byte	0x7c
	.4byte	0x16bd
	.uleb128 0x9
	.byte	0x2c
	.byte	0xc
	.byte	0x7e
	.4byte	0x172c
	.uleb128 0xa
	.4byte	.LASF310
	.byte	0xc
	.byte	0x80
	.4byte	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0xc
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0xc
	.byte	0x82
	.4byte	0x172c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xc
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16b2
	.uleb128 0x6
	.4byte	.LASF312
	.byte	0xc
	.byte	0x84
	.4byte	0x16eb
	.uleb128 0xd
	.4byte	.LASF313
	.byte	0x1c
	.byte	0xc
	.byte	0x8a
	.4byte	0x17ac
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xc
	.byte	0x8c
	.4byte	0x17ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF314
	.byte	0xc
	.byte	0x8d
	.4byte	0x17ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF315
	.byte	0xc
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xc
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xc
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF316
	.byte	0xc
	.byte	0x92
	.4byte	0x17b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF317
	.byte	0xc
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x173d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17ac
	.uleb128 0x6
	.4byte	.LASF318
	.byte	0xc
	.byte	0x94
	.4byte	0x173d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14c1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17b8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1732
	.uleb128 0x6
	.4byte	.LASF319
	.byte	0xc
	.byte	0xb4
	.4byte	0x1581
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x17f0
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xc0f
	.4byte	0x1800
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF320
	.byte	0xc
	.byte	0xc6
	.4byte	0xb92
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8b7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1817
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17d5
	.uleb128 0x6
	.4byte	.LASF321
	.byte	0xc
	.byte	0xdd
	.4byte	0x590
	.uleb128 0x9
	.byte	0x28
	.byte	0xc
	.byte	0xe0
	.4byte	0x1885
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0xc
	.byte	0xe2
	.4byte	0x1885
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0xc
	.byte	0xe3
	.4byte	0x17c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF323
	.byte	0xc
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF324
	.byte	0xc
	.byte	0xe6
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0xc
	.byte	0xe7
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	.LASF326
	.byte	0xc
	.byte	0xe8
	.4byte	0x1828
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x17
	.byte	0x28
	.byte	0xc
	.2byte	0x11e
	.4byte	0x190f
	.uleb128 0x12
	.4byte	.LASF327
	.byte	0xc
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0xc
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF329
	.byte	0xc
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xc
	.2byte	0x123
	.4byte	0x13e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF331
	.byte	0xc
	.2byte	0x124
	.4byte	0x13e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0xc
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xc
	.2byte	0x126
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF332
	.byte	0xc
	.2byte	0x127
	.4byte	0x189c
	.uleb128 0x19
	.2byte	0x53c
	.byte	0xc
	.2byte	0x142
	.4byte	0x1b00
	.uleb128 0x12
	.4byte	.LASF333
	.byte	0xc
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0xc
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF335
	.byte	0xc
	.2byte	0x145
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF336
	.byte	0xc
	.2byte	0x146
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF337
	.byte	0xc
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF338
	.byte	0xc
	.2byte	0x148
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF339
	.byte	0xc
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF340
	.byte	0xc
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF341
	.byte	0xc
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF315
	.byte	0xc
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF342
	.byte	0xc
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x14f
	.4byte	0x13a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF343
	.byte	0xc
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0xc
	.2byte	0x153
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x153
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0xc
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF344
	.byte	0xc
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF345
	.byte	0xc
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF346
	.byte	0xc
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF347
	.byte	0xc
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xc
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xc
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF348
	.byte	0xc
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF349
	.byte	0xc
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF350
	.byte	0xc
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF285
	.byte	0xc
	.2byte	0x15e
	.4byte	0x1b00
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF351
	.byte	0xc
	.2byte	0x15f
	.4byte	0x1b00
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x12
	.4byte	.LASF352
	.byte	0xc
	.2byte	0x160
	.4byte	0x1309
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x12
	.4byte	.LASF353
	.byte	0xc
	.2byte	0x161
	.4byte	0x1b16
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1b16
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x190f
	.4byte	0x1b26
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF354
	.byte	0xc
	.2byte	0x162
	.4byte	0x191b
	.uleb128 0x1a
	.byte	0x4
	.byte	0xc
	.2byte	0x172
	.4byte	0x1b54
	.uleb128 0x16
	.4byte	.LASF355
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF356
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF357
	.sleb128 2
	.uleb128 0x16
	.4byte	.LASF358
	.sleb128 3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF359
	.byte	0xc
	.2byte	0x172
	.4byte	0x1b32
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x181d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1405
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16e0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1800
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x188b
	.4byte	0x1b94
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x172c
	.uleb128 0x18
	.4byte	.LASF360
	.byte	0xc
	.2byte	0x1cb
	.4byte	0x8d8
	.uleb128 0x9
	.byte	0x10
	.byte	0x10
	.byte	0x16
	.4byte	0x1bcb
	.uleb128 0xa
	.4byte	.LASF280
	.byte	0x10
	.byte	0x18
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0x10
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF361
	.byte	0x10
	.byte	0x1a
	.4byte	0x1ba6
	.uleb128 0x6
	.4byte	.LASF362
	.byte	0x11
	.byte	0x99
	.4byte	0x41
	.uleb128 0x1b
	.4byte	.LASF363
	.byte	0x14
	.byte	0xd
	.2byte	0x981
	.4byte	0x1c0d
	.uleb128 0x12
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x983
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xd
	.2byte	0x985
	.4byte	0x1c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1be1
	.uleb128 0x18
	.4byte	.LASF365
	.byte	0xd
	.2byte	0x987
	.4byte	0x1be1
	.uleb128 0x1c
	.4byte	.LASF415
	.byte	0x4
	.byte	0xd
	.2byte	0x98d
	.4byte	0x1c5d
	.uleb128 0x1d
	.4byte	.LASF366
	.byte	0xd
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1d
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF368
	.byte	0xd
	.2byte	0x993
	.4byte	0x39d
	.uleb128 0x1d
	.4byte	.LASF369
	.byte	0xd
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF370
	.byte	0xd
	.2byte	0x997
	.4byte	0x1c1f
	.uleb128 0x11
	.4byte	.LASF371
	.2byte	0x890
	.byte	0xd
	.2byte	0x99d
	.4byte	0x1e1d
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0xd
	.2byte	0x99f
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF372
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xd
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF373
	.byte	0xd
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF374
	.byte	0xd
	.2byte	0x9a9
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF375
	.byte	0xd
	.2byte	0x9ab
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	.LASF376
	.byte	0xd
	.2byte	0x9ad
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.4byte	.LASF377
	.byte	0xd
	.2byte	0x9af
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0xd
	.2byte	0x9b1
	.4byte	0x1b66
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.string	"vis"
	.byte	0xd
	.2byte	0x9b3
	.4byte	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF378
	.byte	0xd
	.2byte	0x9b5
	.4byte	0x1e1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x12
	.4byte	.LASF379
	.byte	0xd
	.2byte	0x9b7
	.4byte	0x1811
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x12
	.4byte	.LASF380
	.byte	0xd
	.2byte	0x9b9
	.4byte	0x1b7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x12
	.4byte	.LASF381
	.byte	0xd
	.2byte	0x9bb
	.4byte	0x1896
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x12
	.4byte	.LASF382
	.byte	0xd
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x12
	.4byte	.LASF383
	.byte	0xd
	.2byte	0x9bf
	.4byte	0x1e2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x12
	.4byte	.LASF384
	.byte	0xd
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xd
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0xd
	.2byte	0x9c5
	.4byte	0x105d
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x12
	.4byte	.LASF385
	.byte	0xd
	.2byte	0x9c7
	.4byte	0x1c13
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xd
	.2byte	0x9cb
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x12
	.4byte	.LASF386
	.byte	0xd
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x12
	.4byte	.LASF387
	.byte	0xd
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x12
	.4byte	.LASF388
	.byte	0xd
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x12
	.4byte	.LASF389
	.byte	0xd
	.2byte	0x9d3
	.4byte	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1e2e
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c5d
	.uleb128 0x18
	.4byte	.LASF390
	.byte	0xd
	.2byte	0x9d5
	.4byte	0x1c69
	.uleb128 0x13
	.4byte	.LASF391
	.4byte	0x1e864
	.byte	0xd
	.2byte	0x9db
	.4byte	0x1f7a
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF392
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF393
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF394
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF395
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF396
	.byte	0xd
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x9e5
	.4byte	0x105d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF397
	.byte	0xd
	.2byte	0x9e7
	.4byte	0x1f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF398
	.byte	0xd
	.2byte	0x9e9
	.4byte	0x1f80
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF399
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF400
	.byte	0xd
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF401
	.byte	0xd
	.2byte	0x9f3
	.4byte	0x1f86
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF402
	.byte	0xd
	.2byte	0x9f5
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x12
	.4byte	.LASF403
	.byte	0xd
	.2byte	0x9f7
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x9f9
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x12
	.4byte	.LASF404
	.byte	0xd
	.2byte	0x9fb
	.4byte	0x1f9d
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x12
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x9ff
	.4byte	0x1fae
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x12
	.4byte	.LASF342
	.byte	0xd
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b26
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e34
	.uleb128 0xb
	.4byte	0x39d
	.4byte	0x1f9d
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xaa
	.4byte	0x1fae
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1fbf
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF405
	.byte	0xd
	.2byte	0xa05
	.4byte	0x1e40
	.uleb128 0xb
	.4byte	0x1bcb
	.4byte	0x1fdc
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1fbf
	.uleb128 0x13
	.4byte	.LASF406
	.4byte	0x1905c
	.byte	0xd
	.2byte	0xa3d
	.4byte	0x211c
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xd
	.2byte	0xa41
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF392
	.byte	0xd
	.2byte	0xa43
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF393
	.byte	0xd
	.2byte	0xa43
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF394
	.byte	0xd
	.2byte	0xa43
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF395
	.byte	0xd
	.2byte	0xa43
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF396
	.byte	0xd
	.2byte	0xa45
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xd
	.2byte	0xa47
	.4byte	0x105d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF398
	.byte	0xd
	.2byte	0xa49
	.4byte	0x1f80
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF399
	.byte	0xd
	.2byte	0xa4b
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xd
	.2byte	0xa4b
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xd
	.2byte	0xa4d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xd
	.2byte	0xa4d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x12
	.4byte	.LASF401
	.byte	0xd
	.2byte	0xa53
	.4byte	0x1f86
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF402
	.byte	0xd
	.2byte	0xa55
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x605c
	.uleb128 0x12
	.4byte	.LASF403
	.byte	0xd
	.2byte	0xa57
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0xc05c
	.uleb128 0x12
	.4byte	.LASF407
	.byte	0xd
	.2byte	0xa59
	.4byte	0x211c
	.byte	0x4
	.byte	0x23
	.uleb128 0x1205c
	.uleb128 0x12
	.4byte	.LASF408
	.byte	0xd
	.2byte	0xa5b
	.4byte	0x2133
	.byte	0x4
	.byte	0x23
	.uleb128 0x1605c
	.uleb128 0x12
	.4byte	.LASF409
	.byte	0xd
	.2byte	0xa5d
	.4byte	0x1f9d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1805c
	.uleb128 0x12
	.4byte	.LASF410
	.byte	0xd
	.2byte	0xa5f
	.4byte	0x1f9d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1885c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x2133
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x2144
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF411
	.byte	0xd
	.2byte	0xa61
	.4byte	0x1fe2
	.uleb128 0x1b
	.4byte	.LASF412
	.byte	0xc
	.byte	0xd
	.2byte	0xab5
	.4byte	0x217c
	.uleb128 0x12
	.4byte	.LASF413
	.byte	0xd
	.2byte	0xab7
	.4byte	0x217c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0xd
	.2byte	0xab9
	.4byte	0x2182
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bcb
	.uleb128 0xb
	.4byte	0x2192
	.4byte	0x2192
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2150
	.uleb128 0x18
	.4byte	.LASF414
	.byte	0xd
	.2byte	0xabb
	.4byte	0x2150
	.uleb128 0x1c
	.4byte	.LASF416
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x2204
	.uleb128 0x1f
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0x2204
	.uleb128 0x1f
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x2209
	.uleb128 0x1f
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0x220e
	.uleb128 0x1f
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x2213
	.uleb128 0x1f
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0x2218
	.uleb128 0x1f
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x221d
	.uleb128 0x1f
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0xa5
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x18
	.4byte	.LASF417
	.byte	0x2
	.2byte	0x499
	.4byte	0x21a4
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF495
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0x1f80
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF418
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x2258
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x141
	.byte	0x1
	.4byte	0xaa
	.byte	0x1
	.4byte	0x22a8
	.uleb128 0x24
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x141
	.4byte	0x1817
	.uleb128 0x24
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x141
	.4byte	0x1f80
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x143
	.4byte	0x17c3
	.uleb128 0x25
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x144
	.4byte	0x7a
	.uleb128 0x25
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x145
	.4byte	0x17c9
	.byte	0
	.uleb128 0x26
	.4byte	.LASF587
	.byte	0x2
	.2byte	0x849
	.byte	0x1
	.byte	0x3
	.4byte	0x22d5
	.uleb128 0x27
	.string	"x"
	.byte	0x2
	.2byte	0x849
	.4byte	0x9a
	.uleb128 0x27
	.string	"y"
	.byte	0x2
	.2byte	0x849
	.4byte	0x9a
	.uleb128 0x27
	.string	"z"
	.byte	0x2
	.2byte	0x849
	.4byte	0x9a
	.byte	0
	.uleb128 0x28
	.4byte	.LASF588
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x29
	.4byte	0x222e
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF423
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST0
	.4byte	0x232d
	.uleb128 0x2b
	.4byte	.LASF421
	.byte	0x1
	.byte	0x51
	.4byte	0x232d
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.byte	0x53
	.4byte	0x1f80
	.uleb128 0x2d
	.4byte	0x222e
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1063
	.uleb128 0x2e
	.4byte	0x223c
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2351
	.uleb128 0x2f
	.4byte	0x224e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF424
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST2
	.4byte	0x2390
	.uleb128 0x30
	.string	"ent"
	.byte	0x1
	.byte	0xa1
	.4byte	0x105d
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.byte	0xa3
	.4byte	0x1f80
	.uleb128 0x2d
	.4byte	0x222e
	.4byte	.LBB62
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xa5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF425
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST3
	.4byte	0x23c4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xec
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0xed
	.4byte	0x232d
	.4byte	.LLST5
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x103
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST6
	.4byte	0x23fd
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x34
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x106
	.4byte	0x105d
	.4byte	.LLST8
	.byte	0
	.uleb128 0x35
	.4byte	0x2258
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST9
	.4byte	0x2476
	.uleb128 0x2f
	.4byte	0x226b
	.4byte	.LLST10
	.uleb128 0x36
	.4byte	0x2277
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.4byte	0x2283
	.uleb128 0x37
	.4byte	0x228f
	.uleb128 0x37
	.4byte	0x229b
	.uleb128 0x38
	.4byte	0x2258
	.4byte	.LBB82
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x141
	.uleb128 0x2f
	.4byte	0x2277
	.4byte	.LLST11
	.uleb128 0x2f
	.4byte	0x226b
	.4byte	.LLST12
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x3a
	.4byte	0x2283
	.4byte	.LLST13
	.uleb128 0x3a
	.4byte	0x228f
	.4byte	.LLST14
	.uleb128 0x3a
	.4byte	0x229b
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x184
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST16
	.4byte	0x24ff
	.uleb128 0x3c
	.string	"ent"
	.byte	0x1
	.2byte	0x184
	.4byte	0x105d
	.4byte	.LLST17
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x186
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x186
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x34
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x188
	.4byte	0x24ff
	.4byte	.LLST20
	.uleb128 0x3d
	.string	"dst"
	.byte	0x1
	.2byte	0x189
	.4byte	0x3a8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x18a
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0x3d
	.string	"d"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b9a
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x1ad
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST22
	.4byte	0x254d
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x3f
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3f
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x1e2
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST24
	.4byte	0x2639
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x1f80
	.4byte	.LLST25
	.uleb128 0x40
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x1b7e
	.4byte	.LLST26
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x41
	.4byte	.LLST27
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x41
	.string	"a"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x7a
	.uleb128 0x3d
	.string	"v"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"rad"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x7a
	.4byte	.LLST29
	.uleb128 0x34
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73
	.4byte	.LLST31
	.uleb128 0x34
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73
	.4byte	.LLST33
	.uleb128 0x3d
	.string	"px"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x73
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3d
	.string	"py"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x73
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3d
	.string	"pz"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x73
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x232
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2681
	.uleb128 0x3c
	.string	"v1"
	.byte	0x1
	.2byte	0x232
	.4byte	0xbc
	.4byte	.LLST34
	.uleb128 0x43
	.string	"v2"
	.byte	0x1
	.2byte	0x232
	.4byte	0xbc
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x234
	.4byte	0x41
	.4byte	.LLST35
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x254
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST36
	.4byte	0x271a
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x254
	.4byte	0x1f80
	.4byte	.LLST37
	.uleb128 0x40
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x254
	.4byte	0x1b78
	.4byte	.LLST38
	.uleb128 0x34
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x256
	.4byte	0x17c3
	.4byte	.LLST39
	.uleb128 0x34
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x257
	.4byte	0x7a
	.4byte	.LLST40
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x258
	.4byte	0x1811
	.4byte	.LLST41
	.uleb128 0x34
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x259
	.4byte	0x1b66
	.4byte	.LLST42
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.2byte	0x25a
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x34
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x25a
	.4byte	0x41
	.4byte	.LLST44
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x287
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2770
	.uleb128 0x43
	.string	"o"
	.byte	0x1
	.2byte	0x287
	.4byte	0x2770
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x287
	.4byte	0x7a
	.4byte	.LLST45
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.2byte	0x289
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x7a
	.4byte	.LLST47
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x39d
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x29d
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST48
	.4byte	0x27f2
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x29d
	.4byte	0x1f80
	.4byte	.LLST49
	.uleb128 0x25
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x29f
	.4byte	0x1b66
	.uleb128 0x34
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x7a
	.4byte	.LLST50
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x7a
	.4byte	.LLST51
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0xd8
	.uleb128 0x3d
	.string	"dst"
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x3a8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x7a
	.4byte	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x11d
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST53
	.4byte	0x282b
	.uleb128 0x33
	.string	"vis"
	.byte	0x1
	.2byte	0x11f
	.4byte	0xbc
	.4byte	.LLST54
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x120
	.4byte	0x41
	.4byte	.LLST55
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x316
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST56
	.4byte	0x285a
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x316
	.4byte	0x1f80
	.4byte	.LLST57
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x374
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST58
	.4byte	0x2932
	.uleb128 0x3c
	.string	"e"
	.byte	0x1
	.2byte	0x374
	.4byte	0x105d
	.4byte	.LLST59
	.uleb128 0x25
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x376
	.4byte	0x3a8
	.uleb128 0x25
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x376
	.4byte	0x3a8
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x377
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x34
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x378
	.4byte	0x1817
	.4byte	.LLST61
	.uleb128 0x34
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x379
	.4byte	0x24ff
	.4byte	.LLST62
	.uleb128 0x34
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x37a
	.4byte	0xaa
	.4byte	.LLST63
	.uleb128 0x34
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x37c
	.4byte	0x3a8
	.4byte	.LLST64
	.uleb128 0x44
	.4byte	.LBB88
	.4byte	.LBE88
	.uleb128 0x34
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x39a
	.4byte	0x3a8
	.4byte	.LLST65
	.uleb128 0x3f
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x39b
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3f
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x39b
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3d
	.string	"up"
	.byte	0x1
	.2byte	0x39b
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x460
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST66
	.4byte	0x2b7b
	.uleb128 0x3c
	.string	"e"
	.byte	0x1
	.2byte	0x460
	.4byte	0x105d
	.4byte	.LLST67
	.uleb128 0x34
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x462
	.4byte	0x24ff
	.4byte	.LLST68
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x463
	.4byte	0x1817
	.4byte	.LLST69
	.uleb128 0x34
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x464
	.4byte	0x17c9
	.4byte	.LLST70
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x465
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.2byte	0x465
	.4byte	0x41
	.4byte	.LLST72
	.uleb128 0x34
	.4byte	.LASF454
	.byte	0x1
	.2byte	0x465
	.4byte	0x41
	.4byte	.LLST73
	.uleb128 0x33
	.string	"ins"
	.byte	0x1
	.2byte	0x466
	.4byte	0x2b7b
	.4byte	.LLST74
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x470
	.4byte	0x41
	.byte	0x1
	.4byte	0x29da
	.uleb128 0x46
	.byte	0
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0xf0
	.uleb128 0x34
	.4byte	.LASF455
	.byte	0x1
	.2byte	0x494
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0x2af1
	.uleb128 0x33
	.string	"v1"
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1896
	.4byte	.LLST76
	.uleb128 0x33
	.string	"v2"
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1896
	.4byte	.LLST77
	.uleb128 0x33
	.string	"v3"
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1896
	.4byte	.LLST78
	.uleb128 0x33
	.string	"v4"
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1896
	.4byte	.LLST79
	.uleb128 0x48
	.4byte	0x22a8
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x482
	.4byte	0x2a64
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST80
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST81
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST82
	.byte	0
	.uleb128 0x49
	.4byte	0x22a8
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.2byte	0x483
	.4byte	0x2a94
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST83
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST84
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST85
	.byte	0
	.uleb128 0x49
	.4byte	0x22a8
	.4byte	.LBB99
	.4byte	.LBE99
	.byte	0x1
	.2byte	0x484
	.4byte	0x2ac4
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST86
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST87
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST88
	.byte	0
	.uleb128 0x4a
	.4byte	0x22a8
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.2byte	0x485
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST89
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST90
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST91
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0x2b35
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x1896
	.4byte	.LLST92
	.uleb128 0x38
	.4byte	0x22a8
	.4byte	.LBB105
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x49b
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST93
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST94
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST95
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LBB110
	.4byte	.LBE110
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x4a6
	.4byte	0x1896
	.4byte	.LLST96
	.uleb128 0x38
	.4byte	0x22a8
	.4byte	.LBB111
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x4a7
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST97
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST98
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2144
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF456
	.byte	0x1
	.2byte	0x4c2
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB58
	.4byte	.LFE58
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2be7
	.uleb128 0x40
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x4c2
	.4byte	0x1817
	.4byte	.LLST100
	.uleb128 0x4b
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x4c2
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.uleb128 0x4b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x4c2
	.4byte	0x24ff
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.4byte	.LASF457
	.byte	0x1
	.2byte	0x4c4
	.4byte	0x41
	.4byte	.LLST101
	.uleb128 0x25
	.4byte	.LASF458
	.byte	0x1
	.2byte	0x4c5
	.4byte	0x1b72
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF459
	.byte	0x1
	.2byte	0x4e4
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST102
	.4byte	0x2df5
	.uleb128 0x40
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x4e4
	.4byte	0x24ff
	.4byte	.LLST103
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x4e5
	.4byte	0x1817
	.4byte	.LLST104
	.uleb128 0x3f
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x1b7e
	.byte	0x6
	.byte	0x3
	.4byte	volumeCmdsBuff
	.byte	0x9f
	.uleb128 0x3f
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x4e8
	.4byte	0x1e2e
	.byte	0x6
	.byte	0x3
	.4byte	lightCmdsBuff
	.byte	0x9f
	.uleb128 0x3f
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x4e9
	.4byte	0x1896
	.byte	0x6
	.byte	0x3
	.4byte	volumeVertsBuff
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF460
	.byte	0x1
	.2byte	0x4ea
	.4byte	0x41
	.4byte	.LLST105
	.uleb128 0x34
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x4eb
	.4byte	0x41
	.4byte	.LLST106
	.uleb128 0x34
	.4byte	.LASF462
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x41
	.4byte	.LLST107
	.uleb128 0x34
	.4byte	.LASF463
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x41
	.4byte	.LLST108
	.uleb128 0x34
	.4byte	.LASF464
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x41
	.4byte	.LLST109
	.uleb128 0x34
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x41
	.4byte	.LLST110
	.uleb128 0x34
	.4byte	.LASF466
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x41
	.4byte	.LLST111
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x41
	.4byte	.LLST112
	.uleb128 0x34
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x17c9
	.4byte	.LLST113
	.uleb128 0x34
	.4byte	.LASF467
	.byte	0x1
	.2byte	0x4ef
	.4byte	0xaa
	.4byte	.LLST114
	.uleb128 0x3d
	.string	"v1"
	.byte	0x1
	.2byte	0x4f0
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"v2"
	.byte	0x1
	.2byte	0x4f0
	.4byte	0x2df5
	.4byte	.LLST115
	.uleb128 0x34
	.4byte	.LASF468
	.byte	0x1
	.2byte	0x4f0
	.4byte	0x3a8
	.4byte	.LLST116
	.uleb128 0x34
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x4f1
	.4byte	0x7a
	.4byte	.LLST117
	.uleb128 0x34
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x4f2
	.4byte	0xaa
	.4byte	.LLST118
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x2df5
	.4byte	.LLST119
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x2df5
	.4byte	.LLST120
	.uleb128 0x3f
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x34
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x3a8
	.4byte	.LLST121
	.uleb128 0x34
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x7a
	.4byte	.LLST122
	.uleb128 0x34
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x7a
	.4byte	.LLST123
	.uleb128 0x34
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x4f6
	.4byte	0x17c3
	.4byte	.LLST124
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x41
	.4byte	.LLST125
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x4f8
	.4byte	0x1896
	.4byte	.LLST126
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x188
	.uleb128 0x34
	.4byte	.LASF473
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x3a8
	.4byte	.LLST127
	.uleb128 0x34
	.4byte	.LASF474
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x3a8
	.4byte	.LLST128
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a8
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x336
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST129
	.4byte	0x2e26
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x336
	.4byte	0x1f80
	.4byte	.LLST130
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1
	.2byte	0x5ca
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST131
	.4byte	0x2f95
	.uleb128 0x40
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x1b7e
	.4byte	.LLST132
	.uleb128 0x40
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x1e2e
	.4byte	.LLST133
	.uleb128 0x40
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x5ca
	.4byte	0x1896
	.4byte	.LLST134
	.uleb128 0x34
	.4byte	.LASF477
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x41
	.4byte	.LLST135
	.uleb128 0x33
	.string	"num"
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x41
	.4byte	.LLST136
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x41
	.4byte	.LLST137
	.uleb128 0x34
	.4byte	.LASF460
	.byte	0x1
	.2byte	0x5cd
	.4byte	0x41
	.4byte	.LLST138
	.uleb128 0x34
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x5ce
	.4byte	0x41
	.4byte	.LLST139
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x5d0
	.4byte	0x1817
	.4byte	.LLST140
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x5d1
	.4byte	0x1896
	.4byte	.LLST141
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0x1b0
	.4byte	0x2f22
	.uleb128 0x33
	.string	"ind"
	.byte	0x1
	.2byte	0x5e9
	.4byte	0x41
	.4byte	.LLST142
	.uleb128 0x38
	.4byte	0x22a8
	.4byte	.LBB121
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0x5eb
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST143
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST144
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST145
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0x1e0
	.4byte	0x2f68
	.uleb128 0x33
	.string	"ind"
	.byte	0x1
	.2byte	0x5e2
	.4byte	0x41
	.4byte	.LLST146
	.uleb128 0x38
	.4byte	0x22a8
	.4byte	.LBB127
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.2byte	0x5e4
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST147
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST148
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST149
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x22a8
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.2byte	0x621
	.uleb128 0x2f
	.4byte	0x22ca
	.4byte	.LLST150
	.uleb128 0x2f
	.4byte	0x22c0
	.4byte	.LLST151
	.uleb128 0x2f
	.4byte	0x22b6
	.4byte	.LLST152
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF478
	.byte	0x1
	.2byte	0x352
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2fbf
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x352
	.4byte	0x1f80
	.4byte	.LLST153
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x639
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST154
	.4byte	0x306d
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x639
	.4byte	0x1f80
	.4byte	.LLST155
	.uleb128 0x3d
	.string	"hit"
	.byte	0x1
	.2byte	0x63b
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.2byte	0x63c
	.4byte	0x73
	.4byte	.LLST156
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.2byte	0x63c
	.4byte	0x73
	.4byte	.LLST157
	.uleb128 0x33
	.string	"z"
	.byte	0x1
	.2byte	0x63c
	.4byte	0x73
	.4byte	.LLST158
	.uleb128 0x4d
	.4byte	.LASF480
	.byte	0x1
	.2byte	0x63d
	.4byte	0x7a
	.byte	0x4
	.4byte	0x41f00000
	.uleb128 0x34
	.4byte	.LASF481
	.byte	0x1
	.2byte	0x63d
	.4byte	0x7a
	.4byte	.LLST159
	.uleb128 0x25
	.4byte	.LASF482
	.byte	0x1
	.2byte	0x63e
	.4byte	0x41
	.uleb128 0x25
	.4byte	.LASF483
	.byte	0x1
	.2byte	0x63e
	.4byte	0x41
	.uleb128 0x34
	.4byte	.LASF484
	.byte	0x1
	.2byte	0x63f
	.4byte	0xaa
	.4byte	.LLST160
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF485
	.byte	0x1
	.2byte	0x6bf
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST161
	.4byte	0x30f4
	.uleb128 0x3c
	.string	"vis"
	.byte	0x1
	.2byte	0x6bf
	.4byte	0xbc
	.4byte	.LLST162
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x41
	.4byte	.LLST163
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x41
	.4byte	.LLST164
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x1811
	.4byte	.LLST165
	.uleb128 0x34
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x1b66
	.4byte	.LLST166
	.uleb128 0x34
	.4byte	.LASF486
	.byte	0x1
	.2byte	0x6c4
	.4byte	0xaa
	.4byte	.LLST167
	.uleb128 0x34
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x41
	.4byte	.LLST168
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1
	.2byte	0x6f0
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST169
	.4byte	0x315b
	.uleb128 0x40
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x6f0
	.4byte	0x1817
	.4byte	.LLST170
	.uleb128 0x3f
	.4byte	.LASF489
	.byte	0x1
	.2byte	0x6f1
	.4byte	0x315b
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x34
	.4byte	.LASF490
	.byte	0x1
	.2byte	0x6f2
	.4byte	0x41
	.4byte	.LLST171
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x6f3
	.4byte	0x41
	.4byte	.LLST172
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x6f4
	.4byte	0x1896
	.4byte	.LLST173
	.byte	0
	.uleb128 0xb
	.4byte	0x39d
	.4byte	0x3171
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF491
	.byte	0x1
	.2byte	0x73e
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST174
	.4byte	0x31ea
	.uleb128 0x40
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x73e
	.4byte	0x1b78
	.4byte	.LLST175
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.2byte	0x740
	.4byte	0x41
	.4byte	.LLST176
	.uleb128 0x34
	.4byte	.LASF492
	.byte	0x1
	.2byte	0x740
	.4byte	0x41
	.4byte	.LLST177
	.uleb128 0x34
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x741
	.4byte	0x17c3
	.4byte	.LLST178
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x742
	.4byte	0x1817
	.4byte	.LLST179
	.uleb128 0x33
	.string	"dot"
	.byte	0x1
	.2byte	0x743
	.4byte	0x73
	.4byte	.LLST180
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1
	.2byte	0x78a
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST181
	.4byte	0x3221
	.uleb128 0x3f
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x78c
	.4byte	0x3221
	.byte	0x3
	.byte	0x91
	.sleb128 -4104
	.uleb128 0x25
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x78d
	.4byte	0x1b66
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x3232
	.uleb128 0xf
	.4byte	0x48
	.2byte	0xfff
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x7a4
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST182
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x7b6
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST183
	.4byte	0x32ac
	.uleb128 0x3c
	.string	"ent"
	.byte	0x1
	.2byte	0x7b6
	.4byte	0x105d
	.4byte	.LLST184
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x7b8
	.4byte	0x41
	.4byte	.LLST185
	.uleb128 0x34
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x7b9
	.4byte	0x1817
	.4byte	.LLST186
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.2byte	0x7ba
	.4byte	0x1817
	.4byte	.LLST187
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.2byte	0x7bb
	.4byte	0x172c
	.4byte	.LLST188
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x843
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST189
	.4byte	0x3399
	.uleb128 0x40
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x843
	.4byte	0x1817
	.4byte	.LLST190
	.uleb128 0x3f
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x844
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x3f
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x844
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x3f
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x844
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x34
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x845
	.4byte	0x17c9
	.4byte	.LLST191
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x846
	.4byte	0x1896
	.4byte	.LLST192
	.uleb128 0x34
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x846
	.4byte	0x7a
	.4byte	.LLST193
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x847
	.4byte	0x41
	.4byte	.LLST194
	.uleb128 0x34
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x848
	.4byte	0x1f80
	.4byte	.LLST195
	.uleb128 0x34
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x849
	.4byte	0xaa
	.4byte	.LLST196
	.uleb128 0x3f
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x84a
	.4byte	0xd45
	.byte	0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x228
	.uleb128 0x3f
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x866
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x34
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x867
	.4byte	0x7a
	.4byte	.LLST197
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x883
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST198
	.4byte	0x3428
	.uleb128 0x40
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x883
	.4byte	0x2770
	.4byte	.LLST199
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x884
	.4byte	0x41
	.4byte	.LLST200
	.uleb128 0x34
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x885
	.4byte	0x1f80
	.4byte	.LLST201
	.uleb128 0x34
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x886
	.4byte	0xaa
	.4byte	.LLST202
	.uleb128 0x3f
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x887
	.4byte	0xd45
	.byte	0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x250
	.uleb128 0x3f
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x890
	.4byte	0x3a8
	.byte	0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x34
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x891
	.4byte	0x7a
	.4byte	.LLST203
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x8a9
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST204
	.4byte	0x3499
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.2byte	0x8a9
	.4byte	0x66
	.4byte	.LLST205
	.uleb128 0x3c
	.string	"d"
	.byte	0x1
	.2byte	0x8a9
	.4byte	0x1896
	.4byte	.LLST206
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x8ab
	.4byte	0x41
	.4byte	.LLST207
	.uleb128 0x3f
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x8ac
	.4byte	0x367
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"v"
	.byte	0x1
	.2byte	0x8ad
	.4byte	0x66
	.4byte	.LLST208
	.uleb128 0x33
	.string	"w"
	.byte	0x1
	.2byte	0x8ad
	.4byte	0x66
	.4byte	.LLST209
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x8be
	.byte	0x1
	.4byte	0x66
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST210
	.4byte	0x3518
	.uleb128 0x40
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x8be
	.4byte	0x66
	.4byte	.LLST211
	.uleb128 0x40
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x8be
	.4byte	0x3518
	.4byte	.LLST212
	.uleb128 0x40
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x8be
	.4byte	0x2770
	.4byte	.LLST213
	.uleb128 0x34
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x8c0
	.4byte	0xaa
	.4byte	.LLST214
	.uleb128 0x3f
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x8c1
	.4byte	0x351e
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x34
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x8c2
	.4byte	0xaa
	.4byte	.LLST215
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaa
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x352e
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x904
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST216
	.4byte	0x3578
	.uleb128 0x40
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x904
	.4byte	0x66
	.4byte	.LLST217
	.uleb128 0x34
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x906
	.4byte	0xaa
	.4byte	.LLST218
	.uleb128 0x3f
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x907
	.4byte	0x3a8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x923
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x359e
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x50
	.4byte	.LASF513
	.byte	0x3
	.byte	0x94
	.4byte	0x358d
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"vid"
	.byte	0x5
	.byte	0x38
	.4byte	0x35c
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF514
	.byte	0xd
	.2byte	0x23f
	.4byte	0xeba
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF515
	.byte	0xd
	.2byte	0x233
	.4byte	0x3a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"vup"
	.byte	0xd
	.2byte	0x22f
	.4byte	0x3a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.string	"cl"
	.byte	0xe
	.2byte	0x11b
	.4byte	0x1385
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xd45
	.4byte	0x35ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x52
	.4byte	.LASF516
	.byte	0xe
	.2byte	0x120
	.4byte	0x35ef
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1063
	.4byte	0x361d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x52
	.4byte	.LASF517
	.byte	0xe
	.2byte	0x122
	.4byte	0x360d
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF518
	.byte	0xe
	.2byte	0x13b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x105d
	.4byte	0x3649
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x52
	.4byte	.LASF519
	.byte	0xe
	.2byte	0x13c
	.4byte	0x3639
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF520
	.byte	0xe
	.2byte	0x13e
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF521
	.byte	0xe
	.2byte	0x13f
	.4byte	0x3639
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.4byte	.LASF522
	.byte	0xd
	.byte	0xbc
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.4byte	.LASF523
	.byte	0xd
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.4byte	.LASF524
	.byte	0xd
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF525
	.byte	0xd
	.2byte	0x217
	.4byte	0x3a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF526
	.byte	0xd
	.2byte	0x219
	.4byte	0x105d
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF527
	.byte	0xd
	.2byte	0x21b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF528
	.byte	0xd
	.2byte	0x21d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF529
	.byte	0xd
	.2byte	0x21f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF530
	.byte	0xd
	.2byte	0x241
	.4byte	0x1b66
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x36fe
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x52
	.4byte	.LASF531
	.byte	0xd
	.2byte	0x245
	.4byte	0x36ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF532
	.byte	0xd
	.2byte	0x24b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF533
	.byte	0xd
	.2byte	0x26b
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF534
	.byte	0xd
	.2byte	0x27f
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF535
	.byte	0xd
	.2byte	0x2b1
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF536
	.byte	0xd
	.2byte	0x2b3
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF537
	.byte	0xd
	.2byte	0x2b5
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF538
	.byte	0xd
	.2byte	0x2c3
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF539
	.byte	0xd
	.2byte	0x2c5
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF540
	.byte	0xd
	.2byte	0x2cb
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF541
	.byte	0xd
	.2byte	0x2dc
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF542
	.byte	0xd
	.2byte	0x300
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF543
	.byte	0xd
	.2byte	0x308
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF544
	.byte	0xd
	.2byte	0x30a
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF545
	.byte	0xd
	.2byte	0x314
	.4byte	0xaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF546
	.byte	0xd
	.2byte	0x318
	.4byte	0x17c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF547
	.byte	0xd
	.2byte	0x31a
	.4byte	0x14c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF548
	.byte	0xd
	.2byte	0x31c
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x73
	.4byte	0x380a
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x52
	.4byte	.LASF549
	.byte	0xd
	.2byte	0x324
	.4byte	0x37fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF550
	.byte	0xd
	.2byte	0x326
	.4byte	0x37fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF551
	.byte	0xd
	.2byte	0x328
	.4byte	0x13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF552
	.byte	0xd
	.2byte	0x96d
	.4byte	0xaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.4byte	.LASF553
	.byte	0x1
	.byte	0x1b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numShadowLights
	.uleb128 0x54
	.4byte	.LASF554
	.byte	0x1
	.byte	0x1c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numStaticShadowLights
	.uleb128 0x54
	.4byte	.LASF555
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numUsedShadowLights
	.uleb128 0xb
	.4byte	0x1e34
	.4byte	0x3888
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF556
	.byte	0x1
	.byte	0x1f
	.4byte	0x3878
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	shadowlights
	.uleb128 0xb
	.4byte	0x1f80
	.4byte	0x38aa
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF557
	.byte	0x1
	.byte	0x20
	.4byte	0x389a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	usedshadowlights
	.uleb128 0x54
	.4byte	.LASF558
	.byte	0x1
	.byte	0x21
	.4byte	0x1f80
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	currentshadowlight
	.uleb128 0x54
	.4byte	.LASF301
	.byte	0x1
	.byte	0x2b
	.4byte	0x1817
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	shadowchain
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x38f6
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x52
	.4byte	.LASF559
	.byte	0xd
	.2byte	0xa85
	.4byte	0x38e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF560
	.byte	0xd
	.2byte	0xa89
	.4byte	0x3912
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1453
	.uleb128 0xb
	.4byte	0x1c5d
	.4byte	0x392b
	.uleb128 0x55
	.4byte	0x48
	.4byte	0x1007f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF561
	.byte	0x1
	.byte	0x26
	.4byte	0x3918
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightCmdsBuff
	.uleb128 0x52
	.4byte	.LASF562
	.byte	0xd
	.2byte	0xaa3
	.4byte	0x5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF563
	.byte	0xd
	.2byte	0xac1
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF564
	.byte	0xd
	.2byte	0xac3
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF565
	.byte	0xd
	.2byte	0xac5
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.4byte	.LASF566
	.byte	0xd
	.2byte	0xc2c
	.4byte	0x1817
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x52
	.4byte	.LASF567
	.byte	0xd
	.2byte	0xc34
	.4byte	0x502
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF568
	.byte	0xd
	.2byte	0xc36
	.4byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF569
	.byte	0x2
	.2byte	0x548
	.4byte	0x39b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x57
	.4byte	0x39b7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2222
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x39d0
	.uleb128 0x55
	.4byte	0x48
	.4byte	0x2007f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF570
	.byte	0x1
	.byte	0x24
	.4byte	0x39bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	volumeCmdsBuff
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x39f5
	.uleb128 0x55
	.4byte	0x48
	.4byte	0x155d4
	.byte	0
	.uleb128 0x54
	.4byte	.LASF571
	.byte	0x1
	.byte	0x25
	.4byte	0x39e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	volumeVertsBuff
	.uleb128 0x54
	.4byte	.LASF572
	.byte	0x1
	.byte	0x27
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numVolumeCmds
	.uleb128 0x54
	.4byte	.LASF573
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numLightCmds
	.uleb128 0x54
	.4byte	.LASF382
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numVolumeVerts
	.uleb128 0x54
	.4byte	.LASF574
	.byte	0x1
	.byte	0x2c
	.4byte	0xbc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightvis
	.uleb128 0x54
	.4byte	.LASF575
	.byte	0x1
	.byte	0x2d
	.4byte	0x1e1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	worldvis
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x3a71
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF576
	.byte	0x1
	.byte	0x84
	.4byte	0x3a61
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cubemap_tex_obj
	.uleb128 0x56
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x114
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cut_ent
	.uleb128 0xb
	.4byte	0x1b66
	.4byte	0x3aa6
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x56
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x177
	.4byte	0x3a96
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	leafList
	.uleb128 0x56
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x178
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numLeafList
	.uleb128 0x56
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x32d
	.4byte	0x5d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	VolumeVertsPointer
	.uleb128 0x56
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x6b3
	.4byte	0x3af2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	currentlightroot
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2198
	.uleb128 0x56
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x6b4
	.4byte	0x3a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	testvect
	.uleb128 0x56
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x7ad
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	done
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 48
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB45-.Ltext0
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
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 -272
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 160
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x6c
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 224
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0x412e8480
	.4byte	0
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0xc12e8480
	.4byte	0
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0x412e8480
	.4byte	0
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0xc12e8480
	.4byte	0
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB50-.Ltext0
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
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 48
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-1-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL111-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-1-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0xd
	.byte	0x8f
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8f
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL136-1-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 0
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0xa
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x14
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1c
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x16
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1c
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	currentshadowlight
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL156-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL156-1-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL198-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0xd
	.byte	0x83
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x83
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 36
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL198-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL198-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 264
	.4byte	.LVL156-1-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL198-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL198-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 12
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	shadowchain
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL286-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	numVolumeCmds
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x86
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	numLightCmds
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL293-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	numVolumeVerts
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x3
	.byte	0x87
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-1-.Ltext0
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL222-1-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0xc
	.byte	0x78
	.sleb128 0
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x22
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL293-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 48
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x9
	.byte	0x78
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x28
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x28
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL303-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL334-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x5
	.byte	0x8b
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-1-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x5
	.byte	0x8b
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL328-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-1-.Ltext0
	.2byte	0x5
	.byte	0x8b
	.sleb128 0
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL310-1-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-1-.Ltext0
	.2byte	0xb
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x24
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL328-1-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL328-1-.Ltext0
	.2byte	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL328-1-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0xc
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 0
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 0
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL363-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL364-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL365-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	.LVL366-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL363-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL373-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 48
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 44
	.4byte	.LVL373-1-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL379-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 392
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 392
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 392
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL392-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL392-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 -8
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL398-1-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 36
	.4byte	.LVL409-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL398-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL414-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4112
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4112
	.4byte	.LCFI72-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI73-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI74-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LFB67-.Ltext0
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
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL439-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	shadowchain
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 32
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0xb
	.byte	0x8e
	.sleb128 2688
	.byte	0x6
	.byte	0x23
	.uleb128 0x190
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 696
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 696
	.4byte	.LCFI83-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 696
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL458-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL453-1-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL453-1-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 648
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 648
	.4byte	.LCFI88-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL466-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI90-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL471-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL471-.Ltext0
	.4byte	.LVL472-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL478-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x9f
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL477-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL478-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 320
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI93-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 320
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL483-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL485-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL489-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL500-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL491-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL493-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL493-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL494-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL501-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL497-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI97-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL503-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL511-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL514-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL507-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL510-.Ltext0
	.4byte	.LVL512-1-.Ltext0
	.2byte	0x1
	.byte	0x50
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
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
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
	.4byte	0
	.4byte	0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF530:
	.string	"r_viewleaf"
.LASF577:
	.string	"cut_ent"
.LASF63:
	.string	"pflags"
.LASF443:
	.string	"lightleaf"
.LASF363:
	.string	"screenrect_s"
.LASF365:
	.string	"screenrect_t"
.LASF188:
	.string	"aliasvrectbottom"
.LASF551:
	.string	"r_Iviewport"
.LASF310:
	.string	"vecs"
.LASF211:
	.string	"upmove"
.LASF421:
	.string	"light"
.LASF462:
	.string	"vertPos"
.LASF519:
	.string	"cl_visedicts"
.LASF284:
	.string	"texture_s"
.LASF307:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF91:
	.string	"entity_s"
.LASF182:
	.string	"entity_t"
.LASF398:
	.string	"lastlight"
.LASF137:
	.string	"numplanes"
.LASF562:
	.string	"AGP_Buffer"
.LASF572:
	.string	"numVolumeCmds"
.LASF494:
	.string	"solid"
.LASF107:
	.string	"frame_start_time"
.LASF446:
	.string	"R_MarkBrushModelSurfaces"
.LASF583:
	.string	"done"
.LASF102:
	.string	"lightTimestamp"
.LASF348:
	.string	"binormals"
.LASF549:
	.string	"r_Dproject_matrix"
.LASF408:
	.string	"colorscales"
.LASF292:
	.string	"alternate_anims"
.LASF272:
	.string	"lightnormalindex"
.LASF500:
	.string	"orig"
.LASF200:
	.string	"horizontalFieldOfView"
.LASF306:
	.string	"samples"
.LASF237:
	.string	"idealpitch"
.LASF173:
	.string	"lastshadowonly"
.LASF323:
	.string	"lastclipnode"
.LASF79:
	.string	"entnext"
.LASF106:
	.string	"topnode"
.LASF563:
	.string	"svBsp_NumCutPolys"
.LASF275:
	.string	"mvertex_t"
.LASF71:
	.string	"next"
.LASF361:
	.string	"plane_t"
.LASF504:
	.string	"length"
.LASF176:
	.string	"vertices"
.LASF120:
	.string	"angles1"
.LASF121:
	.string	"angles2"
.LASF185:
	.string	"vrectright"
.LASF257:
	.string	"maxclients"
.LASF387:
	.string	"cubescale"
.LASF29:
	.string	"height"
.LASF224:
	.string	"owner"
.LASF221:
	.string	"decay"
.LASF303:
	.string	"styles"
.LASF432:
	.string	"rect"
.LASF225:
	.string	"dlight_t"
.LASF346:
	.string	"commands"
.LASF521:
	.string	"cl_lightvisedicts"
.LASF113:
	.string	"brushlightinstant"
.LASF464:
	.string	"startNearVerts"
.LASF471:
	.string	"nearToVert"
.LASF585:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_shadow.c"
.LASF242:
	.string	"viewheight"
.LASF374:
	.string	"visible"
.LASF123:
	.string	"model_s"
.LASF360:
	.string	"model_t"
.LASF276:
	.string	"texture"
.LASF448:
	.string	"clmodel"
.LASF480:
	.string	"fdist"
.LASF155:
	.string	"hulls"
.LASF85:
	.string	"compressed_vis"
.LASF487:
	.string	"removed"
.LASF438:
	.string	"HasSharedLeafs"
.LASF384:
	.string	"numVisSurf"
.LASF148:
	.string	"numsurfaces"
.LASF449:
	.string	"rotated"
.LASF258:
	.string	"gametype"
.LASF277:
	.string	"lightmap"
.LASF574:
	.string	"lightvis"
.LASF52:
	.string	"vec_t"
.LASF134:
	.string	"nummodelsurfaces"
.LASF542:
	.string	"gl_wireframe"
.LASF180:
	.string	"triplanes"
.LASF525:
	.string	"modelorg"
.LASF255:
	.string	"levelname"
.LASF199:
	.string	"fvrectbottom"
.LASF312:
	.string	"mtexinfo_t"
.LASF469:
	.string	"shadow"
.LASF184:
	.string	"aliasvrect"
.LASF13:
	.string	"byte"
.LASF371:
	.string	"shadowlight_s"
.LASF390:
	.string	"shadowlight_t"
.LASF510:
	.string	"keyname"
.LASF546:
	.string	"mirror_plane"
.LASF314:
	.string	"chain"
.LASF89:
	.string	"index"
.LASF554:
	.string	"numStaticShadowLights"
.LASF92:
	.string	"forcelink"
.LASF472:
	.string	"colorscale"
.LASF54:
	.string	"angles"
.LASF337:
	.string	"boundingradius"
.LASF90:
	.string	"ambient_sound_level"
.LASF149:
	.string	"surfaces"
.LASF127:
	.string	"synctype"
.LASF112:
	.string	"aliasframeinstant"
.LASF241:
	.string	"laststop"
.LASF141:
	.string	"vertexes"
.LASF212:
	.string	"usercmd_t"
.LASF116:
	.string	"translate_start_time"
.LASF507:
	.string	"ParseEnt"
.LASF395:
	.string	"lastvorg"
.LASF193:
	.string	"fvrecty_adj"
.LASF539:
	.string	"sh_nosvbsp"
.LASF47:
	.string	"viddef_t"
.LASF560:
	.string	"globalVertexTable"
.LASF62:
	.string	"light_lev"
.LASF17:
	.string	"maxs"
.LASF36:
	.string	"rowbytes"
.LASF125:
	.string	"type"
.LASF434:
	.string	"maxx"
.LASF354:
	.string	"aliashdr_t"
.LASF145:
	.string	"nodes"
.LASF286:
	.string	"gl_lumitex"
.LASF463:
	.string	"startVerts"
.LASF553:
	.string	"numShadowLights"
.LASF78:
	.string	"entity"
.LASF192:
	.string	"fvrectx_adj"
.LASF575:
	.string	"worldvis"
.LASF568:
	.string	"skybox_cloudspeed"
.LASF236:
	.string	"punchangle"
.LASF576:
	.string	"cubemap_tex_obj"
.LASF514:
	.string	"r_refdef"
.LASF294:
	.string	"msurface_s"
.LASF319:
	.string	"msurface_t"
.LASF100:
	.string	"syncbase"
.LASF27:
	.string	"pixel_t"
.LASF450:
	.string	"temp"
.LASF187:
	.string	"aliasvrectright"
.LASF208:
	.string	"refdef_t"
.LASF256:
	.string	"viewentity"
.LASF196:
	.string	"fvrectright_adj"
.LASF388:
	.string	"haloalpha"
.LASF35:
	.string	"fullbright"
.LASF545:
	.string	"mirror"
.LASF490:
	.string	"numsurfvects"
.LASF475:
	.string	"R_ConstructShadowVolume"
.LASF163:
	.string	"firstsurface"
.LASF376:
	.string	"castShadow"
.LASF566:
	.string	"causticschain"
.LASF493:
	.string	"R_MarkLightLeaves"
.LASF162:
	.string	"plane"
.LASF167:
	.string	"updateframe"
.LASF109:
	.string	"blend"
.LASF220:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF197:
	.string	"fvrectbottom_adj"
.LASF439:
	.string	"R_MarkShadowCasting"
.LASF171:
	.string	"lastblend"
.LASF385:
	.string	"scizz"
.LASF405:
	.string	"aliaslightinstant_t"
.LASF470:
	.string	"nearPt"
.LASF10:
	.string	"float"
.LASF57:
	.string	"skin"
.LASF403:
	.string	"tshalfangles"
.LASF558:
	.string	"currentshadowlight"
.LASF22:
	.string	"numfaces"
.LASF495:
	.string	"AllocShadowLight"
.LASF298:
	.string	"light_s"
.LASF299:
	.string	"light_t"
.LASF359:
	.string	"modtype_t"
.LASF350:
	.string	"indecies"
.LASF230:
	.string	"faceanimtime"
.LASF110:
	.string	"pose1"
.LASF111:
	.string	"pose2"
.LASF511:
	.string	"foundworld"
.LASF508:
	.string	"isLight"
.LASF423:
	.string	"R_ShadowFromDlight"
.LASF442:
	.string	"R_ContributeFrame"
.LASF381:
	.string	"volumeVerts"
.LASF169:
	.string	"lastpose1"
.LASF170:
	.string	"lastpose2"
.LASF228:
	.string	"items"
.LASF509:
	.string	"init"
.LASF378:
	.string	"entvis"
.LASF473:
	.string	"lightDir"
.LASF325:
	.string	"clip_maxs"
.LASF573:
	.string	"numLightCmds"
.LASF304:
	.string	"cached_light"
.LASF313:
	.string	"glpoly_s"
.LASF318:
	.string	"glpoly_t"
.LASF505:
	.string	"LightFromFile"
.LASF20:
	.string	"visleafs"
.LASF534:
	.string	"r_novis"
.LASF506:
	.string	"ParseVector"
.LASF251:
	.string	"oldtime"
.LASF436:
	.string	"maxy"
.LASF130:
	.string	"clipbox"
.LASF431:
	.string	"R_ProjectSphere"
.LASF364:
	.string	"coords"
.LASF81:
	.string	"contents"
.LASF260:
	.string	"free_efrags"
.LASF581:
	.string	"currentlightroot"
.LASF533:
	.string	"r_drawentities"
.LASF467:
	.string	"lastshadow"
.LASF458:
	.string	"r_pedge"
.LASF99:
	.string	"efrag"
.LASF352:
	.string	"texels"
.LASF174:
	.string	"lastpaliashdr"
.LASF418:
	.string	"R_CubeMapLookup"
.LASF343:
	.string	"size"
.LASF531:
	.string	"d_lightstylevalue"
.LASF452:
	.string	"right"
.LASF205:
	.string	"fov_x"
.LASF206:
	.string	"fov_y"
.LASF55:
	.string	"modelindex"
.LASF117:
	.string	"origin1"
.LASF278:
	.string	"mmvertex_t"
.LASF351:
	.string	"gl_lumatex"
.LASF441:
	.string	"SphereInFrustum"
.LASF164:
	.string	"aliasframeinstant_s"
.LASF290:
	.string	"anim_max"
.LASF557:
	.string	"usedshadowlights"
.LASF259:
	.string	"worldmodel"
.LASF393:
	.string	"lastlorg"
.LASF37:
	.string	"aspect"
.LASF474:
	.string	"tsLightDir"
.LASF571:
	.string	"volumeVertsBuff"
.LASF580:
	.string	"VolumeVertsPointer"
.LASF412:
	.string	"svnode_s"
.LASF414:
	.string	"svnode_t"
.LASF437:
	.string	"InShadowEntity"
.LASF332:
	.string	"maliasframedesc_t"
.LASF552:
	.string	"gl_var"
.LASF143:
	.string	"edges"
.LASF168:
	.string	"paliashdr"
.LASF93:
	.string	"update_type"
.LASF527:
	.string	"r_visframecount"
.LASF336:
	.string	"scale_origin"
.LASF103:
	.string	"dlightframe"
.LASF189:
	.string	"vrectrightedge"
.LASF520:
	.string	"cl_numlightvisedicts"
.LASF293:
	.string	"offsets"
.LASF21:
	.string	"firstface"
.LASF118:
	.string	"origin2"
.LASF245:
	.string	"onground"
.LASF556:
	.string	"shadowlights"
.LASF404:
	.string	"triangleVis"
.LASF550:
	.string	"r_Dworld_matrix"
.LASF536:
	.string	"sh_radiusscale"
.LASF172:
	.string	"lastent"
.LASF108:
	.string	"frame_interval"
.LASF239:
	.string	"nodrift"
.LASF233:
	.string	"mviewangles"
.LASF39:
	.string	"recalc_refdef"
.LASF537:
	.string	"sh_visiblevolumes"
.LASF154:
	.string	"marksurfaces"
.LASF271:
	.string	"synctype_t"
.LASF124:
	.string	"needload"
.LASF375:
	.string	"isStatic"
.LASF353:
	.string	"frames"
.LASF302:
	.string	"lightmaptexturenum"
.LASF379:
	.string	"visSurf"
.LASF70:
	.string	"value"
.LASF287:
	.string	"texturechain"
.LASF105:
	.string	"trivial_accept"
.LASF165:
	.string	"_next"
.LASF518:
	.string	"cl_numvisedicts"
.LASF428:
	.string	"leafindex"
.LASF459:
	.string	"PrecalcVolumesForLight"
.LASF523:
	.string	"glwidth"
.LASF582:
	.string	"testvect"
.LASF498:
	.string	"LightFromSurface"
.LASF478:
	.string	"R_DrawShadowVolume"
.LASF301:
	.string	"shadowchain"
.LASF322:
	.string	"firstclipnode"
.LASF535:
	.string	"sh_lightmapbright"
.LASF538:
	.string	"sh_norevis"
.LASF296:
	.string	"texturemins"
.LASF101:
	.string	"skinnum"
.LASF513:
	.string	"com_token"
.LASF517:
	.string	"cl_dlights"
.LASF198:
	.string	"fvrectright"
.LASF540:
	.string	"sh_noscissor"
.LASF578:
	.string	"leafList"
.LASF289:
	.string	"anim_min"
.LASF139:
	.string	"leafs"
.LASF253:
	.string	"model_precache"
.LASF451:
	.string	"forward"
.LASF262:
	.string	"num_statics"
.LASF19:
	.string	"headnode"
.LASF131:
	.string	"clipmins"
.LASF485:
	.string	"CutLeafs"
.LASF486:
	.string	"found"
.LASF244:
	.string	"paused"
.LASF559:
	.string	"frustumPlanes"
.LASF347:
	.string	"triangles"
.LASF512:
	.string	"LoadLightsFromFile"
.LASF14:
	.string	"qboolean"
.LASF207:
	.string	"ambientlight"
.LASF66:
	.string	"name"
.LASF331:
	.string	"bboxmax"
.LASF476:
	.string	"DrawVolumeFromCmds"
.LASF569:
	.string	"wgPipe"
.LASF80:
	.string	"mleaf_s"
.LASF321:
	.string	"mleaf_t"
.LASF484:
	.string	"hitWorld"
.LASF97:
	.string	"msg_angles"
.LASF380:
	.string	"volumeCmds"
.LASF587:
	.string	"GX_Position3f32"
.LASF226:
	.string	"movemessages"
.LASF243:
	.string	"crouch"
.LASF266:
	.string	"scores"
.LASF152:
	.string	"numclipnodes"
.LASF407:
	.string	"atencoords"
.LASF201:
	.string	"xOrigin"
.LASF491:
	.string	"R_RecursiveShadowAdd"
.LASF397:
	.string	"lasthdr"
.LASF48:
	.string	"vrect_s"
.LASF31:
	.string	"vrect_t"
.LASF543:
	.string	"fog_start"
.LASF3:
	.string	"short unsigned int"
.LASF254:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF210:
	.string	"sidemove"
.LASF135:
	.string	"numsubmodels"
.LASF402:
	.string	"tslights"
.LASF279:
	.string	"mplane_s"
.LASF283:
	.string	"mplane_t"
.LASF461:
	.string	"lightPos"
.LASF427:
	.string	"current"
.LASF503:
	.string	"fakeEnt"
.LASF454:
	.string	"count"
.LASF281:
	.string	"dist"
.LASF555:
	.string	"numUsedShadowLights"
.LASF179:
	.string	"binomials"
.LASF40:
	.string	"conbuffer"
.LASF150:
	.string	"numsurfedges"
.LASF53:
	.string	"vec3_t"
.LASF349:
	.string	"texcoords"
.LASF219:
	.string	"percent"
.LASF156:
	.string	"numtextures"
.LASF77:
	.string	"leafnext"
.LASF87:
	.string	"firstmarksurface"
.LASF24:
	.string	"planenum"
.LASF482:
	.string	"ofsx"
.LASF483:
	.string	"ofsy"
.LASF248:
	.string	"completed_time"
.LASF305:
	.string	"cached_dlight"
.LASF227:
	.string	"stats"
.LASF355:
	.string	"mod_brush"
.LASF417:
	.string	"WGPipe"
.LASF333:
	.string	"ident"
.LASF338:
	.string	"eyeposition"
.LASF424:
	.string	"R_ShadowFromEntity"
.LASF295:
	.string	"firstedge"
.LASF460:
	.string	"volumePos"
.LASF160:
	.string	"entities"
.LASF570:
	.string	"volumeCmdsBuff"
.LASF46:
	.string	"direct"
.LASF240:
	.string	"driftmove"
.LASF370:
	.string	"lightcmd_t"
.LASF415:
	.string	"lightcmd_u"
.LASF95:
	.string	"msgtime"
.LASF377:
	.string	"halo"
.LASF394:
	.string	"lasteangles"
.LASF366:
	.string	"asInt"
.LASF430:
	.string	"MarkShadowEntities"
.LASF250:
	.string	"time"
.LASF444:
	.string	"R_InitShadowsForFrame"
.LASF144:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF561:
	.string	"lightCmdsBuff"
.LASF447:
	.string	"psurf"
.LASF445:
	.string	"R_FillShadowChain"
.LASF204:
	.string	"viewangles"
.LASF157:
	.string	"textures"
.LASF64:
	.string	"entity_state_t"
.LASF252:
	.string	"last_received_message"
.LASF330:
	.string	"bboxmin"
.LASF489:
	.string	"surfvects"
.LASF565:
	.string	"svBsp_NumAddedPolys"
.LASF209:
	.string	"forwardmove"
.LASF399:
	.string	"lightpos"
.LASF88:
	.string	"nummarksurfaces"
.LASF234:
	.string	"mvelocity"
.LASF329:
	.string	"interval"
.LASF223:
	.string	"filtercube"
.LASF479:
	.string	"R_RenderGlow"
.LASF83:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF235:
	.string	"velocity"
.LASF261:
	.string	"num_entities"
.LASF541:
	.string	"sh_noefrags"
.LASF126:
	.string	"numframes"
.LASF453:
	.string	"R_DrawBrushModelVolumes"
.LASF516:
	.string	"cl_static_entities"
.LASF274:
	.string	"position"
.LASF183:
	.string	"vrect"
.LASF7:
	.string	"long unsigned int"
.LASF497:
	.string	"R_CalcSvBsp"
.LASF264:
	.string	"cdtrack"
.LASF389:
	.string	"oldlightorigin"
.LASF588:
	.string	"GX_End"
.LASF178:
	.string	"tangents"
.LASF65:
	.string	"cvar_s"
.LASF72:
	.string	"cvar_t"
.LASF416:
	.string	"_wgpipe"
.LASF589:
	.string	"GX_LoadGLModelView"
.LASF308:
	.string	"cachededgeoffset"
.LASF456:
	.string	"getVertexIndexFromSurf"
.LASF8:
	.string	"char"
.LASF419:
	.string	"R_MarkShadowSurf"
.LASF140:
	.string	"numvertexes"
.LASF356:
	.string	"mod_sprite"
.LASF194:
	.string	"vrect_x_adj_shift20"
.LASF372:
	.string	"baseColor"
.LASF328:
	.string	"numposes"
.LASF297:
	.string	"extents"
.LASF590:
	.string	"R_AutomaticLightPos"
.LASF175:
	.string	"shadowonly"
.LASF567:
	.string	"skybox_name"
.LASF59:
	.string	"color"
.LASF317:
	.string	"firstvertex"
.LASF104:
	.string	"dlightbits"
.LASF368:
	.string	"asVec"
.LASF73:
	.string	"sfx_s"
.LASF465:
	.string	"numPos"
.LASF515:
	.string	"vright"
.LASF342:
	.string	"numtris"
.LASF440:
	.string	"node"
.LASF177:
	.string	"normals"
.LASF340:
	.string	"skinwidth"
.LASF49:
	.string	"cache_user_s"
.LASF51:
	.string	"cache_user_t"
.LASF529:
	.string	"r_lightTimestamp"
.LASF166:
	.string	"lockframe"
.LASF32:
	.string	"buffer"
.LASF68:
	.string	"archive"
.LASF246:
	.string	"inwater"
.LASF158:
	.string	"visdata"
.LASF76:
	.string	"leaf"
.LASF344:
	.string	"poseverts"
.LASF44:
	.string	"maxwarpwidth"
.LASF288:
	.string	"anim_total"
.LASF502:
	.string	"tooClose"
.LASF413:
	.string	"splitplane"
.LASF265:
	.string	"looptrack"
.LASF373:
	.string	"brightness"
.LASF341:
	.string	"skinheight"
.LASF267:
	.string	"server_proto_version"
.LASF362:
	.string	"GLint"
.LASF216:
	.string	"translations"
.LASF202:
	.string	"yOrigin"
.LASF247:
	.string	"intermission"
.LASF195:
	.string	"vrectright_adj_shift20"
.LASF86:
	.string	"efrags"
.LASF75:
	.string	"efrag_s"
.LASF122:
	.string	"efrag_t"
.LASF455:
	.string	"numEdges"
.LASF30:
	.string	"pnext"
.LASF25:
	.string	"children"
.LASF61:
	.string	"style"
.LASF9:
	.string	"double"
.LASF269:
	.string	"ST_SYNC"
.LASF386:
	.string	"rspeed"
.LASF146:
	.string	"numtexinfo"
.LASF426:
	.string	"R_MarkEntities"
.LASF38:
	.string	"numpages"
.LASF218:
	.string	"destcolor"
.LASF383:
	.string	"lightCmds"
.LASF142:
	.string	"numedges"
.LASF181:
	.string	"lightinstant"
.LASF238:
	.string	"pitchvel"
.LASF406:
	.string	"brushlightinstant_s"
.LASF411:
	.string	"brushlightinstant_t"
.LASF285:
	.string	"gl_texturenum"
.LASF544:
	.string	"fog_end"
.LASF335:
	.string	"scale"
.LASF309:
	.string	"medge_t"
.LASF159:
	.string	"lightdata"
.LASF186:
	.string	"vrectbottom"
.LASF45:
	.string	"maxwarpheight"
.LASF33:
	.string	"colormap"
.LASF50:
	.string	"data"
.LASF367:
	.string	"asFloat"
.LASF34:
	.string	"colormap16"
.LASF457:
	.string	"lindex"
.LASF263:
	.string	"viewent"
.LASF82:
	.string	"visframe"
.LASF291:
	.string	"anim_next"
.LASF42:
	.string	"conwidth"
.LASF215:
	.string	"colors"
.LASF316:
	.string	"neighbours"
.LASF420:
	.string	"surf"
.LASF190:
	.string	"fvrectx"
.LASF191:
	.string	"fvrecty"
.LASF422:
	.string	"poly"
.LASF138:
	.string	"planes"
.LASF28:
	.string	"width"
.LASF16:
	.string	"mins"
.LASF280:
	.string	"normal"
.LASF526:
	.string	"currententity"
.LASF433:
	.string	"minx"
.LASF435:
	.string	"miny"
.LASF96:
	.string	"msg_origins"
.LASF532:
	.string	"currenttexture"
.LASF203:
	.string	"vieworg"
.LASF229:
	.string	"item_gettime"
.LASF586:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF327:
	.string	"firstpose"
.LASF222:
	.string	"minlight"
.LASF26:
	.string	"dclipnode_t"
.LASF282:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF84:
	.string	"parent"
.LASF401:
	.string	"extvertices"
.LASF231:
	.string	"cshifts"
.LASF311:
	.string	"mipadjust"
.LASF548:
	.string	"mirror_clipside"
.LASF496:
	.string	"ShadowVolumeBsp"
.LASF132:
	.string	"clipmaxs"
.LASF339:
	.string	"numskins"
.LASF58:
	.string	"effects"
.LASF382:
	.string	"numVolumeVerts"
.LASF213:
	.string	"entertime"
.LASF326:
	.string	"hull_t"
.LASF369:
	.string	"asVoid"
.LASF114:
	.string	"numleafs"
.LASF214:
	.string	"frags"
.LASF98:
	.string	"model"
.LASF60:
	.string	"alpha"
.LASF315:
	.string	"numverts"
.LASF324:
	.string	"clip_mins"
.LASF522:
	.string	"halo_texture_object"
.LASF481:
	.string	"realz"
.LASF41:
	.string	"conrowbytes"
.LASF5:
	.string	"long long int"
.LASF477:
	.string	"command"
.LASF466:
	.string	"stripLen"
.LASF499:
	.string	"center"
.LASF273:
	.string	"trivertx_t"
.LASF410:
	.string	"neighbourVis"
.LASF468:
	.string	"vert1"
.LASF67:
	.string	"string"
.LASF396:
	.string	"lastlradius"
.LASF249:
	.string	"mtime"
.LASF400:
	.string	"lastframeinstant"
.LASF357:
	.string	"mod_alias"
.LASF94:
	.string	"baseline"
.LASF524:
	.string	"glheight"
.LASF358:
	.string	"mod_alias3"
.LASF147:
	.string	"texinfo"
.LASF153:
	.string	"clipnodes"
.LASF43:
	.string	"conheight"
.LASF115:
	.string	"leafnums"
.LASF300:
	.string	"polys"
.LASF23:
	.string	"dmodel_t"
.LASF133:
	.string	"firstmodelsurface"
.LASF429:
	.string	"entmodel"
.LASF268:
	.string	"client_state_t"
.LASF136:
	.string	"submodels"
.LASF18:
	.string	"origin"
.LASF579:
	.string	"numLeafList"
.LASF564:
	.string	"svBsp_NumKeptPolys"
.LASF74:
	.string	"cache"
.LASF584:
	.string	"GNU C 4.6.3"
.LASF334:
	.string	"version"
.LASF501:
	.string	"invnum"
.LASF151:
	.string	"surfedges"
.LASF270:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF161:
	.string	"mnode_s"
.LASF320:
	.string	"mnode_t"
.LASF488:
	.string	"AddToShadowBsp"
.LASF232:
	.string	"prev_cshifts"
.LASF492:
	.string	"side"
.LASF2:
	.string	"short int"
.LASF69:
	.string	"server"
.LASF56:
	.string	"frame"
.LASF392:
	.string	"lasteorg"
.LASF409:
	.string	"polygonVis"
.LASF528:
	.string	"r_framecount"
.LASF425:
	.string	"R_MarkDlights"
.LASF345:
	.string	"posedata"
.LASF217:
	.string	"scoreboard_t"
.LASF128:
	.string	"flags"
.LASF119:
	.string	"rotate_start_time"
.LASF129:
	.string	"radius"
.LASF391:
	.string	"aliaslightinstant_s"
.LASF547:
	.string	"mirror_far_plane"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
