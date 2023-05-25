	.file	"glut_teapot.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	teapot, @function
teapot:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_teapot.c"
	.loc 1 141 0
	.cfi_startproc
.LVL0:
	stwu 1,-848(1)
.LCFI0:
	.cfi_def_cfa_offset 848
	mflr 0
	mfcr 12
	stw 29,828(1)
	mr 29,3
	.cfi_offset 29, -20
	.cfi_register 70, 12
	.cfi_register 65, 0
	.loc 1 145 0
	lis 3,0x1
.LVL1:
	.loc 1 141 0
	stw 0,852(1)
	.loc 1 145 0
	ori 3,3,8192
	.loc 1 141 0
	stw 12,776(1)
	stfd 31,840(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 70, -72
	.cfi_offset 65, 4
	stw 17,780(1)
	.loc 1 153 0
	lis 17,.LC5@ha
	.cfi_offset 17, -68
	.loc 1 141 0
	stw 25,812(1)
	.loc 1 151 0
	lis 25,.LC1@ha
	.cfi_offset 25, -36
	.loc 1 141 0
	stw 26,816(1)
	lis 26,.LANCHOR1@ha
	.cfi_offset 26, -32
	stw 27,820(1)
	mr 27,4
	.cfi_offset 27, -28
	stw 28,824(1)
	la 26,.LANCHOR1@l(26)
	stw 30,832(1)
	.loc 1 154 0
	li 28,0
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	.loc 1 141 0
	stw 31,836(1)
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -12
	stw 18,784(1)
	la 31,.LANCHOR0@l(31)
	stw 19,788(1)
	addi 30,31,1524
	stw 20,792(1)
	stw 21,796(1)
	stw 22,800(1)
	stw 23,804(1)
	stw 24,808(1)
	.loc 1 145 0
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	bl glPushAttrib
.LVL2:
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
	lis 9,.LC5@ha
	lfs 3,.LC5@l(9)
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	fmr 4,3
	lfs 2,.LC1@l(25)
	la 25,.LC1@l(25)
	bl glRotatef
	.loc 1 152 0
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	fmul 1,31,1
	frsp 1,1
	fmr 2,1
	fmr 3,1
	bl glScalef
	.loc 1 153 0
	lfs 1,.LC5@l(17)
	lis 9,.LC4@ha
	fmr 2,1
	lfs 3,.LC4@l(9)
	bl glTranslatef
.LVL3:
.L2:
	cmpwi 4,28,5
	.loc 1 154 0 discriminator 1
	addi 19,1,200
	.loc 1 140 0 discriminator 1
	li 20,3
	li 22,0
	slwi 18,28,4
.LVL4:
.L14:
	slwi 6,22,2
	add 3,18,20
	add 6,18,6
	mulli 7,22,48
	slwi 6,6,2
	slwi 3,3,2
	add 6,30,6
	add 3,30,3
	addi 0,1,584
	addi 9,1,392
	addi 17,1,8
	.loc 1 158 0 discriminator 1
	mulli 21,22,12
	.loc 1 140 0 discriminator 1
	add 24,0,7
	add 12,9,7
	addi 6,6,-4
	addi 3,3,4
	add 7,17,7
	mr 5,19
	li 4,0
.LVL5:
.L11:
	.loc 1 158 0 discriminator 1
	lwzu 0,4(6)
	mulli 23,4,3
	.loc 1 159 0 discriminator 1
	lwzu 9,-4(3)
	li 11,0
	.loc 1 158 0 discriminator 1
	mulli 0,0,12
	.loc 1 159 0 discriminator 1
	li 10,0
	mulli 9,9,12
	.loc 1 158 0 discriminator 1
	add 23,23,21
	lwzx 0,31,0
	.loc 1 165 0 discriminator 1
	cmpwi 6,11,0
	.loc 1 159 0 discriminator 1
	lfsx 0,31,9
	li 9,1
	.loc 1 158 0 discriminator 1
	stw 0,0(24)
	.loc 1 157 0 discriminator 1
	cmpwi 7,9,3
	.loc 1 159 0 discriminator 1
	stfs 0,0(12)
	.loc 1 162 0 discriminator 1
	bgt- 4,.L4
.LVL6:
.L19:
	.loc 1 170 0
	cmpwi 1,11,1
	.loc 1 166 0
	fneg 13,0
	.loc 1 163 0
	stfsx 0,5,10
	.loc 1 167 0
	lwz 0,0(6)
	.loc 1 165 0
	bne- 6,.L5
	.loc 1 167 0
	mulli 8,0,12
	.loc 1 166 0
	stfs 13,0(5)
	mulli 0,0,3
	.loc 1 169 0
	lfsx 0,31,8
	fneg 0,0
	stfs 0,0(7)
.L15:
	.loc 1 159 0
	lwz 17,0(3)
	.loc 1 158 0
	add 0,0,9
	.loc 1 160 0
	cmpwi 7,9,1
	.loc 1 158 0
	add 8,23,9
	.loc 1 159 0
	mulli 17,17,3
	.loc 1 158 0
	slwi 0,0,2
	slwi 8,8,2
	lwzx 0,31,0
	.loc 1 159 0
	add 17,17,9
	slwi 17,17,2
	lfsx 0,31,17
	.loc 1 158 0
	addi 17,1,8
	add 8,17,8
	.loc 1 161 0
	fneg 13,0
	.loc 1 159 0
	stfs 0,384(8)
	.loc 1 158 0
	stw 0,576(8)
	.loc 1 160 0
	bne+ 7,.L3
	.loc 1 161 0
	stfs 13,4(12)
.L3:
	addi 11,11,1
	addi 9,9,1
	addi 10,10,4
	.loc 1 157 0
	cmpwi 7,9,3
	.loc 1 165 0
	cmpwi 6,11,0
	.loc 1 162 0
	ble- 4,.L19
.L4:
.LVL7:
	.loc 1 157 0
	bne- 7,.L7
.LVL8:
	.loc 1 156 0
	cmpwi 7,4,3
	addi 24,24,12
	addi 12,12,12
	addi 5,5,12
	addi 7,7,12
	addi 4,4,1
.LVL9:
	bne+ 7,.L11
.LVL10:
	.loc 1 155 0
	cmpwi 7,22,3
	addi 20,20,4
	addi 19,19,48
	addi 22,22,1
.LVL11:
	bne+ 7,.L14
	.loc 1 176 0
	lis 9,.LC5@ha
.LVL12:
	lfs 31,0(25)
	lfs 1,.LC5@l(9)
	.loc 1 178 0
	lis 17,.LC5@ha
	.loc 1 176 0
	fmr 2,31
	li 3,3508
	fmr 3,1
	li 4,2
.LVL13:
	fmr 4,31
	li 5,2
	li 6,4
	li 7,2
	mr 8,26
	bl glMap2f
	.loc 1 178 0
	lfs 1,.LC5@l(17)
	fmr 2,31
	addi 8,1,584
	fmr 3,1
	li 5,4
	fmr 4,31
	li 6,12
	li 7,4
	li 4,3
	li 3,3511
	bl glMap2f
	.loc 1 180 0
	lfs 1,.LC5@l(17)
	fmr 2,31
	mr 3,29
	fmr 3,1
	mr 4,29
	fmr 4,31
	bl glMapGrid2f
	.loc 1 181 0
	mr 3,27
	li 4,0
	mr 5,29
	li 6,0
	mr 7,29
	bl glEvalMesh2
	.loc 1 182 0
	lfs 1,.LC5@l(17)
	fmr 2,31
	li 4,3
	fmr 3,1
	li 5,4
	fmr 4,31
	li 6,12
	li 7,4
	li 3,3511
	addi 8,1,392
	bl glMap2f
	.loc 1 184 0
	mr 3,27
	li 4,0
	mr 5,29
	li 6,0
	mr 7,29
	bl glEvalMesh2
	.loc 1 185 0
	ble- 4,.L20
.L12:
.LVL14:
	.loc 1 154 0
	cmpwi 7,28,9
	addi 28,28,1
.LVL15:
	bne+ 7,.L2
	.loc 1 194 0
	bl glPopMatrix
	.loc 1 195 0
	bl glPopAttrib
	.loc 1 196 0
	lwz 0,852(1)
	lwz 12,776(1)
	mtlr 0
	lwz 17,780(1)
	lwz 18,784(1)
	mtcrf 8,12
	lwz 19,788(1)
	lwz 20,792(1)
	lwz 21,796(1)
	lwz 22,800(1)
.LVL16:
	lwz 23,804(1)
	lwz 24,808(1)
	lwz 25,812(1)
	lwz 26,816(1)
	lwz 27,820(1)
.LVL17:
	lwz 28,824(1)
.LVL18:
	lwz 29,828(1)
.LVL19:
	lwz 30,832(1)
	lwz 31,836(1)
	lfd 31,840(1)
	addi 1,1,848
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL20:
.L7:
.LCFI2:
	.cfi_restore_state
	.loc 1 153 0
	lwz 0,0(6)
	mulli 0,0,3
	b .L15
.LVL21:
.L5:
	.loc 1 167 0
	mulli 0,0,3
	add 8,0,11
	slwi 8,8,2
	lwzx 8,31,8
	stwx 8,7,10
	.loc 1 170 0
	bne- 1,.L4
	.loc 1 171 0
	lfs 0,4(7)
	fneg 0,0
	stfs 0,4(7)
.LVL22:
	b .L15
.LVL23:
.L20:
	.loc 1 186 0
	lfs 1,.LC5@l(17)
	fmr 2,31
	fmr 4,31
	addi 8,1,200
	fmr 3,1
	li 4,3
	li 5,4
	li 6,12
	li 7,4
	li 3,3511
	bl glMap2f
	.loc 1 188 0
	mr 3,27
	mr 5,29
	mr 7,29
	li 4,0
	li 6,0
	bl glEvalMesh2
	.loc 1 189 0
	lfs 1,.LC5@l(17)
	fmr 2,31
	li 4,3
	fmr 3,1
	li 5,4
	fmr 4,31
	li 6,12
	li 7,4
	li 3,3511
	addi 8,1,8
	bl glMap2f
	.loc 1 191 0
	mr 3,27
	li 4,0
	mr 5,29
	li 6,0
	mr 7,29
	bl glEvalMesh2
	b .L12
	.cfi_endproc
.LFE0:
	.size	teapot, .-teapot
	.align 2
	.globl glutSolidTeapot
	.type	glutSolidTeapot, @function
glutSolidTeapot:
.LFB1:
	.loc 1 201 0
	.cfi_startproc
.LVL24:
	.loc 1 202 0
	li 3,14
	li 4,6914
	.loc 1 203 0
	.loc 1 202 0
	b teapot
.LVL25:
	.cfi_endproc
.LFE1:
	.size	glutSolidTeapot, .-glutSolidTeapot
	.align 2
	.globl glutWireTeapot
	.type	glutWireTeapot, @function
glutWireTeapot:
.LFB2:
	.loc 1 207 0
	.cfi_startproc
.LVL26:
	.loc 1 208 0
	li 3,10
	li 4,6913
	.loc 1 209 0
	.loc 1 208 0
	b teapot
.LVL27:
	.cfi_endproc
.LFE2:
	.size	glutWireTeapot, .-glutWireTeapot
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
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
.LC5:
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
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
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x232
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.4byte	.LASF22
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x93
	.4byte	0x2c
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
	.4byte	0x53
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
	.4byte	0x73
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
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x144
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8c
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8c
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8c
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0x7
	.string	"p"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x7
	.string	"q"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x7
	.string	"r"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x8e
	.4byte	0x144
	.byte	0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7a
	.4byte	.LLST4
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7a
	.4byte	.LLST5
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0x8
	.string	"l"
	.byte	0x1
	.byte	0x8f
	.4byte	0x7a
	.4byte	.LLST7
	.byte	0
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x160
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x3
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x188
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc8
	.4byte	0x68
	.4byte	.LLST8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1b0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xce
	.4byte	0x68
	.4byte	.LLST9
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x9
	.uleb128 0xa
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x35
	.4byte	0x1d7
	.byte	0x5
	.byte	0x3
	.4byte	patchdata
	.uleb128 0xd
	.4byte	0x1b0
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x1f2
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x7e
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x54
	.4byte	0x203
	.byte	0x5
	.byte	0x3
	.4byte	cpdata
	.uleb128 0xd
	.4byte	0x1dc
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x224
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1
	.uleb128 0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"tex"
	.byte	0x1
	.byte	0x81
	.4byte	0x208
	.byte	0x5
	.byte	0x3
	.4byte	tex
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 848
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 848
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x3
	.byte	0x86
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
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
.LASF23:
	.string	"teapot"
.LASF6:
	.string	"short unsigned int"
.LASF21:
	.string	"GNU C 4.6.3"
.LASF9:
	.string	"double"
.LASF8:
	.string	"GLdouble"
.LASF17:
	.string	"glutSolidTeapot"
.LASF19:
	.string	"patchdata"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"cpdata"
.LASF11:
	.string	"char"
.LASF18:
	.string	"glutWireTeapot"
.LASF5:
	.string	"GLint"
.LASF12:
	.string	"long long int"
.LASF16:
	.string	"type"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_teapot.c"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
