	.file	"quad.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	gluQuadricError, @function
gluQuadricError:
.LFB4:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/libutil/quad.c"
	.loc 1 85 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	stw 0,12(1)
.LCFI2:
	.loc 1 86 0
	lwz 0,16(3)
	.loc 1 85 0
	mr 3,4
.LVL1:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L4
.LVL2:
	.loc 1 87 0
	mtctr 0
	bctrl
.LVL3:
.LVL4:
.L4:
	.loc 1 89 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE4:
	.size	gluQuadricError, .-gluQuadricError
	.align 2
	.globl gluQuadricCallback
	.type	gluQuadricCallback, @function
gluQuadricCallback:
.LFB5:
	.loc 1 93 0
.LVL5:
	.loc 1 94 0
	lis 0,0x1
	ori 0,0,34567
	cmpw 7,4,0
	beq- 7,.L11
	.loc 1 99 0
	lis 4,0x1
.LVL6:
	ori 4,4,35364
	b gluQuadricError
.LVL7:
.L11:
	.loc 1 96 0
	stw 5,16(3)
	.loc 1 102 0
	blr
.LFE5:
	.size	gluQuadricCallback, .-gluQuadricCallback
	.align 2
	.globl gluQuadricNormals
	.type	gluQuadricNormals, @function
gluQuadricNormals:
.LFB6:
	.loc 1 106 0
.LVL8:
	.loc 1 107 0
	addis 9,4,0xfffe
	addi 9,9,31072
	cmplwi 7,9,2
	ble- 7,.L14
	.loc 1 113 0
	lis 4,0x1
.LVL9:
	ori 4,4,35364
	b gluQuadricError
.LVL10:
.L14:
	.loc 1 116 0
	stw 4,0(3)
	.loc 1 117 0
	blr
.LFE6:
	.size	gluQuadricNormals, .-gluQuadricNormals
	.align 2
	.globl gluQuadricTexture
	.type	gluQuadricTexture, @function
gluQuadricTexture:
.LFB7:
	.loc 1 121 0
.LVL11:
	.loc 1 122 0
	stb 4,4(3)
	.loc 1 123 0
	blr
.LFE7:
	.size	gluQuadricTexture, .-gluQuadricTexture
	.align 2
	.globl gluQuadricOrientation
	.type	gluQuadricOrientation, @function
gluQuadricOrientation:
.LFB8:
	.loc 1 127 0
.LVL12:
	.loc 1 128 0
	addis 9,4,0xfffe
	addi 9,9,31052
	cmplwi 7,9,1
	ble- 7,.L21
	.loc 1 133 0
	lis 4,0x1
.LVL13:
	ori 4,4,35364
	b gluQuadricError
.LVL14:
.L21:
	.loc 1 136 0
	stw 4,8(3)
	.loc 1 137 0
	blr
.LFE8:
	.size	gluQuadricOrientation, .-gluQuadricOrientation
	.align 2
	.globl gluQuadricDrawStyle
	.type	gluQuadricDrawStyle, @function
gluQuadricDrawStyle:
.LFB9:
	.loc 1 141 0
.LVL15:
	.loc 1 142 0
	addis 9,4,0xfffe
	addi 9,9,31062
	cmplwi 7,9,3
	ble- 7,.L26
	.loc 1 149 0
	lis 4,0x1
.LVL16:
	ori 4,4,35364
	b gluQuadricError
.LVL17:
.L26:
	.loc 1 152 0
	stw 4,12(3)
	.loc 1 153 0
	blr
.LFE9:
	.size	gluQuadricDrawStyle, .-gluQuadricDrawStyle
	.align 2
	.globl gluSphere
	.type	gluSphere, @function
gluSphere:
.LFB13:
	.loc 1 702 0
.LVL18:
	mfcr 12
.LCFI3:
	cmpwi 7,4,239
	mflr 0
.LCFI4:
	stwu 1,-11784(1)
.LCFI5:
	stfd 28,11752(1)
.LCFI6:
	fmr 28,1
	stw 27,11620(1)
.LCFI7:
	mr 27,4
	stfd 14,11640(1)
.LCFI8:
	stfd 15,11648(1)
.LCFI9:
	stfd 16,11656(1)
.LCFI10:
	stfd 17,11664(1)
.LCFI11:
	stfd 18,11672(1)
.LCFI12:
	stfd 19,11680(1)
.LCFI13:
	stfd 20,11688(1)
.LCFI14:
	stfd 21,11696(1)
.LCFI15:
	stfd 22,11704(1)
.LCFI16:
	stfd 23,11712(1)
.LCFI17:
	stfd 24,11720(1)
.LCFI18:
	stfd 25,11728(1)
.LCFI19:
	stfd 26,11736(1)
.LCFI20:
	stfd 27,11744(1)
.LCFI21:
	stfd 29,11760(1)
.LCFI22:
	stfd 30,11768(1)
.LCFI23:
	stfd 31,11776(1)
.LCFI24:
	stw 14,11568(1)
.LCFI25:
	stw 15,11572(1)
.LCFI26:
	stw 16,11576(1)
.LCFI27:
	stw 17,11580(1)
.LCFI28:
	stw 18,11584(1)
.LCFI29:
	stw 19,11588(1)
.LCFI30:
	stw 20,11592(1)
.LCFI31:
	stw 21,11596(1)
.LCFI32:
	stw 22,11600(1)
.LCFI33:
	stw 23,11604(1)
.LCFI34:
	stw 24,11608(1)
.LCFI35:
	stw 25,11612(1)
.LCFI36:
	stw 26,11616(1)
.LCFI37:
	stw 28,11624(1)
.LCFI38:
	stw 29,11628(1)
.LCFI39:
	mr 29,3
	stw 30,11632(1)
.LCFI40:
	stw 31,11636(1)
.LCFI41:
	stw 0,11788(1)
.LCFI42:
	stw 12,11564(1)
.LCFI43:
	.loc 1 702 0
	ble- 7,.L30
.LVL19:
	li 27,239
.LVL20:
.L173:
	.loc 1 727 0
	cmpwi 7,5,239
	mr 23,5
	bgt- 7,.L195
.LVL21:
	cmpwi 7,5,0
	ble- 7,.L31
.L174:
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,28,0
	blt- 7,.L31
	.loc 1 737 0
	lwz 19,0(29)
	lis 0,0x1
	ori 0,0,34464
	cmpw 7,19,0
	mr 18,19
	beq- 7,.L196
	.loc 1 741 0
	xoris 0,19,0xfffe
	cmpwi 7,0,-31071
	beq 7,.L197
	lwz 24,12(29)
.L40:
	.loc 1 745 0
	li 11,0
.LVL22:
	li 17,0
.LVL23:
.L39:
	lis 9,.LC2@ha
	xoris 0,27,0x8000
	lfs 12,.LC2@l(9)
	lis 9,0x4330
	stw 9,11528(1)
	.loc 1 752 0
	lis 9,.LC3@ha
	.loc 1 745 0
	stw 0,11532(1)
	fmr 13,12
	.loc 1 752 0
	fmr 27,12
	cmpwi 4,11,0
	.loc 1 745 0
	lfd 0,11528(1)
	li 30,0
.LVL24:
	.loc 1 752 0
	lfd 29,.LC3@l(9)
	.loc 1 745 0
	li 31,0
	fsub 26,0,13
	addi 22,1,8
	addi 20,1,968
	.loc 1 755 0
	addi 25,1,1928
	.loc 1 756 0
	addi 26,1,2888
.L45:
	.loc 1 752 0
	xoris 0,30,0x8000
	lis 28,0x4330
	stw 0,11532(1)
	.loc 1 750 0
	addi 30,30,1
	.loc 1 752 0
	stw 28,11528(1)
	lfd 31,11528(1)
	fsub 31,31,27
	fmul 31,31,29
	fdiv 31,31,26
	frsp 31,31
	fmr 1,31
	bl sin
.LVL25:
	frsp 30,1
	.loc 1 753 0
	fmr 1,31
	.loc 1 752 0
	stfsx 30,31,22
	.loc 1 753 0
	bl cos
	.loc 1 750 0
	cmpw 7,30,27
	.loc 1 753 0
	frsp 1,1
	stfsx 1,31,20
	.loc 1 754 0
	beq- 4,.L46
	.loc 1 755 0
	stfsx 30,31,25
	.loc 1 756 0
	stfsx 1,31,26
.L46:
	.loc 1 750 0
	addi 31,31,4
	bne+ 7,.L45
	xoris 0,23,0x8000
	stw 28,11528(1)
	stw 0,11532(1)
	.loc 1 761 0
	lis 9,.LC2@ha
	lfs 13,.LC2@l(9)
	lis 9,.LC4@ha
	.loc 1 750 0
	lfd 0,11528(1)
	.loc 1 763 0
	lis 30,0x1
.LVL26:
	.loc 1 761 0
	fmr 25,13
	.loc 1 763 0
	ori 30,30,34484
	.loc 1 750 0
	fsub 29,0,27
	.loc 1 761 0
	lfd 27,.LC4@l(9)
	.loc 1 750 0
	li 28,0
.LVL27:
	li 31,0
	addi 15,1,5768
	addi 16,1,6728
	addi 21,23,1
	.loc 1 767 0
	addi 25,1,7688
	.loc 1 768 0
	addi 26,1,8648
	b .L49
.LVL28:
.L199:
	.loc 1 702 0
	fmr 1,30
	bl sin
	fmr 31,1
	fmr 1,30
	bl cos
.L52:
	.loc 1 771 0
	fmul 0,28,31
	.loc 1 760 0
	addi 28,28,1
	cmpw 7,28,21
	.loc 1 772 0
	fmul 13,28,1
	.loc 1 771 0
	frsp 0,0
	.loc 1 772 0
	frsp 13,13
	.loc 1 771 0
	stfsx 0,31,15
	.loc 1 772 0
	stfsx 13,31,16
	.loc 1 760 0
	addi 31,31,4
	beq- 7,.L198
.L49:
	.loc 1 761 0
	xoris 0,28,0x8000
	lis 9,0x4330
	stw 0,11532(1)
	stw 9,11528(1)
	lfd 0,11528(1)
	fsub 0,0,25
	fmul 0,0,27
	fdiv 0,0,29
	frsp 30,0
	.loc 1 762 0
	beq- 4,.L199
	.loc 1 763 0
	lwz 0,8(29)
	cmpw 7,0,30
	beq- 7,.L200
	.loc 1 767 0
	fmr 1,30
	.loc 1 760 0
	addi 28,28,1
	.loc 1 767 0
	bl sin
	fmr 31,1
	.loc 1 768 0
	fmr 1,30
	.loc 1 767 0
	frsp 0,31
	fneg 0,0
	stfsx 0,31,25
	.loc 1 768 0
	bl cos
	.loc 1 760 0
	cmpw 7,28,21
	.loc 1 768 0
	frsp 0,1
	.loc 1 772 0
	fmul 13,28,1
	.loc 1 768 0
	fneg 0,0
	.loc 1 772 0
	frsp 13,13
	.loc 1 768 0
	stfsx 0,31,26
	.loc 1 771 0
	fmul 0,28,31
	.loc 1 772 0
	stfsx 13,31,16
	.loc 1 771 0
	frsp 0,0
	stfsx 0,31,15
	.loc 1 760 0
	addi 31,31,4
	bne+ 7,.L49
.L198:
	.loc 1 778 0
	cmpwi 2,17,0
	.loc 1 776 0
	slwi 14,23,2
	.loc 1 775 0
	li 0,0
	.loc 1 776 0
	add 9,14,22
	.loc 1 775 0
	stw 0,5768(1)
	.loc 1 776 0
	stw 0,5760(9)
	.loc 1 778 0
	bne- 2,.L201
.LVL29:
.L56:
	.loc 1 796 0
	slwi 17,27,2
.LVL30:
	lfs 0,8(1)
	.loc 1 797 0
	lfs 13,968(1)
	.loc 1 796 0
	add 9,17,22
	stfsx 0,17,22
	.loc 1 797 0
	stfs 13,960(9)
	.loc 1 798 0
	beq- 4,.L64
	.loc 1 799 0
	lfs 0,1928(1)
	.loc 1 800 0
	lfs 13,2888(1)
	.loc 1 799 0
	stfs 0,1920(9)
	.loc 1 800 0
	stfs 13,2880(9)
.L64:
	.loc 1 802 0
	beq- 2,.L66
	.loc 1 803 0
	lfs 0,3848(1)
	.loc 1 804 0
	lfs 13,4808(1)
	.loc 1 803 0
	stfs 0,3840(9)
	.loc 1 804 0
	stfs 13,4800(9)
.L66:
	.loc 1 807 0
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,24,0
	beq- 7,.L70
	ble- 7,.L202
	xoris 0,24,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L71
	xoris 0,24,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L169
.L70:
	.loc 1 1081 0
	cmpwi 7,23,1
	beq- 7,.L74
	.loc 1 1112 0
	lis 9,.LC7@ha
	.loc 1 1096 0
	lis 26,0x1
	.loc 1 1112 0
	lfs 27,.LC7@l(9)
	lis 9,.LC2@ha
	.loc 1 1096 0
	lis 28,0x1
.LVL31:
	.loc 1 1112 0
	lfs 26,.LC2@l(9)
	.loc 1 1096 0
	ori 26,26,34464
	ori 28,28,34465
	.loc 1 1078 0
	li 24,1
.LVL32:
	addi 25,27,1
	.loc 1 1103 0
	addi 19,1,2888
	.loc 1 1098 0
	addi 17,1,3848
	addi 14,1,4808
.LVL33:
.L148:
	.loc 1 1084 0
	addis 9,18,0xfffe
	.loc 1 702 0
	slwi 0,24,2
	.loc 1 1084 0
	addi 9,9,31072
	.loc 1 1082 0
	lfsx 31,15,0
	.loc 1 1084 0
	cmplwi 7,9,1
	.loc 1 1083 0
	lfsx 30,16,0
.LVL34:
	.loc 1 1084 0
	bgt- 7,.L149
	.loc 1 1088 0
	addi 9,1,8648
	lfsx 28,9,0
.LVL35:
	.loc 1 1087 0
	addi 9,1,7688
	lfsx 29,9,0
.LVL36:
.L149:
	.loc 1 1094 0
	li 3,3
	li 30,0
	bl glBegin
	li 31,0
	b .L151
.L155:
	.loc 1 1115 0
	lfsx 1,31,22
	fmr 3,30
	lfsx 2,31,20
	.loc 1 1095 0
	addi 30,30,1
	.loc 1 1115 0
	fmuls 1,31,1
	.loc 1 1095 0
	addi 31,31,4
	.loc 1 1115 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 1095 0
	cmpw 7,30,25
	beq- 7,.L203
.L151:
	.loc 1 1096 0
	lwz 0,0(29)
	cmpw 7,0,26
	cmpw 6,0,28
	beq- 7,.L153
	bne+ 6,.L152
	.loc 1 1098 0
	lfsx 1,31,17
	fmr 3,28
	lfsx 2,31,14
	fmuls 1,29,1
	fmuls 2,29,2
	bl glNormal3f
.L152:
	.loc 1 1111 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L155
	.loc 1 1112 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,27,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,24,0x8000
	stw 11,11528(1)
	xoris 9,23,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	.loc 1 1095 0
	addi 30,30,1
	.loc 1 1112 0
	stw 0,11532(1)
	lfd 12,11536(1)
	fsub 1,1,0
	stw 9,11540(1)
	lfd 2,11528(1)
	fsub 12,12,0
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
	.loc 1 1115 0
	lfsx 1,31,22
	lfsx 2,31,20
	fmr 3,30
	fmuls 1,31,1
	.loc 1 1095 0
	addi 31,31,4
	.loc 1 1115 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 1095 0
	cmpw 7,30,25
	bne+ 7,.L151
.L203:
	.loc 1 1081 0
	addi 24,24,1
	.loc 1 1118 0
	bl glEnd
	.loc 1 1081 0
	cmpw 7,24,23
	beq- 7,.L171
	lwz 18,0(29)
	b .L148
.LVL37:
.L30:
	.loc 1 727 0
	cmpwi 7,4,1
	bgt+ 7,.L173
.LVL38:
.L31:
	.loc 1 1164 0
	lwz 0,11788(1)
	.loc 1 728 0
	lis 4,0x1
.LVL39:
	.loc 1 1164 0
	lwz 12,11564(1)
	.loc 1 728 0
	mr 3,29
	.loc 1 1164 0
	mtlr 0
	lwz 14,11568(1)
	lwz 15,11572(1)
	.loc 1 728 0
	ori 4,4,35365
	.loc 1 1164 0
	lwz 16,11576(1)
	mtcrf 56,12
	lwz 17,11580(1)
	lwz 18,11584(1)
	lwz 19,11588(1)
	lwz 20,11592(1)
	lwz 21,11596(1)
	lwz 22,11600(1)
	lwz 23,11604(1)
	lwz 24,11608(1)
	lwz 25,11612(1)
	lwz 26,11616(1)
	lwz 27,11620(1)
.LVL40:
	lwz 28,11624(1)
	lwz 29,11628(1)
.LVL41:
	lwz 30,11632(1)
	lwz 31,11636(1)
	lfd 14,11640(1)
	lfd 15,11648(1)
	lfd 16,11656(1)
	lfd 17,11664(1)
	lfd 18,11672(1)
	lfd 19,11680(1)
	lfd 20,11688(1)
	lfd 21,11696(1)
	lfd 22,11704(1)
	lfd 23,11712(1)
	lfd 24,11720(1)
	lfd 25,11728(1)
	lfd 26,11736(1)
	lfd 27,11744(1)
	lfd 28,11752(1)
.LVL42:
	lfd 29,11760(1)
	lfd 30,11768(1)
	lfd 31,11776(1)
	addi 1,1,11784
	.loc 1 728 0
	b gluQuadricError
.LVL43:
.L195:
	.loc 1 727 0
	li 23,239
	b .L174
.LVL44:
.L200:
	.loc 1 764 0
	fmr 1,30
	bl sin
	fmr 31,1
	.loc 1 765 0
	fmr 1,30
	.loc 1 764 0
	frsp 0,31
	stfsx 0,31,25
	.loc 1 765 0
	bl cos
	frsp 0,1
	stfsx 0,31,26
	b .L52
.LVL45:
.L202:
	.loc 1 807 0
	xoris 0,24,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L204
.LVL46:
.L169:
	.loc 1 1164 0
	lwz 0,11788(1)
	lwz 12,11564(1)
	lwz 14,11568(1)
	mtlr 0
	lwz 15,11572(1)
	mtcrf 56,12
	lwz 16,11576(1)
	lwz 17,11580(1)
	lwz 18,11584(1)
	lwz 19,11588(1)
	lwz 20,11592(1)
	lwz 21,11596(1)
	lwz 22,11600(1)
	lwz 23,11604(1)
.LVL47:
	lwz 24,11608(1)
	lwz 25,11612(1)
	lwz 26,11616(1)
	lwz 27,11620(1)
.LVL48:
	lwz 28,11624(1)
.LVL49:
	lwz 29,11628(1)
.LVL50:
	lwz 30,11632(1)
.LVL51:
	lwz 31,11636(1)
.LVL52:
	lfd 14,11640(1)
	lfd 15,11648(1)
	lfd 16,11656(1)
	lfd 17,11664(1)
	lfd 18,11672(1)
	lfd 19,11680(1)
	lfd 20,11688(1)
.LVL53:
	lfd 21,11696(1)
	lfd 22,11704(1)
	lfd 23,11712(1)
.LVL54:
	lfd 24,11720(1)
.LVL55:
	lfd 25,11728(1)
.LVL56:
	lfd 26,11736(1)
	lfd 27,11744(1)
	lfd 28,11752(1)
.LVL57:
	lfd 29,11760(1)
.LVL58:
	lfd 30,11768(1)
.LVL59:
	lfd 31,11776(1)
.LVL60:
	addi 1,1,11784
	blr
.LVL61:
.L196:
	lwz 24,12(29)
	.loc 1 737 0
	li 11,1
.LVL62:
	li 17,0
.LVL63:
	b .L39
.LVL64:
.L153:
	.loc 1 1103 0
	addi 9,31,1928
	lfsx 2,31,19
	lfsx 1,9,1
	fmr 3,28
	fmuls 2,29,2
	fmuls 1,29,1
	bl glNormal3f
	b .L152
.LVL65:
.L201:
	.loc 1 781 0
	lis 9,.LC2@ha
	lis 17,.LC6@ha
.LVL66:
	lfs 0,.LC2@l(9)
	lis 9,.LC3@ha
	lfs 13,.LC6@l(17)
	.loc 1 778 0
	li 30,0
.LVL67:
	.loc 1 781 0
	fmr 25,0
	lfd 30,.LC3@l(9)
.LVL68:
	fmr 27,13
	.loc 1 778 0
	li 31,0
	addi 25,1,3848
	addi 26,1,4808
.L58:
	.loc 1 781 0
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,11532(1)
	.loc 1 779 0
	addi 30,30,1
	.loc 1 781 0
	stw 9,11528(1)
	lfd 31,11528(1)
	fsub 31,31,25
	fsub 31,31,27
	fmul 31,31,30
	fdiv 31,31,26
	frsp 31,31
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 782 0
	fmr 1,31
	.loc 1 781 0
	stfsx 0,31,25
	.loc 1 782 0
	bl cos
	.loc 1 779 0
	cmpw 7,30,27
	.loc 1 782 0
	frsp 1,1
	stfsx 1,31,26
	.loc 1 779 0
	addi 31,31,4
	bne+ 7,.L58
	.loc 1 785 0
	lis 9,.LC2@ha
	.loc 1 786 0
	lis 0,0x1
	.loc 1 785 0
	lfs 0,.LC2@l(9)
	.loc 1 786 0
	ori 0,0,34484
	.loc 1 779 0
	lwz 9,8(29)
	li 30,0
.LVL69:
	.loc 1 785 0
	lfs 13,.LC6@l(17)
	fmr 26,0
	.loc 1 786 0
	cmpw 3,9,0
	.loc 1 785 0
	lis 9,.LC4@ha
	fmr 27,13
	lfd 30,.LC4@l(9)
	.loc 1 779 0
	li 31,0
	addi 25,1,9608
	addi 26,1,10568
	b .L60
.LVL70:
.L61:
	.loc 1 790 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 791 0
	fmr 1,31
	.loc 1 790 0
	fneg 0,0
	stfsx 0,31,25
	.loc 1 791 0
	bl cos
	frsp 1,1
	fneg 1,1
	stfsx 1,31,26
.L63:
	.loc 1 784 0
	addi 30,30,1
	addi 31,31,4
	cmpw 7,28,30
	beq- 7,.L56
.L60:
	.loc 1 785 0
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,11532(1)
	stw 9,11528(1)
	lfd 0,11528(1)
	fsub 0,0,26
	fsub 0,0,27
	fmul 0,0,30
	fdiv 0,0,29
	frsp 31,0
	.loc 1 786 0
	bne+ 3,.L61
	.loc 1 787 0
	fmr 1,31
	bl sin
	frsp 0,1
	.loc 1 788 0
	fmr 1,31
	.loc 1 787 0
	stfsx 0,31,25
	.loc 1 788 0
	bl cos
	frsp 1,1
	stfsx 1,31,26
	b .L63
.LVL71:
.L204:
	.loc 1 1041 0
	li 3,0
	li 28,0
.LVL72:
	bl glBegin
	.loc 1 1070 0
	lis 9,.LC2@ha
	lfs 26,.LC2@l(9)
	lis 9,.LC7@ha
	lfs 27,.LC7@l(9)
	.loc 1 1041 0
	li 26,0
	.loc 1 1048 0
	addi 19,1,7688
	.loc 1 1049 0
	addi 18,1,8648
	.loc 1 1058 0
	addi 25,1,1928
	addi 24,1,2888
.LVL73:
.L137:
	.loc 1 1045 0
	lwz 9,0(29)
	.loc 1 1043 0
	lfsx 31,26,15
	.loc 1 1045 0
	addis 9,9,0xfffe
	.loc 1 1044 0
	lfsx 30,26,16
.LVL74:
	.loc 1 1045 0
	addi 0,9,31072
	cmplwi 7,0,1
	bgt- 7,.L138
	.loc 1 1048 0
	lfsx 29,26,19
	.loc 1 1049 0
	lfsx 28,26,18
.LVL75:
.L138:
	li 30,0
	li 31,0
	b .L140
.LVL76:
.L143:
	.loc 1 1073 0
	lfsx 1,31,22
	fmr 3,30
	lfsx 2,31,20
	.loc 1 1054 0
	addi 30,30,1
	.loc 1 1073 0
	fmuls 1,31,1
	.loc 1 1054 0
	addi 31,31,4
	.loc 1 1073 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 1054 0
	cmpw 7,30,27
	beq- 7,.L145
.L205:
	lwz 9,0(29)
	addis 9,9,0xfffe
.L140:
	.loc 1 1055 0
	addi 0,9,31072
	.loc 1 1058 0
	fmr 3,28
	.loc 1 1055 0
	cmplwi 7,0,1
	bgt- 7,.L141
.LVL77:
	.loc 1 1058 0
	lfsx 1,31,25
	lfsx 2,31,24
	fmuls 1,29,1
	fmuls 2,29,2
	bl glNormal3f
.LVL78:
.L141:
	.loc 1 1069 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L143
	.loc 1 1070 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,27,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,28,0x8000
	stw 11,11528(1)
	xoris 9,23,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	.loc 1 1054 0
	addi 30,30,1
	.loc 1 1070 0
	stw 0,11532(1)
	lfd 12,11536(1)
	fsub 1,1,0
	stw 9,11540(1)
	lfd 2,11528(1)
	fsub 12,12,0
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
	.loc 1 1073 0
	lfsx 1,31,22
	lfsx 2,31,20
	fmr 3,30
	fmuls 1,31,1
	.loc 1 1054 0
	addi 31,31,4
	.loc 1 1073 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 1054 0
	cmpw 7,30,27
	bne+ 7,.L205
.L145:
	.loc 1 1042 0
	addi 28,28,1
	addi 26,26,4
	cmpw 7,28,21
	bne+ 7,.L137
	.loc 1 1077 0
	bl glEnd
	b .L169
.LVL79:
.L71:
	.loc 1 814 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq- 7,.L75
	li 9,0
	lfs 26,6728(1)
.LVL80:
	lfs 27,5768(1)
.LVL81:
	addi 25,27,1
	stw 23,11552(1)
.LVL82:
	stw 9,11544(1)
.LVL83:
.L77:
	.loc 1 1000 0
	lis 9,.LC2@ha
	.loc 1 956 0
	lis 28,0x1
	.loc 1 1000 0
	lfs 19,.LC2@l(9)
	lis 9,.LC7@ha
	lfs 22,.LC7@l(9)
	.loc 1 956 0
	ori 28,28,34464
	.loc 1 702 0
	lwz 9,11544(1)
	addi 0,1,10568
	.loc 1 956 0
	cmpw 7,18,28
	.loc 1 962 0
	lis 24,0x1
	.loc 1 702 0
	addi 26,9,1
	slwi 10,9,2
	slwi 11,26,2
	.loc 1 956 0
	lis 21,0x1
	.loc 1 702 0
	add 9,0,11
	add 17,16,11
	stw 9,11548(1)
	addi 9,1,8648
	add 19,15,11
	add 14,9,10
	addi 0,1,9608
	addi 9,1,7688
	.loc 1 1030 0
	fmr 18,19
	.loc 1 702 0
	add 15,0,11
	.loc 1 1030 0
	fmr 21,22
	.loc 1 702 0
	add 16,9,10
	.loc 1 962 0
	ori 24,24,34484
	.loc 1 956 0
	ori 21,21,34465
	.loc 1 993 0
	fmr 15,19
	.loc 1 953 0
	lfs 28,0(17)
.LVL84:
	.loc 1 993 0
	fmr 17,22
	.loc 1 955 0
	lfs 29,0(19)
.LVL85:
	.loc 1 1023 0
	fmr 14,19
	fmr 16,22
	.loc 1 956 0
	beq- 7,.L111
.LVL86:
.L215:
	cmpw 7,18,21
	bne+ 7,.L110
	.loc 1 959 0
	lwz 9,11548(1)
	.loc 1 958 0
	lfs 24,0(15)
	.loc 1 959 0
	lfs 23,0(9)
.L110:
	.loc 1 978 0
	li 3,8
	li 30,0
.LVL87:
	bl glBegin
	li 31,0
	b .L115
.LVL88:
.L116:
	.loc 1 991 0
	lwz 0,8(29)
	cmpw 7,0,24
	beq- 7,.L206
.L118:
	.loc 1 999 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L207
.L123:
	.loc 1 1003 0
	lfsx 31,31,22
	fmr 3,26
	lfsx 30,31,20
	fmuls 1,31,27
	fmuls 2,30,27
	bl glVertex3f
	.loc 1 1006 0
	lwz 0,0(29)
	cmpw 7,0,28
	beq- 7,.L126
.LVL89:
.L213:
	cmpw 7,0,21
	beq- 7,.L208
.LVL90:
	.loc 1 1021 0
	lwz 0,8(29)
	cmpw 7,0,24
	beq- 7,.L209
.L128:
	.loc 1 1029 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L210
.L133:
	.loc 1 1033 0
	fmuls 1,29,31
	.loc 1 979 0
	addi 30,30,1
	.loc 1 1033 0
	fmuls 2,29,30
	.loc 1 979 0
	addi 31,31,4
	.loc 1 1033 0
	fmr 3,28
	bl glVertex3f
	.loc 1 979 0
	cmpw 7,30,25
	beq- 7,.L211
.L115:
	.loc 1 980 0
	lwz 0,0(29)
	cmpw 7,0,28
	bne+ 7,.L116
	.loc 1 982 0
	addi 9,31,1928
	fmr 3,20
	lfsx 1,9,1
	addi 9,31,2888
	lfsx 2,9,1
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
	.loc 1 991 0
	lwz 0,8(29)
	cmpw 7,0,24
	bne+ 7,.L118
.L206:
	.loc 1 992 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L212
.L120:
	.loc 1 996 0
	lfsx 31,31,22
	fmr 3,28
	lfsx 30,31,20
	fmuls 1,31,29
	fmuls 2,30,29
	bl glVertex3f
	.loc 1 1006 0
	lwz 0,0(29)
	cmpw 7,0,28
	bne+ 7,.L213
.LVL91:
.L126:
	.loc 1 1008 0
	addi 9,31,1928
	lfsx 1,9,1
	addi 9,31,2888
	b .L194
.LVL92:
.L208:
	.loc 1 1013 0
	addi 9,31,3848
	lfsx 1,9,1
	addi 9,31,4808
.L194:
	lfsx 2,9,1
	fmuls 1,24,1
	fmr 3,23
	fmuls 2,24,2
	bl glNormal3f
	.loc 1 1021 0
	lwz 0,8(29)
	cmpw 7,0,24
	bne+ 7,.L128
.L209:
	.loc 1 1022 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L214
.L130:
	.loc 1 1026 0
	fmuls 1,31,27
	.loc 1 979 0
	addi 30,30,1
	.loc 1 1026 0
	fmuls 2,30,27
	.loc 1 979 0
	addi 31,31,4
	.loc 1 1026 0
	fmr 3,26
	bl glVertex3f
	.loc 1 979 0
	cmpw 7,30,25
	bne+ 7,.L115
.L211:
	.loc 1 1037 0
	bl glEnd
	.loc 1 951 0
	lwz 0,11552(1)
	.loc 1 1037 0
	lwz 9,11548(1)
	addi 17,17,4
	.loc 1 951 0
	cmpw 7,26,0
	.loc 1 1037 0
	addi 19,19,4
	addi 9,9,4
	addi 15,15,4
	stw 9,11548(1)
	addi 16,16,4
	addi 14,14,4
	.loc 1 951 0
	bge- 7,.L169
	lwz 18,0(29)
	fmr 26,28
	fmr 27,29
	stw 26,11544(1)
.LVL93:
	.loc 1 956 0
	cmpw 7,18,28
	addi 26,26,1
	.loc 1 953 0
	lfs 28,0(17)
	.loc 1 955 0
	lfs 29,0(19)
	.loc 1 956 0
	bne+ 7,.L215
.LVL94:
.L111:
	.loc 1 962 0
	lwz 0,8(29)
	cmpw 7,0,24
	beq- 7,.L216
	.loc 1 968 0
	lfs 25,0(16)
	.loc 1 969 0
	lfs 20,0(14)
	.loc 1 970 0
	lfs 24,4(16)
	.loc 1 971 0
	lfs 23,4(14)
	b .L110
.LVL95:
.L207:
	.loc 1 1000 0
	xoris 9,27,0x8000
	lis 11,0x4330
	stw 9,11540(1)
	xoris 0,30,0x8000
	lwz 9,11544(1)
	fmr 0,19
	stw 0,11532(1)
	stw 11,11528(1)
	xoris 0,9,0x8000
	stw 11,11536(1)
	xoris 9,23,0x8000
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,22,1
	fsubs 2,22,2
	bl glTexCoord2f
	b .L123
.L210:
	.loc 1 1030 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,27,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,26,0x8000
	stw 11,11528(1)
	xoris 9,23,0x8000
	stw 11,11536(1)
	fmr 0,18
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,21,1
	fsubs 2,21,2
	bl glTexCoord2f
	b .L133
.L214:
	.loc 1 1023 0
	xoris 9,27,0x8000
	lis 11,0x4330
	stw 9,11540(1)
	xoris 0,30,0x8000
	lwz 9,11544(1)
	fmr 0,14
	stw 0,11532(1)
	stw 11,11528(1)
	xoris 0,9,0x8000
	stw 11,11536(1)
	xoris 9,23,0x8000
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,16,1
	fsubs 2,16,2
	bl glTexCoord2f
	b .L130
.L212:
	.loc 1 993 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,27,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,26,0x8000
	stw 11,11528(1)
	xoris 9,23,0x8000
	stw 11,11536(1)
	fmr 0,15
	lfd 1,11528(1)
	lfd 12,11536(1)
	stw 0,11532(1)
	fsub 1,1,0
	stw 9,11540(1)
	fsub 12,12,0
	lfd 2,11528(1)
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,17,1
	fsubs 2,17,2
	bl glTexCoord2f
	b .L120
.LVL96:
.L171:
	lwz 19,0(29)
.LVL97:
.L74:
	.loc 1 1152 0
	lis 9,.LC2@ha
	.loc 1 1135 0
	lis 26,0x1
	.loc 1 1152 0
	lfs 26,.LC2@l(9)
	lis 9,.LC7@ha
	.loc 1 1135 0
	lis 28,0x1
	.loc 1 1152 0
	lfs 27,.LC7@l(9)
	.loc 1 1135 0
	ori 26,26,34464
	ori 28,28,34465
	.loc 1 1081 0
	li 25,0
.LVL98:
	li 24,0
.LVL99:
	.loc 1 1142 0
	addi 14,1,7688
	.loc 1 1137 0
	addi 18,1,9608
	addi 17,1,10568
.LVL100:
.L159:
	.loc 1 1123 0
	addis 9,19,0xfffe
	.loc 1 1121 0
	lfsx 30,24,22
.LVL101:
	.loc 1 1123 0
	addi 9,9,31072
	.loc 1 1122 0
	lfsx 31,24,20
.LVL102:
	.loc 1 1123 0
	cmplwi 7,9,1
	bgt- 7,.L160
	.loc 1 1126 0
	addi 9,24,1928
	lfsx 29,9,1
	.loc 1 1127 0
	addi 9,24,2888
	lfsx 28,9,1
.LVL103:
.L160:
	.loc 1 1133 0
	li 3,3
	li 30,0
.LVL104:
	bl glBegin
	li 31,0
	b .L162
.L166:
	.loc 1 1155 0
	lfsx 1,31,15
	.loc 1 1134 0
	addi 30,30,1
	.loc 1 1155 0
	lfsx 3,31,16
	.loc 1 1134 0
	addi 31,31,4
	.loc 1 1155 0
	fmuls 2,31,1
	fmuls 1,1,30
	bl glVertex3f
	.loc 1 1134 0
	cmpw 7,30,21
	beq- 7,.L217
.L162:
	.loc 1 1135 0
	lwz 0,0(29)
	cmpw 7,0,26
	cmpw 6,0,28
	beq- 7,.L164
	bne+ 6,.L163
	.loc 1 1137 0
	lfsx 1,31,18
	lfsx 3,31,17
	fmuls 2,28,1
	fmuls 1,1,29
	bl glNormal3f
.L163:
	.loc 1 1151 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L166
	.loc 1 1152 0
	lis 11,0x4330
	xoris 0,25,0x8000
	xoris 9,27,0x8000
	stw 0,11532(1)
	stw 9,11540(1)
	xoris 0,30,0x8000
	stw 11,11528(1)
	xoris 9,23,0x8000
	stw 11,11536(1)
	fmr 0,26
	lfd 1,11528(1)
	.loc 1 1134 0
	addi 30,30,1
	.loc 1 1152 0
	stw 0,11532(1)
	lfd 12,11536(1)
	fsub 1,1,0
	stw 9,11540(1)
	lfd 2,11528(1)
	fsub 12,12,0
	lfd 13,11536(1)
	frsp 1,1
	fsub 2,2,0
	fsub 13,13,0
	frsp 12,12
	frsp 2,2
	frsp 13,13
	fdivs 1,1,12
	fdivs 2,2,13
	fsubs 1,27,1
	fsubs 2,27,2
	bl glTexCoord2f
	.loc 1 1155 0
	lfsx 1,31,15
	lfsx 3,31,16
	.loc 1 1134 0
	addi 31,31,4
	.loc 1 1155 0
	fmuls 2,31,1
	fmuls 1,1,30
	bl glVertex3f
	.loc 1 1134 0
	cmpw 7,30,21
	bne+ 7,.L162
.L217:
	.loc 1 1120 0
	addi 25,25,1
	.loc 1 1158 0
	bl glEnd
	.loc 1 1120 0
	cmpw 7,25,27
	addi 24,24,4
	beq- 7,.L169
	lwz 19,0(29)
	b .L159
.L164:
	.loc 1 1142 0
	lfsx 1,31,14
	addi 9,31,8648
	lfsx 3,9,1
	fmuls 2,28,1
	fmuls 1,1,29
	bl glNormal3f
	b .L163
.LVL105:
.L216:
	.loc 1 963 0
	lfs 25,4(16)
	.loc 1 964 0
	lfs 20,4(14)
	.loc 1 965 0
	lfs 24,0(16)
	.loc 1 966 0
	lfs 23,0(14)
	b .L110
.LVL106:
.L197:
	.loc 1 742 0
	lwz 24,12(29)
	xoris 0,24,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L40
	.loc 1 745 0
	lis 0,0x1
	li 11,1
.LVL107:
	ori 0,0,34475
	li 17,1
.LVL108:
	cmpw 7,24,0
	beq- 7,.L39
	li 11,0
	b .L39
.LVL109:
.L75:
	.loc 1 821 0
	lis 0,0x1
	.loc 1 819 0
	lfs 27,5772(1)
.LVL110:
	.loc 1 821 0
	ori 0,0,34464
	.loc 1 820 0
	lfs 26,6732(1)
.LVL111:
	.loc 1 821 0
	cmpw 7,19,0
	.loc 1 816 0
	addi 0,23,-1
	stw 0,11552(1)
.LVL112:
	.loc 1 821 0
	beq- 7,.L80
	xoris 0,19,0xfffe
	cmpwi 7,0,-31071
	beq 7,.L218
.LVL113:
.L79:
	.loc 1 836 0
	li 3,6
	.loc 1 837 0
	frsp 29,28
	.loc 1 836 0
	bl glBegin
	.loc 1 837 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 3,29
	fmr 2,1
	bl glVertex3f
	.loc 1 838 0
	lis 0,0x1
	lwz 9,8(29)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L219
	.loc 1 862 0
	lis 26,0x1
	lis 28,0x1
.LVL114:
	ori 26,26,34464
	ori 28,28,34465
	.loc 1 839 0
	li 30,0
.LVL115:
	li 31,0
	addi 25,27,1
	.loc 1 864 0
	addi 24,1,1928
	addi 21,1,2888
	.loc 1 869 0
	addi 19,1,3848
	addi 18,1,4808
	b .L90
.L220:
	.loc 1 862 0
	bne+ 6,.L91
	.loc 1 869 0
	lfsx 1,31,19
	fmr 3,20
	lfsx 2,31,18
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
.L91:
	.loc 1 877 0
	lfsx 1,31,22
	fmr 3,26
	lfsx 2,31,20
	.loc 1 861 0
	addi 30,30,1
	.loc 1 877 0
	fmuls 1,27,1
	.loc 1 861 0
	addi 31,31,4
	.loc 1 877 0
	fmuls 2,27,2
	bl glVertex3f
	.loc 1 861 0
	cmpw 7,30,25
	beq- 7,.L89
.L90:
	.loc 1 862 0
	lwz 0,0(29)
	cmpw 7,0,26
	cmpw 6,0,28
	bne+ 7,.L220
	.loc 1 864 0
	lfsx 1,31,24
	fmr 3,20
	lfsx 2,31,21
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
	b .L91
.LVL116:
.L89:
	.loc 1 881 0
	bl glEnd
	.loc 1 886 0
	lwz 10,0(29)
	lis 0,0x1
	ori 0,0,34464
	cmpw 7,10,0
	.loc 1 884 0
	lwz 0,11552(1)
	slwi 9,0,2
	add 11,9,22
	lfs 31,5760(11)
.LVL117:
	.loc 1 885 0
	lfs 30,6720(11)
.LVL118:
	.loc 1 886 0
	beq- 7,.L95
	xoris 0,10,0xfffe
	cmpwi 7,0,-31071
	beq 7,.L221
.L94:
	.loc 1 901 0
	li 3,6
	bl glBegin
	.loc 1 902 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fneg 3,29
	fmr 2,1
	bl glVertex3f
	.loc 1 903 0
	lis 0,0x1
	lwz 9,8(29)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L222
	.loc 1 702 0
	slwi 11,25,2
	.loc 1 904 0
	addi 0,1,2888
	.loc 1 702 0
	addi 9,1,4808
	.loc 1 925 0
	lis 18,0x1
	lis 14,0x1
	.loc 1 904 0
	add 21,0,17
	.loc 1 702 0
	add 19,9,11
	.loc 1 904 0
	addi 0,1,1928
	.loc 1 702 0
	addi 9,1,3848
	.loc 1 904 0
	add 26,0,17
	.loc 1 702 0
	add 24,9,11
	.loc 1 925 0
	ori 18,18,34464
	ori 14,14,34465
	.loc 1 904 0
	add 28,22,17
	add 30,20,17
	.loc 1 702 0
	mr 31,27
.LVL119:
	b .L104
.L224:
	.loc 1 925 0
	beq- 6,.L223
.LVL120:
.L105:
	.loc 1 942 0
	lfs 1,0(28)
	fmr 3,30
	lfs 2,0(30)
	.loc 1 924 0
	addi 28,28,-4
	.loc 1 942 0
	fmuls 1,31,1
	.loc 1 924 0
	addi 30,30,-4
	.loc 1 942 0
	fmuls 2,31,2
	.loc 1 924 0
	addi 26,26,-4
	addi 21,21,-4
	addi 24,24,-4
	addi 19,19,-4
	.loc 1 942 0
	bl glVertex3f
	.loc 1 924 0
	cmpwi 7,31,0
	addi 31,31,-1
	beq- 7,.L103
.L104:
	.loc 1 925 0
	lwz 0,0(29)
	cmpw 7,0,18
	cmpw 6,0,14
	bne+ 7,.L224
	.loc 1 927 0
	lfs 1,0(26)
	fmr 3,20
	lfs 2,0(21)
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
	b .L105
.L223:
	.loc 1 932 0
	cmpw 7,31,27
	.loc 1 933 0
	fmr 3,20
	.loc 1 932 0
	beq- 7,.L105
.LVL121:
	.loc 1 933 0
	lfs 1,0(24)
	lfs 2,0(19)
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
.LVL122:
	b .L105
.LVL123:
.L103:
	.loc 1 946 0
	bl glEnd
	.loc 1 951 0
	lwz 0,11552(1)
	cmpwi 7,0,1
	ble- 7,.L169
	lwz 18,0(29)
	li 9,1
	stw 9,11544(1)
.LVL124:
	b .L77
.LVL125:
.L221:
	.loc 1 888 0
	add 9,14,22
	.loc 1 889 0
	lfs 20,10560(9)
	.loc 1 888 0
	lfs 25,9600(9)
	b .L94
.LVL126:
.L218:
	.loc 1 823 0
	lfs 25,9612(1)
.LVL127:
	.loc 1 824 0
	lfs 20,10572(1)
.LVL128:
	b .L79
.LVL129:
.L95:
	.loc 1 894 0
	add 9,14,22
	.loc 1 893 0
	lfs 20,8640(11)
	.loc 1 894 0
	lfs 0,7680(9)
	lfs 1,1920(9)
	lfs 2,2880(9)
	fmuls 1,0,1
	lfs 3,8640(9)
	fmuls 2,0,2
	.loc 1 892 0
	lfs 25,7680(11)
	.loc 1 894 0
	bl glNormal3f
	b .L94
.LVL130:
.L80:
	.loc 1 829 0
	lfs 2,7688(1)
	lfs 1,1928(1)
	lfs 0,2888(1)
	fmuls 1,2,1
	lfs 3,8648(1)
	fmuls 2,2,0
	.loc 1 827 0
	lfs 25,7692(1)
.LVL131:
	.loc 1 828 0
	lfs 20,8652(1)
.LVL132:
	.loc 1 829 0
	bl glNormal3f
	b .L79
.LVL133:
.L222:
	.loc 1 905 0
	lis 28,0x1
	lis 26,0x1
	ori 28,28,34464
	ori 26,26,34465
	.loc 1 903 0
	li 30,0
.LVL134:
	li 31,0
	.loc 1 907 0
	addi 24,1,1928
	addi 21,1,2888
	.loc 1 912 0
	addi 19,1,3848
	addi 18,1,4808
	b .L99
.L225:
	.loc 1 905 0
	bne+ 6,.L100
	.loc 1 912 0
	lfsx 1,31,19
	fmr 3,20
	lfsx 2,31,18
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
.L100:
	.loc 1 920 0
	lfsx 1,31,22
	fmr 3,30
	lfsx 2,31,20
	.loc 1 904 0
	addi 30,30,1
	.loc 1 920 0
	fmuls 1,31,1
	.loc 1 904 0
	addi 31,31,4
	.loc 1 920 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 904 0
	cmpw 7,30,25
	beq- 7,.L103
.L99:
	.loc 1 905 0
	lwz 0,0(29)
	cmpw 7,0,28
	cmpw 6,0,26
	bne+ 7,.L225
	.loc 1 907 0
	lfsx 1,31,24
	fmr 3,20
	lfsx 2,31,21
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
	b .L100
.LVL135:
.L219:
	.loc 1 702 0
	addi 25,27,1
	addi 0,1,4808
	slwi 11,25,2
	.loc 1 838 0
	addi 9,1,1928
	.loc 1 702 0
	add 19,0,11
	.loc 1 838 0
	addi 0,1,2888
	.loc 1 840 0
	lis 18,0x1
	.loc 1 838 0
	add 21,9,17
	add 24,0,17
	.loc 1 702 0
	addi 9,1,3848
	.loc 1 840 0
	lis 0,0x1
	.loc 1 702 0
	add 26,9,11
	.loc 1 840 0
	ori 0,0,34465
	ori 18,18,34464
	.loc 1 838 0
	add 28,22,17
.LVL136:
	add 30,20,17
.LVL137:
	.loc 1 702 0
	mr 31,27
.LVL138:
	.loc 1 840 0
	stw 0,11556(1)
	b .L84
.L227:
	beq- 6,.L226
.LVL139:
.L85:
	.loc 1 857 0
	lfs 1,0(28)
	fmr 3,26
	lfs 2,0(30)
	.loc 1 839 0
	addi 28,28,-4
	.loc 1 857 0
	fmuls 1,27,1
	.loc 1 839 0
	addi 30,30,-4
	.loc 1 857 0
	fmuls 2,27,2
	.loc 1 839 0
	addi 21,21,-4
	addi 24,24,-4
	addi 26,26,-4
	addi 19,19,-4
	.loc 1 857 0
	bl glVertex3f
	.loc 1 839 0
	cmpwi 7,31,0
	addi 31,31,-1
	beq- 7,.L89
.L84:
	.loc 1 840 0
	lwz 0,0(29)
	lwz 9,11556(1)
	cmpw 7,0,18
	cmpw 6,0,9
	bne+ 7,.L227
	.loc 1 842 0
	lfs 1,0(21)
	fmr 3,20
	lfs 2,0(24)
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
	b .L85
.L226:
	.loc 1 847 0
	cmpw 7,31,27
	.loc 1 848 0
	fmr 3,20
	.loc 1 847 0
	beq- 7,.L85
.LVL140:
	.loc 1 848 0
	lfs 1,0(26)
	lfs 2,0(19)
	fmuls 1,25,1
	fmuls 2,25,2
	bl glNormal3f
.LVL141:
	b .L85
.LFE13:
	.size	gluSphere, .-gluSphere
	.align 2
	.globl gluPartialDisk
	.type	gluPartialDisk, @function
gluPartialDisk:
.LFB12:
	.loc 1 440 0
.LVL142:
	mfcr 12
.LCFI44:
	.loc 1 454 0
	cmpwi 7,4,239
	.loc 1 440 0
	mflr 0
.LCFI45:
	stwu 1,-2112(1)
.LCFI46:
	stfd 25,2056(1)
.LCFI47:
	fmr 25,1
	stfd 26,2064(1)
.LCFI48:
	fmr 26,4
	stfd 27,2072(1)
.LCFI49:
	fmr 27,2
	stw 26,1960(1)
.LCFI50:
	mr 26,5
	stw 27,1964(1)
.LCFI51:
	mr 27,4
	stw 29,1972(1)
.LCFI52:
	mr 29,3
	stfd 16,1984(1)
.LCFI53:
	stfd 17,1992(1)
.LCFI54:
	stfd 18,2000(1)
.LCFI55:
	stfd 19,2008(1)
.LCFI56:
	stfd 20,2016(1)
.LCFI57:
	stfd 21,2024(1)
.LCFI58:
	stfd 22,2032(1)
.LCFI59:
	stfd 23,2040(1)
.LCFI60:
	stfd 24,2048(1)
.LCFI61:
	stfd 28,2080(1)
.LCFI62:
	stfd 29,2088(1)
.LCFI63:
	stfd 30,2096(1)
.LCFI64:
	stfd 31,2104(1)
.LCFI65:
	stw 21,1940(1)
.LCFI66:
	stw 22,1944(1)
.LCFI67:
	stw 23,1948(1)
.LCFI68:
	stw 24,1952(1)
.LCFI69:
	stw 25,1956(1)
.LCFI70:
	stw 28,1968(1)
.LCFI71:
	stw 30,1976(1)
.LCFI72:
	stw 31,1980(1)
.LCFI73:
	stw 0,2116(1)
.LCFI74:
	stw 12,1936(1)
.LCFI75:
	.loc 1 454 0
	ble- 7,.L229
.LVL143:
	li 27,239
.LVL144:
.L231:
	.loc 1 455 0
	cmpwi 7,26,0
	ble- 7,.L232
	lis 28,.LC0@ha
	lfd 13,.LC0@l(28)
	fcmpu 7,27,13
	cror 30,28,30
	beq- 7,.L232
	fcmpu 7,25,13
	blt- 7,.L232
	fcmpu 7,27,25
	blt- 7,.L232
	.loc 1 461 0
	lis 9,.LC16@ha
	lis 22,.LC18@ha
	lfs 0,.LC16@l(9)
	fcmpu 7,26,0
	blt- 7,.L238
	.loc 1 462 0
	lfs 12,.LC18@l(22)
	fmr 0,12
	fcmpu 7,26,0
	bng- 7,.L240
	fmr 26,12
.L378:
	.loc 1 468 0
	lis 9,.LC3@ha
	mr 23,27
.LVL145:
	lfd 24,.LC3@l(9)
	lis 11,.LC4@ha
	lis 9,.LC20@ha
.LVL146:
.L243:
	.loc 1 475 0
	lfs 13,.LC20@l(9)
	lis 21,.LC2@ha
	lfd 0,.LC4@l(11)
	xoris 0,27,0x8000
	fdiv 13,3,13
	lfs 10,.LC2@l(21)
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	li 30,0
.LVL147:
	li 31,0
	addi 25,1,8
	addi 24,1,968
	fmul 13,13,0
	lfd 0,1928(1)
	fsub 12,27,25
	fmr 11,10
	frsp 13,13
	frsp 23,12
.LVL148:
	fsub 29,0,11
	fmr 30,13
	.loc 1 482 0
	fmr 28,10
.L249:
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	.loc 1 480 0
	addi 30,30,1
	.loc 1 482 0
	stw 9,1928(1)
	lfd 31,1928(1)
	fsub 31,31,28
	fmul 31,31,24
	fdiv 31,31,29
	fadd 31,31,30
	frsp 31,31
	fmr 1,31
	bl sin
.LVL149:
	frsp 0,1
	.loc 1 483 0
	fmr 1,31
	.loc 1 482 0
	stfsx 0,31,25
	.loc 1 483 0
	bl cos
	.loc 1 480 0
	cmpw 7,30,27
	.loc 1 483 0
	frsp 1,1
	stfsx 1,31,24
	.loc 1 480 0
	addi 31,31,4
	ble+ 7,.L249
	.loc 1 486 0
	lfs 0,.LC18@l(22)
	fcmpu 7,26,0
	bne- 7,.L251
	.loc 1 487 0
	slwi 0,27,2
	lfs 0,8(1)
	.loc 1 488 0
	lfs 13,968(1)
	.loc 1 487 0
	add 9,0,25
	stfsx 0,25,0
	.loc 1 488 0
	stfs 13,960(9)
.L251:
	.loc 1 491 0
	lwz 9,0(29)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L254
	.loc 1 494 0
	lis 0,0x1
	lwz 9,8(29)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L379
	.loc 1 497 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	lis 9,.LC21@ha
	lfs 3,.LC21@l(9)
	fmr 2,1
	bl glNormal3f
.L254:
	.loc 1 505 0
	lwz 9,12(29)
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,9,0
	beq- 7,.L260
	bgt- 7,.L263
	xoris 0,9,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L380
.LVL150:
.L357:
	.loc 1 698 0
	lwz 0,2116(1)
	lwz 12,1936(1)
	lwz 21,1940(1)
	mtlr 0
	lwz 22,1944(1)
	mtcrf 8,12
	lwz 23,1948(1)
.LVL151:
	lwz 24,1952(1)
	lwz 25,1956(1)
	lwz 26,1960(1)
.LVL152:
	lwz 27,1964(1)
.LVL153:
	lwz 28,1968(1)
	lwz 29,1972(1)
.LVL154:
	lwz 30,1976(1)
.LVL155:
	lwz 31,1980(1)
.LVL156:
	lfd 16,1984(1)
	lfd 17,1992(1)
	lfd 18,2000(1)
	lfd 19,2008(1)
	lfd 20,2016(1)
	lfd 21,2024(1)
	lfd 22,2032(1)
.LVL157:
	lfd 23,2040(1)
.LVL158:
	lfd 24,2048(1)
.LVL159:
	lfd 25,2056(1)
.LVL160:
	lfd 26,2064(1)
.LVL161:
	lfd 27,2072(1)
.LVL162:
	lfd 28,2080(1)
	lfd 29,2088(1)
.LVL163:
	lfd 30,2096(1)
.LVL164:
	lfd 31,2104(1)
.LVL165:
	addi 1,1,2112
	blr
.LVL166:
.L229:
	.loc 1 455 0
	cmpwi 7,4,1
	bgt+ 7,.L231
.LVL167:
.L232:
	.loc 1 698 0
	lwz 0,2116(1)
	.loc 1 457 0
	lis 4,0x1
.LVL168:
	.loc 1 698 0
	lwz 12,1936(1)
	.loc 1 457 0
	mr 3,29
	.loc 1 698 0
	mtlr 0
	lwz 21,1940(1)
	lwz 22,1944(1)
	.loc 1 457 0
	ori 4,4,35365
	.loc 1 698 0
	lwz 23,1948(1)
	mtcrf 8,12
	lwz 24,1952(1)
	lwz 25,1956(1)
	lwz 26,1960(1)
.LVL169:
	lwz 27,1964(1)
.LVL170:
	lwz 28,1968(1)
	lwz 29,1972(1)
.LVL171:
	lwz 30,1976(1)
	lwz 31,1980(1)
	lfd 16,1984(1)
	lfd 17,1992(1)
	lfd 18,2000(1)
	lfd 19,2008(1)
	lfd 20,2016(1)
	lfd 21,2024(1)
	lfd 22,2032(1)
	lfd 23,2040(1)
	lfd 24,2048(1)
	lfd 25,2056(1)
.LVL172:
	lfd 26,2064(1)
.LVL173:
	lfd 27,2072(1)
.LVL174:
	lfd 28,2080(1)
	lfd 29,2088(1)
	lfd 30,2096(1)
	lfd 31,2104(1)
	addi 1,1,2112
	.loc 1 457 0
	b gluQuadricError
.LVL175:
.L238:
	.loc 1 468 0
	lfs 0,.LC18@l(22)
	fmr 26,0
	b .L378
.LVL176:
.L263:
	.loc 1 505 0
	xoris 0,9,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L261
	xoris 0,9,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L357
	.loc 1 658 0
	lfs 0,.LC18@l(22)
	fcmpu 7,26,0
	blt- 7,.L337
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	cmpwi 4,27,0
	stw 9,1928(1)
	lfs 13,.LC2@l(21)
	lfd 0,1928(1)
	fsub 0,0,13
	frsp 26,0
.LVL177:
.L339:
	.loc 1 679 0
	lis 9,.LC6@ha
	.loc 1 677 0
	lfs 0,.LC2@l(21)
	.loc 1 679 0
	lfs 20,.LC6@l(9)
	.loc 1 685 0
	lis 9,.LC14@ha
	.loc 1 677 0
	fmr 21,0
	.loc 1 685 0
	lfs 28,.LC14@l(9)
	fmr 22,20
	addi 28,27,1
	.loc 1 659 0
	li 27,0
.LVL178:
.L347:
	.loc 1 677 0
	xoris 0,27,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	lfd 0,1928(1)
	.loc 1 678 0
	lbz 0,4(29)
	.loc 1 677 0
	fsub 0,0,21
	.loc 1 678 0
	cmpwi 7,0,0
	.loc 1 677 0
	frsp 0,0
	fdivs 0,0,26
	fmuls 0,0,23
	fmr 13,0
	fsub 13,27,13
	frsp 29,13
.LVL179:
	.loc 1 678 0
	beq- 7,.L348
	.loc 1 679 0
	fmr 0,29
	fmr 13,20
	fdiv 0,0,27
	fmul 0,0,13
	frsp 24,0
.L348:
	.loc 1 682 0
	li 3,3
	bl glBegin
	.loc 1 683 0
	blt- 4,.L350
	li 30,0
.LVL180:
	li 31,0
	b .L352
.L381:
	.loc 1 684 0
	lfsx 30,31,25
.LVL181:
	.loc 1 688 0
	fmr 3,28
	.loc 1 684 0
	lfsx 31,31,24
	.loc 1 683 0
	addi 30,30,1
	.loc 1 688 0
	fmuls 1,29,30
	.loc 1 683 0
	addi 31,31,4
	.loc 1 688 0
	fmuls 2,29,31
	bl glVertex3f
	.loc 1 683 0
	cmpw 7,30,28
	beq- 7,.L350
.LVL182:
.L352:
	.loc 1 684 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L381
	.loc 1 685 0
	lfsx 30,31,25
.LVL183:
	.loc 1 683 0
	addi 30,30,1
	.loc 1 685 0
	lfsx 31,31,24
	.loc 1 683 0
	addi 31,31,4
	.loc 1 685 0
	fmadds 1,30,24,22
	fmadds 2,31,24,22
	bl glTexCoord2f
	.loc 1 688 0
	fmuls 1,29,30
	fmuls 2,29,31
	fmr 3,28
	bl glVertex3f
	.loc 1 683 0
	cmpw 7,30,28
	bne+ 7,.L352
.LVL184:
.L350:
	.loc 1 691 0
	bl glEnd
	.loc 1 692 0
	fcmpu 7,25,27
	beq- 7,.L357
	add 27,27,26
	.loc 1 676 0
	cmpw 7,26,27
	bge+ 7,.L347
	b .L357
.LVL185:
.L240:
	.loc 1 463 0
	fcmpu 7,26,13
	bnl- 7,.L244
	.loc 1 464 0
	fadd 3,3,26
.LVL186:
	.loc 1 465 0
	fneg 26,26
.LVL187:
.L244:
	.loc 1 468 0
	fcmpu 7,26,0
	beq- 7,.L238
	.loc 1 471 0
	lis 11,.LC4@ha
	lis 9,.LC20@ha
	lfd 13,.LC4@l(11)
	addi 23,27,1
.LVL188:
	lfs 0,.LC20@l(9)
	fmul 13,26,13
	fdiv 24,13,0
	b .L243
.LVL189:
.L261:
	.loc 1 507 0
	lfd 0,.LC0@l(28)
	fcmpu 7,25,0
	beq- 7,.L264
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	cmpwi 4,27,0
	stw 9,1928(1)
	mr 23,26
.LVL190:
	lfs 13,.LC2@l(21)
	lfd 0,1928(1)
	fsub 0,0,13
	frsp 21,0
.LVL191:
.L266:
	.loc 1 548 0
	lis 9,.LC6@ha
	.loc 1 545 0
	lfs 0,.LC2@l(21)
	.loc 1 548 0
	lfs 16,.LC6@l(9)
	.loc 1 554 0
	lis 9,.LC14@ha
	.loc 1 545 0
	fmr 20,0
	.loc 1 554 0
	lis 28,0x1
	.loc 1 577 0
	fmr 25,16
.LVL192:
	.loc 1 554 0
	lfs 26,.LC14@l(9)
.LVL193:
	.loc 1 570 0
	fmr 19,16
	addi 27,27,1
.LVL194:
	.loc 1 563 0
	fmr 18,16
	.loc 1 554 0
	ori 28,28,34484
	.loc 1 556 0
	fmr 17,16
	.loc 1 507 0
	li 26,0
.LVL195:
.L267:
	.loc 1 545 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	.loc 1 546 0
	addi 26,26,1
	.loc 1 545 0
	stw 9,1928(1)
	.loc 1 546 0
	xoris 0,26,0x8000
	.loc 1 545 0
	lfd 13,1928(1)
	.loc 1 546 0
	stw 0,1932(1)
	.loc 1 545 0
	fsub 13,13,20
	.loc 1 546 0
	lfd 0,1928(1)
	.loc 1 547 0
	lbz 0,4(29)
	.loc 1 546 0
	fsub 0,0,20
	.loc 1 545 0
	frsp 13,13
	.loc 1 547 0
	cmpwi 7,0,0
	.loc 1 546 0
	frsp 0,0
	.loc 1 545 0
	fdivs 13,13,21
	.loc 1 546 0
	fdivs 0,0,21
	.loc 1 545 0
	fmuls 13,13,23
	.loc 1 546 0
	fmuls 0,0,23
	.loc 1 545 0
	fmr 12,13
	.loc 1 546 0
	fmr 11,0
	.loc 1 545 0
	fsub 12,27,12
	.loc 1 546 0
	fsub 11,27,11
	.loc 1 545 0
	frsp 28,12
.LVL196:
	.loc 1 546 0
	frsp 29,11
	.loc 1 547 0
	beq- 7,.L287
	.loc 1 548 0
	fmr 0,28
	.loc 1 549 0
	fmr 13,29
	.loc 1 548 0
	fmr 12,16
	fdiv 0,0,27
	.loc 1 549 0
	fdiv 13,13,27
	.loc 1 548 0
	fmul 0,0,12
	.loc 1 549 0
	fmul 13,13,12
	.loc 1 548 0
	frsp 24,0
	.loc 1 549 0
	frsp 22,13
.L287:
	.loc 1 552 0
	li 3,8
	bl glBegin
	.loc 1 553 0
	blt- 4,.L289
	li 30,0
.LVL197:
	li 31,0
	b .L291
.L292:
	.loc 1 569 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L300
	lfsx 30,31,25
	lfsx 31,31,24
.L302:
	.loc 1 573 0
	fmuls 1,29,30
	fmuls 2,29,31
	fmr 3,26
	bl glVertex3f
	.loc 1 576 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L382
.L303:
	.loc 1 580 0
	fmuls 1,28,30
	.loc 1 553 0
	addi 30,30,1
	.loc 1 580 0
	fmuls 2,28,31
	.loc 1 553 0
	addi 31,31,4
	.loc 1 580 0
	fmr 3,26
	bl glVertex3f
	.loc 1 553 0
	cmpw 7,30,27
	beq- 7,.L289
.L291:
	.loc 1 554 0
	lwz 0,8(29)
	cmpw 7,0,28
	bne+ 7,.L292
	.loc 1 555 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L294
	lfsx 30,31,25
	lfsx 31,31,24
.L296:
	.loc 1 559 0
	fmuls 1,28,30
	fmuls 2,28,31
	fmr 3,26
	bl glVertex3f
	.loc 1 562 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L383
.L297:
	.loc 1 566 0
	fmuls 1,29,30
	.loc 1 553 0
	addi 30,30,1
	.loc 1 566 0
	fmuls 2,29,31
	.loc 1 553 0
	addi 31,31,4
	.loc 1 566 0
	fmr 3,26
	bl glVertex3f
	.loc 1 553 0
	cmpw 7,30,27
	bne+ 7,.L291
.LVL198:
.L289:
	.loc 1 584 0
	bl glEnd
	.loc 1 544 0
	cmpw 7,26,23
	blt+ 7,.L267
	b .L357
.LVL199:
.L382:
	.loc 1 577 0
	fmadds 1,24,30,25
	fmadds 2,24,31,25
	bl glTexCoord2f
	b .L303
.L300:
	.loc 1 570 0
	lfsx 30,31,25
	lfsx 31,31,24
	fmadds 1,30,22,19
	fmadds 2,31,22,19
	bl glTexCoord2f
	b .L302
.L383:
	.loc 1 563 0
	fmadds 1,22,30,18
	fmadds 2,22,31,18
	bl glTexCoord2f
	b .L297
.L294:
	.loc 1 556 0
	lfsx 30,31,25
	lfsx 31,31,24
	fmadds 1,30,24,17
	fmadds 2,31,24,17
	bl glTexCoord2f
	b .L296
.LVL200:
.L380:
	.loc 1 588 0
	li 3,0
	bl glBegin
	.loc 1 589 0
	cmpwi 7,23,0
	ble- 7,.L315
	lfs 12,.LC2@l(21)
	lis 9,0x4330
	xoris 0,26,0x8000
	stw 9,1928(1)
	stw 0,1932(1)
	fmr 13,12
	.loc 1 596 0
	lis 9,.LC6@ha
	.loc 1 593 0
	fmr 22,12
	.loc 1 589 0
	lfd 0,1928(1)
	addi 28,26,1
	.loc 1 596 0
	lfs 25,.LC6@l(9)
.LVL201:
	lis 9,.LC14@ha
	.loc 1 589 0
	fsub 0,0,13
	.loc 1 596 0
	lfs 24,.LC14@l(9)
	.loc 1 589 0
	li 27,0
.LVL202:
	li 30,0
	frsp 26,0
.LVL203:
.L307:
	.loc 1 593 0
	fmr 28,22
	.loc 1 590 0
	lfsx 29,30,25
	.loc 1 591 0
	lfsx 30,30,24
	li 31,0
	b .L308
.L309:
	.loc 1 601 0
	fmr 3,24
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 592 0
	cmpw 7,31,28
	beq- 7,.L384
.L308:
	.loc 1 593 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	.loc 1 592 0
	addi 31,31,1
	.loc 1 593 0
	stw 9,1928(1)
	lfd 0,1928(1)
	.loc 1 595 0
	lbz 0,4(29)
	.loc 1 593 0
	fsub 0,0,28
	.loc 1 595 0
	cmpwi 7,0,0
	.loc 1 593 0
	frsp 0,0
	fdivs 0,0,26
	fmuls 0,0,23
	fmr 13,0
	fsub 13,27,13
	frsp 31,13
	.loc 1 595 0
	beq+ 7,.L309
	.loc 1 596 0
	fmr 1,31
	fmr 0,25
	fdiv 1,1,27
	fmul 1,1,0
	frsp 1,1
.LVL204:
	.loc 1 598 0
	fmadds 2,30,1,25
	fmadds 1,29,1,25
.LVL205:
	bl glTexCoord2f
	.loc 1 601 0
	fmr 3,24
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 592 0
	cmpw 7,31,28
	bne+ 7,.L308
.L384:
	.loc 1 589 0
	addi 27,27,1
	addi 30,30,4
	cmpw 7,27,23
	bne+ 7,.L307
.LVL206:
.L315:
	.loc 1 618 0
	bl glEnd
	b .L357
.LVL207:
.L260:
	.loc 1 607 0
	fcmpu 7,25,27
	beq- 7,.L385
	.loc 1 619 0
	lfs 12,.LC2@l(21)
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	fmr 13,12
	.loc 1 624 0
	lis 9,.LC6@ha
	.loc 1 622 0
	fmr 25,12
.LVL208:
	.loc 1 619 0
	lfd 0,1928(1)
	cmpwi 4,27,0
	.loc 1 624 0
	lfs 21,.LC6@l(9)
	.loc 1 630 0
	lis 9,.LC14@ha
	.loc 1 619 0
	fsub 0,0,13
	.loc 1 630 0
	lfs 28,.LC14@l(9)
	fmr 26,21
.LVL209:
	addi 28,26,1
	addi 27,27,1
.LVL210:
	.loc 1 619 0
	li 26,0
.LVL211:
	frsp 22,0
.LVL212:
.L321:
	.loc 1 622 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	lfd 0,1928(1)
	.loc 1 623 0
	lbz 0,4(29)
	.loc 1 622 0
	fsub 0,0,25
	.loc 1 623 0
	cmpwi 7,0,0
	.loc 1 622 0
	frsp 0,0
	fdivs 0,0,22
	fmuls 0,0,23
	fmr 13,0
	fsub 13,27,13
	frsp 29,13
	.loc 1 623 0
	beq- 7,.L322
	.loc 1 624 0
	fmr 0,29
	fmr 13,21
	fdiv 0,0,27
	fmul 0,0,13
	frsp 24,0
.L322:
	.loc 1 627 0
	li 3,3
	bl glBegin
	.loc 1 628 0
	blt- 4,.L324
	li 30,0
.LVL213:
	li 31,0
	b .L326
.L386:
	.loc 1 629 0
	lfsx 30,31,25
	.loc 1 633 0
	fmr 3,28
	.loc 1 629 0
	lfsx 31,31,24
	.loc 1 628 0
	addi 30,30,1
	.loc 1 633 0
	fmuls 1,29,30
	.loc 1 628 0
	addi 31,31,4
	.loc 1 633 0
	fmuls 2,29,31
	bl glVertex3f
	.loc 1 628 0
	cmpw 7,30,27
	beq- 7,.L324
.L326:
	.loc 1 629 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L386
	.loc 1 630 0
	lfsx 30,31,25
	.loc 1 628 0
	addi 30,30,1
	.loc 1 630 0
	lfsx 31,31,24
	.loc 1 628 0
	addi 31,31,4
	.loc 1 630 0
	fmadds 1,30,24,26
	fmadds 2,31,24,26
	bl glTexCoord2f
	.loc 1 633 0
	fmuls 1,29,30
	fmuls 2,29,31
	fmr 3,28
	bl glVertex3f
	.loc 1 628 0
	cmpw 7,30,27
	bne+ 7,.L326
.L324:
	.loc 1 621 0
	addi 26,26,1
	.loc 1 636 0
	bl glEnd
	.loc 1 621 0
	cmpw 7,26,28
	bne+ 7,.L321
	.loc 1 638 0
	cmpwi 7,23,0
	ble- 7,.L357
	.loc 1 645 0
	lis 9,.LC6@ha
	.loc 1 643 0
	lfs 24,.LC2@l(21)
.LVL214:
	.loc 1 645 0
	lfs 26,.LC6@l(9)
	lis 9,.LC14@ha
	lfs 25,.LC14@l(9)
	.loc 1 638 0
	li 28,0
.LVL215:
	li 30,0
.LVL216:
.L332:
	.loc 1 643 0
	fmr 28,24
	.loc 1 641 0
	li 3,3
	.loc 1 639 0
	lfsx 29,30,25
.LVL217:
	.loc 1 641 0
	li 31,0
.LVL218:
	.loc 1 640 0
	lfsx 30,30,24
	.loc 1 641 0
	bl glBegin
	b .L333
.L334:
	.loc 1 652 0
	fmr 3,25
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 642 0
	cmpw 7,26,31
	beq- 7,.L387
.L333:
	.loc 1 643 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	.loc 1 642 0
	addi 31,31,1
	.loc 1 643 0
	stw 9,1928(1)
	lfd 0,1928(1)
	.loc 1 644 0
	lbz 0,4(29)
	.loc 1 643 0
	fsub 0,0,28
	.loc 1 644 0
	cmpwi 7,0,0
	.loc 1 643 0
	frsp 0,0
	fdivs 0,0,22
	fmuls 0,0,23
	fmr 13,0
	fsub 13,27,13
	frsp 31,13
	.loc 1 644 0
	beq+ 7,.L334
	.loc 1 645 0
	fmr 1,31
	fmr 0,26
	fdiv 1,1,27
	fmul 1,1,0
	frsp 1,1
.LVL219:
	.loc 1 649 0
	fmadds 2,30,1,26
	fmadds 1,29,1,26
.LVL220:
	bl glTexCoord2f
	.loc 1 652 0
	fmr 3,25
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 642 0
	cmpw 7,26,31
	bne+ 7,.L333
.L387:
	.loc 1 638 0
	addi 28,28,1
	.loc 1 654 0
	bl glEnd
	.loc 1 638 0
	cmpw 7,28,23
	addi 30,30,4
	bne+ 7,.L332
	b .L357
.LVL221:
.L379:
	.loc 1 495 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	lis 9,.LC7@ha
	lfs 3,.LC7@l(9)
	fmr 2,1
	bl glNormal3f
	b .L254
.L337:
	.loc 1 659 0
	cmpwi 4,27,0
	blt- 4,.L388
	lfs 12,.LC2@l(21)
	lis 9,0x4330
	xoris 0,26,0x8000
	stw 9,1928(1)
	stw 0,1932(1)
	fmr 13,12
	.loc 1 667 0
	lis 9,.LC6@ha
	.loc 1 664 0
	fmr 20,12
	.loc 1 659 0
	lfd 0,1928(1)
	slwi 22,27,2
	.loc 1 667 0
	lfs 22,.LC6@l(9)
	lis 9,.LC14@ha
	.loc 1 659 0
	fsub 0,0,13
	.loc 1 667 0
	lfs 21,.LC14@l(9)
	.loc 1 659 0
	mr 30,27
.LVL222:
	li 23,0
.LVL223:
	addi 28,26,1
	frsp 26,0
.LVL224:
.L342:
	.loc 1 664 0
	fmr 28,20
	.loc 1 662 0
	li 3,3
	.loc 1 660 0
	lfsx 29,23,25
	.loc 1 662 0
	li 31,0
	.loc 1 661 0
	lfsx 30,23,24
	.loc 1 662 0
	bl glBegin
	b .L343
.L344:
	.loc 1 671 0
	fmr 3,21
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 663 0
	cmpw 7,31,28
	beq- 7,.L389
.L343:
	.loc 1 664 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	.loc 1 663 0
	addi 31,31,1
	.loc 1 664 0
	stw 9,1928(1)
	lfd 0,1928(1)
	.loc 1 666 0
	lbz 0,4(29)
	.loc 1 664 0
	fsub 0,0,28
	.loc 1 666 0
	cmpwi 7,0,0
	.loc 1 664 0
	frsp 0,0
	fdivs 0,0,26
	fmuls 0,0,23
	fmr 13,0
	fsub 13,27,13
	frsp 31,13
	.loc 1 666 0
	beq+ 7,.L344
	.loc 1 667 0
	fmr 0,31
	fmr 13,22
	fdiv 0,0,27
	fmul 0,0,13
	frsp 24,0
	.loc 1 668 0
	fmadds 1,29,24,22
	fmadds 2,30,24,22
	bl glTexCoord2f
	.loc 1 671 0
	fmr 3,21
	fmuls 2,31,30
	fmuls 1,31,29
	bl glVertex3f
	.loc 1 663 0
	cmpw 7,31,28
	bne+ 7,.L343
.L389:
	.loc 1 673 0
	add 30,30,27
	bl glEnd
	.loc 1 659 0
	subf 0,27,30
	.loc 1 673 0
	add 23,23,22
	.loc 1 659 0
	cmpw 7,27,0
	bge+ 7,.L342
	b .L339
.LVL225:
.L385:
	.loc 1 608 0
	li 3,3
	bl glBegin
	.loc 1 610 0
	cmpwi 7,27,0
	blt- 7,.L315
	.loc 1 612 0
	lis 9,.LC6@ha
	addi 28,27,1
	lfs 29,.LC6@l(9)
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
	.loc 1 610 0
	li 30,0
.LVL226:
	li 31,0
	b .L317
.L390:
	.loc 1 611 0
	lfsx 30,31,25
	lfsx 31,31,24
.L320:
	.loc 1 615 0
	fmr 1,30
	.loc 1 610 0
	addi 30,30,1
	.loc 1 615 0
	fmr 2,31
	.loc 1 610 0
	addi 31,31,4
	.loc 1 615 0
	fmr 3,28
	fmul 1,1,25
	fmul 2,2,25
	frsp 1,1
	frsp 2,2
	bl glVertex3f
	.loc 1 610 0
	cmpw 7,30,28
	beq- 7,.L315
.L317:
	.loc 1 611 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L390
	.loc 1 612 0
	lfsx 30,31,25
	lfsx 31,31,24
	fmadds 1,30,29,29
	fmadds 2,31,29,29
	bl glTexCoord2f
	b .L320
.L264:
	.loc 1 510 0
	li 3,6
	.loc 1 508 0
	addi 23,26,-1
.LVL227:
	.loc 1 510 0
	bl glBegin
	.loc 1 511 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L391
.L268:
	.loc 1 514 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 2,1
	fmr 3,1
	bl glVertex3f
	.loc 1 515 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	xoris 0,23,0x8000
	lfs 0,.LC2@l(21)
	lfd 12,1928(1)
	stw 0,1932(1)
	fsub 12,12,0
	lfd 13,1928(1)
	.loc 1 517 0
	lbz 0,4(29)
	.loc 1 515 0
	fsub 13,13,0
	frsp 21,12
	.loc 1 517 0
	cmpwi 6,0,0
	.loc 1 515 0
	frsp 13,13
	fdivs 13,13,21
	fmuls 13,13,23
	fmr 0,13
	fsub 0,27,0
	frsp 29,0
.LVL228:
	.loc 1 517 0
	beq- 6,.L270
	.loc 1 518 0
	fmr 0,29
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	fdiv 0,0,27
	fmul 0,0,13
	frsp 24,0
.LVL229:
.L270:
	.loc 1 521 0
	lis 0,0x1
	lwz 9,8(29)
	ori 0,0,34484
	cmpw 7,9,0
	beq- 7,.L392
	.loc 1 531 0
	cmpwi 4,27,0
	blt- 4,.L275
	.loc 1 533 0
	lis 9,.LC6@ha
	.loc 1 522 0
	li 30,0
.LVL230:
	.loc 1 533 0
	lfs 26,.LC6@l(9)
.LVL231:
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
	.loc 1 522 0
	li 31,0
.L282:
	.loc 1 532 0
	bne- 6,.L283
	lfsx 30,31,25
	lfsx 31,31,24
.L285:
	.loc 1 536 0
	fmuls 1,29,30
	addi 31,31,4
	fmuls 2,29,31
	fmr 3,28
	bl glVertex3f
	.loc 1 531 0
	cmpw 7,30,27
	addi 30,30,1
	beq- 7,.L275
	lbz 0,4(29)
	cmpwi 6,0,0
	b .L282
.L283:
	.loc 1 533 0
	lfsx 30,31,25
	lfsx 31,31,24
	fmadds 1,30,24,26
	fmadds 2,31,24,26
	bl glTexCoord2f
	b .L285
.LVL232:
.L275:
	.loc 1 540 0
	bl glEnd
	.loc 1 544 0
	cmpwi 7,23,0
	bne+ 7,.L266
	b .L357
.LVL233:
.L392:
	.loc 1 522 0
	cmpwi 4,27,0
	blt- 4,.L275
	.loc 1 524 0
	lis 9,.LC6@ha
	.loc 1 531 0
	slwi 0,27,2
	.loc 1 524 0
	lfs 26,.LC6@l(9)
.LVL234:
	lis 9,.LC14@ha
	lfs 28,.LC14@l(9)
	.loc 1 531 0
	add 28,24,0
	add 30,25,0
.LVL235:
	mr 31,27
.LVL236:
.L277:
	.loc 1 523 0
	bne- 6,.L278
	lfs 30,0(30)
	lfs 31,0(28)
.L280:
	.loc 1 527 0
	fmuls 1,29,30
	.loc 1 522 0
	addi 30,30,-4
	.loc 1 527 0
	fmuls 2,29,31
	.loc 1 522 0
	addi 28,28,-4
	.loc 1 527 0
	fmr 3,28
	bl glVertex3f
	.loc 1 522 0
	cmpwi 7,31,0
	addi 31,31,-1
	beq- 7,.L275
	lbz 0,4(29)
	cmpwi 6,0,0
	b .L277
.L278:
	.loc 1 524 0
	lfs 30,0(30)
	lfs 31,0(28)
	fmadds 1,30,24,26
	fmadds 2,31,24,26
	bl glTexCoord2f
	b .L280
.LVL237:
.L391:
	.loc 1 512 0
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	fmr 2,1
	bl glTexCoord2f
	b .L268
.LVL238:
.L388:
	.loc 1 659 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,1932(1)
	stw 9,1928(1)
	lfs 13,.LC2@l(21)
	lfd 0,1928(1)
	fsub 0,0,13
	frsp 26,0
.LVL239:
	b .L339
.LFE12:
	.size	gluPartialDisk, .-gluPartialDisk
	.align 2
	.globl gluDisk
	.type	gluDisk, @function
gluDisk:
.LFB11:
	.loc 1 432 0
.LVL240:
	.loc 1 433 0
	lis 9,.LC18@ha
	lis 11,.LC0@ha
	lfs 4,.LC18@l(9)
	lfd 3,.LC0@l(11)
	b gluPartialDisk
.LVL241:
.LFE11:
	.size	gluDisk, .-gluDisk
	.align 2
	.globl gluCylinder
	.type	gluCylinder, @function
gluCylinder:
.LFB10:
	.loc 1 158 0
.LVL242:
	mfcr 12
.LCFI76:
	.loc 1 176 0
	cmpwi 7,4,239
	.loc 1 158 0
	mflr 0
.LCFI77:
	stwu 1,-6000(1)
.LCFI78:
	stfd 24,5936(1)
.LCFI79:
	fmr 24,1
	stfd 25,5944(1)
.LCFI80:
	fmr 25,3
	stw 22,5816(1)
.LCFI81:
	mr 22,5
	stw 25,5828(1)
.LCFI82:
	mr 25,4
	stw 29,5844(1)
.LCFI83:
	mr 29,3
	stfd 14,5856(1)
.LCFI84:
	stfd 15,5864(1)
.LCFI85:
	stfd 16,5872(1)
.LCFI86:
	stfd 17,5880(1)
.LCFI87:
	stfd 18,5888(1)
.LCFI88:
	stfd 19,5896(1)
.LCFI89:
	stfd 20,5904(1)
.LCFI90:
	stfd 21,5912(1)
.LCFI91:
	stfd 22,5920(1)
.LCFI92:
	stfd 23,5928(1)
.LCFI93:
	stfd 26,5952(1)
.LCFI94:
	stfd 27,5960(1)
.LCFI95:
	stfd 28,5968(1)
.LCFI96:
	stfd 29,5976(1)
.LCFI97:
	stfd 30,5984(1)
.LCFI98:
	stfd 31,5992(1)
.LCFI99:
	stw 16,5792(1)
.LCFI100:
	stw 17,5796(1)
.LCFI101:
	stw 18,5800(1)
.LCFI102:
	stw 19,5804(1)
.LCFI103:
	stw 20,5808(1)
.LCFI104:
	stw 21,5812(1)
.LCFI105:
	stw 23,5820(1)
.LCFI106:
	stw 24,5824(1)
.LCFI107:
	stw 26,5832(1)
.LCFI108:
	stw 27,5836(1)
.LCFI109:
	stw 28,5840(1)
.LCFI110:
	stw 30,5848(1)
.LCFI111:
	stw 31,5852(1)
.LCFI112:
	stw 0,6004(1)
.LCFI113:
	stw 12,5788(1)
.LCFI114:
	.loc 1 176 0
	ble- 7,.L396
.LVL243:
	li 25,239
.LVL244:
.L398:
	.loc 1 178 0
	cmpwi 7,22,0
	ble- 7,.L516
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,24,0
	blt- 7,.L516
	fcmpu 7,2,0
	blt- 7,.L516
	fcmpu 7,25,0
	blt- 7,.L516
	.loc 1 185 0
	fsub 0,24,2
	frsp 22,0
.LVL245:
	.loc 1 186 0
	fmuls 1,22,22
	fmadd 1,25,25,1
	bl sqrt
.LVL246:
	.loc 1 187 0
	lis 9,.LC14@ha
	.loc 1 186 0
	frsp 1,1
.LVL247:
	.loc 1 187 0
	lfs 0,.LC14@l(9)
	fcmpu 7,1,0
	beq- 7,.L516
	.loc 1 196 0
	lwz 9,0(29)
	xoris 0,9,0xfffe
	cmpwi 7,0,-31072
	beq 7,.L517
	.loc 1 200 0
	xoris 0,9,0xfffe
	cmpwi 7,0,-31071
	beq 7,.L518
	lwz 26,12(29)
.L411:
	.loc 1 204 0
	li 11,0
.LVL248:
	li 23,0
.LVL249:
.L410:
	.loc 1 210 0
	fmr 0,1
	.loc 1 212 0
	cmpwi 2,25,0
	.loc 1 209 0
	fdivs 21,22,1
.LVL250:
	.loc 1 210 0
	fdiv 0,25,0
	frsp 20,0
.LVL251:
	.loc 1 212 0
	ble- 2,.L501
	lis 16,.LC2@ha
	lis 9,0x4330
	lfs 12,.LC2@l(16)
	xoris 0,25,0x8000
	stw 9,5768(1)
	cmpwi 4,11,0
	stw 0,5772(1)
	fmr 13,12
	lis 9,.LC3@ha
	.loc 1 213 0
	fmr 26,12
	.loc 1 212 0
	lfd 0,5768(1)
	.loc 1 219 0
	fneg 23,20
	.loc 1 215 0
	lis 28,0x1
	.loc 1 213 0
	lfd 27,.LC3@l(9)
	.loc 1 212 0
	fsub 28,0,13
	.loc 1 215 0
	ori 28,28,34484
	.loc 1 212 0
	li 30,0
.LVL252:
	li 31,0
	addi 21,1,8
	addi 20,1,968
	.loc 1 219 0
	addi 24,1,1928
	.loc 1 220 0
	addi 27,1,2888
	b .L418
.LVL253:
.L519:
	.loc 1 158 0
	fmr 1,29
.LVL254:
	bl sin
.LVL255:
	fmr 30,1
	fmr 1,29
	bl cos
.L421:
	.loc 1 212 0
	addi 30,30,1
	.loc 1 223 0
	frsp 0,30
	.loc 1 212 0
	cmpw 7,30,25
	.loc 1 224 0
	frsp 13,1
	.loc 1 223 0
	stfsx 0,31,21
	.loc 1 224 0
	stfsx 13,31,20
	.loc 1 212 0
	addi 31,31,4
	beq- 7,.L416
.LVL256:
.L418:
	.loc 1 213 0
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	stw 9,5768(1)
	lfd 0,5768(1)
	fsub 0,0,26
	fmul 0,0,27
	fdiv 0,0,28
	frsp 29,0
	.loc 1 214 0
	beq- 4,.L519
	.loc 1 215 0
	lwz 0,8(29)
	cmpw 7,0,28
	beq- 7,.L520
	.loc 1 219 0
	fmr 1,29
.LVL257:
	.loc 1 212 0
	addi 30,30,1
	.loc 1 219 0
	fmr 31,23
	bl sin
.LVL258:
	fmr 30,1
	.loc 1 220 0
	fmr 1,29
	.loc 1 219 0
	fmul 0,31,30
	frsp 0,0
	stfsx 0,31,24
	.loc 1 220 0
	bl cos
	.loc 1 212 0
	cmpw 7,30,25
	.loc 1 220 0
	fmul 31,31,1
	.loc 1 223 0
	frsp 0,30
	.loc 1 224 0
	frsp 13,1
	.loc 1 220 0
	frsp 31,31
	.loc 1 223 0
	stfsx 0,31,21
	.loc 1 224 0
	stfsx 13,31,20
	.loc 1 220 0
	stfsx 31,31,27
	.loc 1 212 0
	addi 31,31,4
	bne+ 7,.L418
.LVL259:
.L416:
	.loc 1 227 0
	cmpwi 7,23,0
	mfcr 24
	rlwinm 24,24,28,0xf0000000
	beq- 7,.L424
	.loc 1 228 0
	ble- 2,.L424
	lis 16,.LC2@ha
	xoris 0,25,0x8000
	lfs 12,.LC2@l(16)
	lis 9,0x4330
	stw 0,5772(1)
	.loc 1 230 0
	lis 0,0x1
	.loc 1 228 0
	stw 9,5768(1)
	fmr 13,12
	lwz 11,8(29)
.LVL260:
	.loc 1 230 0
	ori 0,0,34484
	.loc 1 228 0
	lfd 0,5768(1)
	.loc 1 229 0
	lis 9,.LC6@ha
	.loc 1 230 0
	cmpw 3,11,0
	.loc 1 229 0
	lfs 27,.LC6@l(9)
	.loc 1 228 0
	fsub 29,0,13
.LVL261:
	lis 9,.LC3@ha
	.loc 1 229 0
	fmr 26,12
	lfd 28,.LC3@l(9)
	.loc 1 234 0
	fneg 23,20
	.loc 1 228 0
	li 30,0
.LVL262:
	li 31,0
	addi 28,1,3848
	addi 27,1,4808
	b .L427
.LVL263:
.L428:
	.loc 1 234 0
	fmr 1,30
.LVL264:
	fmr 31,23
	bl sin
	fmul 0,31,1
	.loc 1 235 0
	fmr 1,30
	.loc 1 234 0
	frsp 0,0
	stfsx 0,31,28
	.loc 1 235 0
	bl cos
	fmul 31,31,1
	frsp 31,31
	stfsx 31,31,27
.L430:
	.loc 1 228 0
	addi 30,30,1
	addi 31,31,4
	cmpw 7,30,25
	beq- 7,.L424
.LVL265:
.L427:
	.loc 1 229 0
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	stw 9,5768(1)
	lfd 0,5768(1)
	fsub 0,0,26
	fsub 0,0,27
	fmul 0,0,28
	fdiv 0,0,29
	frsp 30,0
	.loc 1 230 0
	bne+ 3,.L428
	.loc 1 231 0
	fmr 1,30
.LVL266:
	fmr 31,20
	bl sin
	fmul 0,31,1
	.loc 1 232 0
	fmr 1,30
	.loc 1 231 0
	frsp 0,0
	stfsx 0,31,28
	.loc 1 232 0
	bl cos
	fmul 31,31,1
	frsp 31,31
	stfsx 31,31,27
	b .L430
.LVL267:
.L396:
	.loc 1 178 0
	cmpwi 7,4,1
	bgt+ 7,.L398
.LVL268:
.L516:
	.loc 1 427 0
	lwz 0,6004(1)
	.loc 1 188 0
	lis 4,0x1
	.loc 1 427 0
	lwz 12,5788(1)
	.loc 1 188 0
	mr 3,29
	.loc 1 427 0
	mtlr 0
	lwz 16,5792(1)
	lwz 17,5796(1)
	.loc 1 188 0
	ori 4,4,35365
	.loc 1 427 0
	lwz 18,5800(1)
	mtcrf 56,12
	lwz 19,5804(1)
	lwz 20,5808(1)
	lwz 21,5812(1)
	lwz 22,5816(1)
.LVL269:
	lwz 23,5820(1)
	lwz 24,5824(1)
	lwz 25,5828(1)
.LVL270:
	lwz 26,5832(1)
	lwz 27,5836(1)
	lwz 28,5840(1)
	lwz 29,5844(1)
.LVL271:
	lwz 30,5848(1)
	lwz 31,5852(1)
	lfd 14,5856(1)
	lfd 15,5864(1)
	lfd 16,5872(1)
	lfd 17,5880(1)
	lfd 18,5888(1)
	lfd 19,5896(1)
	lfd 20,5904(1)
	lfd 21,5912(1)
	lfd 22,5920(1)
.LVL272:
	lfd 23,5928(1)
	lfd 24,5936(1)
.LVL273:
	lfd 25,5944(1)
.LVL274:
	lfd 26,5952(1)
	lfd 27,5960(1)
	lfd 28,5968(1)
	lfd 29,5976(1)
	lfd 30,5984(1)
	lfd 31,5992(1)
	addi 1,1,6000
	.loc 1 188 0
	b gluQuadricError
.LVL275:
.L520:
	.loc 1 216 0
	fmr 1,29
.LVL276:
	fmr 31,20
	bl sin
.LVL277:
	fmr 30,1
	.loc 1 217 0
	fmr 1,29
	.loc 1 216 0
	fmul 0,31,30
	frsp 0,0
	stfsx 0,31,24
	.loc 1 217 0
	bl cos
	fmul 31,31,1
	frsp 31,31
	stfsx 31,31,27
	b .L421
.LVL278:
.L424:
	.loc 1 240 0
	slwi 0,25,2
	lfs 0,8(1)
	.loc 1 241 0
	lfs 13,968(1)
	.loc 1 240 0
	add 9,0,21
	stfsx 0,21,0
	.loc 1 241 0
	stfs 13,960(9)
	.loc 1 242 0
	beq- 4,.L431
	.loc 1 243 0
	lfs 0,1928(1)
	.loc 1 244 0
	lfs 13,2888(1)
	.loc 1 243 0
	stfs 0,1920(9)
	.loc 1 244 0
	stfs 13,2880(9)
.L431:
	.loc 1 246 0
	rlwinm 24,24,4,0xffffffff
	mtcrf 1,24
	rlwinm 24,24,28,0xffffffff
	beq- 7,.L433
	.loc 1 247 0
	lfs 0,3848(1)
	.loc 1 248 0
	lfs 13,4808(1)
	.loc 1 247 0
	stfs 0,3840(9)
	.loc 1 248 0
	stfs 13,4800(9)
.L433:
	.loc 1 251 0
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,26,0
	beq- 7,.L437
	bgt- 7,.L440
	xoris 0,26,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L521
.LVL279:
.L499:
	.loc 1 427 0
	lwz 0,6004(1)
	lwz 12,5788(1)
	lwz 16,5792(1)
	mtlr 0
	lwz 17,5796(1)
	mtcrf 56,12
	lwz 18,5800(1)
	lwz 19,5804(1)
	lwz 20,5808(1)
	lwz 21,5812(1)
	lwz 22,5816(1)
.LVL280:
	lwz 23,5820(1)
.LVL281:
	lwz 24,5824(1)
	lwz 25,5828(1)
.LVL282:
	lwz 26,5832(1)
	lwz 27,5836(1)
	lwz 28,5840(1)
	lwz 29,5844(1)
.LVL283:
	lwz 30,5848(1)
.LVL284:
	lwz 31,5852(1)
.LVL285:
	lfd 14,5856(1)
	lfd 15,5864(1)
	lfd 16,5872(1)
	lfd 17,5880(1)
	lfd 18,5888(1)
	lfd 19,5896(1)
	lfd 20,5904(1)
.LVL286:
	lfd 21,5912(1)
.LVL287:
	lfd 22,5920(1)
.LVL288:
	lfd 23,5928(1)
	lfd 24,5936(1)
.LVL289:
	lfd 25,5944(1)
.LVL290:
	lfd 26,5952(1)
.LVL291:
	lfd 27,5960(1)
.LVL292:
	lfd 28,5968(1)
	lfd 29,5976(1)
.LVL293:
	lfd 30,5984(1)
.LVL294:
	lfd 31,5992(1)
.LVL295:
	addi 1,1,6000
	blr
.LVL296:
.L440:
	.loc 1 251 0
	xoris 0,26,0xfffe
	cmpwi 7,0,-31060
	beq 7,.L438
	xoris 0,26,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L499
	xoris 0,22,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	lis 16,.LC2@ha
	stw 9,5768(1)
	lfs 13,.LC2@l(16)
	lfd 0,5768(1)
	fsub 28,0,13
	frsp 23,28
.LVL297:
.L441:
	.loc 1 372 0
	lfs 0,.LC2@l(16)
	.loc 1 389 0
	lis 9,.LC7@ha
	.loc 1 377 0
	lis 26,0x1
	lis 27,0x1
	.loc 1 372 0
	fmr 20,0
.LVL298:
	.loc 1 389 0
	lfs 26,.LC7@l(9)
	fmr 27,0
	.loc 1 377 0
	ori 26,26,34464
	ori 27,27,34465
	.loc 1 343 0
	li 23,0
.LVL299:
	addi 24,1,968
	addi 28,25,1
	.loc 1 382 0
	addi 19,1,1928
	addi 18,1,2888
	.loc 1 379 0
	addi 17,1,3848
	addi 20,1,4808
.L481:
	.loc 1 372 0
	xoris 0,23,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	.loc 1 375 0
	li 3,3
	.loc 1 372 0
	stw 9,5768(1)
	lfd 13,5768(1)
	fsub 13,13,20
	fmul 12,13,25
	.loc 1 373 0
	frsp 13,13
	.loc 1 372 0
	fdiv 12,12,28
	.loc 1 373 0
	fdivs 29,13,23
.LVL300:
	fmuls 0,29,22
	.loc 1 372 0
	frsp 30,12
.LVL301:
	.loc 1 373 0
	fsub 0,24,0
	frsp 31,0
.LVL302:
	.loc 1 375 0
	bl glBegin
.LVL303:
	.loc 1 376 0
	blt- 2,.L482
	li 30,0
.LVL304:
	li 31,0
	b .L484
.L488:
	.loc 1 392 0
	lfsx 1,31,21
	fmr 3,30
	lfsx 2,31,24
	.loc 1 376 0
	addi 30,30,1
	.loc 1 392 0
	fmuls 1,31,1
	.loc 1 376 0
	addi 31,31,4
	.loc 1 392 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 376 0
	cmpw 7,30,28
	beq- 7,.L482
.L484:
	.loc 1 377 0
	lwz 0,0(29)
	cmpw 7,0,26
	cmpw 6,0,27
	beq- 7,.L486
	bne+ 6,.L485
	.loc 1 379 0
	fmr 3,21
	lfsx 1,31,17
	lfsx 2,31,20
	bl glNormal3f
.L485:
	.loc 1 388 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L488
	.loc 1 389 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,25,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	fmr 13,27
	stw 11,5776(1)
	fmr 2,29
	stw 11,5768(1)
	.loc 1 376 0
	addi 30,30,1
	.loc 1 389 0
	lfd 0,5776(1)
	lfd 1,5768(1)
	fsub 0,0,13
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fdivs 1,1,0
	fsubs 1,26,1
	bl glTexCoord2f
	.loc 1 392 0
	lfsx 1,31,21
	lfsx 2,31,24
	fmr 3,30
	fmuls 1,31,1
	.loc 1 376 0
	addi 31,31,4
	.loc 1 392 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 376 0
	cmpw 7,30,28
	bne+ 7,.L484
.L482:
	.loc 1 158 0
	add 23,23,22
	.loc 1 395 0
	bl glEnd
	.loc 1 371 0
	cmpw 7,22,23
	bge+ 7,.L481
	.loc 1 397 0
	ble- 2,.L499
	.loc 1 415 0
	lis 9,.LC7@ha
	.loc 1 412 0
	lfs 20,.LC2@l(16)
	.loc 1 415 0
	lfs 21,.LC7@l(9)
.LVL305:
	.loc 1 401 0
	lis 9,.LC14@ha
	lfs 19,.LC14@l(9)
	addi 30,22,1
.LVL306:
	.loc 1 397 0
	li 28,0
.LVL307:
	li 27,0
	addi 20,1,968
	.loc 1 401 0
	addi 26,1,1928
	addi 24,1,2888
.LVL308:
.L492:
	.loc 1 398 0
	lwz 9,0(29)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L493
	.loc 1 401 0
	fmr 3,19
	lfsx 1,27,26
	lfsx 2,27,24
	bl glNormal3f
.L493:
	.loc 1 412 0
	fmr 29,20
	.loc 1 409 0
	li 3,3
	.loc 1 407 0
	lfsx 26,27,21
	.loc 1 409 0
	li 31,0
.LVL309:
	.loc 1 408 0
	lfsx 27,27,20
	.loc 1 409 0
	bl glBegin
	b .L495
.LVL310:
.L496:
	.loc 1 418 0
	fmul 3,31,25
	fmuls 2,30,27
	fmuls 1,30,26
	fdiv 3,3,28
	frsp 3,3
	bl glVertex3f
	.loc 1 410 0
	cmpw 7,31,30
	beq- 7,.L522
.LVL311:
.L495:
	.loc 1 412 0
	xoris 0,31,0x8000
	lis 11,0x4330
	stw 0,5772(1)
	.loc 1 410 0
	addi 31,31,1
	.loc 1 412 0
	stw 11,5768(1)
	lfd 0,5768(1)
	.loc 1 414 0
	lbz 0,4(29)
	.loc 1 412 0
	fsub 31,0,29
	.loc 1 414 0
	cmpwi 7,0,0
	.loc 1 412 0
	frsp 13,31
	fdivs 2,13,23
	fmuls 0,2,22
	fsub 0,24,0
	frsp 30,0
.LVL312:
	.loc 1 414 0
	beq+ 7,.L496
	.loc 1 415 0
	xoris 0,28,0x8000
	xoris 9,25,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	stw 11,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,29
	fsub 0,0,29
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,21,1
	bl glTexCoord2f
	.loc 1 418 0
	fmul 3,31,25
	fmuls 2,30,27
	fmuls 1,30,26
	fdiv 3,3,28
	frsp 3,3
	bl glVertex3f
	.loc 1 410 0
	cmpw 7,31,30
	bne+ 7,.L495
.L522:
	.loc 1 397 0
	addi 28,28,1
	.loc 1 421 0
	bl glEnd
	.loc 1 397 0
	cmpw 7,28,25
	addi 27,27,4
	bne+ 7,.L492
	b .L499
.LVL313:
.L517:
	lwz 26,12(29)
	.loc 1 196 0
	li 11,1
.LVL314:
	li 23,0
.LVL315:
	b .L410
.LVL316:
.L438:
	.loc 1 343 0
	lis 16,.LC2@ha
	lis 9,0x4330
	lfs 12,.LC2@l(16)
	xoris 0,22,0x8000
	stw 9,5768(1)
	.loc 1 304 0
	lis 9,.LC7@ha
	.loc 1 343 0
	stw 0,5772(1)
	fmr 13,12
	.loc 1 265 0
	fmr 15,12
	.loc 1 272 0
	lis 27,0x1
	.loc 1 343 0
	lfd 0,5768(1)
	.loc 1 304 0
	fmr 18,12
	.loc 1 298 0
	fmr 14,12
	.loc 1 272 0
	lis 23,0x1
.LVL317:
	.loc 1 343 0
	fsub 19,0,13
	.loc 1 283 0
	lis 26,0x1
	.loc 1 304 0
	lfs 17,.LC7@l(9)
	.loc 1 272 0
	ori 27,27,34464
	ori 23,23,34465
	.loc 1 283 0
	ori 26,26,34484
	.loc 1 343 0
	frsp 16,19
	li 11,0
.LVL318:
	addi 20,1,968
	addi 28,25,1
	.loc 1 277 0
	addi 19,1,1928
	addi 18,1,2888
	.loc 1 274 0
	addi 17,1,3848
	addi 16,1,4808
.LVL319:
.L444:
	.loc 1 265 0
	xoris 0,11,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	.loc 1 266 0
	addi 24,11,1
.LVL320:
	.loc 1 265 0
	stw 9,5768(1)
	.loc 1 266 0
	xoris 0,24,0x8000
	.loc 1 270 0
	li 3,8
	.loc 1 265 0
	lfd 12,5768(1)
	.loc 1 266 0
	stw 0,5772(1)
	.loc 1 265 0
	fsub 12,12,15
	.loc 1 266 0
	lfd 13,5768(1)
	.loc 1 265 0
	fmul 0,12,25
	.loc 1 266 0
	fsub 13,13,15
	.loc 1 267 0
	frsp 12,12
	.loc 1 265 0
	fdiv 0,0,19
	.loc 1 266 0
	fmul 11,13,25
	.loc 1 268 0
	frsp 13,13
	.loc 1 267 0
	fdivs 20,12,16
.LVL321:
	.loc 1 266 0
	fdiv 11,11,19
	.loc 1 268 0
	fdivs 23,13,16
	.loc 1 265 0
	frsp 26,0
	.loc 1 268 0
	fmuls 13,23,22
	.loc 1 267 0
	fmuls 0,20,22
	.loc 1 266 0
	frsp 27,11
	.loc 1 268 0
	fsub 13,24,13
	.loc 1 267 0
	fsub 0,24,0
	.loc 1 268 0
	frsp 29,13
	.loc 1 267 0
	frsp 28,0
	.loc 1 270 0
	bl glBegin
.LVL322:
	.loc 1 271 0
	blt- 2,.L445
	li 30,0
.LVL323:
	li 31,0
	b .L447
.L526:
	.loc 1 272 0
	cmpw 7,0,23
	bne+ 7,.L448
	.loc 1 274 0
	fmr 3,21
	lfsx 1,31,17
	lfsx 2,31,16
	bl glNormal3f
.L448:
	.loc 1 283 0
	lwz 0,8(29)
	cmpw 7,0,26
	beq- 7,.L523
.L451:
	.loc 1 297 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L524
.L458:
	.loc 1 301 0
	lfsx 31,31,21
	fmr 3,27
	lfsx 30,31,20
.LVL324:
	fmuls 1,31,29
	fmuls 2,30,29
	bl glVertex3f
	.loc 1 303 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L525
.L460:
	.loc 1 307 0
	fmuls 1,28,31
	.loc 1 271 0
	addi 30,30,1
	.loc 1 307 0
	fmuls 2,28,30
	.loc 1 271 0
	addi 31,31,4
	.loc 1 307 0
	fmr 3,26
	bl glVertex3f
	.loc 1 271 0
	cmpw 7,30,28
	beq- 7,.L445
.LVL325:
.L447:
	.loc 1 272 0
	lwz 0,0(29)
	cmpw 7,0,27
	bne+ 7,.L526
	.loc 1 277 0
	fmr 3,21
	lfsx 1,31,19
	lfsx 2,31,18
	bl glNormal3f
	.loc 1 283 0
	lwz 0,8(29)
	cmpw 7,0,26
	bne+ 7,.L451
.L523:
	.loc 1 284 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L527
.L453:
	.loc 1 288 0
	lfsx 30,31,21
.LVL326:
	fmr 3,26
	lfsx 31,31,20
	fmuls 1,30,28
	fmuls 2,31,28
	bl glVertex3f
	.loc 1 290 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L528
.L455:
	.loc 1 294 0
	fmuls 1,29,30
	.loc 1 271 0
	addi 30,30,1
	.loc 1 294 0
	fmuls 2,29,31
	.loc 1 271 0
	addi 31,31,4
	.loc 1 294 0
	fmr 3,27
	bl glVertex3f
	.loc 1 271 0
	cmpw 7,30,28
	bne+ 7,.L447
.LVL327:
.L445:
	.loc 1 311 0
	bl glEnd
	.loc 1 264 0
	cmpw 7,24,22
	beq- 7,.L499
	mr 11,24
	b .L444
.LVL328:
.L521:
	.loc 1 315 0
	li 3,0
	bl glBegin
.LVL329:
	.loc 1 316 0
	ble- 2,.L463
	lis 16,.LC2@ha
	lis 9,0x4330
	lfs 12,.LC2@l(16)
	xoris 0,22,0x8000
	stw 9,5768(1)
	.loc 1 333 0
	lis 9,.LC7@ha
	.loc 1 316 0
	stw 0,5772(1)
	fmr 13,12
	.loc 1 330 0
	fmr 19,12
	.loc 1 333 0
	lfs 20,.LC7@l(9)
.LVL330:
	.loc 1 316 0
	lfd 0,5768(1)
	addi 30,22,1
.LVL331:
	li 28,0
.LVL332:
	li 27,0
	fsub 28,0,13
	addi 20,1,968
	.loc 1 320 0
	addi 26,1,1928
	addi 24,1,2888
	.loc 1 316 0
	frsp 23,28
.LVL333:
.L465:
	.loc 1 317 0
	lwz 9,0(29)
	addis 9,9,0xfffe
	addi 9,9,31072
	cmplwi 7,9,1
	bgt- 7,.L466
	.loc 1 320 0
	fmr 3,21
	lfsx 1,27,26
	lfsx 2,27,24
	bl glNormal3f
.L466:
	.loc 1 330 0
	fmr 29,19
.LVL334:
	.loc 1 326 0
	lfsx 26,27,21
	.loc 1 327 0
	lfsx 27,27,20
	li 31,0
	b .L468
.LVL335:
.L469:
	.loc 1 336 0
	fmul 3,31,25
	fmuls 2,30,27
	fmuls 1,30,26
	fdiv 3,3,28
	frsp 3,3
	bl glVertex3f
	.loc 1 328 0
	cmpw 7,31,30
	beq- 7,.L529
.LVL336:
.L468:
	.loc 1 330 0
	xoris 0,31,0x8000
	lis 11,0x4330
	stw 0,5772(1)
	.loc 1 328 0
	addi 31,31,1
	.loc 1 330 0
	stw 11,5768(1)
	lfd 0,5768(1)
	.loc 1 332 0
	lbz 0,4(29)
	.loc 1 330 0
	fsub 31,0,29
	.loc 1 332 0
	cmpwi 7,0,0
	.loc 1 330 0
	frsp 13,31
	fdivs 2,13,23
	fmuls 0,2,22
	fsub 0,24,0
	frsp 30,0
.LVL337:
	.loc 1 332 0
	beq+ 7,.L469
	.loc 1 333 0
	xoris 0,28,0x8000
	xoris 9,25,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	stw 11,5776(1)
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,29
	fsub 0,0,29
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	fsubs 1,20,1
	bl glTexCoord2f
	.loc 1 336 0
	fmul 3,31,25
	fmuls 2,30,27
	fmuls 1,30,26
	fdiv 3,3,28
	frsp 3,3
	bl glVertex3f
	.loc 1 328 0
	cmpw 7,31,30
	bne+ 7,.L468
.L529:
	.loc 1 316 0
	addi 28,28,1
	addi 27,27,4
	cmpw 7,28,25
	bne+ 7,.L465
.LVL338:
.L463:
	.loc 1 340 0
	bl glEnd
	b .L499
.LVL339:
.L486:
	.loc 1 382 0
	fmr 3,21
	lfsx 1,31,19
	lfsx 2,31,18
	bl glNormal3f
	b .L485
.LVL340:
.L525:
	.loc 1 304 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,25,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	fmr 13,18
	stw 11,5776(1)
	fmr 2,20
	stw 11,5768(1)
	lfd 0,5776(1)
	lfd 1,5768(1)
	fsub 0,0,13
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fdivs 1,1,0
	fsubs 1,17,1
	bl glTexCoord2f
	b .L460
.LVL341:
.L524:
	.loc 1 298 0
	lis 11,0x4330
	xoris 9,25,0x8000
	xoris 0,30,0x8000
	stw 9,5780(1)
	stw 0,5772(1)
	fmr 13,14
	stw 11,5776(1)
	lis 9,.LC7@ha
	stw 11,5768(1)
	fmr 2,23
	lfd 0,5776(1)
	lfd 1,5768(1)
	fsub 0,0,13
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fdivs 1,1,0
	lfs 0,.LC7@l(9)
	fsubs 1,0,1
	bl glTexCoord2f
	b .L458
.LVL342:
.L528:
	.loc 1 291 0
	lis 11,0x4330
	xoris 9,25,0x8000
	xoris 0,30,0x8000
	stw 9,5780(1)
	stw 0,5772(1)
	lis 9,.LC2@ha
	stw 11,5776(1)
	fmr 2,23
	stw 11,5768(1)
	lfs 13,.LC2@l(9)
	lis 9,.LC7@ha
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	lfs 0,.LC7@l(9)
	fsubs 1,0,1
	bl glTexCoord2f
	b .L455
.LVL343:
.L527:
	.loc 1 285 0
	lis 11,0x4330
	xoris 9,25,0x8000
	xoris 0,30,0x8000
	stw 9,5780(1)
	stw 0,5772(1)
	lis 9,.LC2@ha
	stw 11,5776(1)
	fmr 2,20
	stw 11,5768(1)
	lfs 13,.LC2@l(9)
	lis 9,.LC7@ha
	lfd 1,5768(1)
	lfd 0,5776(1)
	fsub 1,1,13
	fsub 0,0,13
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	lfs 0,.LC7@l(9)
	fsubs 1,0,1
	bl glTexCoord2f
	b .L453
.LVL344:
.L518:
	.loc 1 201 0
	lwz 26,12(29)
	xoris 0,26,0xfffe
	cmpwi 7,0,-31062
	beq 7,.L411
	.loc 1 204 0
	lis 0,0x1
	li 11,1
.LVL345:
	ori 0,0,34475
	li 23,1
.LVL346:
	cmpw 7,26,0
	beq- 7,.L410
	li 11,0
	b .L410
.LVL347:
.L437:
	.loc 1 343 0
	cmpwi 7,22,1
	beq- 7,.L530
	.loc 1 341 0
	lis 16,.LC2@ha
	lis 9,0x4330
	lfs 12,.LC2@l(16)
	xoris 0,22,0x8000
	stw 9,5768(1)
	.loc 1 361 0
	lis 9,.LC7@ha
	.loc 1 341 0
	stw 0,5772(1)
	fmr 13,12
	.loc 1 344 0
	fmr 20,12
.LVL348:
	.loc 1 349 0
	lis 27,0x1
	.loc 1 341 0
	lfd 0,5768(1)
	.loc 1 361 0
	fmr 27,12
	.loc 1 349 0
	lis 26,0x1
	.loc 1 361 0
	lfs 26,.LC7@l(9)
	.loc 1 341 0
	fsub 28,0,13
	.loc 1 349 0
	ori 27,27,34464
	ori 26,26,34465
	.loc 1 341 0
	li 23,1
.LVL349:
	addi 24,1,968
	addi 28,25,1
	frsp 23,28
	.loc 1 354 0
	addi 19,1,1928
	addi 18,1,2888
	.loc 1 351 0
	addi 17,1,3848
	addi 20,1,4808
.LVL350:
.L472:
	.loc 1 344 0
	xoris 0,23,0x8000
	lis 9,0x4330
	stw 0,5772(1)
	.loc 1 347 0
	li 3,3
	.loc 1 344 0
	stw 9,5768(1)
	lfd 13,5768(1)
	fsub 13,13,20
	fmul 12,13,25
	.loc 1 345 0
	frsp 13,13
	.loc 1 344 0
	fdiv 12,12,28
	.loc 1 345 0
	fdivs 29,13,23
.LVL351:
	fmuls 0,29,22
	.loc 1 344 0
	frsp 30,12
.LVL352:
	.loc 1 345 0
	fsub 0,24,0
	frsp 31,0
	.loc 1 347 0
	bl glBegin
.LVL353:
	.loc 1 348 0
	blt- 2,.L473
	li 30,0
.LVL354:
	li 31,0
	b .L475
.L479:
	.loc 1 364 0
	lfsx 1,31,21
	fmr 3,30
	lfsx 2,31,24
	.loc 1 348 0
	addi 30,30,1
	.loc 1 364 0
	fmuls 1,31,1
	.loc 1 348 0
	addi 31,31,4
	.loc 1 364 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 348 0
	cmpw 7,30,28
	beq- 7,.L473
.L475:
	.loc 1 349 0
	lwz 0,0(29)
	cmpw 7,0,27
	cmpw 6,0,26
	beq- 7,.L477
	bne+ 6,.L476
	.loc 1 351 0
	fmr 3,21
	lfsx 1,31,17
	lfsx 2,31,20
	bl glNormal3f
.L476:
	.loc 1 360 0
	lbz 0,4(29)
	cmpwi 7,0,0
	beq+ 7,.L479
	.loc 1 361 0
	lis 11,0x4330
	xoris 0,30,0x8000
	xoris 9,25,0x8000
	stw 0,5772(1)
	stw 9,5780(1)
	fmr 13,27
	stw 11,5776(1)
	fmr 2,29
	stw 11,5768(1)
	.loc 1 348 0
	addi 30,30,1
	.loc 1 361 0
	lfd 0,5776(1)
	lfd 1,5768(1)
	fsub 0,0,13
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fdivs 1,1,0
	fsubs 1,26,1
	bl glTexCoord2f
	.loc 1 364 0
	lfsx 1,31,21
	lfsx 2,31,24
	fmr 3,30
	fmuls 1,31,1
	.loc 1 348 0
	addi 31,31,4
	.loc 1 364 0
	fmuls 2,31,2
	bl glVertex3f
	.loc 1 348 0
	cmpw 7,30,28
	bne+ 7,.L475
.L473:
	.loc 1 343 0
	addi 23,23,1
	.loc 1 367 0
	bl glEnd
	.loc 1 343 0
	cmpw 7,23,22
	bne+ 7,.L472
	b .L441
.L477:
	.loc 1 354 0
	fmr 3,21
	lfsx 1,31,19
	lfsx 2,31,18
	bl glNormal3f
	b .L476
.LVL355:
.L501:
	cmpwi 4,11,0
	addi 21,1,8
	b .L416
.LVL356:
.L530:
	.loc 1 343 0
	lis 9,.LC7@ha
	lis 16,.LC2@ha
	lfs 0,.LC7@l(9)
	fmr 28,0
	fmr 23,0
	b .L441
.LFE10:
	.size	gluCylinder, .-gluCylinder
	.align 2
	.globl gluDeleteQuadric
	.type	gluDeleteQuadric, @function
gluDeleteQuadric:
.LFB3:
	.loc 1 80 0
.LVL357:
	mflr 0
.LCFI115:
	stwu 1,-8(1)
.LCFI116:
	stw 0,12(1)
.LCFI117:
	.loc 1 81 0
	bl free
.LVL358:
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE3:
	.size	gluDeleteQuadric, .-gluDeleteQuadric
	.align 2
	.globl gluNewQuadric
	.type	gluNewQuadric, @function
gluNewQuadric:
.LFB2:
	.loc 1 61 0
	mflr 0
.LCFI118:
	stwu 1,-8(1)
.LCFI119:
	.loc 1 64 0
	li 3,20
	.loc 1 61 0
	stw 0,12(1)
.LCFI120:
	.loc 1 64 0
	bl malloc
	.loc 1 65 0
	mr. 0,3
	li 3,0
.LVL359:
	beq- 0,.L536
	.loc 1 64 0
	mr 3,0
	.loc 1 69 0
	lis 9,0x1
	.loc 1 70 0
	li 0,0
	.loc 1 71 0
	lis 11,0x1
	.loc 1 72 0
	lis 10,0x1
	.loc 1 69 0
	ori 9,9,34464
	.loc 1 71 0
	ori 11,11,34484
	.loc 1 72 0
	ori 10,10,34476
	.loc 1 70 0
	stb 0,4(3)
	.loc 1 73 0
	li 0,0
	.loc 1 69 0
	stw 9,0(3)
	.loc 1 71 0
	stw 11,8(3)
	.loc 1 72 0
	stw 10,12(3)
	.loc 1 73 0
	stw 0,16(3)
.L536:
	.loc 1 75 0
	lwz 0,12(1)
	addi 1,1,8
.LVL360:
	mtlr 0
	blr
.LFE2:
	.size	gluNewQuadric, .-gluNewQuadric
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1501560836
.LC6:
	.4byte	1056964608
.LC7:
	.4byte	1065353216
.LC14:
	.4byte	0
.LC16:
	.4byte	-1011613696
.LC18:
	.4byte	1135869952
.LC20:
	.4byte	1127481344
.LC21:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC3:
	.4byte	1075388923
	.4byte	1413754136
.LC4:
	.4byte	1074340347
	.4byte	1413754136
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x2e08
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xbc
	.uleb128 0x8
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x9b
	.uleb128 0x29
	.byte	0x4
	.4byte	.LCFI39-.LCFI7
	.byte	0x9d
	.uleb128 0x27
	.byte	0x9c
	.uleb128 0x28
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x97
	.uleb128 0x2d
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x91
	.uleb128 0x33
	.byte	0x90
	.uleb128 0x34
	.byte	0x8f
	.uleb128 0x35
	.byte	0x8e
	.uleb128 0x36
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
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
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x4
	.4byte	.LCFI43-.LCFI39
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x37
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x25
	.byte	0x9e
	.uleb128 0x26
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI46-.LFB12
	.byte	0xe
	.uleb128 0x840
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xb9
	.uleb128 0xe
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xba
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0x9a
	.uleb128 0x26
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0x9b
	.uleb128 0x25
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0x9d
	.uleb128 0x23
	.byte	0x4
	.4byte	.LCFI75-.LCFI52
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x2c
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x22
	.byte	0x9c
	.uleb128 0x24
	.byte	0x99
	.uleb128 0x27
	.byte	0x98
	.uleb128 0x28
	.byte	0x97
	.uleb128 0x29
	.byte	0x96
	.uleb128 0x2a
	.byte	0x95
	.uleb128 0x2b
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI78-.LFB10
	.byte	0xe
	.uleb128 0x1770
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xb8
	.uleb128 0x10
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0xb9
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0x96
	.uleb128 0x2e
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0x99
	.uleb128 0x2b
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0x9d
	.uleb128 0x27
	.byte	0x4
	.4byte	.LCFI114-.LCFI83
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x25
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9c
	.uleb128 0x28
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x98
	.uleb128 0x2c
	.byte	0x97
	.uleb128 0x2d
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x91
	.uleb128 0x33
	.byte	0x90
	.uleb128 0x34
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
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI116-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI119-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 11784
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL138-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -240
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -240
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -240
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -240
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL135-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL135-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL135-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL131-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL141-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -232
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -232
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -232
	.4byte	.LVL112-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -232
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2112
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL221-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL175-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL221-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL221-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL237-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL238-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI78-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 6000
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL356-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL356-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL355-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	.LVL347-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL355-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL355-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL355-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI116-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI116-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI119-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI119-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glu.h"
	.section	.debug_info
	.4byte	0x919
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x93
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x94
	.4byte	0x2f
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x99
	.4byte	0x4b
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9e
	.4byte	0x7c
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0xa0
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x10e
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x14
	.byte	0x3
	.2byte	0x10e
	.4byte	0x121
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x38
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	0x12d
	.uleb128 0xa
	.4byte	0xa0
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x121
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x16a
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x54
	.4byte	0x16a
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x54
	.4byte	0x8a
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x51
	.4byte	0x1b4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5c
	.4byte	0x16a
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5c
	.4byte	0x8a
	.4byte	.LLST5
	.uleb128 0xf
	.string	"fn"
	.byte	0x1
	.byte	0x5c
	.4byte	0x1bb
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x10
	.4byte	0x1bb
	.uleb128 0x11
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x51
	.4byte	0x1f7
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x69
	.4byte	0x16a
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x69
	.4byte	0x8a
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x51
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x78
	.4byte	0x16a
	.byte	0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x78
	.4byte	0x95
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x51
	.4byte	0x25f
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x16a
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7e
	.4byte	0x8a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x51
	.4byte	0x295
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8c
	.4byte	0x16a
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8c
	.4byte	0x8a
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2be
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST17
	.4byte	0x4f0
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x16a
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xb6
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xa0
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xa0
	.4byte	.LLST21
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.4byte	.LLST22
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.4byte	.LLST23
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa0
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x4f0
	.byte	0x4
	.byte	0x91
	.sleb128 -11776
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x4f0
	.byte	0x4
	.byte	0x91
	.sleb128 -10816
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x4f0
	.byte	0x4
	.byte	0x91
	.sleb128 -9856
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x4f0
	.byte	0x4
	.byte	0x91
	.sleb128 -8896
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -7936
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -6976
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -6016
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -5056
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -4096
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -3136
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -2176
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xab
	.4byte	.LLST24
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xab
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST28
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xab
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST30
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST31
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST32
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xab
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xab
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x95
	.4byte	.LLST34
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x95
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xa0
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xa0
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x1a
	.4byte	0xab
	.4byte	0x500
	.uleb128 0x1b
	.4byte	0x2c
	.byte	0xef
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1b8
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST37
	.4byte	0x68f
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x16a
	.4byte	.LLST38
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xb6
	.4byte	.LLST39
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xb6
	.4byte	.LLST40
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa0
	.4byte	.LLST41
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa0
	.4byte	.LLST42
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb6
	.4byte	.LLST43
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb6
	.4byte	.LLST44
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.4byte	.LLST45
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.4byte	.LLST46
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa0
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xab
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xab
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1be
	.4byte	0xab
	.4byte	.LLST47
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1be
	.4byte	0xab
	.4byte	.LLST48
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xab
	.4byte	.LLST49
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xab
	.4byte	.LLST50
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xab
	.4byte	.LLST51
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xab
	.4byte	.LLST52
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xab
	.4byte	.LLST53
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xab
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xa0
	.4byte	.LLST54
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xa0
	.4byte	.LLST55
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b0
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x51
	.4byte	0x6f8
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x16a
	.4byte	.LLST57
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb6
	.4byte	.LLST58
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb6
	.4byte	.LLST59
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1af
	.4byte	0xa0
	.4byte	.LLST60
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1af
	.4byte	0xa0
	.4byte	.LLST61
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST62
	.4byte	0x8c0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a
	.4byte	.LLST63
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6
	.4byte	.LLST64
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6
	.4byte	.LLST65
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x1
	.byte	0x9d
	.4byte	0xb6
	.4byte	.LLST66
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9d
	.4byte	0xa0
	.4byte	.LLST67
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9d
	.4byte	0xa0
	.4byte	.LLST68
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.4byte	.LLST69
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.4byte	.LLST70
	.uleb128 0x1f
	.string	"max"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa0
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa0
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -5992
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa1
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -5032
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa2
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -4072
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa3
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -3112
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa4
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa5
	.4byte	0x4f0
	.byte	0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa6
	.4byte	0xab
	.4byte	.LLST71
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.uleb128 0x21
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.4byte	.LLST72
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa7
	.4byte	0xab
	.4byte	.LLST73
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.4byte	.LLST74
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa8
	.4byte	0xab
	.4byte	.LLST75
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa9
	.4byte	0xab
	.4byte	.LLST76
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xaa
	.4byte	0xab
	.4byte	.LLST77
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0xab
	.4byte	0xab
	.4byte	.LLST78
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.byte	0xac
	.4byte	0xab
	.4byte	.LLST79
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0xad
	.4byte	0xab
	.4byte	.LLST80
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0xad
	.4byte	0xab
	.4byte	.LLST81
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0xae
	.4byte	0x4b
	.4byte	.LLST82
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.byte	0xae
	.4byte	0x4b
	.4byte	.LLST83
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST84
	.4byte	0x8e9
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4f
	.4byte	0x16a
	.4byte	.LLST85
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x916
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST86
	.4byte	0x916
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3e
	.4byte	0x16a
	.4byte	.LLST87
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc1
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
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0xe7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x91d
	.4byte	0x170
	.string	"gluQuadricCallback"
	.4byte	0x1c1
	.string	"gluQuadricNormals"
	.4byte	0x1f7
	.string	"gluQuadricTexture"
	.4byte	0x229
	.string	"gluQuadricOrientation"
	.4byte	0x25f
	.string	"gluQuadricDrawStyle"
	.4byte	0x295
	.string	"gluSphere"
	.4byte	0x500
	.string	"gluPartialDisk"
	.4byte	0x68f
	.string	"gluDisk"
	.4byte	0x6f8
	.string	"gluCylinder"
	.4byte	0x8c0
	.string	"gluDeleteQuadric"
	.4byte	0x8e9
	.string	"gluNewQuadric"
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
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"sintemp4"
.LASF16:
	.string	"GLfloat"
.LASF87:
	.string	"cosCache2"
.LASF89:
	.string	"cosCache3"
.LASF92:
	.string	"state"
.LASF48:
	.string	"zLow"
.LASF22:
	.string	"drawStyle"
.LASF84:
	.string	"topRadius"
.LASF71:
	.string	"cosCache"
.LASF35:
	.string	"sinCache1a"
.LASF41:
	.string	"sinCache1b"
.LASF12:
	.string	"long double"
.LASF97:
	.string	"gluQuadricError"
.LASF40:
	.string	"cosCache3a"
.LASF98:
	.string	"gluNewQuadric"
.LASF67:
	.string	"loops"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"gluQuadricOrientation"
.LASF28:
	.string	"gluQuadricTexture"
.LASF73:
	.string	"costemp"
.LASF75:
	.string	"radiusLow"
.LASF19:
	.string	"normals"
.LASF96:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF14:
	.string	"GLboolean"
.LASF82:
	.string	"gluCylinder"
.LASF83:
	.string	"baseRadius"
.LASF11:
	.string	"float"
.LASF94:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF5:
	.string	"long long int"
.LASF74:
	.string	"deltaRadius"
.LASF60:
	.string	"needCache2"
.LASF61:
	.string	"needCache3"
.LASF79:
	.string	"angleOffset"
.LASF88:
	.string	"sinCache3"
.LASF9:
	.string	"long int"
.LASF64:
	.string	"gluPartialDisk"
.LASF17:
	.string	"GLdouble"
.LASF95:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/libutil/quad.c"
.LASF37:
	.string	"sinCache2a"
.LASF43:
	.string	"sinCache2b"
.LASF63:
	.string	"finish"
.LASF20:
	.string	"textureCoords"
.LASF45:
	.string	"sinCache3b"
.LASF90:
	.string	"length"
.LASF62:
	.string	"start"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"newstate"
.LASF32:
	.string	"radius"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF85:
	.string	"height"
.LASF66:
	.string	"outerRadius"
.LASF69:
	.string	"sweepAngle"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"orientation"
.LASF33:
	.string	"slices"
.LASF68:
	.string	"startAngle"
.LASF13:
	.string	"GLenum"
.LASF65:
	.string	"innerRadius"
.LASF2:
	.string	"short unsigned int"
.LASF70:
	.string	"sinCache"
.LASF8:
	.string	"char"
.LASF36:
	.string	"cosCache1a"
.LASF42:
	.string	"cosCache1b"
.LASF39:
	.string	"sinCache3a"
.LASF72:
	.string	"sintemp"
.LASF24:
	.string	"qobj"
.LASF59:
	.string	"xyNormalRatio"
.LASF27:
	.string	"gluQuadricNormals"
.LASF18:
	.string	"GLUquadric"
.LASF50:
	.string	"sintemp1"
.LASF51:
	.string	"sintemp2"
.LASF52:
	.string	"sintemp3"
.LASF49:
	.string	"zHigh"
.LASF78:
	.string	"texHigh"
.LASF10:
	.string	"double"
.LASF46:
	.string	"cosCache3b"
.LASF38:
	.string	"cosCache2a"
.LASF81:
	.string	"gluDisk"
.LASF76:
	.string	"radiusHigh"
.LASF91:
	.string	"gluDeleteQuadric"
.LASF77:
	.string	"texLow"
.LASF58:
	.string	"zNormal"
.LASF80:
	.string	"slices2"
.LASF26:
	.string	"gluQuadricCallback"
.LASF47:
	.string	"angle"
.LASF31:
	.string	"gluSphere"
.LASF86:
	.string	"sinCache2"
.LASF34:
	.string	"stacks"
.LASF44:
	.string	"cosCache2b"
.LASF25:
	.string	"which"
.LASF0:
	.string	"unsigned int"
.LASF23:
	.string	"errorCallback"
.LASF30:
	.string	"gluQuadricDrawStyle"
.LASF54:
	.string	"costemp1"
.LASF55:
	.string	"costemp2"
.LASF56:
	.string	"costemp3"
.LASF57:
	.string	"costemp4"
.LASF15:
	.string	"GLint"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
