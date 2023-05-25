	.file	"glut_teapot.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	teapot, @function
teapot:
.LFB2:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_teapot.c"
	.loc 1 141 0
.LVL0:
	stwu 1,-880(1)
.LCFI0:
	mflr 0
.LCFI1:
	mfcr 12
.LCFI2:
	stw 20,808(1)
.LCFI3:
	mr 20,3
	.loc 1 145 0
	lis 3,0x1
.LVL1:
	.loc 1 141 0
	stw 0,884(1)
.LCFI4:
	.loc 1 145 0
	ori 3,3,8192
	.loc 1 141 0
	stw 12,780(1)
.LCFI5:
	stfd 29,856(1)
.LCFI6:
	stfd 30,864(1)
.LCFI7:
	stfd 31,872(1)
.LCFI8:
	fmr 31,1
	stw 14,784(1)
.LCFI9:
	stw 15,788(1)
.LCFI10:
	stw 16,792(1)
.LCFI11:
	mr 16,4
	stw 17,796(1)
.LCFI12:
	.loc 1 153 0
	li 17,0
.LVL2:
	.loc 1 141 0
	stw 18,800(1)
.LCFI13:
	addi 18,1,8
	stw 21,812(1)
.LCFI14:
	addi 21,1,584
	stw 22,816(1)
.LCFI15:
	addi 22,1,392
	stw 23,820(1)
.LCFI16:
	addi 23,1,200
	stw 24,824(1)
.LCFI17:
	stw 19,804(1)
.LCFI18:
	stw 25,828(1)
.LCFI19:
	stw 26,832(1)
.LCFI20:
	stw 27,836(1)
.LCFI21:
	stw 28,840(1)
.LCFI22:
	stw 29,844(1)
.LCFI23:
	stw 30,848(1)
.LCFI24:
	stw 31,852(1)
.LCFI25:
	.loc 1 145 0
	bl glPushAttrib
.LVL3:
	.loc 1 146 0
	li 3,3456
	bl glEnable
	.loc 1 147 0
	li 3,2977
	bl glEnable
	.loc 1 148 0
	li 3,3511
	bl glEnable
	.loc 1 149 0
	li 3,3508
	bl glEnable
	.loc 1 150 0
	bl glPushMatrix
	.loc 1 151 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,.LC10@ha
	lfs 3,.LC10@l(9)
	lis 9,.LC0@ha
	fmr 2,0
	lfs 1,.LC0@l(9)
	fmr 4,3
	.loc 1 176 0
	fmr 29,0
	.loc 1 151 0
	bl glRotatef
	.loc 1 152 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	.loc 1 176 0
	lis 9,.LC10@ha
	lfs 30,.LC10@l(9)
	.loc 1 152 0
	fmul 31,31,0
.LVL4:
	frsp 31,31
	fmr 1,31
	fmr 2,31
	fmr 3,31
	bl glScalef
	.loc 1 153 0
	lis 9,.LC4@ha
	fmr 1,30
	lfs 3,.LC4@l(9)
	fmr 2,30
	bl glTranslatef
	lis 9,.LANCHOR1@ha
	la 24,.LANCHOR1@l(9)
	lis 11,.LANCHOR0@ha
	la 14,.LANCHOR0@l(11)
	addi 15,24,1524
.LVL5:
.L2:
	cmpwi 4,17,5
	.loc 1 196 0
	li 26,0
	li 25,0
	slwi 19,17,4
.LVL6:
.L15:
	mulli 27,26,48
	add 9,19,25
	slwi 9,9,2
	li 3,0
	addi 11,27,4
	addi 0,9,12
	add 28,0,15
	add 30,21,11
	add 29,9,15
	add 12,23,11
	add 31,22,27
.L13:
	mulli 9,3,12
	lwz 0,0(29)
	lwz 11,0(28)
	li 10,1
	add 9,9,27
	mulli 0,0,12
	add 7,18,9
	add 8,23,9
	mulli 11,11,12
	add 4,21,9
	add 5,22,9
	li 9,0
	.loc 1 160 0
	cmpwi 7,9,1
	.loc 1 196 0
	add 6,0,24
	add 11,11,24
	.loc 1 158 0
	lfs 13,0(6)
	.loc 1 159 0
	lfs 12,0(11)
	.loc 1 157 0
	cmpwi 1,10,2
	.loc 1 165 0
	cmpwi 6,9,0
	.loc 1 158 0
	stfs 13,0(7)
	.loc 1 159 0
	stfs 12,0(8)
	.loc 1 160 0
	beq- 7,.L28
.L5:
	.loc 1 162 0
	bgt- 4,.L7
.L29:
	.loc 1 169 0
	fneg 11,13
	.loc 1 163 0
	stfs 12,0(5)
	.loc 1 165 0
	bne- 6,.L9
	.loc 1 166 0
	lfs 0,0(31)
	.loc 1 169 0
	stfs 11,-4(30)
	.loc 1 166 0
	fneg 0,0
	stfs 0,0(31)
.L3:
	.loc 1 154 0
	addi 9,9,1
	addi 6,6,4
	.loc 1 160 0
	cmpwi 7,9,1
	.loc 1 154 0
	addi 11,11,4
	.loc 1 158 0
	lfs 13,0(6)
	.loc 1 154 0
	addi 7,7,4
	.loc 1 159 0
	lfs 12,0(11)
	.loc 1 154 0
	addi 8,8,4
	addi 10,10,1
	addi 5,5,4
	addi 4,4,4
	.loc 1 157 0
	cmpwi 1,10,2
	.loc 1 165 0
	cmpwi 6,9,0
	.loc 1 158 0
	stfs 13,0(7)
	.loc 1 159 0
	stfs 12,0(8)
	.loc 1 160 0
	bne+ 7,.L5
.L28:
	.loc 1 161 0
	lfs 0,0(12)
	fneg 0,0
	stfs 0,0(12)
	.loc 1 162 0
	ble- 4,.L29
.L7:
	.loc 1 157 0
	ble- 1,.L3
	.loc 1 156 0
	cmpwi 7,3,3
	addi 29,29,4
	addi 28,28,-4
	addi 12,12,12
	addi 30,30,12
	addi 31,31,12
	addi 3,3,1
	bne+ 7,.L13
	.loc 1 155 0
	cmpwi 7,26,3
	addi 25,25,4
	addi 26,26,1
	bne+ 7,.L15
	.loc 1 176 0
	fmr 1,30
	li 3,3508
.LVL7:
	fmr 2,29
	li 4,2
	fmr 3,30
	li 5,2
	fmr 4,29
	li 6,4
	li 7,2
	mr 8,14
	bl glMap2f
	.loc 1 178 0
	fmr 1,30
	fmr 2,29
	mr 8,18
	fmr 3,30
	li 5,4
	fmr 4,29
	li 6,12
	li 7,4
	li 3,3511
	li 4,3
	bl glMap2f
	.loc 1 180 0
	fmr 1,30
	fmr 2,29
	mr 3,20
	fmr 3,30
	mr 4,20
	fmr 4,29
	bl glMapGrid2f
	.loc 1 181 0
	mr 3,16
	li 4,0
	mr 5,20
	li 6,0
	mr 7,20
	bl glEvalMesh2
	.loc 1 182 0
	fmr 1,30
	fmr 2,29
	li 4,3
	fmr 3,30
	li 5,4
	fmr 4,29
	li 6,12
	li 7,4
	li 3,3511
	mr 8,23
	bl glMap2f
	.loc 1 184 0
	mr 3,16
	li 4,0
	mr 5,20
	li 6,0
	mr 7,20
	bl glEvalMesh2
	.loc 1 185 0
	ble- 4,.L30
.L17:
	.loc 1 154 0
	cmpwi 7,17,9
	addi 17,17,1
	bne+ 7,.L2
	.loc 1 194 0
	bl glPopMatrix
	.loc 1 195 0
	bl glPopAttrib
	.loc 1 196 0
	lwz 0,884(1)
	lwz 12,780(1)
	lwz 14,784(1)
	mtlr 0
	lwz 15,788(1)
	mtcrf 8,12
	lwz 16,792(1)
.LVL8:
	lwz 17,796(1)
.LVL9:
	lwz 18,800(1)
	lwz 19,804(1)
	lwz 20,808(1)
.LVL10:
	lwz 21,812(1)
	lwz 22,816(1)
	lwz 23,820(1)
	lwz 24,824(1)
	lwz 25,828(1)
	lwz 26,832(1)
.LVL11:
	lwz 27,836(1)
	lwz 28,840(1)
	lwz 29,844(1)
	lwz 30,848(1)
	lwz 31,852(1)
	lfd 29,856(1)
	lfd 30,864(1)
	lfd 31,872(1)
	addi 1,1,880
	blr
.LVL12:
.L9:
	.loc 1 167 0
	stfs 13,0(4)
	.loc 1 170 0
	bne+ 7,.L7
	.loc 1 171 0
	lfs 0,0(30)
	fneg 0,0
	stfs 0,0(30)
	b .L3
.LVL13:
.L30:
	.loc 1 186 0
	fmr 1,30
	mr 8,22
	fmr 2,29
	li 4,3
	fmr 3,30
	li 5,4
	fmr 4,29
	li 6,12
	li 7,4
	li 3,3511
	bl glMap2f
	.loc 1 188 0
	mr 3,16
	mr 5,20
	mr 7,20
	li 4,0
	li 6,0
	bl glEvalMesh2
	.loc 1 189 0
	fmr 1,30
	fmr 2,29
	li 4,3
	fmr 3,30
	li 5,4
	fmr 4,29
	li 6,12
	li 7,4
	li 3,3511
	mr 8,21
	bl glMap2f
	.loc 1 191 0
	mr 3,16
	li 4,0
	mr 5,20
	li 6,0
	mr 7,20
	bl glEvalMesh2
	b .L17
.LFE2:
	.size	teapot, .-teapot
	.align 2
	.globl glutWireTeapot
	.type	glutWireTeapot, @function
glutWireTeapot:
.LFB4:
	.loc 1 207 0
.LVL14:
	.loc 1 208 0
	li 3,10
	li 4,6913
	b teapot
.LVL15:
.LFE4:
	.size	glutWireTeapot, .-glutWireTeapot
	.align 2
	.globl glutSolidTeapot
	.type	glutSolidTeapot, @function
glutSolidTeapot:
.LFB3:
	.loc 1 201 0
.LVL16:
	.loc 1 202 0
	li 3,14
	li 4,6914
	b teapot
.LVL17:
.LFE3:
	.size	glutSolidTeapot, .-glutSolidTeapot
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	cpdata, @object
	.size	cpdata, 1524
cpdata:
	.long	1045220557
	.long	0
	.long	1076677837
	.long	1045220557
	.long	-1109041086
	.long	1076677837
	.long	1038442562
	.long	-1102263091
	.long	1076677837
	.long	0
	.long	-1102263091
	.long	1076677837
	.long	1068184371
	.long	0
	.long	1075970048
	.long	1068184371
	.long	-1086341513
	.long	1075970048
	.long	1061142135
	.long	-1079299277
	.long	1075970048
	.long	0
	.long	-1079299277
	.long	1075970048
	.long	1069023232
	.long	0
	.long	1075970048
	.long	1069023232
	.long	-1085401989
	.long	1075970048
	.long	1062081659
	.long	-1078460416
	.long	1075970048
	.long	0
	.long	-1078460416
	.long	1075970048
	.long	1069547520
	.long	0
	.long	1075419546
	.long	1069547520
	.long	-1084814787
	.long	1075419546
	.long	1062668861
	.long	-1077936128
	.long	1075419546
	.long	0
	.long	-1077936128
	.long	1075419546
	.long	1071644672
	.long	0
	.long	1072693248
	.long	1071644672
	.long	-1082465976
	.long	1072693248
	.long	1065017672
	.long	-1075838976
	.long	1072693248
	.long	0
	.long	-1075838976
	.long	1072693248
	.long	1073741824
	.long	0
	.long	1068289229
	.long	1073741824
	.long	-1081123799
	.long	1068289229
	.long	1066359849
	.long	-1073741824
	.long	1068289229
	.long	0
	.long	-1073741824
	.long	1068289229
	.long	1073741824
	.long	0
	.long	1063675494
	.long	1073741824
	.long	-1081123799
	.long	1063675494
	.long	1066359849
	.long	-1073741824
	.long	1063675494
	.long	0
	.long	-1073741824
	.long	1063675494
	.long	-1073741824
	.long	0
	.long	1063675494
	.long	1073741824
	.long	0
	.long	1055286886
	.long	1073741824
	.long	-1081123799
	.long	1055286886
	.long	1066359849
	.long	-1073741824
	.long	1055286886
	.long	0
	.long	-1073741824
	.long	1055286886
	.long	1069547520
	.long	0
	.long	1046898278
	.long	1069547520
	.long	-1084814787
	.long	1046898278
	.long	1062668861
	.long	-1077936128
	.long	1046898278
	.long	0
	.long	-1077936128
	.long	1046898278
	.long	1069547520
	.long	0
	.long	1041865114
	.long	1069547520
	.long	-1084814787
	.long	1041865114
	.long	1062668861
	.long	-1077936128
	.long	1041865114
	.long	0
	.long	-1077936128
	.long	1041865114
	.long	-1077097267
	.long	0
	.long	1073846682
	.long	-1077097267
	.long	-1097229926
	.long	1073846682
	.long	-1077936128
	.long	-1097229926
	.long	1074790400
	.long	-1077936128
	.long	0
	.long	1074790400
	.long	-1072483533
	.long	0
	.long	1073846682
	.long	-1072483533
	.long	-1097229926
	.long	1073846682
	.long	-1071644672
	.long	-1097229926
	.long	1074790400
	.long	-1071644672
	.long	0
	.long	1074790400
	.long	-1070805811
	.long	0
	.long	1073846682
	.long	-1070805811
	.long	-1097229926
	.long	1073846682
	.long	-1069547520
	.long	-1097229926
	.long	1074790400
	.long	-1069547520
	.long	0
	.long	1074790400
	.long	-1070805811
	.long	0
	.long	1072064102
	.long	-1070805811
	.long	-1097229926
	.long	1072064102
	.long	-1069547520
	.long	-1097229926
	.long	1072064102
	.long	-1069547520
	.long	0
	.long	1072064102
	.long	-1070805811
	.long	0
	.long	1070176666
	.long	-1070805811
	.long	-1097229926
	.long	1070176666
	.long	-1069547520
	.long	-1097229926
	.long	1068289229
	.long	-1069547520
	.long	0
	.long	1068289229
	.long	-1071644672
	.long	0
	.long	1066401792
	.long	-1071644672
	.long	-1097229926
	.long	1066401792
	.long	-1071015526
	.long	-1097229926
	.long	1064304640
	.long	-1071015526
	.long	0
	.long	1064304640
	.long	-1073741824
	.long	-1097229926
	.long	1063675494
	.long	-1074580685
	.long	-1097229926
	.long	1058642330
	.long	-1074580685
	.long	0
	.long	1058642330
	.long	1071225242
	.long	0
	.long	1068918374
	.long	1071225242
	.long	-1087834685
	.long	1068918374
	.long	1071225242
	.long	-1087834685
	.long	1058642330
	.long	1071225242
	.long	0
	.long	1058642330
	.long	1076258406
	.long	0
	.long	1068918374
	.long	1076258406
	.long	-1087834685
	.long	1068918374
	.long	1078355558
	.long	-1087834685
	.long	1062417203
	.long	1078355558
	.long	0
	.long	1062417203
	.long	1075000115
	.long	0
	.long	1074161254
	.long	1075000115
	.long	-1098907648
	.long	1074161254
	.long	1075419546
	.long	-1098907648
	.long	1073846682
	.long	1075419546
	.long	0
	.long	1073846682
	.long	1076677837
	.long	0
	.long	1075419546
	.long	1076677837
	.long	-1098907648
	.long	1075419546
	.long	1079194419
	.long	-1098907648
	.long	1075419546
	.long	1079194419
	.long	0
	.long	1075419546
	.long	1077097267
	.long	0
	.long	1075734118
	.long	1077097267
	.long	-1098907648
	.long	1075734118
	.long	1080138138
	.long	-1098907648
	.long	1075812762
	.long	1080138138
	.long	0
	.long	1075812762
	.long	1077516698
	.long	0
	.long	1075734118
	.long	1077516698
	.long	-1105618534
	.long	1075734118
	.long	1079823565
	.long	-1105618534
	.long	1075891405
	.long	1079823565
	.long	0
	.long	1075891405
	.long	1077097267
	.long	0
	.long	1075419546
	.long	1077097267
	.long	-1105618534
	.long	1075419546
	.long	1078774989
	.long	-1105618534
	.long	1075419546
	.long	1078774989
	.long	0
	.long	1075419546
	.long	0
	.long	0
	.long	1078565274
	.long	1061997773
	.long	0
	.long	1078565274
	.long	1061997773
	.long	-1092196762
	.long	1078565274
	.long	1055286886
	.long	-1085485875
	.long	1078565274
	.long	0
	.long	-1085485875
	.long	1078565274
	.long	0
	.long	0
	.long	1077306982
	.long	1068708659
	.long	0
	.long	1075419546
	.long	1068708659
	.long	-1085754311
	.long	1075419546
	.long	1061729337
	.long	-1078774989
	.long	1075419546
	.long	0
	.long	-1078774989
	.long	1075419546
	.long	1053609165
	.long	0
	.long	1076048691
	.long	1053609165
	.long	-1100652478
	.long	1076048691
	.long	1046831170
	.long	-1093874483
	.long	1076048691
	.long	0
	.long	-1093874483
	.long	1076048691
	.long	1067869798
	.long	0
	.long	1076048691
	.long	1067869798
	.long	-1086693835
	.long	1076048691
	.long	1060789813
	.long	-1079613850
	.long	1076048691
	.long	0
	.long	-1079613850
	.long	1076048691
	.long	1067869798
	.long	0
	.long	1075419546
	.long	1067869798
	.long	-1086693835
	.long	1075419546
	.long	1060789813
	.long	-1079613850
	.long	1075419546
	.long	0
	.long	-1079613850
	.long	1075419546
	.long	0
	.long	0
	.long	0
	.long	1068918374
	.long	-1085519430
	.long	0
	.long	1069547520
	.long	0
	.long	1033476506
	.long	1068918374
	.long	0
	.long	0
	.long	1061964218
	.long	-1078565274
	.long	0
	.long	0
	.long	-1077936128
	.long	1033476506
	.long	0
	.long	-1078565274
	.long	0
	.long	1069547520
	.long	-1084814787
	.long	1033476506
	.long	1062668861
	.long	-1077936128
	.long	1033476506
	.type	patchdata, @object
	.size	patchdata, 640
patchdata:
	.long	102
	.long	103
	.long	104
	.long	105
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.long	12
	.long	13
	.long	14
	.long	15
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.long	24
	.long	25
	.long	26
	.long	27
	.long	24
	.long	25
	.long	26
	.long	27
	.long	29
	.long	30
	.long	31
	.long	32
	.long	33
	.long	34
	.long	35
	.long	36
	.long	37
	.long	38
	.long	39
	.long	40
	.long	96
	.long	96
	.long	96
	.long	96
	.long	97
	.long	98
	.long	99
	.long	100
	.long	101
	.long	101
	.long	101
	.long	101
	.long	0
	.long	1
	.long	2
	.long	3
	.long	0
	.long	1
	.long	2
	.long	3
	.long	106
	.long	107
	.long	108
	.long	109
	.long	110
	.long	111
	.long	112
	.long	113
	.long	114
	.long	115
	.long	116
	.long	117
	.long	118
	.long	118
	.long	118
	.long	118
	.long	124
	.long	122
	.long	119
	.long	121
	.long	123
	.long	126
	.long	125
	.long	120
	.long	40
	.long	39
	.long	38
	.long	37
	.long	41
	.long	42
	.long	43
	.long	44
	.long	45
	.long	46
	.long	47
	.long	48
	.long	49
	.long	50
	.long	51
	.long	52
	.long	53
	.long	54
	.long	55
	.long	56
	.long	53
	.long	54
	.long	55
	.long	56
	.long	57
	.long	58
	.long	59
	.long	60
	.long	61
	.long	62
	.long	63
	.long	64
	.long	28
	.long	65
	.long	66
	.long	67
	.long	68
	.long	69
	.long	70
	.long	71
	.long	72
	.long	73
	.long	74
	.long	75
	.long	76
	.long	77
	.long	78
	.long	79
	.long	80
	.long	81
	.long	82
	.long	83
	.long	80
	.long	81
	.long	82
	.long	83
	.long	84
	.long	85
	.long	86
	.long	87
	.long	88
	.long	89
	.long	90
	.long	91
	.long	92
	.long	93
	.long	94
	.long	95
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1132920832
.LC1:
	.4byte	1065353216
.LC3:
	.4byte	1056964608
.LC4:
	.4byte	-1077936128
.LC10:
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	tex, @object
	.size	tex, 32
tex:
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x370
	.byte	0x4
	.4byte	.LCFI3-.LCFI0
	.byte	0x94
	.uleb128 0x12
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI8-.LCFI3
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI11-.LCFI8
	.byte	0x90
	.uleb128 0x16
	.byte	0x8f
	.uleb128 0x17
	.byte	0x8e
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x91
	.uleb128 0x15
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x92
	.uleb128 0x14
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x95
	.uleb128 0x11
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x96
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x97
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI25-.LCFI16
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x8
	.byte	0x9d
	.uleb128 0x9
	.byte	0x9c
	.uleb128 0xa
	.byte	0x9b
	.uleb128 0xb
	.byte	0x9a
	.uleb128 0xc
	.byte	0x99
	.uleb128 0xd
	.byte	0x93
	.uleb128 0x13
	.byte	0x98
	.uleb128 0xe
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align 2
.LEFDE4:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 880
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.section	.debug_info
	.4byte	0x233
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x99
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xa0
	.4byte	0x77
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
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
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x144
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8c
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8c
	.4byte	0x6c
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x7
	.string	"p"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x7
	.string	"q"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x7
	.string	"r"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x9
	.string	"l"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7e
	.byte	0x0
	.uleb128 0xa
	.4byte	0x65
	.4byte	0x160
	.uleb128 0xb
	.4byte	0x160
	.byte	0x3
	.uleb128 0xb
	.4byte	0x160
	.byte	0x3
	.uleb128 0xb
	.4byte	0x160
	.byte	0x2
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x51
	.4byte	0x18a
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xce
	.4byte	0x6c
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x51
	.4byte	0x1b1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc8
	.4byte	0x6c
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0xa
	.4byte	0x57
	.4byte	0x1c7
	.uleb128 0xb
	.4byte	0x160
	.byte	0x9
	.uleb128 0xb
	.4byte	0x160
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x35
	.4byte	0x1d8
	.byte	0x5
	.byte	0x3
	.4byte	patchdata
	.uleb128 0xf
	.4byte	0x1b1
	.uleb128 0xa
	.4byte	0x65
	.4byte	0x1f3
	.uleb128 0xb
	.4byte	0x160
	.byte	0x7e
	.uleb128 0xb
	.4byte	0x160
	.byte	0x2
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x54
	.4byte	0x204
	.byte	0x5
	.byte	0x3
	.4byte	cpdata
	.uleb128 0xf
	.4byte	0x1dd
	.uleb128 0xa
	.4byte	0x65
	.4byte	0x225
	.uleb128 0xb
	.4byte	0x160
	.byte	0x1
	.uleb128 0xb
	.4byte	0x160
	.byte	0x1
	.uleb128 0xb
	.4byte	0x160
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.string	"tex"
	.byte	0x1
	.byte	0x81
	.4byte	0x209
	.byte	0x5
	.byte	0x3
	.4byte	tex
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x35
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x237
	.4byte	0x163
	.string	"glutWireTeapot"
	.4byte	0x18a
	.string	"glutSolidTeapot"
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
.LASF14:
	.string	"grid"
.LASF15:
	.string	"scale"
.LASF7:
	.string	"float"
.LASF13:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"GLenum"
.LASF24:
	.string	"teapot"
.LASF6:
	.string	"short unsigned int"
.LASF9:
	.string	"double"
.LASF8:
	.string	"GLdouble"
.LASF18:
	.string	"glutSolidTeapot"
.LASF19:
	.string	"patchdata"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"cpdata"
.LASF11:
	.string	"char"
.LASF17:
	.string	"glutWireTeapot"
.LASF23:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF5:
	.string	"GLint"
.LASF22:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_teapot.c"
.LASF12:
	.string	"long long int"
.LASF21:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF16:
	.string	"type"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
