	.file	"sbar.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl Sbar_ShowScores
	.type	Sbar_ShowScores, @function
Sbar_ShowScores:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/sbar.c"
	.loc 1 76 0
	.cfi_startproc
	.loc 1 77 0
	lis 9,sb_showscores@ha
	lbz 0,sb_showscores@l(9)
	cmpwi 7,0,0
	bnelr- 7
	.loc 1 79 0
	li 11,1
	stb 11,sb_showscores@l(9)
	.loc 1 80 0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
	blr
	.cfi_endproc
.LFE38:
	.size	Sbar_ShowScores, .-Sbar_ShowScores
	.align 2
	.globl Sbar_DontShowScores
	.type	Sbar_DontShowScores, @function
Sbar_DontShowScores:
.LFB39:
	.loc 1 91 0
	.cfi_startproc
	.loc 1 92 0
	li 0,0
	lis 9,sb_showscores@ha
	stb 0,sb_showscores@l(9)
	.loc 1 93 0
	li 0,0
	lis 9,sb_updates@ha
	.loc 1 94 0
	.loc 1 93 0
	stw 0,sb_updates@l(9)
	.loc 1 94 0
	blr
	.cfi_endproc
.LFE39:
	.size	Sbar_DontShowScores, .-Sbar_DontShowScores
	.align 2
	.globl Sbar_Changed
	.type	Sbar_Changed, @function
Sbar_Changed:
.LFB40:
	.loc 1 102 0
	.cfi_startproc
	.loc 1 103 0
	li 0,0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
	.loc 1 104 0
	blr
	.cfi_endproc
.LFE40:
	.size	Sbar_Changed, .-Sbar_Changed
	.align 2
	.globl Sbar_Init
	.type	Sbar_Init, @function
Sbar_Init:
.LFB41:
	.loc 1 112 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-48(1)
.LCFI0:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 28,32(1)
	lis 28,.LC0@ha
	.cfi_offset 28, -16
	stw 29,36(1)
	lis 29,.LC1@ha
	.cfi_offset 29, -12
	stw 30,40(1)
	.loc 1 213 0
	lis 30,sb_nums-4@ha
	.cfi_offset 30, -8
	.loc 1 112 0
	stw 0,52(1)
	.loc 1 213 0
	la 30,sb_nums-4@l(30)
	.loc 1 112 0
	stw 23,12(1)
	la 28,.LC0@l(28)
	stw 24,16(1)
	la 29,.LC1@l(29)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 31,44(1)
	.loc 1 115 0
	li 31,0
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL1:
.L7:
	.loc 1 117 0 discriminator 2
	mr 4,31
	mr 3,28
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 118 0 discriminator 2
	mr 4,31
	.loc 1 117 0 discriminator 2
	stwu 3,4(30)
	.loc 1 118 0 discriminator 2
	mr 3,29
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
.LVL2:
	.loc 1 115 0 discriminator 2
	cmpwi 7,31,9
	.loc 1 118 0 discriminator 2
	stw 3,44(30)
	.loc 1 115 0 discriminator 2
	addi 31,31,1
.LVL3:
	bne+ 7,.L7
	.loc 1 121 0
	lis 3,.LC2@ha
	lis 31,sb_nums@ha
.LVL4:
	la 3,.LC2@l(3)
	la 31,sb_nums@l(31)
	bl Draw_PicFromWad
	.loc 1 127 0
	lis 30,sb_weapons@ha
	.loc 1 121 0
	stw 3,40(31)
	.loc 1 122 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	lis 23,.LC20@ha
	bl Draw_PicFromWad
	lis 24,.LC21@ha
	stw 3,84(31)
	.loc 1 124 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	lis 25,.LC22@ha
	bl Draw_PicFromWad
	lis 9,sb_colon@ha
	stw 3,sb_colon@l(9)
	.loc 1 125 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	lis 26,.LC23@ha
	bl Draw_PicFromWad
	lis 9,sb_slash@ha
	stw 3,sb_slash@l(9)
	.loc 1 127 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	lis 27,.LC24@ha
	bl Draw_PicFromWad
	lis 28,.LC25@ha
	stw 3,sb_weapons@l(30)
	.loc 1 128 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	.loc 1 127 0
	la 30,sb_weapons@l(30)
	.loc 1 128 0
	bl Draw_PicFromWad
	lis 29,.LC26@ha
	stw 3,4(30)
	.loc 1 129 0
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	.loc 1 143 0
	li 31,0
	.loc 1 129 0
	bl Draw_PicFromWad
	la 23,.LC20@l(23)
	stw 3,8(30)
	.loc 1 130 0
	lis 3,.LC9@ha
	la 3,.LC9@l(3)
	la 24,.LC21@l(24)
	bl Draw_PicFromWad
	la 25,.LC22@l(25)
	stw 3,12(30)
	.loc 1 131 0
	lis 3,.LC10@ha
	la 3,.LC10@l(3)
	la 26,.LC23@l(26)
	bl Draw_PicFromWad
	la 27,.LC24@l(27)
	stw 3,16(30)
	.loc 1 132 0
	lis 3,.LC11@ha
	la 3,.LC11@l(3)
	la 28,.LC25@l(28)
	bl Draw_PicFromWad
	la 29,.LC26@l(29)
	stw 3,20(30)
	.loc 1 133 0
	lis 3,.LC12@ha
	la 3,.LC12@l(3)
	bl Draw_PicFromWad
	stw 3,24(30)
	.loc 1 135 0
	lis 3,.LC13@ha
	la 3,.LC13@l(3)
	bl Draw_PicFromWad
	stw 3,32(30)
	.loc 1 136 0
	lis 3,.LC14@ha
	la 3,.LC14@l(3)
	bl Draw_PicFromWad
	stw 3,36(30)
	.loc 1 137 0
	lis 3,.LC15@ha
	la 3,.LC15@l(3)
	bl Draw_PicFromWad
	stw 3,40(30)
	.loc 1 138 0
	lis 3,.LC16@ha
	la 3,.LC16@l(3)
	bl Draw_PicFromWad
	stw 3,44(30)
	.loc 1 139 0
	lis 3,.LC17@ha
	la 3,.LC17@l(3)
	bl Draw_PicFromWad
	stw 3,48(30)
	.loc 1 140 0
	lis 3,.LC18@ha
	la 3,.LC18@l(3)
	bl Draw_PicFromWad
	stw 3,52(30)
	.loc 1 141 0
	lis 3,.LC19@ha
	la 3,.LC19@l(3)
	bl Draw_PicFromWad
	stw 3,56(30)
.LVL5:
	addi 30,30,64
.LVL6:
.L8:
	.loc 1 145 0 discriminator 2
	addi 31,31,1
	mr 3,23
	mr 4,31
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 146 0 discriminator 2
	mr 4,31
	.loc 1 145 0 discriminator 2
	stw 3,0(30)
	.loc 1 146 0 discriminator 2
	mr 3,24
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 147 0 discriminator 2
	mr 4,31
	.loc 1 146 0 discriminator 2
	stw 3,4(30)
	.loc 1 147 0 discriminator 2
	mr 3,25
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 148 0 discriminator 2
	mr 4,31
	.loc 1 147 0 discriminator 2
	stw 3,8(30)
	.loc 1 148 0 discriminator 2
	mr 3,26
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 149 0 discriminator 2
	mr 4,31
	.loc 1 148 0 discriminator 2
	stw 3,12(30)
	.loc 1 149 0 discriminator 2
	mr 3,27
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 150 0 discriminator 2
	mr 4,31
	.loc 1 149 0 discriminator 2
	stw 3,16(30)
	.loc 1 150 0 discriminator 2
	mr 3,28
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 151 0 discriminator 2
	mr 4,31
	.loc 1 150 0 discriminator 2
	stw 3,20(30)
	.loc 1 151 0 discriminator 2
	mr 3,29
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 143 0 discriminator 2
	cmpwi 7,31,5
	.loc 1 151 0 discriminator 2
	stw 3,24(30)
.LVL7:
	addi 30,30,32
	.loc 1 143 0 discriminator 2
	bne+ 7,.L8
	.loc 1 154 0
	lis 3,.LC27@ha
	lis 31,sb_ammo@ha
.LVL8:
	la 3,.LC27@l(3)
	.loc 1 175 0
	lis 30,sb_faces@ha
	.loc 1 154 0
	bl Draw_PicFromWad
	stw 3,sb_ammo@l(31)
	.loc 1 155 0
	lis 3,.LC28@ha
	la 3,.LC28@l(3)
	.loc 1 154 0
	la 31,sb_ammo@l(31)
	.loc 1 155 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 156 0
	lis 3,.LC29@ha
	la 3,.LC29@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 157 0
	lis 3,.LC30@ha
	la 3,.LC30@l(3)
	bl Draw_PicFromWad
	stw 3,12(31)
	.loc 1 159 0
	lis 3,.LC31@ha
	la 3,.LC31@l(3)
	lis 31,sb_armor@ha
	bl Draw_PicFromWad
	stw 3,sb_armor@l(31)
	.loc 1 160 0
	lis 3,.LC32@ha
	la 3,.LC32@l(3)
	.loc 1 159 0
	la 31,sb_armor@l(31)
	.loc 1 160 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 161 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 163 0
	lis 3,.LC34@ha
	la 3,.LC34@l(3)
	lis 31,sb_items@ha
	bl Draw_PicFromWad
	stw 3,sb_items@l(31)
	.loc 1 164 0
	lis 3,.LC35@ha
	la 3,.LC35@l(3)
	.loc 1 163 0
	la 31,sb_items@l(31)
	.loc 1 164 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 165 0
	lis 3,.LC36@ha
	la 3,.LC36@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 166 0
	lis 3,.LC37@ha
	la 3,.LC37@l(3)
	bl Draw_PicFromWad
	stw 3,12(31)
	.loc 1 167 0
	lis 3,.LC38@ha
	la 3,.LC38@l(3)
	bl Draw_PicFromWad
	stw 3,16(31)
	.loc 1 168 0
	lis 3,.LC39@ha
	la 3,.LC39@l(3)
	bl Draw_PicFromWad
	stw 3,20(31)
	.loc 1 170 0
	lis 3,.LC40@ha
	la 3,.LC40@l(3)
	lis 31,sb_sigil@ha
	bl Draw_PicFromWad
	stw 3,sb_sigil@l(31)
	.loc 1 171 0
	lis 3,.LC41@ha
	la 3,.LC41@l(3)
	.loc 1 170 0
	la 31,sb_sigil@l(31)
	.loc 1 171 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 172 0
	lis 3,.LC42@ha
	la 3,.LC42@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 173 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	bl Draw_PicFromWad
	stw 3,12(31)
	.loc 1 175 0
	lis 3,.LC44@ha
	la 3,.LC44@l(3)
	la 31,sb_faces@l(30)
	bl Draw_PicFromWad
	stw 3,32(31)
	.loc 1 176 0
	lis 3,.LC45@ha
	la 3,.LC45@l(3)
	bl Draw_PicFromWad
	stw 3,36(31)
	.loc 1 177 0
	lis 3,.LC46@ha
	la 3,.LC46@l(3)
	bl Draw_PicFromWad
	stw 3,24(31)
	.loc 1 178 0
	lis 3,.LC47@ha
	la 3,.LC47@l(3)
	bl Draw_PicFromWad
	stw 3,28(31)
	.loc 1 179 0
	lis 3,.LC48@ha
	la 3,.LC48@l(3)
	bl Draw_PicFromWad
	stw 3,16(31)
	.loc 1 180 0
	lis 3,.LC49@ha
	la 3,.LC49@l(3)
	bl Draw_PicFromWad
	stw 3,20(31)
	.loc 1 181 0
	lis 3,.LC50@ha
	la 3,.LC50@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 182 0
	lis 3,.LC51@ha
	la 3,.LC51@l(3)
	bl Draw_PicFromWad
	stw 3,12(31)
	.loc 1 183 0
	lis 3,.LC52@ha
	la 3,.LC52@l(3)
	bl Draw_PicFromWad
	stw 3,sb_faces@l(30)
	.loc 1 184 0
	lis 3,.LC53@ha
	la 3,.LC53@l(3)
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 186 0
	lis 3,.LC54@ha
	la 3,.LC54@l(3)
	bl Draw_PicFromWad
	lis 9,sb_face_invis@ha
	stw 3,sb_face_invis@l(9)
	.loc 1 187 0
	lis 3,.LC55@ha
	la 3,.LC55@l(3)
	bl Draw_PicFromWad
	lis 9,sb_face_invuln@ha
	stw 3,sb_face_invuln@l(9)
	.loc 1 188 0
	lis 3,.LC56@ha
	la 3,.LC56@l(3)
	bl Draw_PicFromWad
	lis 9,sb_face_invis_invuln@ha
	stw 3,sb_face_invis_invuln@l(9)
	.loc 1 189 0
	lis 3,.LC57@ha
	la 3,.LC57@l(3)
	bl Draw_PicFromWad
	lis 9,sb_face_quad@ha
	stw 3,sb_face_quad@l(9)
	.loc 1 191 0
	lis 4,Sbar_ShowScores@ha
	lis 3,.LC58@ha
	la 4,Sbar_ShowScores@l(4)
	la 3,.LC58@l(3)
	bl Cmd_AddCommand
	.loc 1 192 0
	lis 4,Sbar_DontShowScores@ha
	lis 3,.LC59@ha
	la 4,Sbar_DontShowScores@l(4)
	la 3,.LC59@l(3)
	bl Cmd_AddCommand
	.loc 1 194 0
	lis 3,.LC60@ha
	la 3,.LC60@l(3)
	bl Draw_PicFromWad
	lis 9,sb_sbar@ha
	stw 3,sb_sbar@l(9)
	.loc 1 195 0
	lis 3,.LC61@ha
	la 3,.LC61@l(3)
	bl Draw_PicFromWad
	lis 9,sb_ibar@ha
	stw 3,sb_ibar@l(9)
	.loc 1 196 0
	lis 3,.LC62@ha
	la 3,.LC62@l(3)
	bl Draw_PicFromWad
	.loc 1 199 0
	lis 9,hipnotic@ha
	lbz 0,hipnotic@l(9)
	.loc 1 196 0
	lis 9,sb_scorebar@ha
	stw 3,sb_scorebar@l(9)
	.loc 1 199 0
	cmpwi 7,0,0
	bne- 7,.L15
.L9:
	.loc 1 226 0
	lis 9,rogue@ha
	lbz 0,rogue@l(9)
	cmpwi 7,0,0
	beq+ 7,.L6
	.loc 1 228 0
	lis 3,.LC80@ha
	la 3,.LC80@l(3)
	bl Draw_PicFromWad
	lis 9,rsb_invbar@ha
	stw 3,rsb_invbar@l(9)
	.loc 1 229 0
	lis 3,.LC81@ha
	la 3,.LC81@l(3)
	.loc 1 228 0
	la 31,rsb_invbar@l(9)
	.loc 1 229 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 231 0
	lis 3,.LC82@ha
	la 3,.LC82@l(3)
	lis 31,rsb_weapons@ha
	bl Draw_PicFromWad
	stw 3,rsb_weapons@l(31)
	.loc 1 232 0
	lis 3,.LC83@ha
	la 3,.LC83@l(3)
	.loc 1 231 0
	la 31,rsb_weapons@l(31)
	.loc 1 232 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 233 0
	lis 3,.LC84@ha
	la 3,.LC84@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
	.loc 1 234 0
	lis 3,.LC85@ha
	la 3,.LC85@l(3)
	bl Draw_PicFromWad
	stw 3,12(31)
	.loc 1 235 0
	lis 3,.LC86@ha
	la 3,.LC86@l(3)
	bl Draw_PicFromWad
	stw 3,16(31)
	.loc 1 237 0
	lis 3,.LC87@ha
	la 3,.LC87@l(3)
	bl Draw_PicFromWad
	lis 9,rsb_items@ha
	stw 3,rsb_items@l(9)
	.loc 1 238 0
	lis 3,.LC88@ha
	la 3,.LC88@l(3)
	.loc 1 237 0
	la 31,rsb_items@l(9)
	.loc 1 238 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 241 0
	lis 3,.LC89@ha
	la 3,.LC89@l(3)
	.loc 1 244 0
	lis 31,rsb_ammo@ha
	.loc 1 241 0
	bl Draw_PicFromWad
	lis 9,rsb_teambord@ha
	stw 3,rsb_teambord@l(9)
	.loc 1 244 0
	lis 3,.LC90@ha
	la 3,.LC90@l(3)
	bl Draw_PicFromWad
	stw 3,rsb_ammo@l(31)
	.loc 1 245 0
	lis 3,.LC91@ha
	la 3,.LC91@l(3)
	.loc 1 244 0
	la 31,rsb_ammo@l(31)
	.loc 1 245 0
	bl Draw_PicFromWad
	stw 3,4(31)
	.loc 1 246 0
	lis 3,.LC92@ha
	la 3,.LC92@l(3)
	bl Draw_PicFromWad
	stw 3,8(31)
.L6:
	.loc 1 248 0
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
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
	blr
.L15:
.LCFI2:
	.cfi_restore_state
	.loc 1 201 0
	lis 3,.LC63@ha
	lis 30,hsb_weapons@ha
	la 3,.LC63@l(3)
	lis 25,.LC73@ha
	bl Draw_PicFromWad
	lis 26,.LC74@ha
	stw 3,hsb_weapons@l(30)
	.loc 1 202 0
	lis 3,.LC64@ha
	la 3,.LC64@l(3)
	.loc 1 201 0
	la 30,hsb_weapons@l(30)
	.loc 1 202 0
	bl Draw_PicFromWad
	lis 27,.LC75@ha
	stw 3,4(30)
	.loc 1 203 0
	lis 3,.LC65@ha
	la 3,.LC65@l(3)
	lis 28,.LC76@ha
	bl Draw_PicFromWad
	lis 29,.LC77@ha
	stw 3,8(30)
	.loc 1 204 0
	lis 3,.LC66@ha
	la 3,.LC66@l(3)
	.loc 1 213 0
	li 31,0
	.loc 1 204 0
	bl Draw_PicFromWad
	la 25,.LC73@l(25)
	stw 3,12(30)
	.loc 1 205 0
	lis 3,.LC67@ha
	la 3,.LC67@l(3)
	la 26,.LC74@l(26)
	bl Draw_PicFromWad
	la 27,.LC75@l(27)
	stw 3,16(30)
	.loc 1 207 0
	lis 3,.LC68@ha
	la 3,.LC68@l(3)
	la 28,.LC76@l(28)
	bl Draw_PicFromWad
	la 29,.LC77@l(29)
	stw 3,20(30)
	.loc 1 208 0
	lis 3,.LC69@ha
	la 3,.LC69@l(3)
	bl Draw_PicFromWad
	stw 3,24(30)
	.loc 1 209 0
	lis 3,.LC70@ha
	la 3,.LC70@l(3)
	bl Draw_PicFromWad
	stw 3,28(30)
	.loc 1 210 0
	lis 3,.LC71@ha
	la 3,.LC71@l(3)
	bl Draw_PicFromWad
	stw 3,32(30)
	.loc 1 211 0
	lis 3,.LC72@ha
	la 3,.LC72@l(3)
	bl Draw_PicFromWad
	stw 3,36(30)
.LVL9:
	addi 30,30,40
.LVL10:
.L10:
	.loc 1 215 0 discriminator 2
	addi 31,31,1
	mr 3,25
	mr 4,31
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 216 0 discriminator 2
	mr 4,31
	.loc 1 215 0 discriminator 2
	stw 3,0(30)
	.loc 1 216 0 discriminator 2
	mr 3,26
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 217 0 discriminator 2
	mr 4,31
	.loc 1 216 0 discriminator 2
	stw 3,4(30)
	.loc 1 217 0 discriminator 2
	mr 3,27
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 218 0 discriminator 2
	mr 4,31
	.loc 1 217 0 discriminator 2
	stw 3,8(30)
	.loc 1 218 0 discriminator 2
	mr 3,28
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 219 0 discriminator 2
	mr 4,31
	.loc 1 218 0 discriminator 2
	stw 3,12(30)
	.loc 1 219 0 discriminator 2
	mr 3,29
	crxor 6,6,6
	bl va
	bl Draw_PicFromWad
	.loc 1 213 0 discriminator 2
	cmpwi 7,31,5
	.loc 1 219 0 discriminator 2
	stw 3,16(30)
.LVL11:
	addi 30,30,20
	.loc 1 213 0 discriminator 2
	bne+ 7,.L10
	.loc 1 222 0
	lis 3,.LC78@ha
	la 3,.LC78@l(3)
	bl Draw_PicFromWad
	lis 9,hsb_items@ha
	stw 3,hsb_items@l(9)
	.loc 1 223 0
	lis 3,.LC79@ha
	la 3,.LC79@l(3)
	.loc 1 222 0
	la 31,hsb_items@l(9)
.LVL12:
	.loc 1 223 0
	bl Draw_PicFromWad
	stw 3,4(31)
	b .L9
	.cfi_endproc
.LFE41:
	.size	Sbar_Init, .-Sbar_Init
	.align 2
	.globl Sbar_DrawPic
	.type	Sbar_DrawPic, @function
Sbar_DrawPic:
.LFB42:
	.loc 1 261 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-8(1)
.LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 262 0
	lis 9,cl+2684@ha
	.loc 1 261 0
	stw 0,12(1)
	.loc 1 262 0
	lwz 0,cl+2684@l(9)
	.cfi_offset 65, 4
	.loc 1 261 0
	mr 9,3
	.loc 1 262 0
	cmpwi 7,0,1
	beq- 7,.L19
	.loc 1 265 0
	lis 11,vid@ha
	la 11,vid@l(11)
	lwz 3,20(11)
.LVL14:
	lwz 11,24(11)
	addi 3,3,-320
	addi 0,11,-24
	srwi 3,3,1
	add 4,0,4
.LVL15:
	add 3,9,3
	bl Draw_Pic
.LVL16:
	.loc 1 266 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL17:
.L19:
.LCFI5:
	.cfi_restore_state
.LBB25:
.LBB26:
	.loc 1 263 0
	lis 9,vid+24@ha
	lwz 9,vid+24@l(9)
	addi 0,9,-24
	add 4,0,4
.LVL18:
	bl Draw_Pic
.LVL19:
.LBE26:
.LBE25:
	.loc 1 266 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI6:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	Sbar_DrawPic, .-Sbar_DrawPic
	.align 2
	.globl Sbar_DrawTransPic
	.type	Sbar_DrawTransPic, @function
Sbar_DrawTransPic:
.LFB43:
	.loc 1 274 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 275 0
	lis 9,cl+2684@ha
	.loc 1 274 0
	stw 0,12(1)
	.loc 1 275 0
	lwz 0,cl+2684@l(9)
	.cfi_offset 65, 4
	.loc 1 274 0
	mr 9,3
	.loc 1 275 0
	cmpwi 7,0,1
	beq- 7,.L23
	.loc 1 278 0
	lis 11,vid@ha
	la 11,vid@l(11)
	lwz 3,20(11)
.LVL21:
	lwz 11,24(11)
	addi 3,3,-320
	addi 0,11,-24
	srwi 3,3,1
	add 4,0,4
.LVL22:
	add 3,9,3
	bl Draw_TransPic
.LVL23:
	.loc 1 279 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL24:
.L23:
.LCFI9:
	.cfi_restore_state
	.loc 1 276 0
	lis 9,vid+24@ha
	lwz 9,vid+24@l(9)
	addi 0,9,-24
	add 4,0,4
.LVL25:
	bl Draw_TransPic
.LVL26:
	.loc 1 279 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI10:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE43:
	.size	Sbar_DrawTransPic, .-Sbar_DrawTransPic
	.align 2
	.globl Sbar_DrawCharacter
	.type	Sbar_DrawCharacter, @function
Sbar_DrawCharacter:
.LFB44:
	.loc 1 289 0
	.cfi_startproc
.LVL27:
	mflr 0
	stwu 1,-8(1)
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 290 0
	lis 9,cl+2684@ha
	.loc 1 289 0
	stw 0,12(1)
	.loc 1 290 0
	lwz 0,cl+2684@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L27
	.loc 1 293 0
	lis 9,vid@ha
	la 9,vid@l(9)
	lwz 10,20(9)
	lwz 11,24(9)
	addi 9,10,-320
	srwi 9,9,1
	addi 0,11,-24
	addi 9,9,4
	add 4,0,4
.LVL28:
	add 3,9,3
.LVL29:
	bl Draw_Character
.LVL30:
	.loc 1 294 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL31:
.L27:
.LCFI13:
	.cfi_restore_state
.LBB29:
.LBB30:
	.loc 1 291 0
	lis 9,vid+24@ha
	addi 3,3,4
.LVL32:
	lwz 9,vid+24@l(9)
	addi 0,9,-24
	add 4,0,4
.LVL33:
	bl Draw_Character
.LVL34:
.LBE30:
.LBE29:
	.loc 1 294 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	Sbar_DrawCharacter, .-Sbar_DrawCharacter
	.align 2
	.globl Sbar_DrawString
	.type	Sbar_DrawString, @function
Sbar_DrawString:
.LFB45:
	.loc 1 302 0
	.cfi_startproc
.LVL35:
	mflr 0
	stwu 1,-8(1)
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 303 0
	lis 9,cl+2684@ha
	.loc 1 302 0
	stw 0,12(1)
	.loc 1 303 0
	lwz 0,cl+2684@l(9)
	.cfi_offset 65, 4
	.loc 1 302 0
	mr 9,3
	.loc 1 303 0
	cmpwi 7,0,1
	beq- 7,.L31
	.loc 1 306 0
	lis 11,vid@ha
	la 11,vid@l(11)
	lwz 3,20(11)
.LVL36:
	lwz 11,24(11)
	addi 3,3,-320
	addi 0,11,-24
	srwi 3,3,1
	add 4,0,4
.LVL37:
	add 3,9,3
	bl Draw_String
.LVL38:
	.loc 1 307 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL39:
.L31:
.LCFI17:
	.cfi_restore_state
.LBB33:
.LBB34:
	.loc 1 304 0
	lis 9,vid+24@ha
	lwz 9,vid+24@l(9)
	addi 0,9,-24
	add 4,0,4
.LVL40:
	bl Draw_String
.LVL41:
.LBE34:
.LBE33:
	.loc 1 307 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI18:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE45:
	.size	Sbar_DrawString, .-Sbar_DrawString
	.align 2
	.globl Sbar_itoa
	.type	Sbar_itoa, @function
Sbar_itoa:
.LFB46:
	.loc 1 315 0
	.cfi_startproc
.LVL42:
	.loc 1 322 0
	mr. 0,3
.LVL43:
	mr 11,4
	blt- 0,.L42
.LVL44:
.L33:
	.loc 1 328 0
	cmpwi 7,0,9
	li 9,10
	ble- 7,.L36
.LVL45:
.L35:
	.loc 1 328 0 is_stmt 0 discriminator 2
	mulli 9,9,10
.LVL46:
	cmpw 7,0,9
	bge+ 7,.L35
.LVL47:
.L36:
	.loc 1 333 0 is_stmt 1 discriminator 1
	lis 6,0x6666
	ori 6,6,26215
	b .L41
.LVL48:
.L39:
	.loc 1 335 0
	mr 11,8
.LVL49:
.L41:
	.loc 1 333 0 discriminator 1
	mulhw 10,9,6
	srawi 9,9,31
.LVL50:
	.loc 1 335 0 discriminator 1
	addi 8,11,1
	.loc 1 333 0 discriminator 1
	srawi 10,10,2
	subf 9,9,10
.LVL51:
	.loc 1 334 0 discriminator 1
	divw 10,0,9
.LVL52:
	.loc 1 337 0 discriminator 1
	cmpwi 7,9,1
	.loc 1 336 0 discriminator 1
	mullw 7,10,9
	.loc 1 335 0 discriminator 1
	addi 10,10,48
.LVL53:
	stb 10,0(11)
	.loc 1 336 0 discriminator 1
	subf 0,7,0
.LVL54:
	.loc 1 337 0 discriminator 1
	bne+ 7,.L39
	.loc 1 339 0
	li 0,0
.LVL55:
	.loc 1 342 0
	subf 3,4,8
	.loc 1 339 0
	stb 0,1(11)
	.loc 1 342 0
	blr
.LVL56:
.L42:
	.loc 1 324 0
	li 9,45
	addi 11,4,1
.LVL57:
	stb 9,0(4)
	.loc 1 325 0
	neg 0,0
.LVL58:
	b .L33
	.cfi_endproc
.LFE46:
	.size	Sbar_itoa, .-Sbar_itoa
	.align 2
	.globl Sbar_DrawNum
	.type	Sbar_DrawNum, @function
Sbar_DrawNum:
.LFB47:
	.loc 1 351 0
	.cfi_startproc
.LVL59:
	stwu 1,-48(1)
.LCFI19:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,44(1)
	.loc 1 356 0
	addi 4,1,8
.LVL60:
	.loc 1 351 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 356 0
	mr 3,5
.LVL61:
	.loc 1 351 0
	stw 27,28(1)
	mr 27,7
	.cfi_offset 27, -20
	stw 29,36(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 0,52(1)
	stw 28,32(1)
	.loc 1 356 0
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl Sbar_itoa
.LVL62:
	.loc 1 358 0
	cmpw 7,3,29
	ble- 7,.L44
	.loc 1 359 0
	subf 29,29,3
.LVL63:
	addi 0,1,8
.LVL64:
	add 29,0,29
.LVL65:
.L45:
	.loc 1 363 0 discriminator 1
	lbz 9,0(29)
	cmpwi 7,9,0
	beq- 7,.L43
	lis 28,sb_nums@ha
	mulli 27,27,11
.LVL66:
	la 28,sb_nums@l(28)
.LVL67:
.L48:
	.loc 1 365 0
	cmpwi 7,9,45
	.loc 1 370 0
	mr 3,31
	mr 4,30
	.loc 1 366 0
	li 0,10
	.loc 1 371 0
	addi 31,31,24
.LVL68:
	.loc 1 365 0
	beq- 7,.L47
	.loc 1 368 0
	addi 0,9,-48
.LVL69:
.L47:
	.loc 1 370 0
	add 0,27,0
.LVL70:
	slwi 0,0,2
	lwzx 5,28,0
	bl Sbar_DrawTransPic
.LVL71:
	.loc 1 363 0
	lbzu 9,1(29)
	cmpwi 7,9,0
	bne+ 7,.L48
.L43:
	.loc 1 374 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL72:
	lwz 31,44(1)
.LVL73:
	addi 1,1,48
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL74:
.L44:
.LCFI21:
	.cfi_restore_state
	.loc 1 360 0
	bge- 7,.L49
	.loc 1 361 0
	subf 3,3,29
.LVL75:
	.loc 1 357 0
	addi 29,1,8
.LVL76:
	.loc 1 361 0
	mulli 3,3,24
	add 31,31,3
.LVL77:
	b .L45
.LVL78:
.L49:
	.loc 1 357 0
	addi 29,1,8
.LVL79:
	b .L45
	.cfi_endproc
.LFE47:
	.size	Sbar_DrawNum, .-Sbar_DrawNum
	.align 2
	.globl Sbar_SortFrags
	.type	Sbar_SortFrags, @function
Sbar_SortFrags:
.LFB48:
	.loc 1 392 0
	.cfi_startproc
	.loc 1 397 0
	lis 9,cl@ha
	.loc 1 396 0
	lis 4,scoreboardlines@ha
	.loc 1 397 0
	la 9,cl@l(9)
	.loc 1 396 0
	li 11,0
	.loc 1 397 0
	lwz 0,2680(9)
	.loc 1 396 0
	stw 11,scoreboardlines@l(4)
.LVL80:
	.loc 1 397 0
	cmpwi 7,0,0
	blelr- 7
	lwz 10,3296(9)
	.loc 1 401 0
	lis 5,fragsort@ha
	mtctr 0
	.loc 1 397 0
	li 7,0
	mr 9,10
	li 6,0
	.loc 1 401 0
	la 5,fragsort@l(5)
.LVL81:
.L55:
	.loc 1 399 0
	lbz 0,0(9)
	.loc 1 401 0
	slwi 8,6,2
	.loc 1 397 0
	addi 9,9,16428
	.loc 1 399 0
	cmpwi 7,0,0
	beq- 7,.L54
	.loc 1 402 0
	addi 6,6,1
	.loc 1 401 0
	stwx 11,5,8
	.loc 1 402 0
	mr 7,6
.L54:
	.loc 1 397 0
	addi 11,11,1
.LVL82:
	bdnz .L55
	.loc 1 406 0
	cmpwi 7,6,0
	.loc 1 397 0
	stw 7,scoreboardlines@l(4)
.LVL83:
	.loc 1 406 0
	beqlr- 7
	lis 5,fragsort@ha
	.loc 1 391 0
	addi 6,6,-1
	la 5,fragsort@l(5)
.LVL84:
.L56:
	cmpwi 7,6,0
	.loc 1 402 0 discriminator 1
	addi 0,6,1
	.loc 1 406 0 discriminator 1
	mr 9,5
	.loc 1 402 0 discriminator 1
	mtctr 0
	blt- 7,.L66
.L65:
	.loc 1 407 0 discriminator 1
	bdz .L67
.L58:
	.loc 1 408 0
	lwz 0,0(9)
	lwzu 11,4(9)
	mulli 7,0,16428
	mulli 8,11,16428
	add 7,10,7
	lwz 7,36(7)
	add 8,10,8
	lwz 8,36(8)
	cmpw 7,7,8
	bge- 7,.L65
.LVL85:
	.loc 1 411 0
	stw 11,-4(9)
	.loc 1 412 0
	stw 0,0(9)
	.loc 1 407 0
	bdnz .L58
.LVL86:
.L67:
	.loc 1 406 0
	cmpwi 7,6,0
	addi 6,6,-1
	bne+ 7,.L56
	blr
.L66:
	li 0,1
	mtctr 0
	b .L65
	.cfi_endproc
.LFE48:
	.size	Sbar_SortFrags, .-Sbar_SortFrags
	.align 2
	.globl Sbar_ColorForMap
	.type	Sbar_ColorForMap, @function
Sbar_ColorForMap:
.LFB49:
	.loc 1 417 0
	.cfi_startproc
.LVL87:
	.loc 1 419 0
	addi 3,3,8
.LVL88:
	blr
	.cfi_endproc
.LFE49:
	.size	Sbar_ColorForMap, .-Sbar_ColorForMap
	.align 2
	.globl Sbar_UpdateScoreboard
	.type	Sbar_UpdateScoreboard, @function
Sbar_UpdateScoreboard:
.LFB50:
	.loc 1 427 0
	.cfi_startproc
	stwu 1,-48(1)
.LCFI22:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 28,32(1)
	.loc 1 435 0
	lis 28,scoreboardtext@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	la 28,scoreboardtext@l(28)
	.loc 1 427 0
	stw 0,52(1)
	stw 27,28(1)
	.loc 1 437 0
	lis 27,scoreboardlines@ha
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 427 0
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 432 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	bl Sbar_SortFrags
	.loc 1 435 0
	mr 3,28
	li 4,0
	li 5,1280
	bl memset
.LVL89:
	.loc 1 437 0
	lwz 0,scoreboardlines@l(27)
	cmpwi 7,0,0
	ble- 7,.L69
	lis 22,cl@ha
	lis 23,fragsort@ha
	lis 24,.LC93@ha
	lis 25,scoreboardtop@ha
	lis 26,scoreboardbottom@ha
	addi 28,28,1
	li 31,0
	li 29,0
	la 22,cl@l(22)
	la 23,fragsort@l(23)
	la 24,.LC93@l(24)
	la 25,scoreboardtop@l(25)
	la 26,scoreboardbottom@l(26)
	la 27,scoreboardlines@l(27)
.LVL90:
.L71:
	.loc 1 440 0 discriminator 2
	lwzx 30,23,31
	.loc 1 441 0 discriminator 2
	mr 3,28
	.loc 1 440 0 discriminator 2
	lwz 0,3296(22)
	.loc 1 441 0 discriminator 2
	mr 4,24
	.loc 1 440 0 discriminator 2
	mulli 30,30,16428
	.loc 1 437 0 discriminator 2
	addi 29,29,1
	addi 28,28,20
	.loc 1 440 0 discriminator 2
	add 30,0,30
.LVL91:
	.loc 1 441 0 discriminator 2
	lwz 5,36(30)
	mr 6,30
	crxor 6,6,6
	bl sprintf
.LVL92:
	.loc 1 437 0 discriminator 2
	lwz 9,0(27)
	.loc 1 443 0 discriminator 2
	lwz 0,40(30)
.LVL93:
	.loc 1 437 0 discriminator 2
	cmpw 7,9,29
	.loc 1 444 0 discriminator 2
	rlwinm 11,0,4,24,27
	.loc 1 443 0 discriminator 2
	rlwinm 9,0,0,24,27
.LBB35:
.LBB36:
	.loc 1 418 0 discriminator 2
	addi 9,9,8
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	addi 0,11,8
.LBE38:
.LBE37:
	.loc 1 445 0 discriminator 2
	stwx 9,25,31
.LVL94:
	.loc 1 446 0 discriminator 2
	stwx 0,26,31
	.loc 1 437 0 discriminator 2
	addi 31,31,4
	bgt+ 7,.L71
.LVL95:
.L69:
	.loc 1 448 0
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
.LCFI23:
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
	.cfi_endproc
.LFE50:
	.size	Sbar_UpdateScoreboard, .-Sbar_UpdateScoreboard
	.align 2
	.globl Sbar_SoloScoreboard
	.type	Sbar_SoloScoreboard, @function
Sbar_SoloScoreboard:
.LFB51:
	.loc 1 458 0
	.cfi_startproc
	mflr 0
	stwu 1,-112(1)
.LCFI24:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	.loc 1 463 0
	lis 4,.LC94@ha
	.loc 1 458 0
	stw 31,108(1)
	.loc 1 463 0
	lis 31,cl@ha
	.cfi_offset 31, -4
	.loc 1 458 0
	stw 0,116(1)
	.loc 1 463 0
	la 31,cl@l(31)
	la 4,.LC94@l(4)
	addi 3,1,8
	lwz 6,76(31)
	lwz 5,84(31)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl sprintf
	.loc 1 464 0
	addi 5,1,8
	li 3,8
	li 4,4
	bl Sbar_DrawString
	.loc 1 466 0
	lwz 6,72(31)
	lwz 5,80(31)
	lis 4,.LC95@ha
	la 4,.LC95@l(4)
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
	.loc 1 467 0
	addi 5,1,8
	li 3,8
	li 4,12
	bl Sbar_DrawString
	.loc 1 470 0
	lis 9,.LC97@ha
	lfd 0,568(31)
	.loc 1 471 0
	lis 0,0x4330
	.loc 1 470 0
	lfs 13,.LC97@l(9)
	addi 9,1,96
	.loc 1 471 0
	stw 0,88(1)
	.loc 1 472 0
	lis 6,0x6666
	.loc 1 470 0
	fdiv 13,0,13
	.loc 1 472 0
	ori 6,6,26215
	.loc 1 474 0
	lis 4,.LC100@ha
	addi 3,1,8
	la 4,.LC100@l(4)
	.loc 1 478 0
	addi 31,31,2636
	.loc 1 470 0
	fctiwz 13,13
	stfiwx 13,0,9
	.loc 1 471 0
	lis 9,.LC99@ha
	lfs 13,.LC99@l(9)
	addi 9,1,100
	.loc 1 470 0
	lwz 5,96(1)
.LVL96:
	.loc 1 471 0
	mulli 0,5,60
	xoris 0,0,0x8000
	stw 0,92(1)
	lfd 12,88(1)
	fsub 13,12,13
	fsub 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,100(1)
.LVL97:
	.loc 1 472 0
	mulhw 6,0,6
	srawi 9,0,31
.LVL98:
	srawi 6,6,2
	subf 6,9,6
.LVL99:
	.loc 1 473 0
	mulli 7,6,-10
	.loc 1 474 0
	add 7,7,0
	crxor 6,6,6
	bl sprintf
.LVL100:
	.loc 1 475 0
	addi 5,1,8
	li 4,4
	li 3,184
	bl Sbar_DrawString
	.loc 1 478 0
	mr 3,31
	bl strlen
.LVL101:
	.loc 1 479 0
	mr 5,31
	subfic 3,3,58
.LVL102:
	li 4,12
	slwi 3,3,2
	bl Sbar_DrawString
	.loc 1 480 0
	lwz 0,116(1)
	lwz 31,108(1)
	mtlr 0
	addi 1,1,112
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE51:
	.size	Sbar_SoloScoreboard, .-Sbar_SoloScoreboard
	.align 2
	.globl Sbar_DrawInventory
	.type	Sbar_DrawInventory, @function
Sbar_DrawInventory:
.LFB53:
	.loc 1 547 0
	.cfi_startproc
	stwu 1,-112(1)
.LCFI26:
	.cfi_def_cfa_offset 112
	mflr 0
	stw 23,60(1)
	.loc 1 553 0
	lis 23,rogue@ha
	.cfi_offset 23, -52
	.cfi_register 65, 0
	.loc 1 547 0
	stw 0,116(1)
	.loc 1 553 0
	lbz 0,rogue@l(23)
	.cfi_offset 65, 4
	.loc 1 547 0
	stfd 30,96(1)
	.loc 1 553 0
	cmpwi 7,0,0
	.loc 1 547 0
	stfd 31,104(1)
	stw 17,36(1)
	stw 18,40(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
	stw 30,88(1)
	stw 31,92(1)
	.loc 1 553 0
	beq- 7,.L75
	.cfi_offset 31, -20
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 22, -56
	.cfi_offset 21, -60
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 17, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 555 0
	lis 30,cl@ha
	la 30,cl@l(30)
	lwz 0,68(30)
	cmpwi 7,0,4095
	bgt- 7,.L129
	.loc 1 558 0
	lis 9,rsb_invbar+4@ha
	li 3,0
	lwz 5,rsb_invbar+4@l(9)
	li 4,-24
	bl Sbar_DrawPic
.L77:
.LVL103:
	.loc 1 558 0 is_stmt 0 discriminator 1
	lis 28,cl+160@ha
	.loc 1 580 0 is_stmt 1 discriminator 1
	lis 20,0x6666
	.loc 1 582 0 discriminator 1
	lis 24,sb_weapons@ha
	.loc 1 558 0 discriminator 1
	la 28,cl+160@l(28)
	.loc 1 547 0 discriminator 1
	li 29,0
	li 31,0
	.loc 1 571 0 discriminator 1
	lis 25,.LC102@ha
	.loc 1 580 0 discriminator 1
	ori 20,20,26215
	.loc 1 582 0 discriminator 1
	la 24,sb_weapons@l(24)
	.loc 1 585 0 discriminator 1
	lis 21,sb_updates@ha
	li 22,0
	.loc 1 574 0 discriminator 1
	li 26,1
	b .L78
.LVL104:
.L131:
	.loc 1 575 0
	lwz 0,68(30)
	xor 11,0,11
	cntlzw 11,11
	srwi 11,11,5
	.loc 1 582 0
	slwi 11,11,3
	add 11,11,31
	slwi 11,11,2
	lwzx 5,24,11
	bl Sbar_DrawPic
.LVL105:
.L79:
	.loc 1 566 0
	cmpwi 7,31,6
	addi 29,29,24
	addi 28,28,4
	addi 31,31,1
.LVL106:
	beq- 7,.L130
.LVL107:
.L78:
	.loc 1 568 0
	lwz 0,156(30)
	sraw 0,0,31
	andi. 9,0,1
	beq- 0,.L79
.LVL108:
	.loc 1 571 0
	lfs 0,0(28)
	addi 10,1,28
	lfd 12,568(30)
	.loc 1 574 0
	slw 11,26,31
	.loc 1 571 0
	lfs 13,.LC102@l(25)
	.loc 1 582 0
	mr 3,29
	.loc 1 571 0
	fsub 0,12,0
	.loc 1 582 0
	li 4,-16
	.loc 1 571 0
	fmul 0,0,13
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,28(1)
.LVL109:
	.loc 1 572 0
	cmpwi 7,0,9
	.loc 1 580 0
	srawi 9,0,31
	.loc 1 572 0
	bgt- 7,.L131
	.loc 1 580 0
	mulhw 27,0,20
	srawi 27,27,1
	subf 27,9,27
	mulli 27,27,5
	subf 27,27,0
	addi 27,27,2
.LVL110:
	.loc 1 582 0
	slwi 0,27,3
	add 0,0,31
	slwi 0,0,2
	lwzx 5,24,0
	bl Sbar_DrawPic
.LVL111:
	.loc 1 584 0
	cmpwi 7,27,1
	ble- 7,.L79
	.loc 1 566 0
	cmpwi 7,31,6
	.loc 1 585 0
	stw 22,sb_updates@l(21)
.LVL112:
	.loc 1 566 0
	addi 29,29,24
	addi 28,28,4
	addi 31,31,1
.LVL113:
	bne+ 7,.L78
.LVL114:
.L130:
	.loc 1 591 0
	lis 26,hipnotic@ha
	lbz 0,hipnotic@l(26)
	cmpwi 7,0,0
	beq- 7,.L81
	lis 27,.LANCHOR0@ha
.LBB39:
	.loc 1 639 0
	lis 20,hsb_weapons@ha
.LBE39:
	.loc 1 591 0
	la 27,.LANCHOR0@l(27)
.LBB40:
	.loc 1 608 0
	lis 19,0x6666
.LBE40:
	.loc 1 591 0
	lwz 0,156(30)
	addi 27,27,-4
	li 25,176
	li 29,1
	li 31,0
.LVL115:
	li 17,0
.LBB41:
	.loc 1 599 0
	lis 24,.LC102@ha
	.loc 1 641 0
	lis 21,sb_updates@ha
	li 22,0
	.loc 1 639 0
	la 20,hsb_weapons@l(20)
	.loc 1 617 0
	li 18,1
	.loc 1 608 0
	ori 19,19,26215
.L82:
	.loc 1 596 0
	lwzu 9,4(27)
	sraw 11,0,9
	andi. 10,11,1
	beq- 0,.L83
.LVL116:
	.loc 1 598 0
	addi 11,9,40
	.loc 1 599 0
	lfd 12,568(30)
	.loc 1 598 0
	slwi 11,11,2
	.loc 1 599 0
	lfs 13,.LC102@l(24)
	lfsx 0,30,11
	addi 11,1,24
	fsub 0,12,0
	fmul 0,0,13
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,24(1)
.LVL117:
	.loc 1 600 0
	cmpwi 7,11,9
	ble- 7,.L84
	.loc 1 605 0
	lwz 28,68(30)
	.loc 1 611 0
	cmpwi 7,31,2
	.loc 1 602 0
	slw 9,18,9
	.loc 1 605 0
	xor 28,28,9
	cntlzw 28,28
	srwi 28,28,5
.LVL118:
	.loc 1 611 0
	beq- 7,.L132
.L86:
	.loc 1 622 0
	cmpwi 7,31,3
	bne- 7,.L89
	.loc 1 624 0
	andi. 10,0,16
	beq- 0,.L90
	.loc 1 626 0
	cmpwi 7,28,0
	bne- 7,.L133
	.loc 1 630 0
	cmpwi 7,17,0
	bne- 7,.L83
	.loc 1 632 0
	lwz 5,12(20)
	li 3,96
	li 4,-16
	bl Sbar_DrawPic
.LVL119:
.L83:
	.loc 1 594 0
	cmpwi 7,29,4
	beq- 7,.L81
	lwz 0,156(30)
.LVL120:
.L88:
.LBE41:
	.loc 1 591 0
	addi 31,31,1
	addi 29,29,1
	addi 25,25,24
	b .L82
.L129:
	.loc 1 556 0
	lis 9,rsb_invbar@ha
	li 3,0
	lwz 5,rsb_invbar@l(9)
	li 4,-24
	bl Sbar_DrawPic
	b .L77
.L81:
	.loc 1 646 0
	lbz 0,rogue@l(23)
	cmpwi 7,0,0
	beq- 7,.L92
	.loc 1 649 0
	lwz 0,68(30)
	cmpwi 7,0,4095
	ble- 7,.L92
	li 31,0
	.loc 1 653 0
	li 28,4096
	slw 9,28,31
	.loc 1 649 0
	li 29,48
	.loc 1 653 0
	cmpw 7,9,0
	.loc 1 655 0
	lis 27,rsb_weapons@ha
	.loc 1 653 0
	beq- 7,.L134
.L93:
.LVL121:
	.loc 1 651 0
	cmpwi 7,31,4
	addi 29,29,24
	addi 31,31,1
.LVL122:
	beq- 7,.L92
.L135:
	lwz 0,68(30)
	.loc 1 653 0
	slw 9,28,31
	cmpw 7,9,0
	bne+ 7,.L93
.LVL123:
.L134:
	.loc 1 546 0
	slwi 0,31,2
	.loc 1 655 0
	la 9,rsb_weapons@l(27)
	lwzx 5,9,0
	mr 3,29
	li 4,-16
	.loc 1 651 0
	addi 29,29,24
	.loc 1 655 0
	bl Sbar_DrawPic
.LVL124:
	.loc 1 651 0
	cmpwi 7,31,4
	addi 31,31,1
.LVL125:
	bne+ 7,.L135
.LVL126:
.L92:
	.loc 1 651 0 is_stmt 0 discriminator 1
	lis 29,cl+48@ha
	lis 28,.LC103@ha
	la 29,cl+48@l(29)
	.loc 1 649 0 is_stmt 1 discriminator 1
	li 31,22
	la 28,.LC103@l(28)
.LVL127:
.L98:
	.loc 1 664 0
	lwzu 5,4(29)
	mr 4,28
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
	.loc 1 665 0
	lbz 5,8(1)
	.loc 1 666 0
	addi 3,31,-16
	li 4,-24
	.loc 1 665 0
	cmpwi 7,5,32
	.loc 1 666 0
	addi 5,5,-30
	.loc 1 665 0
	beq- 7,.L95
	.loc 1 666 0
	bl Sbar_DrawCharacter
.L95:
	.loc 1 667 0
	lbz 5,9(1)
	.loc 1 668 0
	addi 3,31,-8
	li 4,-24
	.loc 1 667 0
	cmpwi 7,5,32
	.loc 1 668 0
	addi 5,5,-30
	.loc 1 667 0
	beq- 7,.L96
	.loc 1 668 0
	bl Sbar_DrawCharacter
.L96:
	.loc 1 669 0
	lbz 5,10(1)
	.loc 1 670 0
	mr 3,31
	li 4,-24
	.loc 1 669 0
	cmpwi 7,5,32
	.loc 1 670 0
	addi 5,5,-30
	.loc 1 669 0
	beq- 7,.L97
	.loc 1 670 0
	bl Sbar_DrawCharacter
.L97:
	.loc 1 662 0
	cmpwi 7,31,166
	addi 31,31,48
	bne+ 7,.L98
	.loc 1 691 0
	lis 11,.LC106@ha
	.loc 1 662 0
	lwz 0,156(30)
	.loc 1 691 0
	lfs 30,.LC106@l(11)
	.loc 1 662 0
	addi 28,30,228
	li 29,192
	li 31,0
	.loc 1 691 0
	lis 25,.LC105@ha
	.loc 1 692 0
	lis 22,sb_updates@ha
	li 24,0
	.loc 1 688 0
	lis 27,sb_items@ha
.L104:
	.loc 1 546 0
	addi 9,31,17
	.loc 1 688 0
	la 11,sb_items@l(27)
	.loc 1 676 0
	sraw 9,0,9
	.loc 1 688 0
	mr 3,29
	.loc 1 676 0
	andi. 10,9,1
	.loc 1 688 0
	li 4,-16
	.loc 1 546 0
	slwi 9,31,2
	.loc 1 676 0
	beq- 0,.L99
	.loc 1 686 0
	lbz 0,hipnotic@l(26)
	cmpwi 6,31,1
	.loc 1 678 0
	lfs 31,0(28)
.LVL128:
	.loc 1 686 0
	cmpwi 7,0,0
	beq- 7,.L100
	.loc 1 686 0 is_stmt 0 discriminator 1
	ble- 6,.L101
.L100:
	.loc 1 688 0 is_stmt 1
	lwzx 5,11,9
	bl Sbar_DrawPic
.LVL129:
.L101:
	.loc 1 691 0
	fcmpu 7,31,30
	beq- 7,.L125
	.loc 1 691 0 is_stmt 0 discriminator 1
	lfd 13,568(30)
	lfs 0,.LC105@l(25)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L125
	.loc 1 692 0 is_stmt 1
	stw 24,sb_updates@l(22)
.L125:
	lwz 0,156(30)
.LVL130:
.L99:
	.loc 1 675 0
	cmpwi 7,31,5
	addi 29,29,16
	addi 28,28,4
	addi 31,31,1
.LVL131:
	bne+ 7,.L104
	.loc 1 696 0
	lbz 9,hipnotic@l(26)
	cmpwi 7,9,0
	beq- 7,.L105
.LVL132:
	.loc 1 699 0 discriminator 1
	andis. 11,0,256
	bne- 0,.L136
.LVL133:
	.loc 1 699 0 is_stmt 0
	andis. 10,0,512
	bne- 0,.L137
.LVL134:
.L105:
	.loc 1 715 0 is_stmt 1
	lbz 9,rogue@l(23)
	cmpwi 7,9,0
	beq- 7,.L119
.LVL135:
	.loc 1 720 0 discriminator 1
	andis. 9,0,8192
	bne- 0,.L138
.LVL136:
	.loc 1 720 0 is_stmt 0
	andis. 11,0,16384
	bne- 0,.L139
.LVL137:
.L74:
	.loc 1 757 0 is_stmt 1
	lwz 0,116(1)
	lwz 17,36(1)
	mtlr 0
	lwz 18,40(1)
	lwz 19,44(1)
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
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI27:
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
	blr
.LVL138:
.L84:
.LCFI28:
	.cfi_restore_state
.LBB42:
	.loc 1 608 0
	mulhw 28,11,19
	srawi 9,11,31
.LVL139:
	.loc 1 611 0
	cmpwi 7,31,2
	.loc 1 608 0
	srawi 28,28,1
	subf 28,9,28
	mulli 28,28,5
	subf 28,28,11
	addi 28,28,2
.LVL140:
	.loc 1 611 0
	bne+ 7,.L86
.L132:
	.loc 1 613 0
	andis. 9,0,1
	beq- 0,.L87
	.loc 1 615 0
	cmpwi 7,28,0
	beq+ 7,.L88
.LVL141:
	.loc 1 618 0
	mulli 9,28,20
	li 3,96
	li 4,-16
	.loc 1 617 0
	li 17,1
	.loc 1 618 0
	add 9,20,9
	lwz 5,8(9)
	bl Sbar_DrawPic
.LVL142:
	b .L87
.LVL143:
.L119:
.LBE42:
	.loc 1 715 0
	li 29,28
	.loc 1 752 0
	lis 10,.LC106@ha
	.loc 1 743 0
	sraw 0,0,29
	.loc 1 715 0
	li 28,288
	.loc 1 743 0
	andi. 11,0,1
	.loc 1 715 0
	li 31,0
	.loc 1 751 0
	lis 27,sb_sigil@ha
	.loc 1 752 0
	lfs 30,.LC106@l(10)
	lis 26,.LC105@ha
	.loc 1 753 0
	lis 24,sb_updates@ha
	li 25,0
	addi 29,29,1
	.loc 1 743 0
	bne- 0,.L140
.L117:
	.loc 1 741 0
	cmpwi 7,31,12
	.loc 1 753 0
	addi 28,28,8
	.loc 1 741 0
	addi 31,31,4
	beq- 7,.L74
	lwz 0,156(30)
	.loc 1 743 0
	sraw 0,0,29
	.loc 1 753 0
	addi 29,29,1
	.loc 1 743 0
	andi. 11,0,1
	beq+ 0,.L117
.L140:
	.loc 1 546 0
	add 11,30,31
	.loc 1 751 0
	la 9,sb_sigil@l(27)
	.loc 1 745 0
	lfs 31,272(11)
.LVL144:
	.loc 1 751 0
	mr 3,28
	lwzx 5,9,31
	li 4,-16
	bl Sbar_DrawPic
.LVL145:
	.loc 1 752 0
	fcmpu 7,31,30
	beq- 7,.L117
	.loc 1 752 0 is_stmt 0 discriminator 1
	lfd 13,568(30)
	lfs 0,.LC105@l(26)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L117
	.loc 1 753 0 is_stmt 1
	stw 25,sb_updates@l(24)
	b .L117
.LVL146:
.L89:
.LBB43:
	.loc 1 639 0
	mulli 0,28,5
	mr 3,25
	li 4,-16
	add 0,0,31
	slwi 0,0,2
	lwzx 5,20,0
	bl Sbar_DrawPic
.LVL147:
.L87:
	.loc 1 640 0
	cmpwi 7,28,1
	ble- 7,.L83
	.loc 1 641 0
	stw 22,sb_updates@l(21)
	b .L83
.LVL148:
.L75:
.LBE43:
	.loc 1 562 0
	lis 9,sb_ibar@ha
	li 3,0
	lwz 5,sb_ibar@l(9)
	li 4,-24
	lis 30,cl@ha
	bl Sbar_DrawPic
	la 30,cl@l(30)
	b .L77
.LVL149:
.L133:
.LBB44:
	.loc 1 626 0 discriminator 1
	cmpwi 7,17,0
	bne+ 7,.L87
	.loc 1 628 0
	mulli 9,28,20
	li 3,96
	li 4,-16
	add 9,20,9
	lwz 5,12(9)
	bl Sbar_DrawPic
.LVL150:
	b .L87
.LVL151:
.L136:
.LBE44:
	.loc 1 708 0
	lis 9,hsb_items@ha
	li 3,288
	lwz 5,hsb_items@l(9)
	li 4,-16
	.loc 1 701 0
	lfs 31,256(30)
.LVL152:
	.loc 1 708 0
	bl Sbar_DrawPic
.LVL153:
	.loc 1 710 0
	lis 9,.LC106@ha
	lfs 0,.LC106@l(9)
	fcmpu 7,31,0
	beq- 7,.L126
	lis 9,.LC105@ha
	lfd 13,568(30)
	lfs 0,.LC105@l(9)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L126
	.loc 1 711 0
	li 0,0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
.L126:
	lwz 0,156(30)
.LVL154:
	.loc 1 699 0
	andis. 10,0,512
	beq+ 0,.L105
.LVL155:
.L137:
	.loc 1 708 0
	lis 9,hsb_items+4@ha
	li 3,304
	lwz 5,hsb_items+4@l(9)
	li 4,-16
	.loc 1 701 0
	lfs 31,260(30)
.LVL156:
	.loc 1 708 0
	bl Sbar_DrawPic
.LVL157:
	.loc 1 710 0
	lis 11,.LC106@ha
	lfs 0,.LC106@l(11)
	fcmpu 7,31,0
	beq- 7,.L127
	lis 9,.LC105@ha
	lfd 13,568(30)
	lfs 0,.LC105@l(9)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L127
	.loc 1 711 0
	li 0,0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
.L127:
	lwz 0,156(30)
	b .L105
.LVL158:
.L138:
	.loc 1 730 0
	lis 9,rsb_items@ha
	li 3,288
	lwz 5,rsb_items@l(9)
	li 4,-16
	.loc 1 722 0
	lfs 31,276(30)
.LVL159:
	.loc 1 730 0
	bl Sbar_DrawPic
.LVL160:
	.loc 1 733 0
	lis 10,.LC106@ha
	lfs 0,.LC106@l(10)
	fcmpu 7,31,0
	beq- 7,.L128
	lis 9,.LC105@ha
	lfd 13,568(30)
	lfs 0,.LC105@l(9)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L128
	.loc 1 734 0
	li 0,0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
.L128:
	lwz 0,156(30)
.LVL161:
	.loc 1 720 0
	andis. 11,0,16384
	beq+ 0,.L74
.LVL162:
.L139:
	.loc 1 730 0
	lis 9,rsb_items+4@ha
	li 3,304
	lwz 5,rsb_items+4@l(9)
	li 4,-16
	.loc 1 722 0
	lfs 31,280(30)
.LVL163:
	.loc 1 730 0
	bl Sbar_DrawPic
.LVL164:
	.loc 1 733 0
	lis 9,.LC106@ha
	lfs 0,.LC106@l(9)
	fcmpu 7,31,0
	beq- 7,.L74
	lis 9,.LC105@ha
	lfd 13,568(30)
	lfs 0,.LC105@l(9)
	fsub 0,13,0
	fcmpu 7,31,0
	bng- 7,.L74
	.loc 1 734 0
	li 0,0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
	b .L74
.LVL165:
.L90:
.LBB45:
	.loc 1 636 0
	mulli 9,28,20
	li 3,96
	li 4,-16
	add 9,20,9
	lwz 5,16(9)
	bl Sbar_DrawPic
.LVL166:
	b .L87
.LBE45:
	.cfi_endproc
.LFE53:
	.size	Sbar_DrawInventory, .-Sbar_DrawInventory
	.align 2
	.globl Sbar_DrawFrags
	.type	Sbar_DrawFrags, @function
Sbar_DrawFrags:
.LFB54:
	.loc 1 767 0
	.cfi_startproc
	mflr 0
	stwu 1,-80(1)
.LCFI29:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 25,52(1)
	stw 0,84(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 775 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	bl Sbar_SortFrags
	.loc 1 778 0
	lis 9,scoreboardlines@ha
	lwz 25,scoreboardlines@l(9)
	cmpwi 7,25,4
	ble- 7,.L142
	li 25,4
.L142:
.LVL167:
	.loc 1 781 0
	lis 26,cl@ha
	la 26,cl@l(26)
	lwz 0,2684(26)
	cmpwi 7,0,1
	beq- 7,.L149
	.loc 1 784 0
	lis 9,vid@ha
	la 9,vid@l(9)
	lwz 19,20(9)
	addi 19,19,-320
	srwi 19,19,1
.LVL168:
.L143:
	.loc 1 787 0
	cmpwi 7,25,0
	.loc 1 785 0
	lwz 20,24(9)
	addi 18,20,-47
.LVL169:
	.loc 1 787 0
	ble- 7,.L141
	lis 29,fragsort-4@ha
	.loc 1 805 0
	lis 21,.LC103@ha
	.loc 1 787 0
	la 29,fragsort-4@l(29)
	.loc 1 780 0
	li 28,23
	.loc 1 787 0
	li 31,0
	.loc 1 801 0
	addi 20,20,-43
	.loc 1 805 0
	la 21,.LC103@l(21)
	b .L148
.LVL170:
.L145:
	.loc 1 787 0
	addi 31,31,1
.LVL171:
	cmpw 7,31,25
	beq- 7,.L141
.LVL172:
.L148:
	.loc 1 789 0
	lwzu 30,4(29)
.LVL173:
	.loc 1 790 0
	lwz 27,3296(26)
	mulli 0,30,16428
	.loc 1 791 0
	lbzx 9,27,0
	.loc 1 790 0
	add 27,27,0
.LVL174:
	.loc 1 791 0
	cmpwi 7,9,0
	beq+ 7,.L145
	.loc 1 795 0
	lwz 22,40(27)
	.loc 1 800 0
	slwi 23,28,3
	add 24,23,19
	mr 4,18
	.loc 1 795 0
	rlwinm 7,22,0,24,27
.LVL175:
	.loc 1 800 0
	addi 24,24,10
	addi 7,7,8
.LVL176:
	mr 3,24
	li 5,28
	li 6,4
	.loc 1 796 0
	rlwinm 22,22,4,24,27
.LVL177:
	.loc 1 800 0
	bl Draw_Fill
.LVL178:
	.loc 1 801 0
	li 6,3
	addi 7,22,8
	mr 3,24
	mr 4,20
	li 5,28
	bl Draw_Fill
.LVL179:
	.loc 1 805 0
	lwz 5,36(27)
	mr 4,21
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
.LVL180:
	.loc 1 807 0
	lbz 5,8(1)
	addi 3,28,1
	li 4,-24
	slwi 3,3,3
	bl Sbar_DrawCharacter
	.loc 1 808 0
	lbz 5,9(1)
	addi 3,28,2
	li 4,-24
	slwi 3,3,3
	bl Sbar_DrawCharacter
	.loc 1 809 0
	addi 3,28,3
	lbz 5,10(1)
	slwi 3,3,3
	li 4,-24
	bl Sbar_DrawCharacter
	.loc 1 811 0
	lwz 9,2676(26)
	addi 0,9,-1
	cmpw 7,0,30
	beq- 7,.L146
	.loc 1 787 0
	addi 31,31,1
	.loc 1 811 0
	addi 28,28,4
.LVL181:
	.loc 1 787 0
	cmpw 7,31,25
	bne+ 7,.L148
.LVL182:
.L141:
	.loc 1 818 0
	lwz 0,84(1)
	lwz 18,24(1)
.LVL183:
	mtlr 0
	lwz 19,28(1)
.LVL184:
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
.LVL185:
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI30:
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
	.cfi_restore 18
	blr
.LVL186:
.L146:
.LCFI31:
	.cfi_restore_state
	.loc 1 813 0
	addi 3,23,2
	li 4,-24
	li 5,16
	.loc 1 814 0
	addi 28,28,4
	.loc 1 813 0
	bl Sbar_DrawCharacter
	.loc 1 814 0
	slwi 3,28,3
	addi 3,3,-4
	li 4,-24
	li 5,17
	bl Sbar_DrawCharacter
.LVL187:
	b .L145
.LVL188:
.L149:
	lis 9,vid@ha
	.loc 1 782 0
	li 19,0
	la 9,vid@l(9)
	b .L143
	.cfi_endproc
.LFE54:
	.size	Sbar_DrawFrags, .-Sbar_DrawFrags
	.align 2
	.globl Sbar_DrawFace
	.type	Sbar_DrawFace, @function
Sbar_DrawFace:
.LFB55:
	.loc 1 829 0
	.cfi_startproc
	mflr 0
	stwu 1,-48(1)
.LCFI32:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 834 0
	lis 9,rogue@ha
	.loc 1 829 0
	stw 27,28(1)
	stw 0,52(1)
	.loc 1 834 0
	lbz 0,rogue@l(9)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.loc 1 835 0
	lis 9,cl@ha
	.loc 1 829 0
	stw 28,32(1)
	.loc 1 835 0
	la 9,cl@l(9)
	.loc 1 834 0
	cmpwi 7,0,0
	.loc 1 829 0
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 834 0
	beq- 7,.L152
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 834 0 is_stmt 0 discriminator 1
	lwz 0,2680(9)
	cmpwi 7,0,1
	beq- 7,.L152
	.loc 1 836 0 is_stmt 1
	lis 11,teamplay+12@ha
	lfs 0,teamplay+12@l(11)
	.loc 1 835 0
	lis 11,.LC107@ha
	lfs 13,.LC107@l(11)
	fcmpu 7,0,13
	bng- 7,.L152
	.loc 1 836 0
	lis 11,.LC108@ha
	lfs 13,.LC108@l(11)
	fcmpu 7,0,13
	bnl- 7,.L152
.LBB46:
	.loc 1 844 0
	lwz 29,2676(9)
	lwz 11,3296(9)
	addi 29,29,-1
	.loc 1 851 0
	lwz 0,2684(9)
	.loc 1 844 0
	mulli 29,29,16428
	.loc 1 851 0
	cmpwi 7,0,1
	.loc 1 844 0
	add 29,11,29
.LVL189:
	.loc 1 846 0
	lwz 27,40(29)
	rlwinm 30,27,0,24,27
.LVL190:
	.loc 1 847 0
	rlwinm 27,27,4,24,27
.LVL191:
.LBB47:
.LBB48:
	.loc 1 418 0
	addi 30,30,8
.LVL192:
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	addi 27,27,8
.LVL193:
.LBE50:
.LBE49:
	.loc 1 851 0
	beq- 7,.L167
	.loc 1 854 0
	lis 31,vid@ha
	la 31,vid@l(31)
	lwz 28,20(31)
	addi 28,28,-320
	srwi 28,28,1
	addi 28,28,113
.LVL194:
.L155:
	.loc 1 856 0
	lis 9,rsb_teambord@ha
	li 3,112
	lwz 5,rsb_teambord@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 857 0
	lwz 4,24(31)
	mr 3,28
	li 5,22
	addi 4,4,-21
	li 6,9
	mr 7,30
	bl Draw_Fill
	.loc 1 858 0
	lwz 4,24(31)
	mr 3,28
	li 5,22
	addi 4,4,-12
	li 6,9
	mr 7,27
	bl Draw_Fill
.LVL195:
	.loc 1 862 0
	lwz 5,36(29)
	lis 4,.LC103@ha
	addi 3,1,8
	la 4,.LC103@l(4)
	crxor 6,6,6
	bl sprintf
.LVL196:
	.loc 1 864 0
	cmpwi 7,30,8
	.loc 1 866 0
	lbz 5,8(1)
	.loc 1 864 0
	bne- 7,.L156
	.loc 1 866 0
	cmpwi 7,5,32
	beq- 7,.L157
	.loc 1 867 0
	li 3,109
	li 4,3
	addi 5,5,-30
	bl Sbar_DrawCharacter
.L157:
	.loc 1 868 0
	lbz 5,9(1)
	cmpwi 7,5,32
	beq- 7,.L158
	.loc 1 869 0
	li 3,116
	li 4,3
	addi 5,5,-30
	bl Sbar_DrawCharacter
.L158:
	.loc 1 870 0
	lbz 5,10(1)
	cmpwi 7,5,32
	beq- 7,.L151
	.loc 1 871 0
	li 3,123
	li 4,3
	addi 5,5,-30
	bl Sbar_DrawCharacter
	b .L151
.LVL197:
.L152:
.LBE46:
	.loc 1 884 0
	lwz 0,156(9)
	lis 11,0x18
	rlwinm 10,0,0,11,12
	cmpw 7,10,11
	beq- 7,.L176
	.loc 1 890 0
	andis. 11,0,64
	bne- 0,.L177
	.loc 1 895 0
	andis. 11,0,8
	bne- 0,.L178
	.loc 1 900 0
	andis. 11,0,16
	bne- 0,.L179
	.loc 1 906 0
	lwz 0,28(9)
	.loc 1 907 0
	li 11,4
	.loc 1 906 0
	cmpwi 7,0,99
	bgt- 7,.L164
	.loc 1 909 0
	lis 11,0x6666
	ori 11,11,26215
	mulhw 11,0,11
	srawi 0,0,31
	srawi 11,11,3
	subf 11,0,11
.LVL198:
.L164:
	.loc 1 911 0
	lfs 0,288(9)
	.loc 1 914 0
	li 0,0
	.loc 1 911 0
	lfd 13,568(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L165
.LVL199:
	.loc 1 914 0
	lis 9,sb_updates@ha
	stw 0,sb_updates@l(9)
	.loc 1 913 0
	li 0,1
.LVL200:
.L165:
	.loc 1 918 0
	slwi 11,11,1
.LVL201:
	lis 9,sb_faces@ha
	add 11,11,0
	la 9,sb_faces@l(9)
	slwi 11,11,2
	li 3,112
	lwzx 5,9,11
	li 4,0
	bl Sbar_DrawPic
.LVL202:
.L151:
	.loc 1 919 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.L179:
.LCFI34:
	.cfi_restore_state
	.loc 1 902 0
	lis 9,sb_face_invuln@ha
	li 3,112
	lwz 5,sb_face_invuln@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 919 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI35:
	.cfi_def_cfa_offset 0
	blr
.L177:
.LCFI36:
	.cfi_restore_state
	.loc 1 892 0
	lis 9,sb_face_quad@ha
	li 3,112
	lwz 5,sb_face_quad@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 919 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI37:
	.cfi_def_cfa_offset 0
	blr
.L178:
.LCFI38:
	.cfi_restore_state
	.loc 1 897 0
	lis 9,sb_face_invis@ha
	li 3,112
	lwz 5,sb_face_invis@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 919 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI39:
	.cfi_def_cfa_offset 0
	blr
.L176:
.LCFI40:
	.cfi_restore_state
	.loc 1 887 0
	lis 9,sb_face_invis_invuln@ha
	li 3,112
	lwz 5,sb_face_invis_invuln@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 888 0
	b .L151
.LVL203:
.L156:
.LBB51:
	.loc 1 875 0
	li 3,109
	li 4,3
	bl Sbar_DrawCharacter
	.loc 1 876 0
	lbz 5,9(1)
	li 3,116
	li 4,3
	bl Sbar_DrawCharacter
	.loc 1 877 0
	lbz 5,10(1)
	li 3,123
	li 4,3
	bl Sbar_DrawCharacter
	b .L151
.LVL204:
.L167:
	lis 31,vid@ha
	.loc 1 852 0
	li 28,113
	la 31,vid@l(31)
	b .L155
.LBE51:
	.cfi_endproc
.LFE55:
	.size	Sbar_DrawFace, .-Sbar_DrawFace
	.align 2
	.globl Sbar_IntermissionNumber
	.type	Sbar_IntermissionNumber, @function
Sbar_IntermissionNumber:
.LFB57:
	.loc 1 1060 0
	.cfi_startproc
.LVL205:
	stwu 1,-48(1)
.LCFI41:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,44(1)
	.loc 1 1065 0
	addi 4,1,8
.LVL206:
	.loc 1 1060 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 1065 0
	mr 3,5
.LVL207:
	.loc 1 1060 0
	stw 27,28(1)
	mr 27,7
	.cfi_offset 27, -20
	stw 29,36(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 0,52(1)
	stw 28,32(1)
	.loc 1 1065 0
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl Sbar_itoa
.LVL208:
	.loc 1 1067 0
	cmpw 7,3,29
	ble- 7,.L181
	.loc 1 1068 0
	subf 29,29,3
.LVL209:
	addi 0,1,8
.LVL210:
	add 29,0,29
.LVL211:
.L182:
	.loc 1 1072 0 discriminator 1
	lbz 9,0(29)
	cmpwi 7,9,0
	beq- 7,.L180
	lis 28,sb_nums@ha
	mulli 27,27,11
.LVL212:
	la 28,sb_nums@l(28)
.LVL213:
.L185:
	.loc 1 1074 0
	cmpwi 7,9,45
	.loc 1 1079 0
	mr 3,31
	mr 4,30
	.loc 1 1075 0
	li 0,10
	.loc 1 1080 0
	addi 31,31,24
.LVL214:
	.loc 1 1074 0
	beq- 7,.L184
	.loc 1 1077 0
	addi 0,9,-48
.LVL215:
.L184:
	.loc 1 1079 0
	add 0,27,0
.LVL216:
	slwi 0,0,2
	lwzx 5,28,0
	bl Draw_TransPic
.LVL217:
	.loc 1 1072 0
	lbzu 9,1(29)
	cmpwi 7,9,0
	bne+ 7,.L185
.L180:
	.loc 1 1083 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL218:
	lwz 31,44(1)
.LVL219:
	addi 1,1,48
	.cfi_remember_state
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL220:
.L181:
.LCFI43:
	.cfi_restore_state
	.loc 1 1069 0
	bge- 7,.L186
	.loc 1 1070 0
	subf 3,3,29
.LVL221:
	.loc 1 1066 0
	addi 29,1,8
.LVL222:
	.loc 1 1070 0
	mulli 3,3,24
	add 31,31,3
.LVL223:
	b .L182
.LVL224:
.L186:
	.loc 1 1066 0
	addi 29,1,8
.LVL225:
	b .L182
	.cfi_endproc
.LFE57:
	.size	Sbar_IntermissionNumber, .-Sbar_IntermissionNumber
	.align 2
	.globl Sbar_DeathmatchOverlay
	.type	Sbar_DeathmatchOverlay, @function
Sbar_DeathmatchOverlay:
.LFB58:
	.loc 1 1092 0
	.cfi_startproc
	mflr 0
	stwu 1,-88(1)
.LCFI44:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 1100 0
	lis 9,scr_copyeverything@ha
	.loc 1 1103 0
	lis 3,.LC109@ha
	la 3,.LC109@l(3)
	.loc 1 1092 0
	stw 17,28(1)
	stw 0,92(1)
	.loc 1 1100 0
	li 0,1
	.cfi_offset 65, 4
	.cfi_offset 17, -60
	stw 0,scr_copyeverything@l(9)
	.loc 1 1101 0
	lis 9,scr_fullupdate@ha
	li 0,0
	.loc 1 1092 0
	stw 24,56(1)
	.loc 1 1101 0
	stw 0,scr_fullupdate@l(9)
	.loc 1 1092 0
	stw 25,60(1)
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
	stw 31,84(1)
	.loc 1 1103 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl Draw_CachePic
	mr 5,3
.LVL226:
	.loc 1 1104 0
	lwz 3,0(3)
.LVL227:
	li 4,8
	subfic 3,3,320
	srawi 3,3,1
	addze 3,3
	bl M_DrawPic
.LVL228:
	.loc 1 1107 0
	bl Sbar_SortFrags
	.loc 1 1110 0
	lis 9,scoreboardlines@ha
	lwz 25,scoreboardlines@l(9)
.LVL229:
	.loc 1 1112 0
	lis 9,vid+20@ha
	lwz 17,vid+20@l(9)
	.loc 1 1114 0
	cmpwi 7,25,0
	.loc 1 1112 0
	addi 17,17,-320
	srwi 17,17,1
	addi 24,17,80
.LVL230:
	.loc 1 1114 0
	ble- 7,.L189
	lis 28,fragsort-4@ha
	lis 26,cl@ha
	.loc 1 1132 0
	lis 18,.LC103@ha
	.loc 1 1134 0
	addi 19,17,88
	.loc 1 1135 0
	addi 20,17,96
	.loc 1 1136 0
	addi 21,17,104
	.loc 1 1160 0
	addi 22,17,144
	.loc 1 1114 0
	la 28,fragsort-4@l(28)
	.loc 1 1113 0
	li 30,40
	.loc 1 1114 0
	li 31,0
	la 26,cl@l(26)
	.loc 1 1132 0
	la 18,.LC103@l(18)
	.loc 1 1139 0
	addi 17,17,72
	b .L193
.LVL231:
.L191:
	.loc 1 1114 0
	cmpw 7,31,25
	beq- 7,.L189
.LVL232:
.L193:
	.loc 1 1116 0
	lwzu 29,4(28)
.LVL233:
	.loc 1 1114 0
	addi 31,31,1
	.loc 1 1117 0
	lwz 27,3296(26)
	mulli 0,29,16428
	.loc 1 1118 0
	lbzx 9,27,0
	.loc 1 1117 0
	add 27,27,0
.LVL234:
	.loc 1 1118 0
	cmpwi 7,9,0
	beq+ 7,.L191
	.loc 1 1122 0
	lwz 23,40(27)
	.loc 1 1127 0
	mr 4,30
	li 5,40
	li 6,4
	.loc 1 1122 0
	rlwinm 7,23,0,24,27
.LVL235:
	.loc 1 1127 0
	mr 3,24
	addi 7,7,8
.LVL236:
	.loc 1 1123 0
	rlwinm 23,23,4,24,27
.LVL237:
	.loc 1 1127 0
	bl Draw_Fill
.LVL238:
	.loc 1 1128 0
	li 6,4
	addi 7,23,8
	mr 3,24
	addi 4,30,4
	li 5,40
	bl Draw_Fill
.LVL239:
	.loc 1 1132 0
	lwz 5,36(27)
	mr 4,18
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
.LVL240:
	.loc 1 1134 0
	lbz 5,8(1)
	mr 3,19
	mr 4,30
	bl Draw_Character
	.loc 1 1135 0
	lbz 5,9(1)
	mr 3,20
	mr 4,30
	bl Draw_Character
	.loc 1 1136 0
	lbz 5,10(1)
	mr 3,21
	mr 4,30
	bl Draw_Character
	.loc 1 1138 0
	lwz 9,2676(26)
	addi 0,9,-1
	cmpw 7,0,29
	beq- 7,.L195
.L192:
	.loc 1 1160 0
	mr 4,30
	mr 3,22
	mr 5,27
	.loc 1 1162 0
	addi 30,30,10
	.loc 1 1160 0
	bl Draw_String
.LVL241:
	.loc 1 1114 0
	cmpw 7,31,25
	bne+ 7,.L193
.LVL242:
.L189:
	.loc 1 1164 0
	lwz 0,92(1)
	lwz 17,28(1)
	mtlr 0
	lwz 18,32(1)
	lwz 19,36(1)
	lwz 20,40(1)
	lwz 21,44(1)
	lwz 22,48(1)
	lwz 23,52(1)
	lwz 24,56(1)
.LVL243:
	lwz 25,60(1)
.LVL244:
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI45:
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
	.cfi_restore 18
	.cfi_restore 17
	blr
.LVL245:
.L195:
.LCFI46:
	.cfi_restore_state
	.loc 1 1139 0
	mr 4,30
	mr 3,17
	li 5,12
	bl Draw_Character
	b .L192
	.cfi_endproc
.LFE58:
	.size	Sbar_DeathmatchOverlay, .-Sbar_DeathmatchOverlay
	.align 2
	.globl Sbar_DrawScoreboard
	.type	Sbar_DrawScoreboard, @function
Sbar_DrawScoreboard:
.LFB52:
	.loc 1 488 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI47:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 489 0
	.cfi_offset 65, 4
	bl Sbar_SoloScoreboard
	.loc 1 490 0
	lis 9,cl+2684@ha
	lwz 0,cl+2684@l(9)
	cmpwi 7,0,1
	beq- 7,.L198
	.loc 1 537 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI48:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L198:
.LCFI49:
	.cfi_restore_state
	lwz 0,12(1)
	addi 1,1,8
.LCFI50:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 491 0
	b Sbar_DeathmatchOverlay
	.cfi_endproc
.LFE52:
	.size	Sbar_DrawScoreboard, .-Sbar_DrawScoreboard
	.align 2
	.globl Sbar_MiniDeathmatchOverlay
	.type	Sbar_MiniDeathmatchOverlay, @function
Sbar_MiniDeathmatchOverlay:
.LFB59:
	.loc 1 1173 0
	.cfi_startproc
	stwu 1,-64(1)
.LCFI51:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 29,52(1)
	.loc 1 1181 0
	lis 29,vid@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	la 29,vid@l(29)
	.loc 1 1173 0
	stw 0,68(1)
	.loc 1 1181 0
	lwz 0,20(29)
	.cfi_offset 65, 4
	.loc 1 1173 0
	stw 22,24(1)
	.loc 1 1181 0
	cmplwi 7,0,511
	.loc 1 1173 0
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 30,56(1)
	stw 31,60(1)
	.loc 1 1181 0
	ble- 7,.L199
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.loc 1 1181 0 is_stmt 0 discriminator 1
	lis 31,sb_lines@ha
	lwz 0,sb_lines@l(31)
	cmpwi 7,0,0
	bne- 7,.L215
.L199:
	.loc 1 1265 0 is_stmt 1
	lwz 0,68(1)
	lwz 22,24(1)
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI52:
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
.L215:
.LCFI53:
	.cfi_restore_state
	.loc 1 1184 0
	li 0,1
	lis 9,scr_copyeverything@ha
	stw 0,scr_copyeverything@l(9)
	.loc 1 1185 0
	li 0,0
	lis 9,scr_fullupdate@ha
	stw 0,scr_fullupdate@l(9)
	.loc 1 1188 0
	bl Sbar_SortFrags
.LVL246:
	.loc 1 1192 0
	lwz 31,sb_lines@l(31)
	lwz 6,24(29)
.LVL247:
	.loc 1 1193 0
	srawi 8,31,3
	addze 8,8
.LVL248:
	.loc 1 1194 0
	cmpwi 7,8,2
	ble- 7,.L199
.LVL249:
	.loc 1 1198 0 discriminator 1
	lis 9,scoreboardlines@ha
	lwz 7,scoreboardlines@l(9)
	cmpwi 7,7,0
	ble- 7,.L201
	.loc 1 1199 0
	lis 25,cl+2676@ha
	lis 11,fragsort@ha
	lwz 10,cl+2676@l(25)
	li 9,0
	lwz 0,fragsort@l(11)
	mtctr 7
	addi 10,10,-1
	la 11,fragsort@l(11)
	cmpw 7,0,10
	bne+ 7,.L203
	b .L211
.LVL250:
.L204:
	lwzu 0,4(11)
	cmpw 7,0,10
	beq- 7,.L211
.LVL251:
.L203:
	.loc 1 1198 0
	addi 9,9,1
.LVL252:
	bdnz .L204
	.loc 1 1203 0
	li 9,0
.LVL253:
.L205:
	.loc 1 1207 0
	subf 8,8,7
.LVL254:
	.loc 1 1205 0
	cmpw 7,9,8
	ble- 7,.L206
	mr 9,8
.LVL255:
.L206:
	nor 30,9,9
	srawi 30,30,31
	and 30,9,30
.LVL256:
	.loc 1 1213 0
	cmpw 7,30,7
	bge- 7,.L199
	.loc 1 1192 0
	subf 31,31,6
	.loc 1 1213 0
	addi 6,6,-8
	cmplw 7,31,6
	bge- 7,.L199
	.loc 1 1172 0
	addi 27,30,-1
	lis 9,fragsort@ha
	slwi 27,27,2
	la 0,fragsort@l(9)
	lis 25,cl@ha
	lis 24,scoreboardlines@ha
	.loc 1 1231 0
	lis 22,.LC103@ha
	.loc 1 1172 0
	add 27,27,0
	la 25,cl@l(25)
	la 24,scoreboardlines@l(24)
	.loc 1 1231 0
	la 22,.LC103@l(22)
	b .L210
.LVL257:
.L208:
	.loc 1 1213 0
	lwz 0,0(24)
	cmpw 7,0,30
	ble- 7,.L199
	.loc 1 1213 0 is_stmt 0 discriminator 2
	lwz 9,24(29)
	addi 0,9,-8
	cmplw 7,31,0
	bge- 7,.L199
.LVL258:
.L210:
	.loc 1 1215 0 is_stmt 1
	lwzu 28,4(27)
.LVL259:
	.loc 1 1213 0
	addi 30,30,1
.LVL260:
	.loc 1 1216 0
	lwz 26,3296(25)
	mulli 0,28,16428
	.loc 1 1217 0
	lbzx 9,26,0
	.loc 1 1216 0
	add 26,26,0
.LVL261:
	.loc 1 1217 0
	cmpwi 7,9,0
	beq+ 7,.L208
	.loc 1 1221 0
	lwz 23,40(26)
	.loc 1 1226 0
	addi 4,31,1
	li 3,324
	li 5,40
	.loc 1 1221 0
	rlwinm 7,23,0,24,27
.LVL262:
	.loc 1 1226 0
	li 6,3
	addi 7,7,8
.LVL263:
	.loc 1 1222 0
	rlwinm 23,23,4,24,27
.LVL264:
	.loc 1 1226 0
	bl Draw_Fill
.LVL265:
	.loc 1 1227 0
	li 6,4
	addi 7,23,8
	addi 4,31,4
	li 5,40
	li 3,324
	bl Draw_Fill
.LVL266:
	.loc 1 1231 0
	lwz 5,36(26)
	mr 4,22
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
.LVL267:
	.loc 1 1233 0
	lbz 5,8(1)
	mr 4,31
	li 3,332
	bl Draw_Character
	.loc 1 1234 0
	lbz 5,9(1)
	mr 4,31
	li 3,340
	bl Draw_Character
	.loc 1 1235 0
	lbz 5,10(1)
	mr 4,31
	li 3,348
	bl Draw_Character
	.loc 1 1237 0
	lwz 9,2676(25)
	addi 0,9,-1
	cmpw 7,0,28
	beq- 7,.L216
.L209:
	.loc 1 1261 0
	mr 4,31
	li 3,372
	mr 5,26
	.loc 1 1263 0
	addi 31,31,8
	.loc 1 1261 0
	bl Draw_String
.LVL268:
	b .L208
.LVL269:
.L201:
	.loc 1 1203 0
	li 9,0
	.loc 1 1202 0
	beq- 7,.L205
.LVL270:
.L211:
	.loc 1 1205 0
	srawi 0,8,1
	addze 0,0
	subf 9,0,9
.LVL271:
	b .L205
.LVL272:
.L216:
	.loc 1 1238 0
	mr 4,31
	li 3,324
	li 5,16
	bl Draw_Character
	.loc 1 1239 0
	mr 4,31
	li 3,356
	li 5,17
	bl Draw_Character
	b .L209
	.cfi_endproc
.LFE59:
	.size	Sbar_MiniDeathmatchOverlay, .-Sbar_MiniDeathmatchOverlay
	.align 2
	.globl Sbar_Draw
	.type	Sbar_Draw, @function
Sbar_Draw:
.LFB56:
	.loc 1 928 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI54:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 929 0
	lis 9,.LC111@ha
	.loc 1 928 0
	stw 31,28(1)
	.loc 1 929 0
	lis 31,vid@ha
	.cfi_offset 31, -4
	.loc 1 928 0
	stw 0,36(1)
	.loc 1 929 0
	la 31,vid@l(31)
	lfs 0,.LC111@l(9)
	lis 9,scr_con_current@ha
	lwz 0,24(31)
	.cfi_offset 65, 4
	.loc 1 928 0
	stw 28,16(1)
	.loc 1 929 0
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	.loc 1 928 0
	stw 29,20(1)
	.loc 1 929 0
	lfd 13,8(1)
	.loc 1 928 0
	stw 30,24(1)
	.loc 1 929 0
	fsub 13,13,0
	lfs 0,scr_con_current@l(9)
	frsp 13,13
	fcmpu 7,13,0
	beq- 7,.L217
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 933 0
	lis 29,sb_updates@ha
	lwz 9,32(31)
	lwz 0,sb_updates@l(29)
	cmpw 7,9,0
	bgt- 7,.L219
	.loc 1 933 0 is_stmt 0 discriminator 1
	lis 9,sbar_updateperframe+12@ha
	lfs 13,sbar_updateperframe+12@l(9)
	lis 9,.LC106@ha
	lfs 0,.LC106@l(9)
	fcmpu 7,13,0
	beq- 7,.L217
.L219:
	.loc 1 933 0 discriminator 2
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	lis 9,.LC106@ha
	lfs 0,.LC106@l(9)
	fcmpu 7,13,0
	beq- 7,.L254
.L217:
	.loc 1 1049 0 is_stmt 1
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L254:
.LCFI56:
	.cfi_restore_state
	.loc 1 936 0
	li 3,3042
	.loc 1 942 0
	lis 28,sb_lines@ha
	.loc 1 936 0
	bl glEnable
	.loc 1 942 0
	lwz 0,sb_lines@l(28)
	.loc 1 940 0
	lwz 9,sb_updates@l(29)
	.loc 1 938 0
	li 10,1
	.loc 1 942 0
	cmpwi 7,0,0
	.loc 1 938 0
	lis 11,scr_copyeverything@ha
	.loc 1 940 0
	addi 9,9,1
	.loc 1 938 0
	stw 10,scr_copyeverything@l(11)
	.loc 1 940 0
	stw 9,sb_updates@l(29)
	.loc 1 942 0
	beq- 7,.L220
	.loc 1 942 0 is_stmt 0 discriminator 1
	lwz 5,20(31)
	cmplwi 7,5,320
	bgt- 7,.L255
.L221:
	.loc 1 945 0 is_stmt 1
	cmpwi 7,0,24
	ble- 7,.L220
	.loc 1 947 0
	bl Sbar_DrawInventory
	.loc 1 948 0
	lis 9,cl+2680@ha
	lwz 0,cl+2680@l(9)
	cmpwi 7,0,1
	beq- 7,.L220
	.loc 1 949 0
	bl Sbar_DrawFrags
.L220:
	.loc 1 952 0
	lis 9,sb_showscores@ha
	lbz 0,sb_showscores@l(9)
	cmpwi 7,0,0
	bne- 7,.L222
	.loc 1 952 0 is_stmt 0 discriminator 1
	lis 30,cl@ha
	la 30,cl@l(30)
	lwz 0,28(30)
	cmpwi 7,0,0
	ble- 7,.L222
	.loc 1 958 0 is_stmt 1
	lwz 0,sb_lines@l(28)
	cmpwi 7,0,0
	bne- 7,.L256
.L224:
	.loc 1 1044 0
	lwz 0,20(31)
	cmplwi 7,0,320
	ble- 7,.L246
	.loc 1 1045 0
	lis 9,cl+2684@ha
	lwz 0,cl+2684@l(9)
	cmpwi 7,0,1
	beq- 7,.L257
.L246:
	.loc 1 1048 0
	li 3,3042
	bl glDisable
	.loc 1 1049 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI57:
	.cfi_def_cfa_offset 0
	blr
.L222:
.LCFI58:
	.cfi_restore_state
	.loc 1 954 0
	lis 9,sb_scorebar@ha
	li 3,0
	lwz 5,sb_scorebar@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 955 0
	bl Sbar_DrawScoreboard
	.loc 1 956 0
	li 0,0
	stw 0,sb_updates@l(29)
	b .L224
.L256:
	.loc 1 960 0
	lis 9,sb_sbar@ha
	li 3,0
	lwz 5,sb_sbar@l(9)
	li 4,0
	bl Sbar_DrawPic
	.loc 1 964 0
	lis 9,hipnotic@ha
	lbz 0,hipnotic@l(9)
	cmpwi 7,0,0
	.loc 1 966 0
	lwz 0,156(30)
	.loc 1 964 0
	beq- 7,.L226
	.loc 1 966 0
	andis. 9,0,2
	bne- 0,.L258
.L227:
	.loc 1 968 0
	andis. 9,0,4
	bne- 0,.L259
.L226:
	.loc 1 972 0
	andis. 9,0,16
	bne- 0,.L260
	.loc 1 982 0
	lwz 5,44(30)
	.loc 1 979 0
	lis 29,rogue@ha
	lbz 0,rogue@l(29)
	.loc 1 981 0
	li 3,24
	cmpwi 7,5,25
	li 4,0
	li 6,3
	crnot 30,29
	mfcr 7
	rlwinm 7,7,31,1
	.loc 1 979 0
	cmpwi 7,0,0
	beq- 7,.L230
	.loc 1 981 0
	bl Sbar_DrawNum
	.loc 1 983 0
	lwz 0,156(30)
	andis. 9,0,512
	bne- 0,.L247
	.loc 1 985 0
	andis. 9,0,256
	bne- 0,.L249
	.loc 1 987 0
	andis. 9,0,128
	bne- 0,.L248
.L229:
	.loc 1 1004 0
	bl Sbar_DrawFace
	.loc 1 1008 0
	lwz 5,28(30)
	.loc 1 1007 0
	li 3,136
	li 4,0
	cmpwi 7,5,25
	li 6,3
	crnot 30,29
	mfcr 7
	rlwinm 7,7,31,1
	bl Sbar_DrawNum
	.loc 1 1011 0
	lbz 0,rogue@l(29)
	cmpwi 7,0,0
	.loc 1 1013 0
	lwz 0,156(30)
	.loc 1 1011 0
	beq- 7,.L235
	.loc 1 1013 0
	andi. 9,0,128
	bne- 0,.L250
	.loc 1 1015 0
	andi. 9,0,256
	bne- 0,.L251
	.loc 1 1017 0
	andi. 9,0,512
	bne- 0,.L252
	.loc 1 1019 0
	andi. 9,0,1024
	bne- 0,.L253
	.loc 1 1021 0
	andis. 9,0,1024
	bne- 0,.L261
	.loc 1 1023 0
	andis. 9,0,2048
	bne- 0,.L262
	.loc 1 1025 0
	andis. 9,0,4096
	bne- 0,.L263
.L237:
	.loc 1 1041 0
	lwz 5,40(30)
	.loc 1 1040 0
	li 3,248
	li 4,0
	li 6,3
	cmpwi 7,5,10
	crnot 30,29
	mfcr 7
	rlwinm 7,7,31,1
	bl Sbar_DrawNum
	b .L224
.L255:
	.loc 1 943 0
	lwz 4,24(31)
	mr 6,0
	li 3,0
	subf 4,0,4
	bl Draw_TileClear
	lwz 0,sb_lines@l(28)
	b .L221
.L235:
	.loc 1 1030 0
	andi. 9,0,256
	bne- 0,.L250
	.loc 1 1032 0
	andi. 9,0,512
	bne- 0,.L251
	.loc 1 1034 0
	andi. 9,0,1024
	bne- 0,.L252
	.loc 1 1036 0
	andi. 9,0,2048
	beq+ 0,.L237
.L253:
	.loc 1 1037 0
	lis 9,sb_ammo+12@ha
	li 3,224
	lwz 5,sb_ammo+12@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L257:
	.loc 1 1046 0
	bl Sbar_MiniDeathmatchOverlay
	b .L246
.L230:
	.loc 1 992 0
	bl Sbar_DrawNum
	.loc 1 994 0
	lwz 0,156(30)
	andi. 9,0,32768
	bne- 0,.L247
	.loc 1 996 0
	andi. 9,0,16384
	bne- 0,.L249
	.loc 1 998 0
	andi. 9,0,8192
	beq+ 0,.L229
.L248:
	.loc 1 999 0
	lis 9,sb_armor@ha
	li 3,0
	lwz 5,sb_armor@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L229
.L250:
	.loc 1 1031 0
	lis 9,sb_ammo@ha
	li 3,224
	lwz 5,sb_ammo@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L260:
	.loc 1 974 0
	li 3,24
	li 4,0
	li 5,666
	li 6,3
	li 7,1
	lis 29,rogue@ha
	bl Sbar_DrawNum
	.loc 1 975 0
	lis 9,draw_disc@ha
	lwz 5,draw_disc@l(9)
	li 3,0
	li 4,0
	bl Sbar_DrawPic
	b .L229
.L251:
	.loc 1 1033 0
	lis 9,sb_ammo+4@ha
	li 3,224
	lwz 5,sb_ammo+4@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L247:
	.loc 1 995 0
	lis 9,sb_armor+8@ha
	li 3,0
	lwz 5,sb_armor+8@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L229
.L249:
	.loc 1 997 0
	lis 9,sb_armor+4@ha
	li 3,0
	lwz 5,sb_armor+4@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L229
.L252:
	.loc 1 1035 0
	lis 9,sb_ammo+8@ha
	li 3,224
	lwz 5,sb_ammo+8@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L259:
	.loc 1 969 0
	lis 9,sb_items+4@ha
	li 3,209
	lwz 5,sb_items+4@l(9)
	li 4,12
	bl Sbar_DrawPic
	lwz 0,156(30)
	b .L226
.L258:
	.loc 1 967 0
	lis 9,sb_items@ha
	li 3,209
	lwz 5,sb_items@l(9)
	li 4,3
	bl Sbar_DrawPic
	lwz 0,156(30)
	b .L227
.L261:
	.loc 1 1022 0
	lis 9,rsb_ammo@ha
	li 3,224
	lwz 5,rsb_ammo@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L262:
	.loc 1 1024 0
	lis 9,rsb_ammo+4@ha
	li 3,224
	lwz 5,rsb_ammo+4@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
.L263:
	.loc 1 1026 0
	lis 9,rsb_ammo+8@ha
	li 3,224
	lwz 5,rsb_ammo+8@l(9)
	li 4,0
	bl Sbar_DrawPic
	b .L237
	.cfi_endproc
.LFE56:
	.size	Sbar_Draw, .-Sbar_Draw
	.align 2
	.globl Sbar_IntermissionOverlay
	.type	Sbar_IntermissionOverlay, @function
Sbar_IntermissionOverlay:
.LFB60:
	.loc 1 1274 0
	.cfi_startproc
	stwu 1,-32(1)
.LCFI59:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 1279 0
	lis 9,scr_copyeverything@ha
	.loc 1 1274 0
	stw 30,24(1)
	.loc 1 1282 0
	lis 30,cl@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,cl@l(30)
	.loc 1 1274 0
	stw 0,36(1)
	.loc 1 1282 0
	lwz 0,2684(30)
	.cfi_offset 65, 4
	.loc 1 1274 0
	stw 27,12(1)
	.loc 1 1282 0
	cmpwi 7,0,1
	.loc 1 1279 0
	li 0,1
	stw 0,scr_copyeverything@l(9)
	.loc 1 1280 0
	li 0,0
	lis 9,scr_fullupdate@ha
	.loc 1 1274 0
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.loc 1 1280 0
	stw 0,scr_fullupdate@l(9)
	.loc 1 1282 0
	beq- 7,.L266
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 1 1289 0
	lis 3,.LC112@ha
	.loc 1 1290 0
	lis 31,vid@ha
	la 31,vid@l(31)
	.loc 1 1289 0
	la 3,.LC112@l(3)
	bl Draw_CachePic
	.loc 1 1290 0
	lwz 9,20(31)
	lwz 4,24(31)
	.loc 1 1289 0
	mr 5,3
.LVL273:
	.loc 1 1290 0
	srwi 9,9,1
	.loc 1 1295 0
	lis 29,0x8888
	.loc 1 1290 0
	srwi 4,4,1
	addi 3,9,-94
.LVL274:
	addi 4,4,-96
	.loc 1 1295 0
	ori 29,29,34953
	.loc 1 1290 0
	bl Draw_Pic
.LVL275:
	.loc 1 1292 0
	lis 3,.LC113@ha
	la 3,.LC113@l(3)
	.loc 1 1299 0
	lis 27,0x6666
	.loc 1 1292 0
	bl Draw_CachePic
	.loc 1 1293 0
	lwz 4,24(31)
	.loc 1 1292 0
	mr 5,3
.LVL276:
	.loc 1 1293 0
	lwz 3,20(31)
.LVL277:
	srwi 4,4,1
	.loc 1 1299 0
	ori 27,27,26215
	.loc 1 1293 0
	srwi 3,3,1
	addi 4,4,-64
	addi 3,3,-160
	.loc 1 1299 0
	lis 28,sb_nums@ha
	.loc 1 1293 0
	bl Draw_TransPic
.LVL278:
	.loc 1 1295 0
	lwz 0,544(30)
	.loc 1 1296 0
	lwz 4,24(31)
	li 6,3
	.loc 1 1295 0
	mulhw 29,0,29
	srawi 9,0,31
	.loc 1 1296 0
	lwz 3,20(31)
	srwi 4,4,1
	li 7,0
	srwi 3,3,1
	.loc 1 1295 0
	add 29,29,0
	.loc 1 1296 0
	addi 4,4,-56
	.loc 1 1295 0
	srawi 29,29,5
	.loc 1 1299 0
	la 28,sb_nums@l(28)
	.loc 1 1295 0
	subf 29,9,29
.LVL279:
	.loc 1 1296 0
	mr 5,29
	.loc 1 1297 0
	mulli 29,29,-60
.LVL280:
	.loc 1 1296 0
	bl Sbar_IntermissionNumber
.LVL281:
	.loc 1 1297 0
	lwz 0,544(30)
	.loc 1 1298 0
	lwz 3,20(31)
	lis 9,sb_colon@ha
	.loc 1 1297 0
	add 29,29,0
.LVL282:
	.loc 1 1298 0
	lwz 4,24(31)
	.loc 1 1299 0
	mulhw 27,29,27
	.loc 1 1298 0
	lwz 5,sb_colon@l(9)
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,74
	addi 4,4,-56
	.loc 1 1299 0
	srawi 27,27,2
	.loc 1 1298 0
	bl Draw_TransPic
	.loc 1 1299 0
	srawi 0,29,31
	lwz 3,20(31)
	subf 27,0,27
	lwz 4,24(31)
	slwi 0,27,2
	lwzx 5,28,0
	.loc 1 1300 0
	mulli 27,27,10
	.loc 1 1299 0
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,86
	addi 4,4,-56
	bl Draw_TransPic
	.loc 1 1300 0
	subf 29,27,29
.LVL283:
	lwz 3,20(31)
	slwi 29,29,2
	lwz 4,24(31)
	lwzx 5,28,29
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,106
	addi 4,4,-56
	.loc 1 1303 0
	lis 29,sb_slash@ha
	.loc 1 1300 0
	bl Draw_TransPic
	.loc 1 1302 0
	lwz 4,24(31)
	lwz 3,20(31)
	li 6,3
	lwz 5,80(30)
	srwi 4,4,1
	li 7,0
	srwi 3,3,1
	addi 4,4,-16
	bl Sbar_IntermissionNumber
	.loc 1 1303 0
	lwz 3,20(31)
	lwz 4,24(31)
	lwz 5,sb_slash@l(29)
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,72
	addi 4,4,-16
	bl Draw_TransPic
	.loc 1 1304 0
	lwz 3,20(31)
	lwz 4,24(31)
	li 6,3
	lwz 5,72(30)
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,80
	addi 4,4,-16
	li 7,0
	bl Sbar_IntermissionNumber
	.loc 1 1306 0
	lwz 4,24(31)
	lwz 3,20(31)
	li 6,3
	lwz 5,84(30)
	srwi 4,4,1
	li 7,0
	srwi 3,3,1
	addi 4,4,24
	bl Sbar_IntermissionNumber
	.loc 1 1307 0
	lwz 3,20(31)
	lwz 4,24(31)
	lwz 5,sb_slash@l(29)
	srwi 3,3,1
	srwi 4,4,1
	addi 3,3,72
	addi 4,4,24
	bl Draw_TransPic
	.loc 1 1308 0
	lwz 3,20(31)
	lwz 4,24(31)
	li 6,3
	.loc 1 1309 0
	lwz 0,36(1)
	.loc 1 1308 0
	srwi 3,3,1
	.loc 1 1309 0
	lwz 27,12(1)
	.loc 1 1308 0
	srwi 4,4,1
	.loc 1 1309 0
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	.loc 1 1308 0
	addi 3,3,80
	.loc 1 1309 0
	lwz 31,28(1)
	.loc 1 1308 0
	addi 4,4,24
	lwz 5,76(30)
	li 7,0
	.loc 1 1309 0
	lwz 30,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.loc 1 1308 0
	b Sbar_IntermissionNumber
.L266:
.LCFI61:
	.cfi_restore_state
	.loc 1 1309 0
	lwz 0,36(1)
	lwz 27,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI62:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.loc 1 1284 0
	b Sbar_DeathmatchOverlay
	.cfi_endproc
.LFE60:
	.size	Sbar_IntermissionOverlay, .-Sbar_IntermissionOverlay
	.align 2
	.globl Sbar_FinaleOverlay
	.type	Sbar_FinaleOverlay, @function
Sbar_FinaleOverlay:
.LFB61:
	.loc 1 1319 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI63:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1324 0
	lis 3,.LC114@ha
	.loc 1 1322 0
	lis 9,scr_copyeverything@ha
	.loc 1 1324 0
	la 3,.LC114@l(3)
	.loc 1 1319 0
	stw 0,12(1)
	.loc 1 1322 0
	li 0,1
	.cfi_offset 65, 4
	stw 0,scr_copyeverything@l(9)
	.loc 1 1324 0
	bl Draw_CachePic
	mr 5,3
.LVL284:
	.loc 1 1325 0
	lis 9,vid+20@ha
	lwz 0,0(5)
	li 4,16
	lwz 3,vid+20@l(9)
.LVL285:
	subf 3,0,3
	srwi 3,3,1
	bl Draw_TransPic
.LVL286:
	.loc 1 1326 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI64:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE61:
	.size	Sbar_FinaleOverlay, .-Sbar_FinaleOverlay
	.comm	scoreboardlines,4,4
	.comm	scoreboardcount,256,4
	.comm	scoreboardbottom,256,4
	.comm	scoreboardtop,256,4
	.comm	scoreboardtext,1280,1
	.comm	fragsort,256,4
	.comm	hsb_items,8,4
	.globl hipweapons
	.comm	hsb_weapons,140,4
	.comm	rsb_teambord,4,4
	.comm	rsb_ammo,12,4
	.comm	rsb_items,8,4
	.comm	rsb_weapons,20,4
	.comm	rsb_invbar,8,4
	.comm	sb_lines,4,4
	.comm	sb_showscores,1,1
	.comm	sb_face_invis_invuln,4,4
	.comm	sb_face_invuln,4,4
	.comm	sb_face_quad,4,4
	.comm	sb_face_invis,4,4
	.comm	sb_faces,56,4
	.comm	sb_items,128,4
	.comm	sb_armor,12,4
	.comm	sb_sigil,16,4
	.comm	sb_ammo,16,4
	.comm	sb_weapons,224,4
	.comm	sb_scorebar,4,4
	.comm	sb_sbar,4,4
	.comm	sb_ibar,4,4
	.comm	sb_slash,4,4
	.comm	sb_colon,4,4
	.comm	sb_nums,88,4
	.comm	sb_updates,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC97:
	.4byte	1114636288
.LC99:
	.4byte	1501560836
.LC102:
	.4byte	1092616192
.LC105:
	.4byte	1073741824
.LC106:
	.4byte	0
.LC107:
	.4byte	1077936128
.LC108:
	.4byte	1088421888
.LC111:
	.4byte	1501560832
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	hipweapons, @object
	.size	hipweapons, 16
hipweapons:
	.long	23
	.long	7
	.long	4
	.long	16
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"num_%i"
	.zero	1
.LC1:
	.string	"anum_%i"
.LC2:
	.string	"num_minus"
	.zero	2
.LC3:
	.string	"anum_minus"
	.zero	1
.LC4:
	.string	"num_colon"
	.zero	2
.LC5:
	.string	"num_slash"
	.zero	2
.LC6:
	.string	"inv_shotgun"
.LC7:
	.string	"inv_sshotgun"
	.zero	3
.LC8:
	.string	"inv_nailgun"
.LC9:
	.string	"inv_snailgun"
	.zero	3
.LC10:
	.string	"inv_rlaunch"
.LC11:
	.string	"inv_srlaunch"
	.zero	3
.LC12:
	.string	"inv_lightng"
.LC13:
	.string	"inv2_shotgun"
	.zero	3
.LC14:
	.string	"inv2_sshotgun"
	.zero	2
.LC15:
	.string	"inv2_nailgun"
	.zero	3
.LC16:
	.string	"inv2_snailgun"
	.zero	2
.LC17:
	.string	"inv2_rlaunch"
	.zero	3
.LC18:
	.string	"inv2_srlaunch"
	.zero	2
.LC19:
	.string	"inv2_lightng"
	.zero	3
.LC20:
	.string	"inva%i_shotgun"
	.zero	1
.LC21:
	.string	"inva%i_sshotgun"
.LC22:
	.string	"inva%i_nailgun"
	.zero	1
.LC23:
	.string	"inva%i_snailgun"
.LC24:
	.string	"inva%i_rlaunch"
	.zero	1
.LC25:
	.string	"inva%i_srlaunch"
.LC26:
	.string	"inva%i_lightng"
	.zero	1
.LC27:
	.string	"sb_shells"
	.zero	2
.LC28:
	.string	"sb_nails"
	.zero	3
.LC29:
	.string	"sb_rocket"
	.zero	2
.LC30:
	.string	"sb_cells"
	.zero	3
.LC31:
	.string	"sb_armor1"
	.zero	2
.LC32:
	.string	"sb_armor2"
	.zero	2
.LC33:
	.string	"sb_armor3"
	.zero	2
.LC34:
	.string	"sb_key1"
.LC35:
	.string	"sb_key2"
.LC36:
	.string	"sb_invis"
	.zero	3
.LC37:
	.string	"sb_invuln"
	.zero	2
.LC38:
	.string	"sb_suit"
.LC39:
	.string	"sb_quad"
.LC40:
	.string	"sb_sigil1"
	.zero	2
.LC41:
	.string	"sb_sigil2"
	.zero	2
.LC42:
	.string	"sb_sigil3"
	.zero	2
.LC43:
	.string	"sb_sigil4"
	.zero	2
.LC44:
	.string	"face1"
	.zero	2
.LC45:
	.string	"face_p1"
.LC46:
	.string	"face2"
	.zero	2
.LC47:
	.string	"face_p2"
.LC48:
	.string	"face3"
	.zero	2
.LC49:
	.string	"face_p3"
.LC50:
	.string	"face4"
	.zero	2
.LC51:
	.string	"face_p4"
.LC52:
	.string	"face5"
	.zero	2
.LC53:
	.string	"face_p5"
.LC54:
	.string	"face_invis"
	.zero	1
.LC55:
	.string	"face_invul2"
.LC56:
	.string	"face_inv2"
	.zero	2
.LC57:
	.string	"face_quad"
	.zero	2
.LC58:
	.string	"+showscores"
.LC59:
	.string	"-showscores"
.LC60:
	.string	"sbar"
	.zero	3
.LC61:
	.string	"ibar"
	.zero	3
.LC62:
	.string	"scorebar"
	.zero	3
.LC63:
	.string	"inv_laser"
	.zero	2
.LC64:
	.string	"inv_mjolnir"
.LC65:
	.string	"inv_gren_prox"
	.zero	2
.LC66:
	.string	"inv_prox_gren"
	.zero	2
.LC67:
	.string	"inv_prox"
	.zero	3
.LC68:
	.string	"inv2_laser"
	.zero	1
.LC69:
	.string	"inv2_mjolnir"
	.zero	3
.LC70:
	.string	"inv2_gren_prox"
	.zero	1
.LC71:
	.string	"inv2_prox_gren"
	.zero	1
.LC72:
	.string	"inv2_prox"
	.zero	2
.LC73:
	.string	"inva%i_laser"
	.zero	3
.LC74:
	.string	"inva%i_mjolnir"
	.zero	1
.LC75:
	.string	"inva%i_gren_prox"
	.zero	3
.LC76:
	.string	"inva%i_prox_gren"
	.zero	3
.LC77:
	.string	"inva%i_prox"
.LC78:
	.string	"sb_wsuit"
	.zero	3
.LC79:
	.string	"sb_eshld"
	.zero	3
.LC80:
	.string	"r_invbar1"
	.zero	2
.LC81:
	.string	"r_invbar2"
	.zero	2
.LC82:
	.string	"r_lava"
	.zero	1
.LC83:
	.string	"r_superlava"
.LC84:
	.string	"r_gren"
	.zero	1
.LC85:
	.string	"r_multirock"
.LC86:
	.string	"r_plasma"
	.zero	3
.LC87:
	.string	"r_shield1"
	.zero	2
.LC88:
	.string	"r_agrav1"
	.zero	3
.LC89:
	.string	"r_teambord"
	.zero	1
.LC90:
	.string	"r_ammolava"
	.zero	1
.LC91:
	.string	"r_ammomulti"
.LC92:
	.string	"r_ammoplasma"
	.zero	3
.LC93:
	.string	"%3i %s"
	.zero	1
.LC94:
	.string	"Monsters:%3i /%3i"
	.zero	2
.LC95:
	.string	"Secrets :%3i /%3i"
	.zero	2
.LC100:
	.string	"Time :%3i:%i%i"
	.zero	1
.LC103:
	.string	"%3i"
.LC109:
	.string	"gfx/ranking.lmp"
.LC112:
	.string	"gfx/complete.lmp"
	.zero	3
.LC113:
	.string	"gfx/inter.lmp"
	.zero	2
.LC114:
	.string	"gfx/finale.lmp"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/wad.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 17 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/draw.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/screen.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/server.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b2d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF454
	.byte	0x1
	.4byte	.LASF455
	.4byte	.LASF456
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x8
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x122
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x132
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xb7
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x15d
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x16d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x17d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1a2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.byte	0xa8
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x17d
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1c3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1e3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1a
	.4byte	0x8f
	.uleb128 0x8
	.byte	0x44
	.byte	0x4
	.byte	0x22
	.4byte	0x2e5
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x24
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x25
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x26
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2e
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0x34
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x4
	.byte	0x36
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x317
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x72
	.4byte	0x2fc
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x6
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x6
	.byte	0x17
	.4byte	0x338
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x348
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x3f9
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xf2
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf9
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0xfe
	.4byte	0x348
	.uleb128 0x8
	.byte	0xc
	.byte	0x8
	.byte	0x27
	.4byte	0x437
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2a
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x8
	.byte	0x2b
	.4byte	0x404
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x14
	.byte	0x9
	.byte	0x38
	.4byte	0x4a3
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x3d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x9
	.byte	0x3f
	.4byte	0x4a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x442
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x9
	.byte	0x40
	.4byte	0x442
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x4c5
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x4d5
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x4e5
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x44
	.byte	0xa
	.byte	0x23
	.4byte	0x50e
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x25
	.4byte	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xa
	.byte	0x26
	.4byte	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x10
	.byte	0xb
	.byte	0x1e
	.4byte	0x553
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0x20
	.4byte	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x21
	.4byte	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x22
	.4byte	0x874
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xb
	.byte	0x23
	.4byte	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x40
	.byte	0xc
	.byte	0xca
	.4byte	0x5fa
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xc
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xc
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xc
	.byte	0xd0
	.4byte	0x1524
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xc
	.byte	0xd2
	.4byte	0xbd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xc
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xc
	.byte	0xd6
	.4byte	0x154f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xc
	.byte	0xd8
	.4byte	0x1555
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF86
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
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xc
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xc
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x553
	.uleb128 0x5
	.byte	0x4
	.4byte	0x50e
	.uleb128 0xf
	.4byte	.LASF89
	.2byte	0x248
	.byte	0xb
	.byte	0x27
	.4byte	0x874
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xb
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0xb
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xb
	.byte	0x2d
	.4byte	0x3f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xb
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xb
	.byte	0x30
	.4byte	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0xb
	.byte	0x31
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xb
	.byte	0x32
	.4byte	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xb
	.byte	0x33
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xb
	.byte	0x34
	.4byte	0xb4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xb
	.byte	0x35
	.4byte	0x600
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xb
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xb
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xb
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xb
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xb
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xb
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xb
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xb
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xb
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xb
	.byte	0x44
	.4byte	0xbd2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xb
	.byte	0x48
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xb
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xb
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xb
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xb
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xb
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0xb
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xb
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0xb
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xb
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0xb
	.byte	0x57
	.4byte	0xcf2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xb
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xb
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xb
	.byte	0x5c
	.4byte	0xcf8
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0xb
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xb
	.byte	0x60
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0xb
	.byte	0x61
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0xb
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0xb
	.byte	0x63
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xb
	.byte	0x64
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x606
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0xb
	.byte	0x24
	.4byte	0x50e
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x89b
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.2byte	0x1a4
	.byte	0xc
	.2byte	0x180
	.4byte	0xb4f
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xc
	.2byte	0x182
	.4byte	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x185
	.4byte	0x1898
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x187
	.4byte	0x1137
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xc
	.2byte	0x18e
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x18e
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x195
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xc
	.2byte	0x195
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x19d
	.4byte	0x18a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xc
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xc
	.2byte	0x1a0
	.4byte	0x1507
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xc
	.2byte	0x1a3
	.4byte	0x18aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xc
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xc
	.2byte	0x1a6
	.4byte	0x18b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xc
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xc
	.2byte	0x1a9
	.4byte	0x18b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xc
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x1ac
	.4byte	0x18bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xc
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xc
	.2byte	0x1af
	.4byte	0x1513
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xc
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xc
	.2byte	0x1b2
	.4byte	0x155b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xc
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xc
	.2byte	0x1b5
	.4byte	0x18c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xc
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xc
	.2byte	0x1b8
	.4byte	0x15c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0xc
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xc
	.2byte	0x1bb
	.4byte	0x1555
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xc
	.2byte	0x1bd
	.4byte	0x18c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xc
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xc
	.2byte	0x1c0
	.4byte	0x18d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xc
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xc
	.2byte	0x1c9
	.4byte	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x89b
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0x34
	.byte	0xc
	.byte	0xb6
	.4byte	0xbd2
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xc
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xc
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xc
	.byte	0xbc
	.4byte	0x1524
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xc
	.byte	0xbe
	.4byte	0xbd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xc
	.byte	0xc1
	.4byte	0x1507
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xc
	.byte	0xc2
	.4byte	0x1534
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0xc
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xc
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb55
	.uleb128 0x12
	.4byte	.LASF162
	.4byte	0x20030
	.byte	0xd
	.2byte	0xa09
	.4byte	0xcf2
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xd
	.2byte	0xa0f
	.4byte	0xcf2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xd
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xd
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xd
	.2byte	0xa17
	.4byte	0x1ca7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xd
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xd
	.2byte	0xa1d
	.4byte	0xdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xd
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xd
	.2byte	0xa21
	.4byte	0x1ca7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0xd
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0xd
	.2byte	0xa2b
	.4byte	0x1cb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0xd
	.2byte	0xa2d
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0xd
	.2byte	0xa2f
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0xd
	.2byte	0xa31
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xd
	.2byte	0xa33
	.4byte	0x1cf8
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0xd
	.2byte	0xa37
	.4byte	0x1d09
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbd8
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xd08
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF180
	.byte	0xb
	.byte	0x66
	.4byte	0x606
	.uleb128 0x8
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.4byte	0xd54
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xe
	.byte	0x18
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0xe
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0xe
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xe
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0xe
	.byte	0x21
	.4byte	0xd13
	.uleb128 0x13
	.2byte	0x402c
	.byte	0xe
	.byte	0x29
	.4byte	0xdaf
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xe
	.byte	0x2b
	.4byte	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0xe
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0xe
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xe
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xe
	.byte	0x2f
	.4byte	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF190
	.byte	0xe
	.byte	0x30
	.4byte	0xd5f
	.uleb128 0x8
	.byte	0x10
	.byte	0xe
	.byte	0x32
	.4byte	0xddf
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xe
	.byte	0x34
	.4byte	0xddf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xe
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xdef
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0xe
	.byte	0x36
	.4byte	0xdba
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd08
	.uleb128 0x13
	.2byte	0xce8
	.byte	0xe
	.byte	0x9a
	.4byte	0x109b
	.uleb128 0x9
	.4byte	.LASF194
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
	.4byte	0xd54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xe
	.byte	0xa3
	.4byte	0x109b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xe
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xe
	.byte	0xa5
	.4byte	0x10ab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xe
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xe
	.byte	0xa8
	.4byte	0x10bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xe
	.byte	0xa9
	.4byte	0x10bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xe
	.byte	0xaf
	.4byte	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xe
	.byte	0xb1
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xe
	.byte	0xb3
	.4byte	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xe
	.byte	0xb5
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xe
	.byte	0xb7
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xe
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xe
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xe
	.byte	0xbc
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xe
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xe
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xe
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xe
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xe
	.byte	0xc3
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xe
	.byte	0xc4
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xe
	.byte	0xc5
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xe
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xe
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xe
	.byte	0xca
	.4byte	0x10cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xe
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xe
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xe
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xe
	.byte	0xd7
	.4byte	0x10db
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xe
	.byte	0xd8
	.4byte	0x10eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xe
	.byte	0xda
	.4byte	0x1101
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xe
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xe
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xe
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xe
	.byte	0xe0
	.4byte	0xb4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xe
	.byte	0xe1
	.4byte	0x600
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xe
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xe
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xe
	.byte	0xe4
	.4byte	0xd08
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xe
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xe
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xe
	.byte	0xe9
	.4byte	0x1111
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xe
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x10ab
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x10bb
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xdef
	.4byte	0x10cb
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x10db
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xb4f
	.4byte	0x10eb
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0x10fb
	.4byte	0x10fb
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4e5
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x1111
	.uleb128 0xb
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdaf
	.uleb128 0x6
	.4byte	.LASF236
	.byte	0xe
	.byte	0xf3
	.4byte	0xe00
	.uleb128 0x14
	.byte	0x4
	.byte	0xf
	.byte	0x34
	.4byte	0x1137
	.uleb128 0x15
	.4byte	.LASF237
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF238
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF239
	.byte	0xf
	.byte	0x34
	.4byte	0x1122
	.uleb128 0x8
	.byte	0x4
	.byte	0xf
	.byte	0x64
	.4byte	0x1165
	.uleb128 0xe
	.string	"v"
	.byte	0xf
	.byte	0x65
	.4byte	0x1165
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xf
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1175
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF241
	.byte	0xf
	.byte	0x67
	.4byte	0x1142
	.uleb128 0x8
	.byte	0xc
	.byte	0xc
	.byte	0x3b
	.4byte	0x1197
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0xc
	.byte	0x3d
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF243
	.byte	0xc
	.byte	0x3e
	.4byte	0x1180
	.uleb128 0xc
	.4byte	.LASF244
	.byte	0x14
	.byte	0xc
	.byte	0x52
	.4byte	0x11f5
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0xc
	.byte	0x54
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xc
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0xc
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF247
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
	.4byte	0x11f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1205
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF248
	.byte	0xc
	.byte	0x59
	.4byte	0x11a2
	.uleb128 0xc
	.4byte	.LASF249
	.byte	0x48
	.byte	0xc
	.byte	0x5b
	.4byte	0x12c5
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xc
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF250
	.byte	0xc
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0xc
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xc
	.byte	0x61
	.4byte	0x13ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xc
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0xc
	.byte	0x64
	.4byte	0x13f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xc
	.byte	0x65
	.4byte	0x13f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xc
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF259
	.byte	0x5c
	.byte	0xc
	.byte	0x96
	.4byte	0x13ea
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xc
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xc
	.byte	0x9a
	.4byte	0x1507
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xc
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0xc
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xc
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0xc
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF262
	.byte	0xc
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xc
	.byte	0xa5
	.4byte	0x150d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xc
	.byte	0xa6
	.4byte	0x13ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xc
	.byte	0xa7
	.4byte	0x13ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0xc
	.byte	0xa9
	.4byte	0x1513
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xc
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xc
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0xc
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xc
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0xc
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0xc
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xc
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12c5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1210
	.uleb128 0x6
	.4byte	.LASF272
	.byte	0xc
	.byte	0x67
	.4byte	0x1210
	.uleb128 0x8
	.byte	0x8
	.byte	0xc
	.byte	0x78
	.4byte	0x1424
	.uleb128 0xe
	.string	"v"
	.byte	0xc
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0xc
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF274
	.byte	0xc
	.byte	0x7c
	.4byte	0x1401
	.uleb128 0x8
	.byte	0x2c
	.byte	0xc
	.byte	0x7e
	.4byte	0x1470
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0xc
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0xc
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0xc
	.byte	0x82
	.4byte	0x1470
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xc
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13f6
	.uleb128 0x6
	.4byte	.LASF278
	.byte	0xc
	.byte	0x84
	.4byte	0x142f
	.uleb128 0xc
	.4byte	.LASF279
	.byte	0x1c
	.byte	0xc
	.byte	0x8a
	.4byte	0x14f0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x8c
	.4byte	0x14f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0xc
	.byte	0x8d
	.4byte	0x14f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0xc
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xc
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xc
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0xc
	.byte	0x92
	.4byte	0x14f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0xc
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1481
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f0
	.uleb128 0x6
	.4byte	.LASF284
	.byte	0xc
	.byte	0x94
	.4byte	0x1481
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1205
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14fc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1476
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xc
	.byte	0xb4
	.4byte	0x12c5
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1534
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xbd2
	.4byte	0x1544
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF286
	.byte	0xc
	.byte	0xc6
	.4byte	0xb55
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x155b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1519
	.uleb128 0x6
	.4byte	.LASF287
	.byte	0xc
	.byte	0xdd
	.4byte	0x553
	.uleb128 0x8
	.byte	0x28
	.byte	0xc
	.byte	0xe0
	.4byte	0x15c9
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0xc
	.byte	0xe2
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xc
	.byte	0xe3
	.4byte	0x1507
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF288
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF289
	.byte	0xc
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF290
	.byte	0xc
	.byte	0xe6
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF291
	.byte	0xc
	.byte	0xe7
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF292
	.byte	0xc
	.byte	0xe8
	.4byte	0x156c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0xc
	.2byte	0x11e
	.4byte	0x1653
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0xc
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xc
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xc
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0xc
	.2byte	0x123
	.4byte	0x1175
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF297
	.byte	0xc
	.2byte	0x124
	.4byte	0x1175
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0xc
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xc
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF298
	.byte	0xc
	.2byte	0x127
	.4byte	0x15e0
	.uleb128 0x18
	.2byte	0x53c
	.byte	0xc
	.2byte	0x142
	.4byte	0x1844
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0xc
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0xc
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF301
	.byte	0xc
	.2byte	0x145
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF302
	.byte	0xc
	.2byte	0x146
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF303
	.byte	0xc
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF304
	.byte	0xc
	.2byte	0x148
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0xc
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0xc
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xc
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0xc
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xc
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x14f
	.4byte	0x1137
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0xc
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xc
	.2byte	0x153
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x153
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xc
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xc
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF311
	.byte	0xc
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF312
	.byte	0xc
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xc
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xc
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0xc
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xc
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0xc
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xc
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0xc
	.2byte	0x15e
	.4byte	0x1844
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xc
	.2byte	0x15f
	.4byte	0x1844
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xc
	.2byte	0x160
	.4byte	0x109b
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xc
	.2byte	0x161
	.4byte	0x185a
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x185a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x1653
	.4byte	0x186a
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF320
	.byte	0xc
	.2byte	0x162
	.4byte	0x165f
	.uleb128 0x19
	.byte	0x4
	.byte	0xc
	.2byte	0x172
	.4byte	0x1898
	.uleb128 0x15
	.4byte	.LASF321
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF322
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF323
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF324
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF325
	.byte	0xc
	.2byte	0x172
	.4byte	0x1876
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1561
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1197
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1424
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1544
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x15cf
	.4byte	0x18d8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1470
	.uleb128 0x8
	.byte	0x10
	.byte	0x10
	.byte	0x16
	.4byte	0x1903
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x10
	.byte	0x18
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0x10
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF326
	.byte	0x10
	.byte	0x1a
	.4byte	0x18de
	.uleb128 0x1a
	.4byte	.LASF327
	.byte	0x14
	.byte	0xd
	.2byte	0x981
	.4byte	0x193a
	.uleb128 0x11
	.4byte	.LASF328
	.byte	0xd
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xd
	.2byte	0x985
	.4byte	0x193a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x190e
	.uleb128 0x17
	.4byte	.LASF329
	.byte	0xd
	.2byte	0x987
	.4byte	0x190e
	.uleb128 0x1b
	.4byte	.LASF373
	.byte	0x4
	.byte	0xd
	.2byte	0x98d
	.4byte	0x198a
	.uleb128 0x1c
	.4byte	.LASF330
	.byte	0xd
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF331
	.byte	0xd
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1c
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x993
	.4byte	0x322
	.uleb128 0x1c
	.4byte	.LASF333
	.byte	0xd
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF334
	.byte	0xd
	.2byte	0x997
	.4byte	0x194c
	.uleb128 0x10
	.4byte	.LASF335
	.2byte	0x890
	.byte	0xd
	.2byte	0x99d
	.4byte	0x1b4a
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xd
	.2byte	0x99f
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF336
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xd
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF338
	.byte	0xd
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF339
	.byte	0xd
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF340
	.byte	0xd
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF341
	.byte	0xd
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xd
	.2byte	0x9b1
	.4byte	0x18aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"vis"
	.byte	0xd
	.2byte	0x9b3
	.4byte	0x1b4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF342
	.byte	0xd
	.2byte	0x9b5
	.4byte	0x1b4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF343
	.byte	0xd
	.2byte	0x9b7
	.4byte	0x1555
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x9b9
	.4byte	0x18c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF345
	.byte	0xd
	.2byte	0x9bb
	.4byte	0x15da
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF346
	.byte	0xd
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF347
	.byte	0xd
	.2byte	0x9bf
	.4byte	0x1b5b
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xd
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF349
	.byte	0xd
	.2byte	0x9c5
	.4byte	0xdfa
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x9c7
	.4byte	0x1940
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF351
	.byte	0xd
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xd
	.2byte	0x9cb
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF352
	.byte	0xd
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF353
	.byte	0xd
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF354
	.byte	0xd
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF355
	.byte	0xd
	.2byte	0x9d3
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1b5b
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x198a
	.uleb128 0x17
	.4byte	.LASF356
	.byte	0xd
	.2byte	0x9d5
	.4byte	0x1996
	.uleb128 0x12
	.4byte	.LASF357
	.4byte	0x1e864
	.byte	0xd
	.2byte	0x9db
	.4byte	0x1ca7
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF358
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF359
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF360
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF361
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x9e5
	.4byte	0xdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF363
	.byte	0xd
	.2byte	0x9e7
	.4byte	0x1ca7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x9e9
	.4byte	0x1cad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF365
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF366
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF368
	.byte	0xd
	.2byte	0x9f3
	.4byte	0x1cb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF369
	.byte	0xd
	.2byte	0x9f5
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF370
	.byte	0xd
	.2byte	0x9f7
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xd
	.2byte	0x9f9
	.4byte	0x1cb3
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF371
	.byte	0xd
	.2byte	0x9fb
	.4byte	0x1cca
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xd
	.2byte	0x9ff
	.4byte	0x1cdb
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xd
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x186a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b61
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x1cca
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x1cdb
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1cec
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF372
	.byte	0xd
	.2byte	0xa05
	.4byte	0x1b6d
	.uleb128 0xa
	.4byte	0x1903
	.4byte	0x1d09
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1cec
	.uleb128 0x1b
	.4byte	.LASF374
	.byte	0x4
	.byte	0x11
	.2byte	0x490
	.4byte	0x1d6f
	.uleb128 0x1e
	.string	"U8"
	.byte	0x11
	.2byte	0x492
	.4byte	0x1d6f
	.uleb128 0x1e
	.string	"S8"
	.byte	0x11
	.2byte	0x493
	.4byte	0x1d74
	.uleb128 0x1e
	.string	"U16"
	.byte	0x11
	.2byte	0x494
	.4byte	0x1d79
	.uleb128 0x1e
	.string	"S16"
	.byte	0x11
	.2byte	0x495
	.4byte	0x1d7e
	.uleb128 0x1e
	.string	"U32"
	.byte	0x11
	.2byte	0x496
	.4byte	0x1d83
	.uleb128 0x1e
	.string	"S32"
	.byte	0x11
	.2byte	0x497
	.4byte	0x1d88
	.uleb128 0x1e
	.string	"F32"
	.byte	0x11
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
	.uleb128 0x17
	.4byte	.LASF375
	.byte	0x11
	.2byte	0x499
	.4byte	0x1d0f
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.byte	0x1
	.4byte	0x1dc9
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x104
	.4byte	0x41
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x104
	.4byte	0x41
	.uleb128 0x20
	.string	"pic"
	.byte	0x1
	.2byte	0x104
	.4byte	0x1dc9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x437
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x120
	.byte	0x1
	.byte	0x1
	.4byte	0x1dff
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x120
	.4byte	0x41
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x120
	.4byte	0x41
	.uleb128 0x20
	.string	"num"
	.byte	0x1
	.2byte	0x120
	.4byte	0x41
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.byte	0x1
	.4byte	0x1e2f
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x41
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x41
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x66
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF457
	.byte	0x1
	.2byte	0x1a0
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x1e4d
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x41
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF379
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF380
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF381
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF382
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST0
	.4byte	0x1eb0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x71
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x25
	.4byte	0x1d99
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST2
	.4byte	0x1f05
	.uleb128 0x26
	.4byte	0x1da8
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	0x1db2
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	0x1dbc
	.4byte	.LLST5
	.uleb128 0x27
	.4byte	0x1d99
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x1
	.2byte	0x104
	.uleb128 0x28
	.4byte	0x1dbc
	.uleb128 0x26
	.4byte	0x1db2
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	0x1da8
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x111
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST7
	.4byte	0x1f4c
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.2byte	0x111
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.2byte	0x111
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x2a
	.string	"pic"
	.byte	0x1
	.2byte	0x111
	.4byte	0x1dc9
	.4byte	.LLST10
	.byte	0
	.uleb128 0x25
	.4byte	0x1dcf
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST11
	.4byte	0x1fa5
	.uleb128 0x26
	.4byte	0x1dde
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	0x1de8
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	0x1df2
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	0x1dcf
	.4byte	.LBB29
	.4byte	.LBE29
	.byte	0x1
	.2byte	0x120
	.uleb128 0x28
	.4byte	0x1df2
	.uleb128 0x26
	.4byte	0x1de8
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	0x1dde
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x1dff
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST17
	.4byte	0x1ffa
	.uleb128 0x26
	.4byte	0x1e0e
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	0x1e18
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	0x1e22
	.4byte	.LLST20
	.uleb128 0x27
	.4byte	0x1dff
	.4byte	.LBB33
	.4byte	.LBE33
	.byte	0x1
	.2byte	0x12d
	.uleb128 0x28
	.4byte	0x1e22
	.uleb128 0x26
	.4byte	0x1e18
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0x1e0e
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF458
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2066
	.uleb128 0x2a
	.string	"num"
	.byte	0x1
	.2byte	0x13a
	.4byte	0x41
	.4byte	.LLST22
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.2byte	0x13a
	.4byte	0x66
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"str"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x66
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x13d
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x2d
	.string	"dig"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x41
	.4byte	.LLST25
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x15e
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST26
	.4byte	0x210a
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x41
	.4byte	.LLST27
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x2a
	.string	"num"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x2f
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x15e
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x2f
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x15e
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.2byte	0x160
	.4byte	0x210a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x1
	.2byte	0x161
	.4byte	0x66
	.4byte	.LLST32
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x162
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x2e
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x162
	.4byte	0x41
	.4byte	.LLST34
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x211a
	.uleb128 0xb
	.4byte	0x48
	.byte	0xb
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x187
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x215a
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.4byte	.LLST35
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.4byte	.LLST36
	.byte	0
	.uleb128 0x33
	.4byte	0x1e2f
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2178
	.uleb128 0x26
	.4byte	0x1e42
	.4byte	.LLST37
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST38
	.4byte	0x2215
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST40
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x41
	.4byte	.LLST41
	.uleb128 0x2e
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x41
	.4byte	.LLST42
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1111
	.4byte	.LLST43
	.uleb128 0x34
	.4byte	0x1e2f
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x21fa
	.uleb128 0x26
	.4byte	0x1e42
	.4byte	.LLST41
	.byte	0
	.uleb128 0x27
	.4byte	0x1e2f
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.2byte	0x1be
	.uleb128 0x26
	.4byte	0x1e42
	.4byte	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x1c9
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST46
	.4byte	0x228e
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x228e
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x41
	.4byte	.LLST47
	.uleb128 0x2e
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x41
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x41
	.4byte	.LLST49
	.uleb128 0x2e
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x41
	.4byte	.LLST50
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x41
	.4byte	.LLST51
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x229e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x222
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST52
	.4byte	0x230d
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x224
	.4byte	0x41
	.4byte	.LLST53
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.2byte	0x225
	.4byte	0x230d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x226
	.4byte	0x7a
	.4byte	.LLST54
	.uleb128 0x2e
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x227
	.4byte	0x41
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2e
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x251
	.4byte	0x41
	.4byte	.LLST56
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x231d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x2fe
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST57
	.4byte	0x23d6
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x300
	.4byte	0x41
	.4byte	.LLST58
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.2byte	0x300
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x300
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x301
	.4byte	0x41
	.4byte	.LLST61
	.uleb128 0x36
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x301
	.4byte	0x41
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x302
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x302
	.4byte	0x41
	.4byte	.LLST63
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x302
	.4byte	0x41
	.4byte	.LLST64
	.uleb128 0x2e
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x303
	.4byte	0x41
	.4byte	.LLST65
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.2byte	0x304
	.4byte	0x210a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x305
	.4byte	0x1111
	.4byte	.LLST66
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x33c
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST67
	.4byte	0x249a
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x33e
	.4byte	0x41
	.4byte	.LLST68
	.uleb128 0x2e
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x33e
	.4byte	0x41
	.4byte	.LLST69
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x347
	.4byte	0x41
	.4byte	.LLST70
	.uleb128 0x2e
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x347
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x2e
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x348
	.4byte	0x41
	.4byte	.LLST72
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.2byte	0x349
	.4byte	0x210a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x34a
	.4byte	0x1111
	.4byte	.LLST73
	.uleb128 0x34
	.4byte	0x1e2f
	.4byte	.LBB47
	.4byte	.LBE47
	.byte	0x1
	.2byte	0x350
	.4byte	0x247e
	.uleb128 0x26
	.4byte	0x1e42
	.4byte	.LLST74
	.byte	0
	.uleb128 0x27
	.4byte	0x1e2f
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.2byte	0x351
	.uleb128 0x26
	.4byte	0x1e42
	.4byte	.LLST75
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x423
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST76
	.4byte	0x253e
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST77
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST78
	.uleb128 0x2a
	.string	"num"
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST79
	.uleb128 0x2f
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST80
	.uleb128 0x2f
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST81
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.2byte	0x425
	.4byte	0x210a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x1
	.2byte	0x426
	.4byte	0x66
	.4byte	.LLST82
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x427
	.4byte	0x41
	.4byte	.LLST83
	.uleb128 0x2e
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x427
	.4byte	0x41
	.4byte	.LLST84
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x443
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST85
	.4byte	0x25f7
	.uleb128 0x2d
	.string	"pic"
	.byte	0x1
	.2byte	0x445
	.4byte	0x1dc9
	.4byte	.LLST86
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x446
	.4byte	0x41
	.4byte	.LLST87
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.2byte	0x446
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x446
	.4byte	0x41
	.4byte	.LLST89
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x447
	.4byte	0x41
	.4byte	.LLST90
	.uleb128 0x36
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x447
	.4byte	0x41
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.2byte	0x448
	.4byte	0x41
	.4byte	.LLST91
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x448
	.4byte	0x41
	.4byte	.LLST92
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x448
	.4byte	0x41
	.4byte	.LLST93
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.2byte	0x449
	.4byte	0x210a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x44a
	.4byte	0x1111
	.4byte	.LLST94
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x1e7
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST95
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x494
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST96
	.4byte	0x26c1
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x496
	.4byte	0x41
	.4byte	.LLST97
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.2byte	0x496
	.4byte	0x41
	.4byte	.LLST98
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.2byte	0x496
	.4byte	0x41
	.4byte	.LLST99
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.2byte	0x497
	.4byte	0x41
	.4byte	.LLST100
	.uleb128 0x36
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x497
	.4byte	0x41
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.2byte	0x498
	.4byte	0x48
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.2byte	0x498
	.4byte	0x48
	.4byte	.LLST101
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x498
	.4byte	0x48
	.4byte	.LLST102
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.2byte	0x499
	.4byte	0x210a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x1111
	.4byte	.LLST103
	.uleb128 0x2e
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x49b
	.4byte	0x41
	.4byte	.LLST104
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x39f
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST105
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x4f9
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST106
	.4byte	0x2722
	.uleb128 0x2d
	.string	"pic"
	.byte	0x1
	.2byte	0x4fb
	.4byte	0x1dc9
	.4byte	.LLST107
	.uleb128 0x2d
	.string	"dig"
	.byte	0x1
	.2byte	0x4fc
	.4byte	0x41
	.4byte	.LLST108
	.uleb128 0x2d
	.string	"num"
	.byte	0x1
	.2byte	0x4fd
	.4byte	0x41
	.4byte	.LLST109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x526
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST110
	.4byte	0x274d
	.uleb128 0x2d
	.string	"pic"
	.byte	0x1
	.2byte	0x528
	.4byte	0x1dc9
	.4byte	.LLST111
	.byte	0
	.uleb128 0x38
	.4byte	.LASF410
	.byte	0x2
	.byte	0xc0
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF411
	.byte	0x2
	.byte	0xc0
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"vid"
	.byte	0x4
	.byte	0x38
	.4byte	0x2f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF412
	.byte	0x12
	.byte	0x18
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF413
	.byte	0x13
	.byte	0x25
	.4byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF414
	.byte	0x13
	.byte	0x28
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.4byte	.LASF415
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_lines
	.uleb128 0x38
	.4byte	.LASF416
	.byte	0x13
	.byte	0x35
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"cl"
	.byte	0xe
	.2byte	0x11b
	.4byte	0x1117
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF417
	.byte	0x14
	.byte	0xc7
	.4byte	0x4a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF418
	.byte	0xd
	.2byte	0x300
	.4byte	0x4a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF419
	.byte	0xd
	.2byte	0xc2c
	.4byte	0x155b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x3c
	.4byte	.LASF420
	.byte	0x11
	.2byte	0x548
	.4byte	0x2803
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	0x2808
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d8d
	.uleb128 0x3a
	.4byte	.LASF421
	.byte	0x1
	.byte	0x19
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_updates
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x2836
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0xa
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF422
	.byte	0x1
	.byte	0x1c
	.4byte	0x2820
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_nums
	.uleb128 0x3a
	.4byte	.LASF423
	.byte	0x1
	.byte	0x1d
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_colon
	.uleb128 0x3a
	.4byte	.LASF424
	.byte	0x1
	.byte	0x1d
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_slash
	.uleb128 0x3a
	.4byte	.LASF425
	.byte	0x1
	.byte	0x1e
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_ibar
	.uleb128 0x3a
	.4byte	.LASF426
	.byte	0x1
	.byte	0x1f
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_sbar
	.uleb128 0x3a
	.4byte	.LASF427
	.byte	0x1
	.byte	0x20
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_scorebar
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x28b8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF428
	.byte	0x1
	.byte	0x22
	.4byte	0x28a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_weapons
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x28da
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF429
	.byte	0x1
	.byte	0x23
	.4byte	0x28ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_ammo
	.uleb128 0x3a
	.4byte	.LASF430
	.byte	0x1
	.byte	0x24
	.4byte	0x28ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_sigil
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x290e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF431
	.byte	0x1
	.byte	0x25
	.4byte	0x28fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_armor
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x2930
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF432
	.byte	0x1
	.byte	0x26
	.4byte	0x2920
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_items
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x2958
	.uleb128 0xb
	.4byte	0x48
	.byte	0x6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF433
	.byte	0x1
	.byte	0x28
	.4byte	0x2942
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_faces
	.uleb128 0x3a
	.4byte	.LASF434
	.byte	0x1
	.byte	0x2a
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_face_invis
	.uleb128 0x3a
	.4byte	.LASF435
	.byte	0x1
	.byte	0x2b
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_face_quad
	.uleb128 0x3a
	.4byte	.LASF436
	.byte	0x1
	.byte	0x2c
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_face_invuln
	.uleb128 0x3a
	.4byte	.LASF437
	.byte	0x1
	.byte	0x2d
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_face_invis_invuln
	.uleb128 0x3a
	.4byte	.LASF438
	.byte	0x1
	.byte	0x2f
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sb_showscores
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x29d4
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF439
	.byte	0x1
	.byte	0x33
	.4byte	0x29c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rsb_invbar
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x29f6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x4
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF440
	.byte	0x1
	.byte	0x34
	.4byte	0x29e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rsb_weapons
	.uleb128 0x3a
	.4byte	.LASF441
	.byte	0x1
	.byte	0x35
	.4byte	0x29c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rsb_items
	.uleb128 0x3a
	.4byte	.LASF442
	.byte	0x1
	.byte	0x36
	.4byte	0x28fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rsb_ammo
	.uleb128 0x3a
	.4byte	.LASF443
	.byte	0x1
	.byte	0x37
	.4byte	0x1dc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rsb_teambord
	.uleb128 0xa
	.4byte	0x1dc9
	.4byte	0x2a54
	.uleb128 0xb
	.4byte	0x48
	.byte	0x6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x4
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF444
	.byte	0x1
	.byte	0x3a
	.4byte	0x2a3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hsb_weapons
	.uleb128 0x3a
	.4byte	.LASF445
	.byte	0x1
	.byte	0x3c
	.4byte	0x132
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hipweapons
	.uleb128 0x3a
	.4byte	.LASF446
	.byte	0x1
	.byte	0x3e
	.4byte	0x29c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hsb_items
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x2a9a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x17a
	.4byte	0x2a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fragsort
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x2ac3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x13
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x17c
	.4byte	0x2aad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scoreboardtext
	.uleb128 0x3d
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x17d
	.4byte	0x2a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scoreboardtop
	.uleb128 0x3d
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scoreboardbottom
	.uleb128 0x3d
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x17f
	.4byte	0x2a8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scoreboardcount
	.uleb128 0x3d
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x180
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scoreboardlines
	.uleb128 0x3c
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x399
	.4byte	0x4a9
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI16-.Ltext0
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
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-1-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL62-1-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL62-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x3
	.4byte	fragsort
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 40
	.byte	0x6
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x9
	.byte	0x8e
	.sleb128 40
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x9
	.byte	0x8e
	.sleb128 40
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x9
	.byte	0xf6
	.byte	0x1e
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 0
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL111-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 0
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x32
	.byte	0x24
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 0
	.4byte	.LVL129-1-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x4
	.byte	0x79
	.sleb128 40
	.byte	0x32
	.byte	0x24
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-1-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x32
	.byte	0x24
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-1-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 272
	.4byte	.LVL145-1-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x32
	.byte	0x24
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x32
	.byte	0x24
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 256
	.4byte	.LVL153-1-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 260
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 276
	.4byte	.LVL160-1-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 280
	.4byte	.LVL164-1-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-1-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x32
	.byte	0x24
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x47
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL188-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x47
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x2
	.byte	0x8b
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x8
	.byte	0x8a
	.sleb128 3296
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL217-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217-1-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL220-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL220-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL208-1-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL208-1-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL220-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL238-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 0
	.4byte	.LVL238-1-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	scoreboardlines
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-1-.Ltext0
	.2byte	0x2
	.byte	0x8b
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL238-1-.Ltext0
	.2byte	0x8
	.byte	0x8a
	.sleb128 3296
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL238-1-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL272-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL265-1-.Ltext0
	.2byte	0x2
	.byte	0x8b
	.sleb128 0
	.4byte	.LVL265-1-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL272-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	scoreboardlines
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0xb
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x3
	.4byte	sb_lines
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL265-1-.Ltext0
	.2byte	0x8
	.byte	0x89
	.sleb128 3296
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL265-1-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL272-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI62-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI64-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-1-.Ltext0
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"compressed_vis"
.LASF373:
	.string	"lightcmd_u"
.LASF421:
	.string	"sb_updates"
.LASF219:
	.string	"oldtime"
.LASF73:
	.string	"efrag_s"
.LASF120:
	.string	"efrag_t"
.LASF184:
	.string	"upmove"
.LASF160:
	.string	"plane"
.LASF376:
	.string	"Sbar_DrawPic"
.LASF295:
	.string	"interval"
.LASF121:
	.string	"model_s"
.LASF129:
	.string	"clipmins"
.LASF276:
	.string	"mipadjust"
.LASF179:
	.string	"lightinstant"
.LASF303:
	.string	"boundingradius"
.LASF136:
	.string	"planes"
.LASF202:
	.string	"mvelocity"
.LASF377:
	.string	"Sbar_DrawCharacter"
.LASF320:
	.string	"aliashdr_t"
.LASF323:
	.string	"mod_alias"
.LASF141:
	.string	"edges"
.LASF161:
	.string	"firstsurface"
.LASF385:
	.string	"Sbar_DrawNum"
.LASF177:
	.string	"binomials"
.LASF164:
	.string	"lockframe"
.LASF337:
	.string	"brightness"
.LASF105:
	.string	"frame_start_time"
.LASF418:
	.string	"gl_wireframe"
.LASF143:
	.string	"nodes"
.LASF28:
	.string	"buffer"
.LASF79:
	.string	"contents"
.LASF70:
	.string	"cvar_t"
.LASF149:
	.string	"surfedges"
.LASF69:
	.string	"next"
.LASF300:
	.string	"version"
.LASF370:
	.string	"tshalfangles"
.LASF169:
	.string	"lastblend"
.LASF194:
	.string	"movemessages"
.LASF315:
	.string	"texcoords"
.LASF357:
	.string	"aliaslightinstant_s"
.LASF365:
	.string	"lightpos"
.LASF115:
	.string	"origin1"
.LASF116:
	.string	"origin2"
.LASF226:
	.string	"gametype"
.LASF255:
	.string	"anim_max"
.LASF61:
	.string	"qpic_t"
.LASF185:
	.string	"usercmd_t"
.LASF193:
	.string	"cshift_t"
.LASF208:
	.string	"driftmove"
.LASF151:
	.string	"clipnodes"
.LASF27:
	.string	"pixel_t"
.LASF21:
	.string	"firstface"
.LASF225:
	.string	"maxclients"
.LASF334:
	.string	"lightcmd_t"
.LASF367:
	.string	"lastframeinstant"
.LASF402:
	.string	"Sbar_IntermissionNumber"
.LASF382:
	.string	"Sbar_Init"
.LASF91:
	.string	"update_type"
.LASF189:
	.string	"translations"
.LASF223:
	.string	"levelname"
.LASF423:
	.string	"sb_colon"
.LASF414:
	.string	"scr_fullupdate"
.LASF205:
	.string	"idealpitch"
.LASF44:
	.string	"direct"
.LASF36:
	.string	"numpages"
.LASF401:
	.string	"anim"
.LASF381:
	.string	"Sbar_Changed"
.LASF125:
	.string	"synctype"
.LASF138:
	.string	"numvertexes"
.LASF233:
	.string	"looptrack"
.LASF240:
	.string	"lightnormalindex"
.LASF90:
	.string	"forcelink"
.LASF220:
	.string	"last_received_message"
.LASF84:
	.string	"efrags"
.LASF78:
	.string	"mleaf_s"
.LASF261:
	.string	"texturemins"
.LASF397:
	.string	"grenadeflashing"
.LASF118:
	.string	"angles1"
.LASF119:
	.string	"angles2"
.LASF336:
	.string	"baseColor"
.LASF80:
	.string	"visframe"
.LASF148:
	.string	"numsurfedges"
.LASF146:
	.string	"numsurfaces"
.LASF275:
	.string	"vecs"
.LASF400:
	.string	"Sbar_DrawFace"
.LASF238:
	.string	"ST_RAND"
.LASF296:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF188:
	.string	"colors"
.LASF25:
	.string	"children"
.LASF204:
	.string	"punchangle"
.LASF32:
	.string	"rowbytes"
.LASF243:
	.string	"mvertex_t"
.LASF87:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF41:
	.string	"conheight"
.LASF288:
	.string	"firstclipnode"
.LASF67:
	.string	"server"
.LASF341:
	.string	"halo"
.LASF42:
	.string	"maxwarpwidth"
.LASF153:
	.string	"hulls"
.LASF250:
	.string	"gl_texturenum"
.LASF108:
	.string	"pose1"
.LASF109:
	.string	"pose2"
.LASF53:
	.string	"skin"
.LASF291:
	.string	"clip_maxs"
.LASF305:
	.string	"numskins"
.LASF453:
	.string	"sbar_updateperframe"
.LASF114:
	.string	"translate_start_time"
.LASF429:
	.string	"sb_ammo"
.LASF51:
	.string	"modelindex"
.LASF92:
	.string	"baseline"
.LASF22:
	.string	"numfaces"
.LASF97:
	.string	"efrag"
.LASF218:
	.string	"time"
.LASF26:
	.string	"dclipnode_t"
.LASF345:
	.string	"volumeVerts"
.LASF127:
	.string	"radius"
.LASF364:
	.string	"lastlight"
.LASF349:
	.string	"owner"
.LASF171:
	.string	"lastshadowonly"
.LASF54:
	.string	"effects"
.LASF68:
	.string	"value"
.LASF16:
	.string	"mins"
.LASF159:
	.string	"mnode_s"
.LASF286:
	.string	"mnode_t"
.LASF252:
	.string	"texturechain"
.LASF55:
	.string	"color"
.LASF39:
	.string	"conrowbytes"
.LASF267:
	.string	"lightmaptexturenum"
.LASF113:
	.string	"leafnums"
.LASF290:
	.string	"clip_mins"
.LASF228:
	.string	"free_efrags"
.LASF411:
	.string	"hipnotic"
.LASF344:
	.string	"volumeCmds"
.LASF441:
	.string	"rsb_items"
.LASF253:
	.string	"anim_total"
.LASF33:
	.string	"width"
.LASF363:
	.string	"lasthdr"
.LASF354:
	.string	"haloalpha"
.LASF332:
	.string	"asVec"
.LASF424:
	.string	"sb_slash"
.LASF200:
	.string	"prev_cshifts"
.LASF456:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF374:
	.string	"_wgpipe"
.LASF445:
	.string	"hipweapons"
.LASF15:
	.string	"_Bool"
.LASF89:
	.string	"entity_s"
.LASF180:
	.string	"entity_t"
.LASF40:
	.string	"conwidth"
.LASF212:
	.string	"paused"
.LASF132:
	.string	"nummodelsurfaces"
.LASF440:
	.string	"rsb_weapons"
.LASF207:
	.string	"nodrift"
.LASF444:
	.string	"hsb_weapons"
.LASF308:
	.string	"numtris"
.LASF126:
	.string	"flags"
.LASF407:
	.string	"Sbar_Draw"
.LASF443:
	.string	"rsb_teambord"
.LASF326:
	.string	"plane_t"
.LASF384:
	.string	"pow10"
.LASF18:
	.string	"origin"
.LASF65:
	.string	"string"
.LASF404:
	.string	"Sbar_DrawScoreboard"
.LASF134:
	.string	"submodels"
.LASF277:
	.string	"texture"
.LASF31:
	.string	"fullbright"
.LASF135:
	.string	"numplanes"
.LASF158:
	.string	"entities"
.LASF30:
	.string	"colormap16"
.LASF375:
	.string	"WGPipe"
.LASF20:
	.string	"visleafs"
.LASF403:
	.string	"Sbar_DeathmatchOverlay"
.LASF318:
	.string	"texels"
.LASF458:
	.string	"Sbar_itoa"
.LASF74:
	.string	"leaf"
.LASF333:
	.string	"asVoid"
.LASF287:
	.string	"mleaf_t"
.LASF8:
	.string	"char"
.LASF268:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF59:
	.string	"pflags"
.LASF270:
	.string	"cached_dlight"
.LASF432:
	.string	"sb_items"
.LASF110:
	.string	"aliasframeinstant"
.LASF49:
	.string	"vec3_t"
.LASF201:
	.string	"mviewangles"
.LASF353:
	.string	"cubescale"
.LASF338:
	.string	"visible"
.LASF60:
	.string	"entity_state_t"
.LASF231:
	.string	"viewent"
.LASF436:
	.string	"sb_face_invuln"
.LASF388:
	.string	"Sbar_UpdateScoreboard"
.LASF389:
	.string	"bottom"
.LASF85:
	.string	"firstmarksurface"
.LASF274:
	.string	"medge_t"
.LASF88:
	.string	"ambient_sound_level"
.LASF310:
	.string	"poseverts"
.LASF46:
	.string	"data"
.LASF299:
	.string	"ident"
.LASF278:
	.string	"mtexinfo_t"
.LASF239:
	.string	"synctype_t"
.LASF150:
	.string	"numclipnodes"
.LASF319:
	.string	"frames"
.LASF427:
	.string	"sb_scorebar"
.LASF446:
	.string	"hsb_items"
.LASF77:
	.string	"entnext"
.LASF98:
	.string	"syncbase"
.LASF157:
	.string	"lightdata"
.LASF214:
	.string	"inwater"
.LASF128:
	.string	"clipbox"
.LASF368:
	.string	"extvertices"
.LASF35:
	.string	"aspect"
.LASF213:
	.string	"onground"
.LASF419:
	.string	"causticschain"
.LASF448:
	.string	"scoreboardtext"
.LASF439:
	.string	"rsb_invbar"
.LASF43:
	.string	"maxwarpheight"
.LASF104:
	.string	"topnode"
.LASF107:
	.string	"blend"
.LASF145:
	.string	"texinfo"
.LASF325:
	.string	"modtype_t"
.LASF408:
	.string	"Sbar_IntermissionOverlay"
.LASF29:
	.string	"colormap"
.LASF271:
	.string	"samples"
.LASF451:
	.string	"scoreboardcount"
.LASF455:
	.string	"d:/Data/Nintendo/TenebraeGX/src/sbar.c"
.LASF293:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF269:
	.string	"cached_light"
.LASF224:
	.string	"viewentity"
.LASF215:
	.string	"intermission"
.LASF383:
	.string	"Sbar_DrawTransPic"
.LASF58:
	.string	"light_lev"
.LASF426:
	.string	"sb_sbar"
.LASF412:
	.string	"draw_disc"
.LASF346:
	.string	"numVolumeVerts"
.LASF187:
	.string	"frags"
.LASF210:
	.string	"viewheight"
.LASF19:
	.string	"headnode"
.LASF452:
	.string	"scoreboardlines"
.LASF399:
	.string	"xofs"
.LASF434:
	.string	"sb_face_invis"
.LASF273:
	.string	"cachededgeoffset"
.LASF321:
	.string	"mod_brush"
.LASF216:
	.string	"completed_time"
.LASF191:
	.string	"destcolor"
.LASF306:
	.string	"skinwidth"
.LASF301:
	.string	"scale"
.LASF112:
	.string	"numleafs"
.LASF371:
	.string	"triangleVis"
.LASF304:
	.string	"eyeposition"
.LASF66:
	.string	"archive"
.LASF229:
	.string	"num_entities"
.LASF71:
	.string	"sfx_s"
.LASF309:
	.string	"size"
.LASF417:
	.string	"teamplay"
.LASF246:
	.string	"dist"
.LASF76:
	.string	"entity"
.LASF251:
	.string	"gl_lumitex"
.LASF249:
	.string	"texture_s"
.LASF272:
	.string	"texture_t"
.LASF392:
	.string	"seconds"
.LASF405:
	.string	"Sbar_MiniDeathmatchOverlay"
.LASF361:
	.string	"lastvorg"
.LASF34:
	.string	"height"
.LASF259:
	.string	"msurface_s"
.LASF285:
	.string	"msurface_t"
.LASF155:
	.string	"textures"
.LASF298:
	.string	"maliasframedesc_t"
.LASF437:
	.string	"sb_face_invis_invuln"
.LASF72:
	.string	"cache"
.LASF48:
	.string	"vec_t"
.LASF416:
	.string	"scr_copyeverything"
.LASF196:
	.string	"items"
.LASF314:
	.string	"binormals"
.LASF130:
	.string	"clipmaxs"
.LASF312:
	.string	"commands"
.LASF234:
	.string	"scores"
.LASF266:
	.string	"shadowchain"
.LASF166:
	.string	"paliashdr"
.LASF254:
	.string	"anim_min"
.LASF442:
	.string	"rsb_ammo"
.LASF11:
	.string	"long double"
.LASF198:
	.string	"faceanimtime"
.LASF260:
	.string	"firstedge"
.LASF100:
	.string	"lightTimestamp"
.LASF262:
	.string	"extents"
.LASF99:
	.string	"skinnum"
.LASF449:
	.string	"scoreboardtop"
.LASF140:
	.string	"numedges"
.LASF209:
	.string	"laststop"
.LASF313:
	.string	"triangles"
.LASF350:
	.string	"scizz"
.LASF289:
	.string	"lastclipnode"
.LASF45:
	.string	"viddef_t"
.LASF235:
	.string	"server_proto_version"
.LASF450:
	.string	"scoreboardbottom"
.LASF343:
	.string	"visSurf"
.LASF82:
	.string	"parent"
.LASF339:
	.string	"isStatic"
.LASF222:
	.string	"sound_precache"
.LASF2:
	.string	"short int"
.LASF173:
	.string	"shadowonly"
.LASF170:
	.string	"lastent"
.LASF182:
	.string	"forwardmove"
.LASF328:
	.string	"coords"
.LASF12:
	.string	"long int"
.LASF75:
	.string	"leafnext"
.LASF415:
	.string	"sb_lines"
.LASF199:
	.string	"cshifts"
.LASF247:
	.string	"signbits"
.LASF263:
	.string	"light_s"
.LASF264:
	.string	"light_t"
.LASF258:
	.string	"offsets"
.LASF297:
	.string	"bboxmax"
.LASF38:
	.string	"conbuffer"
.LASF372:
	.string	"aliaslightinstant_t"
.LASF379:
	.string	"Sbar_ShowScores"
.LASF133:
	.string	"numsubmodels"
.LASF391:
	.string	"minutes"
.LASF360:
	.string	"lasteangles"
.LASF281:
	.string	"numverts"
.LASF327:
	.string	"screenrect_s"
.LASF329:
	.string	"screenrect_t"
.LASF430:
	.string	"sb_sigil"
.LASF387:
	.string	"Sbar_SortFrags"
.LASF178:
	.string	"triplanes"
.LASF106:
	.string	"frame_interval"
.LASF378:
	.string	"Sbar_DrawString"
.LASF331:
	.string	"asFloat"
.LASF257:
	.string	"alternate_anims"
.LASF142:
	.string	"numnodes"
.LASF425:
	.string	"sb_ibar"
.LASF174:
	.string	"vertices"
.LASF211:
	.string	"crouch"
.LASF232:
	.string	"cdtrack"
.LASF221:
	.string	"model_precache"
.LASF64:
	.string	"name"
.LASF181:
	.string	"viewangles"
.LASF294:
	.string	"numposes"
.LASF4:
	.string	"unsigned int"
.LASF122:
	.string	"needload"
.LASF139:
	.string	"vertexes"
.LASF428:
	.string	"sb_weapons"
.LASF358:
	.string	"lasteorg"
.LASF393:
	.string	"tens"
.LASF203:
	.string	"velocity"
.LASF330:
	.string	"asInt"
.LASF62:
	.string	"cache_user_s"
.LASF152:
	.string	"marksurfaces"
.LASF410:
	.string	"rogue"
.LASF217:
	.string	"mtime"
.LASF7:
	.string	"long unsigned int"
.LASF316:
	.string	"indecies"
.LASF93:
	.string	"msgtime"
.LASF348:
	.string	"numVisSurf"
.LASF241:
	.string	"trivertx_t"
.LASF56:
	.string	"alpha"
.LASF433:
	.string	"sb_faces"
.LASF352:
	.string	"rspeed"
.LASF81:
	.string	"minmaxs"
.LASF386:
	.string	"digits"
.LASF175:
	.string	"normals"
.LASF279:
	.string	"glpoly_s"
.LASF284:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF359:
	.string	"lastlorg"
.LASF454:
	.string	"GNU C 4.6.3"
.LASF192:
	.string	"percent"
.LASF186:
	.string	"entertime"
.LASF230:
	.string	"num_statics"
.LASF245:
	.string	"normal"
.LASF117:
	.string	"rotate_start_time"
.LASF165:
	.string	"updateframe"
.LASF123:
	.string	"type"
.LASF103:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"cvar_s"
.LASF413:
	.string	"scr_con_current"
.LASF307:
	.string	"skinheight"
.LASF292:
	.string	"hull_t"
.LASF111:
	.string	"brushlightinstant"
.LASF265:
	.string	"polys"
.LASF167:
	.string	"lastpose1"
.LASF168:
	.string	"lastpose2"
.LASF144:
	.string	"numtexinfo"
.LASF282:
	.string	"neighbours"
.LASF347:
	.string	"lightCmds"
.LASF137:
	.string	"leafs"
.LASF227:
	.string	"worldmodel"
.LASF183:
	.string	"sidemove"
.LASF380:
	.string	"Sbar_DontShowScores"
.LASF57:
	.string	"style"
.LASF86:
	.string	"nummarksurfaces"
.LASF398:
	.string	"Sbar_DrawFrags"
.LASF156:
	.string	"visdata"
.LASF335:
	.string	"shadowlight_s"
.LASF356:
	.string	"shadowlight_t"
.LASF154:
	.string	"numtextures"
.LASF195:
	.string	"stats"
.LASF190:
	.string	"scoreboard_t"
.LASF172:
	.string	"lastpaliashdr"
.LASF124:
	.string	"numframes"
.LASF95:
	.string	"msg_angles"
.LASF52:
	.string	"frame"
.LASF409:
	.string	"Sbar_FinaleOverlay"
.LASF457:
	.string	"Sbar_ColorForMap"
.LASF394:
	.string	"units"
.LASF23:
	.string	"dmodel_t"
.LASF101:
	.string	"dlightframe"
.LASF206:
	.string	"pitchvel"
.LASF322:
	.string	"mod_sprite"
.LASF0:
	.string	"signed char"
.LASF302:
	.string	"scale_origin"
.LASF147:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF362:
	.string	"lastlradius"
.LASF395:
	.string	"Sbar_DrawInventory"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"recalc_refdef"
.LASF280:
	.string	"chain"
.LASF369:
	.string	"tslights"
.LASF420:
	.string	"wgPipe"
.LASF50:
	.string	"angles"
.LASF435:
	.string	"sb_face_quad"
.LASF390:
	.string	"Sbar_SoloScoreboard"
.LASF283:
	.string	"firstvertex"
.LASF237:
	.string	"ST_SYNC"
.LASF351:
	.string	"filtercube"
.LASF366:
	.string	"vieworg"
.LASF311:
	.string	"posedata"
.LASF406:
	.string	"numlines"
.LASF9:
	.string	"double"
.LASF256:
	.string	"anim_next"
.LASF131:
	.string	"firstmodelsurface"
.LASF47:
	.string	"cache_user_t"
.LASF396:
	.string	"flashon"
.LASF422:
	.string	"sb_nums"
.LASF317:
	.string	"gl_lumatex"
.LASF355:
	.string	"oldlightorigin"
.LASF96:
	.string	"model"
.LASF197:
	.string	"item_gettime"
.LASF324:
	.string	"mod_alias3"
.LASF176:
	.string	"tangents"
.LASF244:
	.string	"mplane_s"
.LASF248:
	.string	"mplane_t"
.LASF102:
	.string	"dlightbits"
.LASF431:
	.string	"sb_armor"
.LASF447:
	.string	"fragsort"
.LASF94:
	.string	"msg_origins"
.LASF163:
	.string	"_next"
.LASF340:
	.string	"castShadow"
.LASF236:
	.string	"client_state_t"
.LASF242:
	.string	"position"
.LASF162:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF438:
	.string	"sb_showscores"
.LASF342:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
