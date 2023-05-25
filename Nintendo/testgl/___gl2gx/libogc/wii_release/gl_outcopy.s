	.file	"gl_outcopy.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	put_UBYTE, @function
put_UBYTE:
.LFB79:
	.file 1 "c:/projects/wii/gl2gx/libogc/../source/gl_outcopy.c"
	.loc 1 145 0
.LVL0:
	.loc 1 147 0
	lis 9,.LC1@ha
	.loc 1 145 0
	stwu 1,-16(1)
.LCFI0:
	.loc 1 147 0
	lfs 0,.LC1@l(9)
	addi 10,1,8
	lwz 11,0(3)
	fmul 1,1,0
.LVL1:
	addi 9,11,1
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 148 0
	addi 1,1,16
	.loc 1 147 0
	stb 0,0(11)
	stw 9,0(3)
	.loc 1 148 0
	blr
.LFE79:
	.size	put_UBYTE, .-put_UBYTE
	.align 2
	.type	put_BYTE, @function
put_BYTE:
.LFB80:
	.loc 1 150 0
.LVL2:
	.loc 1 152 0
	lis 9,.LC3@ha
	.loc 1 150 0
	stwu 1,-16(1)
.LCFI1:
	.loc 1 152 0
	lfs 0,.LC3@l(9)
	addi 10,1,8
	lwz 11,0(3)
	fmul 1,1,0
.LVL3:
	addi 9,11,1
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 153 0
	addi 1,1,16
	.loc 1 152 0
	stb 0,0(11)
	stw 9,0(3)
	.loc 1 153 0
	blr
.LFE80:
	.size	put_BYTE, .-put_BYTE
	.align 2
	.type	put_USHORT, @function
put_USHORT:
.LFB81:
	.loc 1 155 0
.LVL4:
	.loc 1 157 0
	lis 9,.LC4@ha
	.loc 1 155 0
	stwu 1,-16(1)
.LCFI2:
	.loc 1 157 0
	lfs 0,.LC4@l(9)
	addi 10,1,8
	lwz 9,0(3)
	fmuls 1,1,0
.LVL5:
	addi 11,9,2
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 158 0
	addi 1,1,16
	.loc 1 157 0
	sth 0,0(9)
	stw 11,0(3)
	.loc 1 158 0
	blr
.LFE81:
	.size	put_USHORT, .-put_USHORT
	.align 2
	.type	put_SHORT, @function
put_SHORT:
.LFB82:
	.loc 1 160 0
.LVL6:
	.loc 1 162 0
	lis 9,.LC5@ha
	.loc 1 160 0
	stwu 1,-16(1)
.LCFI3:
	.loc 1 162 0
	lfs 0,.LC5@l(9)
	addi 10,1,8
	lwz 9,0(3)
	fmuls 1,1,0
.LVL7:
	addi 11,9,2
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 163 0
	addi 1,1,16
	.loc 1 162 0
	sth 0,0(9)
	stw 11,0(3)
	.loc 1 163 0
	blr
.LFE82:
	.size	put_SHORT, .-put_SHORT
	.align 2
	.type	put_UINT, @function
put_UINT:
.LFB83:
	.loc 1 165 0
.LVL8:
	.loc 1 167 0
	lis 9,.LC6@ha
	lwz 11,0(3)
	lfs 0,.LC6@l(9)
	lis 9,.LC8@ha
	fmuls 1,1,0
.LVL9:
	fmr 0,1
	lfs 1,.LC8@l(9)
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L10
	fctiwz 0,0
	stfiwx 0,0,11
	b .L11
.L10:
	fsub 0,0,1
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 9,0(11)
	addis 9,9,0x8000
	stw 9,0(11)
.L11:
	addi 0,11,4
	stw 0,0(3)
	.loc 1 168 0
	blr
.LFE83:
	.size	put_UINT, .-put_UINT
	.align 2
	.type	put_INT, @function
put_INT:
.LFB84:
	.loc 1 170 0
.LVL10:
	.loc 1 172 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	lwz 9,0(3)
	fmuls 1,1,0
.LVL11:
	addi 0,9,4
	fctiwz 0,1
	stfiwx 0,0,9
	stw 0,0(3)
	.loc 1 173 0
	blr
.LFE84:
	.size	put_INT, .-put_INT
	.align 2
	.type	put_FLOAT, @function
put_FLOAT:
.LFB85:
	.loc 1 175 0
.LVL12:
	.loc 1 177 0
	lwz 9,0(3)
	addi 0,9,4
	stfs 1,0(9)
	stw 0,0(3)
	.loc 1 178 0
	blr
.LFE85:
	.size	put_FLOAT, .-put_FLOAT
	.align 2
	.type	write_rgb, @function
write_rgb:
.LFB95:
	.loc 1 224 0
.LVL13:
	.loc 1 225 0
	addis 9,4,0xffff
	.loc 1 224 0
	mflr 0
.LCFI4:
	.loc 1 225 0
	addi 9,9,32544
	.loc 1 224 0
	stwu 1,-80(1)
.LCFI5:
	.loc 1 225 0
	cmplwi 7,9,1
	.loc 1 224 0
	stfd 29,56(1)
.LCFI6:
	stfd 30,64(1)
.LCFI7:
	stfd 31,72(1)
.LCFI8:
	stmw 29,44(1)
.LCFI9:
	stw 0,84(1)
.LCFI10:
	.loc 1 225 0
	bgt- 7,.L18
.LBB100:
	.loc 1 230 0
	lbz 0,0(6)
.LVL14:
	.loc 1 231 0
	lbz 9,2(6)
	.loc 1 232 0
	stb 0,2(6)
	.loc 1 231 0
	stb 9,0(6)
.L18:
.LBE100:
	.loc 1 237 0
	xoris 0,5,0xffff
.LVL15:
	cmpwi 7,0,-32716
	beq 7,.L30
	cmplwi 7,5,32820
	bgt- 7,.L40
	cmpwi 7,5,5124
	beq- 7,.L25
	cmplwi 7,5,5124
	bgt- 7,.L41
	cmpwi 7,5,5121
	beq- 7,.L22
	cmplwi 7,5,5121
	bgt- 7,.L42
	cmpwi 7,5,5120
	bne+ 7,.L20
	b .L21
.L42:
	cmpwi 7,5,5122
	beq- 7,.L23
	cmpwi 7,5,5123
	bne+ 7,.L20
	b .L24
.L41:
	cmpwi 7,5,5126
	beq- 7,.L27
	cmplwi 7,5,5126
	blt- 7,.L26
	xoris 0,5,0xffff
	cmpwi 7,0,-32718
	beq 7,.L28
	xoris 0,5,0xffff
	cmpwi 7,0,-32717
	bne 7,.L20
	b .L29
.L40:
	xoris 0,5,0xffff
	cmpwi 7,0,-31900
	beq 7,.L35
	cmplwi 7,5,33636
	bgt- 7,.L43
	xoris 0,5,0xffff
	cmpwi 7,0,-32714
	beq 7,.L32
	cmplwi 7,5,32822
	blt- 7,.L31
	xoris 0,5,0xffff
	cmpwi 7,0,-31902
	beq 7,.L33
	xoris 0,5,0xffff
	cmpwi 7,0,-31901
	bne 7,.L20
	b .L34
.L43:
	xoris 0,5,0xffff
	cmpwi 7,0,-31898
	beq 7,.L37
	cmplwi 7,5,33638
	blt- 7,.L36
	xoris 0,5,0xffff
	cmpwi 7,0,-31897
	beq 7,.L38
	xoris 0,5,0xffff
	cmpwi 7,0,-31896
	bne 7,.L20
	b .L39
.L27:
	lis 9,put_FLOAT@ha
	la 31,put_FLOAT@l(9)
.LVL16:
	b .L44
.LVL17:
.L20:
	li 31,0
.LVL18:
	b .L44
.LVL19:
.L28:
.LBB101:
.LBB102:
	.loc 1 36 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,29,27,29
	srwi 9,9,6
	or 0,0,9
	rlwinm 11,11,0,0,26
	b .L90
.L33:
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	.loc 1 42 0
	lbz 0,0(6)
	lbz 9,2(6)
	lbz 11,1(6)
	srwi 0,0,5
	rlwinm 9,9,0,0,25
	or 0,0,9
	rlwinm 11,11,2,22,24
.L90:
	or 0,0,11
	stb 0,0(3)
	b .L87
.L34:
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	.loc 1 48 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,3,21,26
	srwi 9,9,3
	or 0,0,9
	rlwinm 11,11,8,16,20
	b .L91
.L35:
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	.loc 1 54 0
	lbz 0,2(6)
	lbz 9,1(6)
	lbz 11,0(6)
	rlwinm 0,0,8,16,20
	rlwinm 9,9,3,21,26
	or 0,0,9
	srwi 11,11,3
.L91:
	or 0,0,11
.L92:
	sth 0,0(3)
	b .L87
.L29:
.LBE108:
.LBE107:
.LBB109:
.LBB110:
	.loc 1 60 0
	lbz 0,0(6)
	lbz 9,2(6)
	lbz 11,1(6)
	rlwinm 0,0,8,16,19
	rlwinm 9,9,0,24,27
	lbz 10,3(6)
	or 0,0,9
	rlwinm 11,11,4,20,23
	or 0,0,11
	srwi 10,10,4
	b .L94
.L36:
.LBE110:
.LBE109:
.LBB111:
.LBB112:
	.loc 1 66 0
	lbz 0,0(6)
	lbz 9,1(6)
	lbz 11,3(6)
	srwi 0,0,4
	rlwinm 9,9,0,24,27
	lbz 10,2(6)
	or 0,0,9
	rlwinm 11,11,8,16,19
	or 0,0,11
	rlwinm 10,10,4,20,23
.L94:
	or 0,0,10
	b .L92
.L30:
.LBE112:
.LBE111:
.LBB113:
.LBB114:
	.loc 1 72 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,3,21,25
	lbz 10,3(6)
	rlwinm 9,9,30,26,30
	or 0,0,9
	rlwinm 11,11,8,16,20
	or 0,0,11
	srwi 10,10,7
	b .L94
.L37:
.LBE114:
.LBE113:
.LBB115:
.LBB116:
	.loc 1 78 0
	lbz 0,3(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,8,16,16
	lbz 10,1(6)
	rlwinm 9,9,7,17,21
	or 0,0,9
	srwi 11,11,3
	or 0,0,11
	rlwinm 10,10,2,22,26
	b .L94
.L31:
.LBE116:
.LBE115:
.LBB117:
.LBB118:
	.loc 1 84 0
	lbz 9,0(6)
	lbz 0,3(6)
	lbz 11,1(6)
	slwi 9,9,24
	lbz 10,2(6)
	or 0,0,9
	slwi 11,11,16
	or 0,0,11
	slwi 10,10,8
	or 0,0,10
	b .L93
.L38:
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	.loc 1 90 0
	lbz 0,3(6)
	lbz 9,2(6)
	lbz 11,1(6)
	slwi 0,0,24
	slwi 9,9,16
	lbz 10,0(6)
	or 0,0,9
	slwi 11,11,8
	or 0,0,10
	b .L95
.L32:
.LBE120:
.LBE119:
.LBB121:
.LBB122:
	.loc 1 100 0
	lbz 0,0(6)
	lis 10,0x4330
	stw 10,24(1)
	lis 9,.LC12@ha
	xoris 0,0,0x8000
	lfs 10,.LC12@l(9)
	stw 0,28(1)
	lis 9,.LC13@ha
	lfd 12,.LC13@l(9)
	addi 9,1,32
	lfd 0,24(1)
	.loc 1 105 0
	lbz 0,1(6)
	.loc 1 100 0
	fsub 0,0,10
	.loc 1 110 0
	lbz 11,2(6)
	.loc 1 105 0
	xoris 0,0,0x8000
	stw 0,28(1)
	.loc 1 110 0
	xoris 11,11,0x8000
	.loc 1 100 0
	fmul 0,0,12
	.loc 1 105 0
	lfd 13,24(1)
	.loc 1 110 0
	stw 11,28(1)
	.loc 1 105 0
	addi 11,1,32
	fsub 13,13,10
	.loc 1 100 0
	fctiwz 11,0
	.loc 1 110 0
	lfd 0,24(1)
	fsub 0,0,10
	.loc 1 105 0
	fmul 13,13,12
	.loc 1 100 0
	stfiwx 11,0,9
	.loc 1 110 0
	fmul 0,0,12
	.loc 1 100 0
	lhz 0,34(1)
.LVL20:
	.loc 1 105 0
	fctiwz 13,13
	.loc 1 116 0
	cmplwi 7,0,1023
.LVL21:
	mr 9,0
	.loc 1 110 0
	fctiwz 0,0
	.loc 1 105 0
	stfiwx 13,0,11
	lhz 0,34(1)
.LVL22:
	.loc 1 110 0
	stfiwx 0,0,11
	lhz 11,34(1)
.LVL23:
	.loc 1 116 0
	ble- 7,.L46
	li 9,1023
.L46:
	mr 8,0
	lbz 0,3(6)
.LVL24:
	cmplwi 7,8,1023
.LVL25:
	slwi 9,9,22
.LVL26:
	srwi 0,0,6
	or 6,9,0
.LVL27:
	ble- 7,.L47
	li 8,1023
.LVL28:
.L47:
	mr 10,11
	rlwinm 0,8,12,4,19
	cmplwi 7,10,1023
.LVL29:
	or 6,6,0
	ble- 7,.L48
.LVL30:
	li 10,1023
.LVL31:
.L48:
	rlwinm 0,10,2,14,29
	or 0,6,0
	b .L93
.LVL32:
.L39:
.LBE122:
.LBE121:
.LBB123:
.LBB124:
	.loc 1 123 0
	lbz 0,0(6)
	lis 10,0x4330
	stw 10,24(1)
	lis 9,.LC12@ha
	xoris 0,0,0x8000
	lfs 10,.LC12@l(9)
	stw 0,28(1)
	lis 9,.LC13@ha
	lfd 12,.LC13@l(9)
	addi 9,1,32
	lfd 0,24(1)
	.loc 1 128 0
	lbz 0,1(6)
	.loc 1 123 0
	fsub 0,0,10
	.loc 1 133 0
	lbz 11,2(6)
	.loc 1 128 0
	xoris 0,0,0x8000
	stw 0,28(1)
	.loc 1 133 0
	xoris 11,11,0x8000
	.loc 1 123 0
	fmul 0,0,12
	.loc 1 128 0
	lfd 13,24(1)
	.loc 1 133 0
	stw 11,28(1)
	.loc 1 128 0
	addi 11,1,32
	fsub 13,13,10
	.loc 1 123 0
	fctiwz 11,0
	.loc 1 133 0
	lfd 0,24(1)
	fsub 0,0,10
	.loc 1 128 0
	fmul 13,13,12
	.loc 1 123 0
	stfiwx 11,0,9
	.loc 1 133 0
	fmul 0,0,12
	.loc 1 123 0
	lhz 0,34(1)
.LVL33:
	.loc 1 128 0
	fctiwz 13,13
	.loc 1 139 0
	cmplwi 7,0,1023
.LVL34:
	mr 9,0
	.loc 1 133 0
	fctiwz 0,0
	.loc 1 128 0
	stfiwx 13,0,11
	lhz 10,34(1)
.LVL35:
	.loc 1 133 0
	stfiwx 0,0,11
	lhz 0,34(1)
.LVL36:
	.loc 1 139 0
	ble- 7,.L49
	li 9,1023
.L49:
	cmplwi 7,0,1023
.LVL37:
	rlwinm 11,9,0,0xffff
	ble- 7,.L50
	li 0,1023
.LVL38:
.L50:
	mr 9,10
.LVL39:
	slwi 0,0,20
.LVL40:
	cmplwi 7,9,1023
.LVL41:
	or 11,11,0
	ble- 7,.L51
.LVL42:
	li 9,1023
.LVL43:
.L51:
	rlwinm 0,9,10,6,21
.L95:
	or 0,11,0
.LVL44:
.L93:
	stw 0,0(3)
	b .L87
.LVL45:
.L22:
	lis 9,put_UBYTE@ha
	la 31,put_UBYTE@l(9)
.LVL46:
	b .L44
.LVL47:
.L21:
	.loc 1 289 0
	lis 9,put_BYTE@ha
	la 31,put_BYTE@l(9)
.LVL48:
	b .L44
.LVL49:
.L24:
	.loc 1 292 0
	lis 9,put_USHORT@ha
	la 31,put_USHORT@l(9)
.LVL50:
	b .L44
.LVL51:
.L23:
	.loc 1 295 0
	lis 9,put_SHORT@ha
	la 31,put_SHORT@l(9)
.LVL52:
	b .L44
.LVL53:
.L26:
	.loc 1 298 0
	lis 9,put_UINT@ha
	la 31,put_UINT@l(9)
.LVL54:
	b .L44
.LVL55:
.L25:
	.loc 1 301 0
	lis 9,put_INT@ha
	la 31,put_INT@l(9)
.LVL56:
.L44:
.LBE124:
.LBE123:
.LBB125:
.LBB127:
.LBB129:
.LBB131:
	.file 2 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h"
	.loc 2 359 0
	lbz 0,0(6)
	lis 9,.LC12@ha
	lfs 0,.LC12@l(9)
	lis 9,Trans@ha
	xoris 0,0,0x8000
	la 11,Trans@l(9)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 13,24(1)
	lfs 12,Trans@l(9)
	lis 9,.LC1@ha
	fsub 13,13,0
	lfs 0,.LC1@l(9)
	.loc 2 361 0
	lis 9,.LC14@ha
.LBE131:
.LBE129:
.LBE127:
.LBE125:
	.loc 1 319 0
	lbz 0,1(6)
.LBB141:
.LBB126:
.LBB128:
.LBB130:
	.loc 2 361 0
	lfs 11,.LC14@l(9)
	.loc 2 359 0
	frsp 13,13
.LBE130:
.LBE128:
.LBE126:
.LBE141:
	.loc 1 320 0
	lbz 10,2(6)
	.loc 1 321 0
	lbz 6,3(6)
.LVL57:
.LBB142:
.LBB140:
.LBB133:
.LBB132:
	.loc 2 359 0
	fdivs 13,13,0
	lfs 0,4(11)
	fmadds 1,13,12,0
	.loc 2 361 0
	fcmpu 7,1,11
	bng- 7,.L52
	fmr 1,11
	b .L55
.L52:
	.loc 2 363 0
	lis 9,.LC32@ha
	lfs 0,.LC32@l(9)
	fcmpu 7,1,0
	bnl- 7,.L55
	fmr 1,0
.L55:
.LBE132:
.LBE133:
.LBB134:
.LBB135:
	.loc 2 359 0
	xoris 0,0,0x8000
	lis 9,.LC12@ha
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 11,Trans@ha
	lfs 0,.LC12@l(9)
	lis 9,.LC1@ha
	lfd 13,24(1)
	la 11,Trans@l(11)
	lfs 12,12(11)
	fsub 13,13,0
	lfs 0,.LC1@l(9)
	.loc 2 361 0
	lis 9,.LC14@ha
	lfs 11,.LC14@l(9)
	.loc 2 359 0
	frsp 13,13
	fdivs 13,13,0
	lfs 0,8(11)
	fmadds 29,13,0,12
	.loc 2 361 0
	fcmpu 7,29,11
	bng- 7,.L58
	fmr 29,11
	b .L61
.L58:
	.loc 2 363 0
	lis 11,.LC32@ha
	lfs 0,.LC32@l(11)
	fcmpu 7,29,0
	bnl- 7,.L61
	fmr 29,0
.L61:
.LBE135:
.LBE134:
.LBB136:
.LBB137:
	.loc 2 359 0
	xoris 0,10,0x8000
	lis 9,.LC12@ha
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 11,Trans@ha
	lfs 0,.LC12@l(9)
	lis 9,.LC1@ha
	lfd 13,24(1)
	la 11,Trans@l(11)
	lfs 12,20(11)
	fsub 13,13,0
	lfs 0,.LC1@l(9)
	.loc 2 361 0
	lis 9,.LC14@ha
	lfs 11,.LC14@l(9)
	.loc 2 359 0
	frsp 13,13
	fdivs 13,13,0
	lfs 0,16(11)
	fmadds 31,13,0,12
	.loc 2 361 0
	fcmpu 7,31,11
	bng- 7,.L64
	fmr 31,11
	b .L67
.L64:
	.loc 2 363 0
	lis 9,.LC32@ha
	lfs 0,.LC32@l(9)
	fcmpu 7,31,0
	bnl- 7,.L67
	fmr 31,0
.L67:
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	.loc 2 359 0
	xoris 0,6,0x8000
	lis 9,.LC12@ha
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 11,Trans@ha
	lfs 0,.LC12@l(9)
	lis 9,.LC1@ha
	lfd 13,24(1)
	la 11,Trans@l(11)
	lfs 12,28(11)
	fsub 13,13,0
	lfs 0,.LC1@l(9)
	.loc 2 361 0
	lis 9,.LC14@ha
	lfs 11,.LC14@l(9)
	.loc 2 359 0
	frsp 13,13
	fdivs 13,13,0
	lfs 0,24(11)
	fmadds 30,13,0,12
	.loc 2 361 0
	fcmpu 7,30,11
	bng- 7,.L70
	fmr 30,11
	b .L73
.L70:
	.loc 2 363 0
	lis 11,.LC32@ha
	lfs 0,.LC32@l(11)
	fcmpu 7,30,0
	bnl- 7,.L73
	fmr 30,0
.L73:
.LBE139:
.LBE138:
.LBE140:
.LBE142:
	.loc 1 325 0
	cmpwi 7,4,6407
	beq- 7,.L80
	cmplwi 7,4,6407
	bgt- 7,.L84
	cmpwi 7,4,6404
	beq- 7,.L77
	cmplwi 7,4,6404
	bgt- 7,.L85
	cmpwi 7,4,6403
	bne+ 7,.L87
	b .L76
.L85:
	cmpwi 7,4,6405
	beq- 7,.L78
	cmpwi 7,4,6406
	bne+ 7,.L87
	b .L79
.L84:
	cmpwi 7,4,6410
	beq- 7,.L83
	cmplwi 7,4,6410
	bgt- 7,.L86
	cmpwi 7,4,6408
	beq- 7,.L81
	cmpwi 7,4,6409
	bne+ 7,.L87
	b .L82
.L86:
	xoris 0,4,0xffff
	cmpwi 7,0,-32544
	beq 7,.L80
	xoris 0,4,0xffff
	cmpwi 7,0,-32543
	bne 7,.L87
	b .L81
.L76:
	stw 3,8(1)
.LVL58:
	b .L96
.LVL59:
.L77:
.LBB143:
.LBB144:
	.loc 1 186 0
	fmr 1,29
.LBE144:
.LBE143:
.LBB146:
.LBB147:
	.loc 1 182 0
	stw 3,8(1)
.LVL60:
	b .L96
.LVL61:
.L78:
.LBE147:
.LBE146:
.LBB148:
.LBB149:
	.loc 1 190 0
	fmr 1,31
.LBE149:
.LBE148:
.LBB151:
.LBB145:
	.loc 1 186 0
	stw 3,8(1)
.LVL62:
	b .L96
.LVL63:
.L79:
.LBE145:
.LBE151:
.LBB152:
.LBB154:
	.loc 1 194 0
	fmr 1,30
.LBE154:
.LBE152:
.LBB156:
.LBB150:
	.loc 1 190 0
	stw 3,8(1)
.LVL64:
.L96:
.LBE150:
.LBE156:
.LBB157:
.LBB153:
	.loc 1 194 0
	addi 3,1,8
.LVL65:
	b .L89
.LVL66:
.L80:
.LBE153:
.LBE157:
.LBB158:
.LBB160:
	.loc 1 198 0
	addi 29,1,8
.LBE160:
.LBE158:
.LBB162:
.LBB155:
	.loc 1 194 0
	stw 3,8(1)
.LVL67:
.LBE155:
.LBE162:
.LBB163:
.LBB159:
	.loc 1 198 0
	mtctr 31
	mr 3,29
.LVL68:
	bctrl
.LVL69:
	.loc 1 199 0
	mr 3,29
	fmr 1,29
	mtctr 31
	bctrl
	.loc 1 200 0
	fmr 1,31
	mr 3,29
	b .L89
.LVL70:
.L81:
.LBE159:
.LBE163:
.LBB164:
.LBB166:
	.loc 1 204 0
	addi 29,1,8
.LBE166:
.LBE164:
.LBB168:
.LBB161:
	.loc 1 200 0
	stw 3,8(1)
.LVL71:
.LBE161:
.LBE168:
.LBB169:
.LBB165:
	.loc 1 204 0
	mtctr 31
	mr 3,29
.LVL72:
	bctrl
.LVL73:
	.loc 1 205 0
	mr 3,29
	fmr 1,29
	mtctr 31
	bctrl
	.loc 1 206 0
	fmr 1,31
	mr 3,29
	b .L88
.LVL74:
.L82:
.LBE165:
.LBE169:
.LBB170:
.LBB172:
	.loc 1 215 0
	fadds 0,1,29
	lis 9,.LC15@ha
	lfs 13,.LC15@l(9)
	lis 0,0x4330
	addi 9,1,32
	stw 0,24(1)
	fadds 0,0,31
.LBE172:
.LBE170:
.LBB174:
.LBB167:
	.loc 1 207 0
	stw 3,8(1)
.LVL75:
.LBE167:
.LBE174:
.LBB175:
.LBB171:
	.loc 1 215 0
	addi 3,1,8
.LVL76:
	fdivs 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lis 9,.LC17@ha
	lfs 0,.LC17@l(9)
	lbz 0,35(1)
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,0
	frsp 1,1
	b .L89
.LVL77:
.L83:
.LBE171:
.LBE175:
.LBB176:
.LBB177:
	.loc 1 219 0
	fadds 0,1,29
	lis 9,.LC15@ha
	lfs 13,.LC15@l(9)
	lis 0,0x4330
	addi 9,1,32
	stw 0,24(1)
	fadds 0,0,31
.LBE177:
.LBE176:
.LBB179:
.LBB173:
	.loc 1 215 0
	stw 3,8(1)
.LVL78:
.LBE173:
.LBE179:
.LBB180:
.LBB178:
	.loc 1 219 0
	addi 29,1,8
	mr 3,29
.LVL79:
	fdivs 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lis 9,.LC17@ha
	lfs 0,.LC17@l(9)
	lbz 0,35(1)
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,0
	frsp 1,1
.LVL80:
.L88:
	mtctr 31
	bctrl
.LVL81:
	.loc 1 220 0
	fmr 1,30
	mr 3,29
.LVL82:
.L89:
	mtctr 31
	bctrl
.LVL83:
.LVL84:
.L87:
.LBE178:
.LBE180:
	.loc 1 360 0
	lwz 0,84(1)
	lmw 29,44(1)
.LVL85:
	lfd 29,56(1)
	mtlr 0
	lfd 30,64(1)
	lfd 31,72(1)
	addi 1,1,80
	blr
.LFE95:
	.size	write_rgb, .-write_rgb
	.align 2
	.globl glGetTexImage
	.type	glGetTexImage, @function
glGetTexImage:
.LFB99:
	.loc 1 523 0
.LVL86:
	mflr 0
.LCFI11:
	stwu 1,-8(1)
.LCFI12:
	.loc 1 524 0
	lis 9,cur_state@ha
	.loc 1 523 0
	stw 0,12(1)
.LCFI13:
	.loc 1 524 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L100
	lis 4,.LC33@ha
.LVL87:
	li 3,1282
.LVL88:
	la 4,.LC33@l(4)
	li 5,524
.LVL89:
	bl _glSetErrorEx
.LVL90:
.LVL91:
.L100:
	.loc 1 525 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE99:
	.size	glGetTexImage, .-glGetTexImage
	.align 2
	.globl glReadBuffer
	.type	glReadBuffer, @function
glReadBuffer:
.LFB66:
	.loc 1 6 0
.LVL92:
	mflr 0
.LCFI14:
	stwu 1,-8(1)
.LCFI15:
	.loc 1 7 0
	lis 9,cur_state@ha
	.loc 1 6 0
	stw 0,12(1)
.LCFI16:
	.loc 1 7 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq+ 0,.L102
	lis 4,.LC33@ha
	li 3,1282
.LVL93:
	la 4,.LC33@l(4)
	li 5,7
	b .L110
.LVL94:
.L102:
	.loc 1 9 0
	addi 3,3,-1024
.LVL95:
	cmplwi 7,3,6
	bgt- 7,.L105
	li 0,1
	slw 0,0,3
	andi. 9,0,81
	bne- 0,.L106
	andi. 9,0,36
	bne- 0,.L107
	b .L105
.L106:
	.loc 1 14 0
	li 0,1028
	b .L109
.L107:
	.loc 1 18 0
	li 0,1029
.L109:
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	b .L108
.L105:
	.loc 1 21 0
	lis 4,.LC33@ha
	li 3,1282
	la 4,.LC33@l(4)
	li 5,21
.L110:
	bl _glSetErrorEx
.L108:
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE66:
	.size	glReadBuffer, .-glReadBuffer
	.align 2
	.globl glReadPixels
	.type	glReadPixels, @function
glReadPixels:
.LFB98:
	.loc 1 389 0
.LVL96:
	mflr 0
.LCFI17:
	stwu 1,-208(1)
.LCFI18:
	.loc 1 390 0
	lis 11,cur_state@ha
	.loc 1 389 0
	stmw 14,48(1)
.LCFI19:
	mr 24,3
	stfd 21,120(1)
.LCFI20:
	mr 18,4
	stfd 22,128(1)
.LCFI21:
	mr 22,5
	stfd 23,136(1)
.LCFI22:
	mr 23,6
	stfd 24,144(1)
.LCFI23:
	mr 29,7
	stfd 25,152(1)
.LCFI24:
	mr 31,8
	stfd 26,160(1)
.LCFI25:
	mr 14,9
	stfd 27,168(1)
.LCFI26:
	stfd 28,176(1)
.LCFI27:
	stfd 29,184(1)
.LCFI28:
	stfd 30,192(1)
.LCFI29:
	stfd 31,200(1)
.LCFI30:
	stw 0,212(1)
.LCFI31:
	.loc 1 390 0
	lwz 0,cur_state@l(11)
	andi. 11,0,1
	beq+ 0,.L112
.LVL97:
	lis 4,.LC33@ha
	li 3,1282
	la 4,.LC33@l(4)
	li 5,390
	b .L186
.LVL98:
.L112:
	.loc 1 392 0
	cmpwi 7,5,0
	blt- 7,.L115
.LVL99:
	cmpwi 7,6,0
	bge+ 7,.L117
.L115:
	.loc 1 394 0
	lis 4,.LC33@ha
	li 3,1281
	la 4,.LC33@l(4)
	li 5,394
.LVL100:
	b .L186
.LVL101:
.L117:
	.loc 1 399 0
	cmplwi 7,7,6403
	blt- 7,.L118
.LVL102:
	cmplwi 7,7,6410
	ble- 7,.L119
	addis 9,7,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble- 7,.L119
.LVL103:
.L118:
	.loc 1 416 0
	lis 4,.LC33@ha
	li 3,1280
	la 4,.LC33@l(4)
	li 5,416
.LVL104:
	b .L186
.LVL105:
.L119:
	.loc 1 422 0
	cmplwi 7,31,32822
	bgt- 7,.L122
	cmplwi 7,31,32818
	bge- 7,.L121
	addi 0,31,-5120
	cmplwi 7,0,6
	b .L185
.L122:
	addis 9,31,0xffff
	addi 9,9,31902
	cmplwi 7,9,6
.LVL106:
.L185:
	ble- 7,.L121
	.loc 1 446 0
	lis 4,.LC33@ha
	li 3,1280
	la 4,.LC33@l(4)
	li 5,446
.LVL107:
.L186:
	bl _glSetErrorEx
.LVL108:
	b .L184
.LVL109:
.L121:
	.loc 1 453 0
	lis 9,read_mode@ha
	lwz 0,read_mode@l(9)
	cmpwi 7,0,1028
	beq- 7,.L124
	cmpwi 7,0,1029
	beq- 7,.L125
	b .L184
.L124:
	.loc 1 457 0
	bl getFrontFramebuffer
.LVL110:
	mr 26,3
.LVL111:
	b .L126
.LVL112:
.L125:
	.loc 1 461 0
	bl getBackFramebuffer
.LVL113:
	.loc 1 462 0
	li 4,0
	.loc 1 461 0
	mr 26,3
.LVL114:
	.loc 1 462 0
	bl GX_CopyDisp
	.loc 1 463 0
	bl GX_DrawDone
.L126:
	.loc 1 466 0
	cmpwi 7,26,0
	beq- 7,.L184
	.loc 1 474 0
	addi 3,1,8
	addi 4,1,12
	bl getVImode
	.loc 1 478 0
	lwz 9,12(1)
.LVL115:
.LBB198:
.LBB200:
.LBB204:
	.loc 1 380 0
	lis 5,.LC34@ha
	lis 11,.LC38@ha
.LBE204:
.LBE200:
.LBE198:
	.loc 1 478 0
	addi 28,9,-1
.LVL116:
.LBB255:
.LBB226:
.LBB203:
	.loc 1 381 0
	lis 19,.LC39@ha
	.loc 1 380 0
	lis 9,.LC35@ha
	lis 15,.LC17@ha
	lis 20,.LC37@ha
.LBB217:
.LBB219:
	.loc 1 364 0
	lis 21,.LC1@ha
.LBE219:
.LBE217:
	.loc 1 380 0
	lfd 24,.LC34@l(5)
	.loc 1 381 0
	lis 5,.LC40@ha
	.loc 1 380 0
	lfd 25,.LC35@l(9)
	.loc 1 381 0
	lis 9,.LC41@ha
	.loc 1 380 0
	lfd 27,.LC38@l(11)
	.loc 1 382 0
	lis 11,.LC42@ha
	.loc 1 381 0
	lfd 26,.LC39@l(19)
	.loc 1 382 0
	lis 19,.LC43@ha
	.loc 1 380 0
	lfs 22,.LC17@l(15)
.LBE203:
.LBE226:
.LBE255:
	.loc 1 478 0
	subf 25,18,28
.LBB256:
.LBB199:
.LBB223:
	.loc 1 380 0
	lfs 21,.LC37@l(20)
.LBB222:
.LBB220:
	.loc 1 364 0
	lfs 23,.LC1@l(21)
.LBE220:
.LBE222:
	.loc 1 381 0
	lfd 30,.LC40@l(5)
	lfd 29,.LC41@l(9)
	.loc 1 382 0
	lfd 28,.LC42@l(11)
	lfd 31,.LC43@l(19)
	b .L128
.LVL117:
.L129:
.LBE223:
.LBE199:
.LBE256:
	.loc 1 480 0
	cmpw 7,28,18
	blt- 7,.L184
	.loc 1 482 0
	li 8,0
	b .L131
.L132:
.LBB257:
	.loc 1 489 0
	add 0,23,18
.LVL118:
	.loc 1 487 0
	lwz 30,0(26)
.LVL119:
	.loc 1 489 0
	cmpw 7,28,0
	bgt- 7,.L133
	addi 27,8,1
.LVL120:
	cmpw 7,27,24
	blt- 7,.L133
	add 0,22,24
	cmpw 7,8,0
	stw 0,40(1)
	bgt- 7,.L133
.LVL121:
	.loc 1 501 0
	cmpw 7,8,24
	.loc 1 495 0
	rlwinm 16,30,16,24,31
	.loc 1 497 0
	rlwinm 17,30,0,0xff
.LVL122:
	.loc 1 501 0
	blt- 7,.L137
.LBB227:
.LBB229:
	.loc 1 380 0
	lis 9,0x4330
	srwi 0,30,24
	stw 0,28(1)
	lis 5,.LC34@ha
	stw 9,24(1)
	lis 9,.LC35@ha
	lfs 12,.LC17@l(15)
	lis 11,.LC38@ha
	lfd 13,24(1)
.LBB230:
.LBB232:
	.loc 1 364 0
	li 12,255
.LBE232:
.LBE230:
	.loc 1 380 0
	stw 17,28(1)
	fsub 13,13,12
	lfd 10,.LC34@l(5)
	lfd 0,24(1)
	frsp 13,13
	fsub 0,0,12
	lfd 12,.LC35@l(9)
	fmr 11,13
	lfs 13,.LC37@l(20)
	frsp 0,0
	fmul 9,11,10
	lfd 11,.LC38@l(11)
	fmr 7,0
.LBB234:
.LBB231:
	.loc 1 364 0
	lfs 0,.LC1@l(21)
.LBE231:
.LBE234:
	.loc 1 380 0
	fmadd 12,7,12,9
	fmsub 12,12,13,11
	frsp 12,12
.LVL123:
.LBB235:
.LBB233:
	.loc 1 364 0
	fcmpu 7,12,0
	bgt- 7,.L142
	.loc 1 368 0
	lis 19,.LC32@ha
	li 12,0
	lfs 0,.LC32@l(19)
	fcmpu 7,12,0
	blt- 7,.L142
	.loc 1 374 0
	fmr 0,12
	addi 5,1,32
	fctiwz 0,0
	stfiwx 0,0,5
	lbz 12,35(1)
.L142:
.LBE233:
.LBE235:
	.loc 1 381 0
	lis 0,0x4330
	stw 16,28(1)
	stw 0,24(1)
	lis 9,.LC39@ha
	lfs 13,.LC17@l(15)
	lis 11,.LC40@ha
	lfd 0,24(1)
	lis 19,.LC41@ha
	lfd 11,.LC39@l(9)
	fsub 0,0,13
	lfd 13,.LC40@l(11)
	lfs 12,.LC37@l(20)
.LVL124:
.LBB236:
.LBB238:
	.loc 1 364 0
	li 11,255
.LBE238:
.LBE236:
	.loc 1 381 0
	lfd 10,.LC41@l(19)
	frsp 0,0
	fmr 8,0
.LBB240:
.LBB237:
	.loc 1 364 0
	lfs 0,.LC1@l(21)
.LBE237:
.LBE240:
	.loc 1 381 0
	fmadd 11,8,11,9
	fmadd 13,7,13,11
	fmadd 13,13,12,10
	frsp 13,13
.LVL125:
.LBB241:
.LBB239:
	.loc 1 364 0
	fcmpu 7,13,0
	bgt- 7,.L149
	.loc 1 368 0
	lis 5,.LC32@ha
	li 11,0
	lfs 0,.LC32@l(5)
	fcmpu 7,13,0
	blt- 7,.L149
	.loc 1 374 0
	fmr 0,13
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lbz 11,35(1)
.L149:
.LBE239:
.LBE241:
	.loc 1 382 0
	lis 19,.LC42@ha
	lis 5,.LC43@ha
	lfd 0,.LC42@l(19)
.LBB242:
.LBB244:
	.loc 1 364 0
	li 0,255
.LBE244:
.LBE242:
	.loc 1 382 0
	lfs 13,.LC37@l(20)
.LVL126:
	fmadd 0,8,0,9
	lfd 12,.LC43@l(5)
.LBB246:
.LBB243:
	.loc 1 364 0
	lfs 11,.LC1@l(21)
.LBE243:
.LBE246:
	.loc 1 382 0
	fmsub 0,0,13,12
	frsp 13,0
.LVL127:
.LBB247:
.LBB245:
	.loc 1 364 0
	fcmpu 7,13,11
	bgt- 7,.L156
	.loc 1 368 0
	lis 9,.LC32@ha
	li 0,0
	lfs 0,.LC32@l(9)
	fcmpu 7,13,0
	blt- 7,.L156
	.loc 1 374 0
	fmr 0,13
	addi 19,1,32
	fctiwz 0,0
	stfiwx 0,0,19
	lbz 0,35(1)
.L156:
.LBE245:
.LBE247:
.LBE229:
.LBE227:
	.loc 1 505 0
	lis 19,.LC53@ha
	mr 6,22
	lwz 10,.LC53@l(19)
	mr 4,14
	mr 5,31
.LBB249:
.LBB228:
	.loc 1 382 0
	stb 0,18(1)
.LBE228:
.LBE249:
	.loc 1 505 0
	subf 8,24,8
.LVL128:
	.loc 1 504 0
	li 0,-1
	.loc 1 505 0
	mr 3,29
	mr 7,23
	mr 9,25
	.loc 1 504 0
	stb 0,19(1)
.LBB250:
.LBB248:
	.loc 1 381 0
	stb 11,17(1)
	.loc 1 380 0
	stb 12,16(1)
.LBE248:
.LBE250:
	.loc 1 505 0
	bl pixel_offset
.LVL129:
	mr 4,29
	mr 5,31
	addi 6,1,16
	bl write_rgb
.LVL130:
.L137:
	.loc 1 510 0
	lwz 0,40(1)
	mr 8,27
	cmpw 7,27,0
	bge- 7,.L133
.LBB251:
.LBB202:
	.loc 1 380 0
	rlwinm 0,30,24,24,31
	lis 9,0x4330
	stw 0,28(1)
	fmr 12,22
	stw 9,24(1)
	fmr 11,21
.LBB216:
.LBB218:
	.loc 1 364 0
	li 30,255
.LVL131:
.LBE218:
.LBE216:
	.loc 1 380 0
	lfd 13,24(1)
	stw 17,28(1)
	fsub 13,13,12
	lfd 0,24(1)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fmul 10,13,24
	fmr 9,0
	fmadd 0,9,25,10
	fmsub 0,0,11,27
	frsp 13,0
.LVL132:
.LBB215:
.LBB221:
	.loc 1 364 0
	fcmpu 7,13,23
	bgt- 7,.L165
	.loc 1 368 0
	lis 5,.LC32@ha
	li 30,0
	lfs 0,.LC32@l(5)
	fcmpu 7,13,0
	blt- 7,.L165
	.loc 1 374 0
	fmr 0,13
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lbz 30,35(1)
.L165:
.LBE221:
.LBE215:
	.loc 1 381 0
	lis 0,0x4330
	stw 16,28(1)
	stw 0,24(1)
.LBB211:
.LBB213:
	.loc 1 364 0
	li 11,255
.LBE213:
.LBE211:
	.loc 1 381 0
	lfs 13,.LC17@l(15)
.LVL133:
	lfd 0,24(1)
	lfs 12,.LC37@l(20)
	fsub 0,0,13
.LBB210:
.LBB212:
	.loc 1 364 0
	lfs 13,.LC1@l(21)
.LBE212:
.LBE210:
	.loc 1 381 0
	frsp 0,0
	fmr 11,0
	fmadd 0,11,26,10
	fmadd 0,9,30,0
	fmadd 0,0,12,29
	frsp 12,0
.LVL134:
.LBB209:
.LBB214:
	.loc 1 364 0
	fcmpu 7,12,13
	bgt- 7,.L172
	.loc 1 368 0
	lis 11,.LC32@ha
	lfs 0,.LC32@l(11)
	li 11,0
	fcmpu 7,12,0
	blt- 7,.L172
	.loc 1 374 0
	fmr 0,12
	addi 19,1,32
	fctiwz 0,0
	stfiwx 0,0,19
	lbz 11,35(1)
.L172:
.LBE214:
.LBE209:
	.loc 1 382 0
	fmadd 13,11,28,10
	lfs 0,.LC37@l(20)
.LBB206:
.LBB207:
	.loc 1 364 0
	lfs 12,.LC1@l(21)
.LVL135:
	li 0,255
.LBE207:
.LBE206:
	.loc 1 382 0
	fmsub 13,13,0,31
	frsp 13,13
.LVL136:
.LBB205:
.LBB208:
	.loc 1 364 0
	fcmpu 7,13,12
	bgt- 7,.L179
	.loc 1 368 0
	lis 5,.LC32@ha
	li 0,0
	lfs 0,.LC32@l(5)
	fcmpu 7,13,0
	blt- 7,.L179
	.loc 1 374 0
	fmr 0,13
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lbz 0,35(1)
.L179:
.LBE208:
.LBE205:
.LBE202:
.LBE251:
	.loc 1 514 0
	lis 19,.LC53@ha
	subf 8,24,27
	lwz 10,.LC53@l(19)
	mr 6,22
	mr 7,23
	mr 9,25
	mr 4,14
	mr 5,31
.LBB252:
.LBB224:
	.loc 1 382 0
	stb 0,18(1)
.LBE224:
.LBE252:
	.loc 1 514 0
	mr 3,29
	.loc 1 513 0
	li 0,-1
.LBB253:
.LBB201:
	.loc 1 381 0
	stb 11,17(1)
.LBE201:
.LBE253:
	.loc 1 513 0
	stb 0,19(1)
.LBB254:
.LBB225:
	.loc 1 380 0
	stb 30,16(1)
.LBE225:
.LBE254:
	.loc 1 514 0
	bl pixel_offset
.LVL137:
	mr 4,29
	mr 5,31
	addi 6,1,16
	bl write_rgb
	mr 8,27
.LVL138:
.L133:
	.loc 1 487 0
	addi 26,26,4
.LBE257:
	.loc 1 485 0
	addi 8,8,1
.LVL139:
.L131:
	lwz 0,8(1)
	cmplw 7,8,0
	blt+ 7,.L132
.LVL140:
	.loc 1 478 0
	addi 28,28,-1
	addi 25,25,-1
.L128:
	cmpwi 7,28,0
	bge+ 7,.L129
.LVL141:
.L184:
	.loc 1 518 0
	lwz 0,212(1)
.LVL142:
	lmw 14,48(1)
.LVL143:
	lfd 21,120(1)
	mtlr 0
	lfd 22,128(1)
	lfd 23,136(1)
	lfd 24,144(1)
	lfd 25,152(1)
	lfd 26,160(1)
	lfd 27,168(1)
	lfd 28,176(1)
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	blr
.LFE98:
	.size	glReadPixels, .-glReadPixels
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,64,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,160,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,64000,32
	.comm	_colorelements,16000,32
	.comm	vert_i,4,4
	.comm	_type,4,4
	.comm	_GLtype,4,4
	.comm	cur_tex,4,4
	.comm	cur_tex_client,4,4
	.comm	depthtestenabled,1,1
	.comm	depthupdate,1,1
	.comm	depthfunction,4,4
	.comm	_cleardepth,4,4
	.comm	model_stack,16,4
	.comm	projection_stack,16,4
	.comm	texture_stack,128,4
	.comm	curmtx,4,4
	.comm	cur_mode,4,4
	.comm	lights,1312,4
	.comm	globAmbient,16,4
	.comm	curmat,68,4
	.comm	gxcullfaceanabled,1,1
	.comm	gxwinding,4,4
	.comm	lighting,1,1
	.comm	blend_type,1,1
	.comm	blend_src,1,1
	.comm	blend_dst,1,1
	.comm	blend_op,1,1
	.comm	cull_mode,1,1
	.comm	cur_state,4,4
	.comm	fb_max_height,4,4
	.comm	fb_max_width,4,4
	.comm	scissor_test,1,1
	.comm	scissorInfo,16,4
	.comm	viewPort,16,4
	.comm	normNear,4,4
	.comm	normFar,4,4
	.comm	line_width,4,4
	.comm	point_size,4,4
	.comm	pack,20,4
	.comm	unpack,20,4
	.comm	color_write_mask,4,4
	.comm	copy_mat_enabled,1,1
	.comm	copy_material,4,4
	.comm	_clearcolor,4,1
	.comm	Trans,32,4
	.comm	fog_enable,1,1
	.comm	fog_mode,1,1
	.comm	fog_startz,4,4
	.comm	fog_endz,4,4
	.comm	fog_density,4,4
	.comm	fog_color,4,1
	.comm	glTexEnvs,864,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1132396544
.LC3:
	.4byte	1123942400
.LC4:
	.4byte	1199570688
.LC5:
	.4byte	1191181824
.LC6:
	.4byte	1333788672
.LC8:
	.4byte	1325400064
.LC12:
	.4byte	1501560836
.LC14:
	.4byte	1065353216
.LC15:
	.4byte	1077936128
.LC17:
	.4byte	1501560832
.LC32:
	.4byte	0
.LC37:
	.4byte	998244352
.LC53:
	.4byte	pack
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC13:
	.4byte	1074793484
	.4byte	202116108
.LC34:
	.4byte	1081254223
	.4byte	-549755814
.LC35:
	.4byte	1081706835
	.4byte	-137438953
.LC38:
	.4byte	1080810872
	.4byte	-721554506
.LC39:
	.4byte	-1067904353
	.4byte	-1099511628
.LC40:
	.4byte	-1066794025
	.4byte	171798692
.LC41:
	.4byte	1080095342
	.4byte	-1752346657
.LC42:
	.4byte	1082139467
	.4byte	-962072674
.LC43:
	.4byte	1081167200
	.4byte	1099511628
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC33:
	.string	"c:/projects/wii/gl2gx/libogc/../source/gl_outcopy.c"
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI0-.LFB79
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI1-.LFB80
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI2-.LFB81
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI3-.LFB82
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI5-.LFB95
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI10-.LCFI5
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI12-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI15-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI18-.LFB98
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x9f
	.uleb128 0x17
	.byte	0x9e
	.uleb128 0x18
	.byte	0x9d
	.uleb128 0x19
	.byte	0x9c
	.uleb128 0x1a
	.byte	0x9b
	.uleb128 0x1b
	.byte	0x9a
	.uleb128 0x1c
	.byte	0x99
	.uleb128 0x1d
	.byte	0x98
	.uleb128 0x1e
	.byte	0x97
	.uleb128 0x1f
	.byte	0x96
	.uleb128 0x20
	.byte	0x95
	.uleb128 0x21
	.byte	0x94
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x23
	.byte	0x92
	.uleb128 0x24
	.byte	0x91
	.uleb128 0x25
	.byte	0x90
	.uleb128 0x26
	.byte	0x8f
	.uleb128 0x27
	.byte	0x8e
	.uleb128 0x28
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI31-.LCFI19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.align 2
.LEFDE20:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB95-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 208
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL142-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL138-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
	.file 4 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:/devkitPRO/libogc/include/gctypes.h"
	.file 6 "c:/devkitPRO/libogc/include/ogc/gu.h"
	.file 7 "c:/devkitPRO/libogc/include/ogc/gx.h"
	.file 8 "c:/projects/wii/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1a4b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x1
	.4byte	.LASF204
	.4byte	.LASF205
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x92
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x93
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF206
	.byte	0x3
	.byte	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x98
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x99
	.4byte	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x9c
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x9d
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x4
	.4byte	0x49
	.uleb128 0x8
	.byte	0x4
	.4byte	0x98
	.uleb128 0x9
	.string	"u8"
	.byte	0x5
	.byte	0xf
	.4byte	0x42
	.uleb128 0x9
	.string	"u16"
	.byte	0x5
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x9
	.string	"u32"
	.byte	0x5
	.byte	0x11
	.4byte	0x30
	.uleb128 0x9
	.string	"s8"
	.byte	0x5
	.byte	0x14
	.4byte	0x50
	.uleb128 0x9
	.string	"s16"
	.byte	0x5
	.byte	0x15
	.4byte	0x57
	.uleb128 0x9
	.string	"s32"
	.byte	0x5
	.byte	0x16
	.4byte	0x69
	.uleb128 0x9
	.string	"f32"
	.byte	0x5
	.byte	0x29
	.4byte	0xa3
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x35
	.4byte	0xf0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xa
	.4byte	0xf0
	.4byte	0x15c
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x27
	.4byte	0x18d
	.uleb128 0xd
	.string	"x"
	.byte	0x6
	.byte	0x28
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x6
	.byte	0x28
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x6
	.byte	0x28
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x29
	.4byte	0x15c
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x4
	.byte	0x7
	.2byte	0x3b8
	.4byte	0x1da
	.uleb128 0xf
	.string	"r"
	.byte	0x7
	.2byte	0x3b9
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x7
	.2byte	0x3ba
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x7
	.2byte	0x3bb
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x7
	.2byte	0x3bc
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x3bd
	.4byte	0x198
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x40
	.byte	0x7
	.2byte	0x3d6
	.4byte	0x203
	.uleb128 0xf
	.string	"val"
	.byte	0x7
	.2byte	0x3d7
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x105
	.4byte	0x213
	.uleb128 0xb
	.4byte	0xd1
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x3d8
	.4byte	0x1e6
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22b
	.uleb128 0x11
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.byte	0x16
	.4byte	0x253
	.uleb128 0xd
	.string	"v"
	.byte	0x2
	.byte	0x17
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0x18
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x2
	.byte	0x19
	.4byte	0x232
	.uleb128 0x12
	.byte	0x8
	.byte	0x2
	.byte	0x1c
	.4byte	0x27f
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.byte	0x1d
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.byte	0x1e
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x2
	.byte	0x1f
	.4byte	0x25e
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.byte	0x22
	.4byte	0x2c3
	.uleb128 0xd
	.string	"r"
	.byte	0x2
	.byte	0x23
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x2
	.byte	0x24
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.byte	0x25
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x26
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x2
	.byte	0x27
	.4byte	0x28a
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x2
	.byte	0x43
	.4byte	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0x44
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x2
	.byte	0x45
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0x46
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x2
	.byte	0x47
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.byte	0x48
	.4byte	0x2ce
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x36f
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x8
	.byte	0xe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x8
	.byte	0xf
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x8
	.byte	0x10
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x12
	.4byte	0x32a
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xa4
	.byte	0x2
	.byte	0x7e
	.4byte	0x435
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x2
	.byte	0x7f
	.4byte	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x2
	.byte	0x81
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x83
	.4byte	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x2
	.byte	0x85
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0x87
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0x88
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0x89
	.4byte	0x2c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x2
	.byte	0x8b
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0x8c
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x2
	.byte	0x8d
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x2
	.byte	0x8e
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x2
	.byte	0x8f
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x2
	.byte	0x90
	.4byte	0x37a
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x44
	.byte	0x2
	.byte	0x9b
	.4byte	0x493
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x2
	.byte	0x9c
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0x9d
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0x9e
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0x9f
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0xa0
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x2
	.byte	0xa1
	.4byte	0x440
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x4
	.byte	0x2
	.byte	0xba
	.4byte	0x4bd
	.uleb128 0x15
	.4byte	.LASF56
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF57
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF58
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0xbe
	.4byte	0x49e
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x10
	.byte	0x2
	.byte	0xe3
	.4byte	0x509
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xe4
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x2
	.byte	0xe5
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0xe6
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x2
	.byte	0xe7
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x2
	.byte	0xe8
	.4byte	0x4c8
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x14
	.byte	0x2
	.byte	0xf6
	.4byte	0x575
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x2
	.byte	0xf7
	.4byte	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x2
	.byte	0xf8
	.4byte	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x2
	.byte	0xf9
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x2
	.byte	0xfa
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x2
	.byte	0xfb
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x2
	.byte	0xfc
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x2
	.byte	0xfd
	.4byte	0x514
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x2
	.2byte	0x112
	.4byte	0x5ac
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x113
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x114
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x115
	.4byte	0x580
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x6c
	.byte	0x2
	.2byte	0x122
	.4byte	0x710
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x123
	.4byte	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x125
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x126
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x127
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x128
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x129
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x12a
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x12b
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x12c
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x12d
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x12e
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x130
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x132
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x133
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x135
	.4byte	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x136
	.4byte	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x137
	.4byte	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x138
	.4byte	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"tex"
	.byte	0x2
	.2byte	0x13a
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x13c
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x13e
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x13f
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x720
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x140
	.4byte	0x5b8
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x1
	.byte	0x8e
	.4byte	0x737
	.uleb128 0x8
	.byte	0x4
	.4byte	0x73d
	.uleb128 0x17
	.byte	0x1
	.4byte	0x74e
	.uleb128 0x18
	.4byte	0x74e
	.uleb128 0x18
	.4byte	0xa3
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x166
	.byte	0x1
	.byte	0x3
	.4byte	0x777
	.uleb128 0x1a
	.string	"c"
	.byte	0x2
	.2byte	0x165
	.4byte	0xea
	.uleb128 0x1a
	.string	"p"
	.byte	0x2
	.2byte	0x165
	.4byte	0x777
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ac
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	0x70
	.byte	0x3
	.4byte	0x7aa
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1c
	.string	"g"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.byte	0x3
	.4byte	0x7d7
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x20
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x20
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x22
	.4byte	0x21f
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.4byte	0x804
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x26
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x26
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x28
	.4byte	0x21f
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.byte	0x3
	.4byte	0x831
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2c
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2c
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x2e
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.4byte	0x85e
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x32
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x32
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x34
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x3
	.4byte	0x88b
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x38
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x38
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.byte	0x3
	.4byte	0x8b8
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3e
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3e
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3
	.4byte	0x8e5
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x50
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x50
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x52
	.4byte	0x22c
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3
	.4byte	0x912
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x56
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x56
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x58
	.4byte	0x22c
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.byte	0x3
	.4byte	0x941
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xb4
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xb4
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb4
	.4byte	0x941
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.byte	0x3
	.4byte	0x976
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xb8
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xb8
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb8
	.4byte	0x941
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.byte	0x3
	.4byte	0x9a5
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xbc
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xbc
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xbc
	.4byte	0x941
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.byte	0x3
	.4byte	0x9d4
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc0
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xc0
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc0
	.4byte	0x941
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0xf0
	.byte	0x3
	.4byte	0x9f1
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xa3
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST0
	.4byte	0xa2d
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x90
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x90
	.4byte	0xa3
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x92
	.4byte	0xa2d
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST2
	.4byte	0xa6f
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x95
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x95
	.4byte	0xa3
	.4byte	.LLST3
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x97
	.4byte	0xa6f
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa75
	.uleb128 0x8
	.byte	0x4
	.4byte	0x110
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST4
	.4byte	0xab7
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9a
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x9a
	.4byte	0xa3
	.4byte	.LLST5
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.4byte	0xab7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x146
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST6
	.4byte	0xaf9
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9f
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa3
	.4byte	.LLST7
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0xaf9
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xaff
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0xb3f
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa4
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa3
	.4byte	.LLST9
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.4byte	0xb3f
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0xb7f
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa9
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa3
	.4byte	.LLST11
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xab
	.4byte	0xb7f
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb85
	.uleb128 0x8
	.byte	0x4
	.4byte	0x125
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0xbc4
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xae
	.4byte	0x74e
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0xae
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0xb0
	.4byte	0xbc4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xea
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.4byte	0xbf7
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x44
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x44
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x46
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x3
	.4byte	0xc24
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4a
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x4a
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x146
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x3
	.4byte	0xc6c
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x5f
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x5f
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x61
	.4byte	0x22c
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.byte	0x62
	.4byte	0xfa
	.uleb128 0x1f
	.string	"g"
	.byte	0x1
	.byte	0x62
	.4byte	0xfa
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0x62
	.4byte	0xfa
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.4byte	0xcb4
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0x76
	.4byte	0xd4
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x76
	.4byte	0x21f
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x78
	.4byte	0x22c
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.byte	0x79
	.4byte	0xfa
	.uleb128 0x1f
	.string	"g"
	.byte	0x1
	.byte	0x79
	.4byte	0xfa
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0x79
	.4byte	0xfa
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x171
	.byte	0x1
	.byte	0x3
	.4byte	0xcef
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.2byte	0x170
	.4byte	0xea
	.uleb128 0x1a
	.string	"g"
	.byte	0x2
	.2byte	0x170
	.4byte	0xea
	.uleb128 0x1a
	.string	"b"
	.byte	0x2
	.2byte	0x170
	.4byte	0xea
	.uleb128 0x1a
	.string	"a"
	.byte	0x2
	.2byte	0x170
	.4byte	0xea
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.byte	0x3
	.4byte	0xd1e
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc4
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xc4
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc4
	.4byte	0x941
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.byte	0x3
	.4byte	0xd4d
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xca
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xca
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xca
	.4byte	0x941
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.byte	0x3
	.4byte	0xd7d
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd5
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xd5
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd5
	.4byte	0x941
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.byte	0x3
	.4byte	0xdad
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd9
	.4byte	0xd4
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xd9
	.4byte	0x72c
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd9
	.4byte	0x941
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST13
	.4byte	0x124b
	.uleb128 0x27
	.4byte	.LASF100
	.byte	0x1
	.byte	0xdf
	.4byte	0xd4
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF34
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x27
	.4byte	.LASF101
	.byte	0x1
	.byte	0xdf
	.4byte	0x21f
	.4byte	.LLST17
	.uleb128 0x28
	.string	"fun"
	.byte	0x1
	.byte	0xec
	.4byte	0x72c
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x13c
	.4byte	0x124b
	.uleb128 0x2a
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0xe37
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.byte	0xe6
	.4byte	0xf0
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x7aa
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.byte	0xf0
	.4byte	0xe64
	.uleb128 0x2c
	.4byte	0x7c2
	.uleb128 0x2c
	.4byte	0x7b7
	.uleb128 0x2d
	.4byte	.LBB102
	.4byte	.LBE102
	.uleb128 0x2e
	.4byte	0x7cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x7d7
	.4byte	.LBB103
	.4byte	.LBE103
	.byte	0x1
	.byte	0xf4
	.4byte	0xe91
	.uleb128 0x2c
	.4byte	0x7ef
	.uleb128 0x2c
	.4byte	0x7e4
	.uleb128 0x2d
	.4byte	.LBB104
	.4byte	.LBE104
	.uleb128 0x2e
	.4byte	0x7fa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x804
	.4byte	.LBB105
	.4byte	.LBE105
	.byte	0x1
	.byte	0xf8
	.4byte	0xebe
	.uleb128 0x2c
	.4byte	0x81c
	.uleb128 0x2c
	.4byte	0x811
	.uleb128 0x2d
	.4byte	.LBB106
	.4byte	.LBE106
	.uleb128 0x2e
	.4byte	0x827
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x831
	.4byte	.LBB107
	.4byte	.LBE107
	.byte	0x1
	.byte	0xfc
	.4byte	0xeeb
	.uleb128 0x2c
	.4byte	0x849
	.uleb128 0x2c
	.4byte	0x83e
	.uleb128 0x2d
	.4byte	.LBB108
	.4byte	.LBE108
	.uleb128 0x2e
	.4byte	0x854
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x85e
	.4byte	.LBB109
	.4byte	.LBE109
	.byte	0x1
	.2byte	0x100
	.4byte	0xf19
	.uleb128 0x2c
	.4byte	0x876
	.uleb128 0x2c
	.4byte	0x86b
	.uleb128 0x2d
	.4byte	.LBB110
	.4byte	.LBE110
	.uleb128 0x2e
	.4byte	0x881
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x88b
	.4byte	.LBB111
	.4byte	.LBE111
	.byte	0x1
	.2byte	0x104
	.4byte	0xf47
	.uleb128 0x2c
	.4byte	0x8a3
	.uleb128 0x2c
	.4byte	0x898
	.uleb128 0x2d
	.4byte	.LBB112
	.4byte	.LBE112
	.uleb128 0x2e
	.4byte	0x8ae
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xbca
	.4byte	.LBB113
	.4byte	.LBE113
	.byte	0x1
	.2byte	0x108
	.4byte	0xf75
	.uleb128 0x2c
	.4byte	0xbe2
	.uleb128 0x2c
	.4byte	0xbd7
	.uleb128 0x2d
	.4byte	.LBB114
	.4byte	.LBE114
	.uleb128 0x2e
	.4byte	0xbed
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xbf7
	.4byte	.LBB115
	.4byte	.LBE115
	.byte	0x1
	.2byte	0x10c
	.4byte	0xfa3
	.uleb128 0x2c
	.4byte	0xc0f
	.uleb128 0x2c
	.4byte	0xc04
	.uleb128 0x2d
	.4byte	.LBB116
	.4byte	.LBE116
	.uleb128 0x2e
	.4byte	0xc1a
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x8b8
	.4byte	.LBB117
	.4byte	.LBE117
	.byte	0x1
	.2byte	0x110
	.4byte	0xfd1
	.uleb128 0x2c
	.4byte	0x8d0
	.uleb128 0x2c
	.4byte	0x8c5
	.uleb128 0x2d
	.4byte	.LBB118
	.4byte	.LBE118
	.uleb128 0x2e
	.4byte	0x8db
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x8e5
	.4byte	.LBB119
	.4byte	.LBE119
	.byte	0x1
	.2byte	0x114
	.4byte	0xfff
	.uleb128 0x2c
	.4byte	0x8fd
	.uleb128 0x2c
	.4byte	0x8f2
	.uleb128 0x2d
	.4byte	.LBB120
	.4byte	.LBE120
	.uleb128 0x2e
	.4byte	0x908
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xc24
	.4byte	.LBB121
	.4byte	.LBE121
	.byte	0x1
	.2byte	0x118
	.4byte	0x1048
	.uleb128 0x2c
	.4byte	0xc3c
	.uleb128 0x2c
	.4byte	0xc31
	.uleb128 0x2d
	.4byte	.LBB122
	.4byte	.LBE122
	.uleb128 0x2e
	.4byte	0xc47
	.uleb128 0x30
	.4byte	0xc50
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	0xc59
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	0xc62
	.4byte	.LLST22
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xc6c
	.4byte	.LBB123
	.4byte	.LBE123
	.byte	0x1
	.2byte	0x11c
	.4byte	0x1091
	.uleb128 0x2c
	.4byte	0xc84
	.uleb128 0x2c
	.4byte	0xc79
	.uleb128 0x2d
	.4byte	.LBB124
	.4byte	.LBE124
	.uleb128 0x2e
	.4byte	0xc8f
	.uleb128 0x30
	.4byte	0xc98
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	0xca1
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	0xcaa
	.4byte	.LLST25
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	0xcb4
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x143
	.4byte	0x112a
	.uleb128 0x2c
	.4byte	0xce0
	.uleb128 0x2c
	.4byte	0xcd6
	.uleb128 0x2c
	.4byte	0xccc
	.uleb128 0x2c
	.4byte	0xcc2
	.uleb128 0x31
	.4byte	0x754
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.2byte	0x172
	.4byte	0x10d0
	.uleb128 0x2c
	.4byte	0x76c
	.uleb128 0x2c
	.4byte	0x762
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x754
	.4byte	.LBB134
	.4byte	.LBE134
	.byte	0x2
	.2byte	0x173
	.4byte	0x10ef
	.uleb128 0x2c
	.4byte	0x76c
	.uleb128 0x2c
	.4byte	0x762
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x754
	.4byte	.LBB136
	.4byte	.LBE136
	.byte	0x2
	.2byte	0x174
	.4byte	0x110e
	.uleb128 0x2c
	.4byte	0x76c
	.uleb128 0x2c
	.4byte	0x762
	.byte	0x0
	.uleb128 0x32
	.4byte	0x754
	.4byte	.LBB138
	.4byte	.LBE138
	.byte	0x2
	.2byte	0x175
	.uleb128 0x2c
	.4byte	0x76c
	.uleb128 0x2c
	.4byte	0x762
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	0x947
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x14b
	.4byte	0x114e
	.uleb128 0x2c
	.4byte	0x96a
	.uleb128 0x2c
	.4byte	0x95f
	.uleb128 0x33
	.4byte	0x954
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x912
	.4byte	.LBB146
	.4byte	.LBE146
	.byte	0x1
	.2byte	0x148
	.4byte	0x1176
	.uleb128 0x2c
	.4byte	0x935
	.uleb128 0x2c
	.4byte	0x92a
	.uleb128 0x33
	.4byte	0x91f
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x31
	.4byte	0x976
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x14e
	.4byte	0x119a
	.uleb128 0x2c
	.4byte	0x999
	.uleb128 0x2c
	.4byte	0x98e
	.uleb128 0x33
	.4byte	0x983
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x31
	.4byte	0x9a5
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x151
	.4byte	0x11be
	.uleb128 0x2c
	.4byte	0x9c8
	.uleb128 0x2c
	.4byte	0x9bd
	.uleb128 0x33
	.4byte	0x9b2
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x31
	.4byte	0xcef
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x155
	.4byte	0x11e2
	.uleb128 0x2c
	.4byte	0xd12
	.uleb128 0x2c
	.4byte	0xd07
	.uleb128 0x33
	.4byte	0xcfc
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd1e
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x159
	.4byte	0x1206
	.uleb128 0x2c
	.4byte	0xd41
	.uleb128 0x2c
	.4byte	0xd36
	.uleb128 0x33
	.4byte	0xd2b
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd4d
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x15c
	.4byte	0x122a
	.uleb128 0x2c
	.4byte	0xd70
	.uleb128 0x2c
	.4byte	0xd65
	.uleb128 0x33
	.4byte	0xd5a
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x34
	.4byte	0xd7d
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x15f
	.uleb128 0x2c
	.4byte	0xda0
	.uleb128 0x2c
	.4byte	0xd95
	.uleb128 0x35
	.4byte	0xd8a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa3
	.4byte	0x125b
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x3
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x20b
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST33
	.4byte	0x12c6
	.uleb128 0x37
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x208
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x37
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x208
	.4byte	0x5e
	.4byte	.LLST35
	.uleb128 0x37
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x37
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x37
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x20a
	.4byte	0xe4
	.4byte	.LLST38
	.byte	0x0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST39
	.4byte	0x12ef
	.uleb128 0x27
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5
	.4byte	0x25
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.byte	0x3
	.4byte	0x132d
	.uleb128 0x1a
	.string	"Y"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1a
	.string	"Cb"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1a
	.string	"Cr"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x39
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x17a
	.4byte	0x21f
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST41
	.4byte	0x1534
	.uleb128 0x3a
	.string	"x"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST42
	.uleb128 0x3a
	.string	"y"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST43
	.uleb128 0x37
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST44
	.uleb128 0x37
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST45
	.uleb128 0x37
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x37
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x37
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x184
	.4byte	0xe4
	.4byte	.LLST48
	.uleb128 0x3b
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x22c
	.4byte	.LLST49
	.uleb128 0x3b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x105
	.4byte	.LLST50
	.uleb128 0x3c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x105
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x3d
	.string	"i"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST51
	.uleb128 0x3d
	.string	"j"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST52
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x108
	.uleb128 0x3d
	.string	"val"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x105
	.4byte	.LLST53
	.uleb128 0x3f
	.string	"Y1"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xf0
	.uleb128 0x3d
	.string	"Cb"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xf0
	.4byte	.LLST54
	.uleb128 0x3f
	.string	"Y2"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xf0
	.uleb128 0x3d
	.string	"Cr"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0xf0
	.4byte	.LLST55
	.uleb128 0x3c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x14c
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.4byte	0x12ef
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x200
	.4byte	0x14c7
	.uleb128 0x2c
	.4byte	0x131d
	.uleb128 0x2c
	.4byte	0x1312
	.uleb128 0x2c
	.4byte	0x1307
	.uleb128 0x2c
	.4byte	0x12fd
	.uleb128 0x31
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x17e
	.4byte	0x1496
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x31
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.2byte	0x17d
	.4byte	0x14b0
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST57
	.byte	0x0
	.uleb128 0x34
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x17c
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST58
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.4byte	0x12ef
	.4byte	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.2byte	0x1f7
	.uleb128 0x2c
	.4byte	0x131d
	.uleb128 0x2c
	.4byte	0x1312
	.uleb128 0x2c
	.4byte	0x1307
	.uleb128 0x2c
	.4byte	0x12fd
	.uleb128 0x31
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1501
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x31
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.2byte	0x17d
	.4byte	0x151b
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST60
	.byte	0x0
	.uleb128 0x34
	.4byte	0x9d4
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.2byte	0x17e
	.uleb128 0x33
	.4byte	0x9e6
	.4byte	.LLST61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF144
	.byte	0x2
	.byte	0x3c
	.4byte	0x2c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x40
	.4byte	.LASF145
	.byte	0x2
	.byte	0x3d
	.4byte	0x18d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x27f
	.4byte	0x1568
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF146
	.byte	0x2
	.byte	0x3e
	.4byte	0x1558
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x40
	.4byte	.LASF147
	.byte	0x2
	.byte	0x4a
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x40
	.4byte	.LASF148
	.byte	0x2
	.byte	0x4b
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x31f
	.4byte	0x15ae
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.byte	0x0
	.uleb128 0x41
	.string	"tex"
	.byte	0x2
	.byte	0x4c
	.4byte	0x159e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x40
	.4byte	.LASF93
	.byte	0x2
	.byte	0x4d
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x18d
	.4byte	0x15e3
	.uleb128 0x42
	.4byte	0xd1
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF149
	.byte	0x2
	.byte	0x4f
	.4byte	0x15d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x40
	.4byte	.LASF150
	.byte	0x2
	.byte	0x50
	.4byte	0x15d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x27f
	.4byte	0x161e
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.uleb128 0x42
	.4byte	0xd1
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF151
	.byte	0x2
	.byte	0x51
	.4byte	0x1607
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x2c3
	.4byte	0x1641
	.uleb128 0x42
	.4byte	0xd1
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF152
	.byte	0x2
	.byte	0x52
	.4byte	0x1630
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x2
	.byte	0x5c
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x40
	.4byte	.LASF154
	.byte	0x2
	.byte	0x5d
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x40
	.4byte	.LASF155
	.byte	0x2
	.byte	0x5e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x40
	.4byte	.LASF156
	.byte	0x2
	.byte	0x60
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x40
	.4byte	.LASF157
	.byte	0x2
	.byte	0x61
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x40
	.4byte	.LASF158
	.byte	0x2
	.byte	0x65
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x40
	.4byte	.LASF159
	.byte	0x2
	.byte	0x66
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x40
	.4byte	.LASF160
	.byte	0x2
	.byte	0x67
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x40
	.4byte	.LASF161
	.byte	0x2
	.byte	0x68
	.4byte	0xa3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x40
	.4byte	.LASF162
	.byte	0x2
	.byte	0x74
	.4byte	0x36f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x40
	.4byte	.LASF163
	.byte	0x2
	.byte	0x75
	.4byte	0x36f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x36f
	.4byte	0x1729
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF164
	.byte	0x2
	.byte	0x76
	.4byte	0x1719
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x40
	.4byte	.LASF165
	.byte	0x2
	.byte	0x77
	.4byte	0x174d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x36f
	.uleb128 0x40
	.4byte	.LASF166
	.byte	0x2
	.byte	0x78
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x435
	.4byte	0x1775
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF167
	.byte	0x2
	.byte	0x93
	.4byte	0x1765
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x40
	.4byte	.LASF168
	.byte	0x2
	.byte	0x96
	.4byte	0x2c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x40
	.4byte	.LASF169
	.byte	0x2
	.byte	0xa3
	.4byte	0x493
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x40
	.4byte	.LASF170
	.byte	0x2
	.byte	0xa6
	.4byte	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x40
	.4byte	.LASF171
	.byte	0x2
	.byte	0xa7
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x40
	.4byte	.LASF172
	.byte	0x2
	.byte	0xab
	.4byte	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x40
	.4byte	.LASF173
	.byte	0x2
	.byte	0xb2
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x40
	.4byte	.LASF174
	.byte	0x2
	.byte	0xb3
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x40
	.4byte	.LASF175
	.byte	0x2
	.byte	0xb4
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x2
	.byte	0xb5
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x40
	.4byte	.LASF177
	.byte	0x2
	.byte	0xb7
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x40
	.4byte	.LASF178
	.byte	0x2
	.byte	0xc0
	.4byte	0x4bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x40
	.4byte	.LASF179
	.byte	0x2
	.byte	0xea
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x40
	.4byte	.LASF180
	.byte	0x2
	.byte	0xeb
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x40
	.4byte	.LASF181
	.byte	0x2
	.byte	0xec
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x2
	.byte	0xed
	.4byte	0x509
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x2
	.byte	0xee
	.4byte	0x509
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x40
	.4byte	.LASF184
	.byte	0x2
	.byte	0xef
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x40
	.4byte	.LASF185
	.byte	0x2
	.byte	0xf0
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x40
	.4byte	.LASF142
	.byte	0x2
	.byte	0xf2
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x40
	.4byte	.LASF186
	.byte	0x2
	.byte	0xf3
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x40
	.4byte	.LASF187
	.byte	0x2
	.byte	0xff
	.4byte	0x575
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x43
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x100
	.4byte	0x575
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0x13b
	.4byte	0x1924
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x3
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF189
	.byte	0x2
	.2byte	0x101
	.4byte	0x1914
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x43
	.4byte	.LASF190
	.byte	0x2
	.2byte	0x107
	.4byte	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x43
	.4byte	.LASF191
	.byte	0x2
	.2byte	0x108
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x43
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x10b
	.4byte	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x5ac
	.4byte	0x1980
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x3
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF193
	.byte	0x2
	.2byte	0x11f
	.4byte	0x1970
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x43
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x144
	.4byte	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x43
	.4byte	.LASF195
	.byte	0x2
	.2byte	0x145
	.4byte	0xf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x43
	.4byte	.LASF196
	.byte	0x2
	.2byte	0x146
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x43
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x147
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x43
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x148
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x2
	.2byte	0x149
	.4byte	0x1da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x720
	.4byte	0x1a15
	.uleb128 0xb
	.4byte	0xd1
	.byte	0x7
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x14b
	.4byte	0x1a05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x43
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x150
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x43
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x153
	.4byte	0x82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.byte	0x0
	.section	.debug_abbrev
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x4
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x3f2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a4f
	.4byte	0x125b
	.string	"glGetTexImage"
	.4byte	0x12c6
	.string	"glReadBuffer"
	.4byte	0x132d
	.string	"glReadPixels"
	.4byte	0x1534
	.string	"_tempcolorelement"
	.4byte	0x1546
	.string	"_tempnormalelement"
	.4byte	0x1568
	.string	"_temptexcoordelement"
	.4byte	0x157a
	.string	"norm"
	.4byte	0x158c
	.string	"vert"
	.4byte	0x15ae
	.string	"tex"
	.4byte	0x15c0
	.string	"color"
	.4byte	0x15e3
	.string	"_normalelements"
	.4byte	0x15f5
	.string	"_vertexelements"
	.4byte	0x161e
	.string	"_texcoordelements"
	.4byte	0x1641
	.string	"_colorelements"
	.4byte	0x1653
	.string	"vert_i"
	.4byte	0x1665
	.string	"_type"
	.4byte	0x1677
	.string	"_GLtype"
	.4byte	0x1689
	.string	"cur_tex"
	.4byte	0x169b
	.string	"cur_tex_client"
	.4byte	0x16ad
	.string	"depthtestenabled"
	.4byte	0x16bf
	.string	"depthupdate"
	.4byte	0x16d1
	.string	"depthfunction"
	.4byte	0x16e3
	.string	"_cleardepth"
	.4byte	0x16f5
	.string	"model_stack"
	.4byte	0x1707
	.string	"projection_stack"
	.4byte	0x1729
	.string	"texture_stack"
	.4byte	0x173b
	.string	"curmtx"
	.4byte	0x1753
	.string	"cur_mode"
	.4byte	0x1775
	.string	"lights"
	.4byte	0x1787
	.string	"globAmbient"
	.4byte	0x1799
	.string	"curmat"
	.4byte	0x17ab
	.string	"gxcullfaceanabled"
	.4byte	0x17bd
	.string	"gxwinding"
	.4byte	0x17cf
	.string	"lighting"
	.4byte	0x17e1
	.string	"blend_type"
	.4byte	0x17f3
	.string	"blend_src"
	.4byte	0x1805
	.string	"blend_dst"
	.4byte	0x1817
	.string	"blend_op"
	.4byte	0x1829
	.string	"cull_mode"
	.4byte	0x183b
	.string	"cur_state"
	.4byte	0x184d
	.string	"fb_max_height"
	.4byte	0x185f
	.string	"fb_max_width"
	.4byte	0x1871
	.string	"scissor_test"
	.4byte	0x1883
	.string	"scissorInfo"
	.4byte	0x1895
	.string	"viewPort"
	.4byte	0x18a7
	.string	"normNear"
	.4byte	0x18b9
	.string	"normFar"
	.4byte	0x18cb
	.string	"line_width"
	.4byte	0x18dd
	.string	"point_size"
	.4byte	0x18ef
	.string	"pack"
	.4byte	0x1901
	.string	"unpack"
	.4byte	0x1924
	.string	"color_write_mask"
	.4byte	0x1937
	.string	"copy_mat_enabled"
	.4byte	0x194a
	.string	"copy_material"
	.4byte	0x195d
	.string	"_clearcolor"
	.4byte	0x1980
	.string	"Trans"
	.4byte	0x1993
	.string	"fog_enable"
	.4byte	0x19a6
	.string	"fog_mode"
	.4byte	0x19b9
	.string	"fog_startz"
	.4byte	0x19cc
	.string	"fog_endz"
	.4byte	0x19df
	.string	"fog_density"
	.4byte	0x19f2
	.string	"fog_color"
	.4byte	0x1a15
	.string	"glTexEnvs"
	.4byte	0x1a28
	.string	"read_mode"
	.4byte	0x1a3b
	.string	"call_offset"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	.LBB157-.Ltext0
	.4byte	.LBE157-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB179-.Ltext0
	.4byte	.LBE179-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	.LBB180-.Ltext0
	.4byte	.LBE180-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB198-.Ltext0
	.4byte	.LBE198-.Ltext0
	.4byte	.LBB257-.Ltext0
	.4byte	.LBE257-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB255-.Ltext0
	.4byte	.LBE255-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB254-.Ltext0
	.4byte	.LBE254-.Ltext0
	.4byte	.LBB253-.Ltext0
	.4byte	.LBE253-.Ltext0
	.4byte	.LBB252-.Ltext0
	.4byte	.LBE252-.Ltext0
	.4byte	.LBB251-.Ltext0
	.4byte	.LBE251-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	.LBB226-.Ltext0
	.4byte	.LBE226-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	.LBB205-.Ltext0
	.4byte	.LBE205-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB211-.Ltext0
	.4byte	.LBE211-.Ltext0
	.4byte	.LBB209-.Ltext0
	.4byte	.LBE209-.Ltext0
	.4byte	.LBB210-.Ltext0
	.4byte	.LBE210-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB217-.Ltext0
	.4byte	.LBE217-.Ltext0
	.4byte	.LBB215-.Ltext0
	.4byte	.LBE215-.Ltext0
	.4byte	.LBB216-.Ltext0
	.4byte	.LBE216-.Ltext0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB227-.Ltext0
	.4byte	.LBE227-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB236-.Ltext0
	.4byte	.LBE236-.Ltext0
	.4byte	.LBB241-.Ltext0
	.4byte	.LBE241-.Ltext0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB242-.Ltext0
	.4byte	.LBE242-.Ltext0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"CargOp"
.LASF126:
	.string	"put_UINT_2_10_10_10_REV"
.LASF182:
	.string	"scissorInfo"
.LASF14:
	.string	"size_t"
.LASF95:
	.string	"alpha_scale"
.LASF165:
	.string	"curmtx"
.LASF194:
	.string	"fog_enable"
.LASF188:
	.string	"unpack"
.LASF168:
	.string	"globAmbient"
.LASF120:
	.string	"put_UINT"
.LASF77:
	.string	"max_filter"
.LASF34:
	.string	"type"
.LASF9:
	.string	"GLuint"
.LASF66:
	.string	"row_length"
.LASF98:
	.string	"TransformC"
.LASF97:
	.string	"putType"
.LASF17:
	.string	"long long unsigned int"
.LASF164:
	.string	"texture_stack"
.LASF100:
	.string	"pixel"
.LASF42:
	.string	"spotDir"
.LASF58:
	.string	"GL_STATE_NEWLIST"
.LASF201:
	.string	"read_mode"
.LASF151:
	.string	"_texcoordelements"
.LASF56:
	.string	"GL_STATE_NONE"
.LASF11:
	.string	"GLfloat"
.LASF128:
	.string	"put_RGB"
.LASF158:
	.string	"depthtestenabled"
.LASF129:
	.string	"put_RGBA"
.LASF22:
	.string	"_vecf"
.LASF16:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_gx_litobj"
.LASF99:
	.string	"put_UBYTE_3_3_2"
.LASF103:
	.string	"put_USHORT_5_6_5"
.LASF33:
	.string	"size"
.LASF204:
	.string	"c:/projects/wii/gl2gx/libogc/../source/gl_outcopy.c"
.LASF72:
	.string	"scale"
.LASF160:
	.string	"depthfunction"
.LASF145:
	.string	"_tempnormalelement"
.LASF116:
	.string	"put_UBYTE"
.LASF21:
	.string	"Vector"
.LASF55:
	.string	"Material"
.LASF74:
	.string	"ColorTrans"
.LASF15:
	.string	"long int"
.LASF139:
	.string	"YCbCr2RGB"
.LASF53:
	.string	"emissive"
.LASF27:
	.string	"VertexElement"
.LASF107:
	.string	"put_UINT_8_8_8_8"
.LASF138:
	.string	"glReadBuffer"
.LASF94:
	.string	"rgb_scale"
.LASF176:
	.string	"blend_op"
.LASF150:
	.string	"_vertexelements"
.LASF106:
	.string	"put_USHORT_4_4_4_4_REV"
.LASF31:
	.string	"enable"
.LASF196:
	.string	"fog_startz"
.LASF13:
	.string	"double"
.LASF78:
	.string	"wrap_s"
.LASF79:
	.string	"wrap_t"
.LASF141:
	.string	"buffer"
.LASF175:
	.string	"blend_dst"
.LASF10:
	.string	"GLsizei"
.LASF50:
	.string	"quad_t"
.LASF163:
	.string	"projection_stack"
.LASF71:
	.string	"_trans"
.LASF110:
	.string	"put_GREEN"
.LASF6:
	.string	"GLint"
.LASF115:
	.string	"pixels"
.LASF52:
	.string	"_mat"
.LASF51:
	.string	"LightObj"
.LASF137:
	.string	"glGetTexImage"
.LASF195:
	.string	"fog_mode"
.LASF140:
	.string	"glReadPixels"
.LASF73:
	.string	"bias"
.LASF2:
	.string	"unsigned int"
.LASF153:
	.string	"vert_i"
.LASF37:
	.string	"begin"
.LASF29:
	.string	"GXColorf"
.LASF130:
	.string	"put_LUMINANCE"
.LASF18:
	.string	"long unsigned int"
.LASF40:
	.string	"_light"
.LASF80:
	.string	"minlod"
.LASF48:
	.string	"constant"
.LASF162:
	.string	"model_stack"
.LASF54:
	.string	"shininess"
.LASF174:
	.string	"blend_src"
.LASF84:
	.string	"edgelod"
.LASF61:
	.string	"width"
.LASF136:
	.string	"level"
.LASF152:
	.string	"_colorelements"
.LASF159:
	.string	"depthupdate"
.LASF8:
	.string	"short unsigned int"
.LASF178:
	.string	"cur_state"
.LASF35:
	.string	"VertexArray"
.LASF59:
	.string	"glState"
.LASF49:
	.string	"linear"
.LASF197:
	.string	"fog_endz"
.LASF7:
	.string	"GLubyte"
.LASF135:
	.string	"target"
.LASF65:
	.string	"lsb_first"
.LASF20:
	.string	"bool"
.LASF121:
	.string	"put_INT"
.LASF5:
	.string	"short int"
.LASF154:
	.string	"_type"
.LASF202:
	.string	"call_offset"
.LASF183:
	.string	"viewPort"
.LASF171:
	.string	"gxwinding"
.LASF189:
	.string	"color_write_mask"
.LASF207:
	.string	"_glState"
.LASF1:
	.string	"GLboolean"
.LASF111:
	.string	"put_BLUE"
.LASF113:
	.string	"GetIlum"
.LASF147:
	.string	"norm"
.LASF114:
	.string	"clamp_255"
.LASF131:
	.string	"put_LUMINANCE_ALPHA"
.LASF68:
	.string	"skip_pixels"
.LASF172:
	.string	"lighting"
.LASF112:
	.string	"put_ALPHA"
.LASF39:
	.string	"Stack"
.LASF30:
	.string	"_array"
.LASF46:
	.string	"spotExponent"
.LASF96:
	.string	"glTexEnvSet"
.LASF166:
	.string	"cur_mode"
.LASF199:
	.string	"fog_color"
.LASF70:
	.string	"pixelStore"
.LASF102:
	.string	"put_UBYTE_2_3_3_REV"
.LASF142:
	.string	"line_width"
.LASF64:
	.string	"swap"
.LASF198:
	.string	"fog_density"
.LASF12:
	.string	"float"
.LASF192:
	.string	"_clearcolor"
.LASF191:
	.string	"copy_material"
.LASF43:
	.string	"ambient"
.LASF184:
	.string	"normNear"
.LASF69:
	.string	"alignment"
.LASF26:
	.string	"GXLightObj"
.LASF57:
	.string	"GL_STATE_BEGIN"
.LASF60:
	.string	"boxInfo"
.LASF143:
	.string	"n_lines"
.LASF118:
	.string	"put_USHORT"
.LASF3:
	.string	"unsigned char"
.LASF185:
	.string	"normFar"
.LASF177:
	.string	"cull_mode"
.LASF38:
	.string	"elem_size"
.LASF180:
	.string	"fb_max_width"
.LASF101:
	.string	"rgba"
.LASF81:
	.string	"maxlod"
.LASF83:
	.string	"biasclamp"
.LASF104:
	.string	"put_USHORT_5_6_5_REV"
.LASF82:
	.string	"lodbias"
.LASF133:
	.string	"format"
.LASF186:
	.string	"point_size"
.LASF91:
	.string	"Aarg"
.LASF203:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF161:
	.string	"_cleardepth"
.LASF32:
	.string	"stride"
.LASF28:
	.string	"TexCoordElement"
.LASF92:
	.string	"AargOp"
.LASF132:
	.string	"write_rgb"
.LASF148:
	.string	"vert"
.LASF93:
	.string	"color"
.LASF19:
	.string	"char"
.LASF89:
	.string	"Carg"
.LASF86:
	.string	"mode"
.LASF45:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF23:
	.string	"_gx_color"
.LASF179:
	.string	"fb_max_height"
.LASF127:
	.string	"TransformRGBA"
.LASF181:
	.string	"scissor_test"
.LASF85:
	.string	"maxaniso"
.LASF123:
	.string	"put_USHORT_5_5_5_1"
.LASF169:
	.string	"curmat"
.LASF144:
	.string	"_tempcolorelement"
.LASF205:
	.string	"c:\\\\projects\\\\wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF190:
	.string	"copy_mat_enabled"
.LASF206:
	.string	"GLvoid"
.LASF187:
	.string	"pack"
.LASF88:
	.string	"comAlpha"
.LASF105:
	.string	"put_USHORT_4_4_4_4"
.LASF146:
	.string	"_temptexcoordelement"
.LASF193:
	.string	"Trans"
.LASF109:
	.string	"put_RED"
.LASF124:
	.string	"put_USHORT_1_5_5_5_REV"
.LASF75:
	.string	"_tex_env"
.LASF167:
	.string	"lights"
.LASF76:
	.string	"min_filter"
.LASF149:
	.string	"_normalelements"
.LASF108:
	.string	"put_UINT_8_8_8_8_REV"
.LASF122:
	.string	"put_FLOAT"
.LASF119:
	.string	"put_SHORT"
.LASF117:
	.string	"put_BYTE"
.LASF156:
	.string	"cur_tex"
.LASF44:
	.string	"diffuse"
.LASF173:
	.string	"blend_type"
.LASF47:
	.string	"spotCutoff"
.LASF87:
	.string	"comRGB"
.LASF24:
	.string	"GXColor"
.LASF155:
	.string	"_GLtype"
.LASF36:
	.string	"_stack"
.LASF200:
	.string	"glTexEnvs"
.LASF62:
	.string	"height"
.LASF63:
	.string	"_pixelStore"
.LASF157:
	.string	"cur_tex_client"
.LASF170:
	.string	"gxcullfaceanabled"
.LASF41:
	.string	"enabled"
.LASF134:
	.string	"rgba_f"
.LASF125:
	.string	"put_UINT_10_10_10_2"
.LASF67:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
