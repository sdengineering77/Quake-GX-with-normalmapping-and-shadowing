	.file	"gl_stacks.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	pushAccum, @function
pushAccum:
.LFB64:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_stacks.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	.loc 1 21 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,16
	cmplw 7,9,4
	bgt- 7,.L2
	.loc 1 23 0
	stw 9,0(3)
	.loc 1 25 0
	li 0,1
.L2:
	.loc 1 26 0
	mr 3,0
.LVL1:
	blr
	.cfi_endproc
.LFE64:
	.size	pushAccum, .-pushAccum
	.align 2
	.type	popAccum, @function
popAccum:
.LFB65:
	.loc 1 29 0
	.cfi_startproc
.LVL2:
	.loc 1 32 0
	lwz 9,0(3)
	.loc 1 33 0
	.loc 1 32 0
	addi 0,9,-16
	stw 0,0(3)
	.loc 1 33 0
	blr
	.cfi_endproc
.LFE65:
	.size	popAccum, .-popAccum
	.align 2
	.type	popColorBuffer, @function
popColorBuffer:
.LFB67:
	.loc 1 97 0
	.cfi_startproc
.LVL3:
	.loc 1 100 0
	lwz 9,0(3)
	.loc 1 102 0
	lis 11,blend_type@ha
	.loc 1 108 0
	lis 10,color_write_mask@ha
	.loc 1 100 0
	addi 0,9,-44
	stw 0,0(3)
	.loc 1 102 0
	lbz 0,-28(9)
	.loc 1 107 0
	lwz 8,-4(9)
	.loc 1 102 0
	stb 0,blend_type@l(11)
	.loc 1 103 0
	lis 11,blend_src@ha
	lbz 0,-27(9)
	stb 0,blend_src@l(11)
	.loc 1 104 0
	lis 11,blend_dst@ha
	lbz 0,-26(9)
	stb 0,blend_dst@l(11)
	.loc 1 108 0
	la 11,color_write_mask@l(10)
	.loc 1 105 0
	lbz 0,-25(9)
	.loc 1 107 0
	lis 9,_clearcolor@ha
	stw 8,_clearcolor@l(9)
	.loc 1 105 0
	lis 9,blend_op@ha
	stb 0,blend_op@l(9)
	.loc 1 108 0
	lwz 9,0(3)
	lwz 0,0(9)
	rlwinm 7,0,5,31,31
	.loc 1 109 0
	rlwinm 8,0,6,31,31
	.loc 1 110 0
	rlwinm 9,0,7,31,31
	.loc 1 111 0
	rlwinm 0,0,8,31,31
	.loc 1 109 0
	stb 8,1(11)
	.loc 1 110 0
	stb 9,2(11)
	.loc 1 111 0
	stb 0,3(11)
	.loc 1 112 0
	.loc 1 108 0
	stb 7,color_write_mask@l(10)
	.loc 1 112 0
	blr
	.cfi_endproc
.LFE67:
	.size	popColorBuffer, .-popColorBuffer
	.align 2
	.type	popCurrent, @function
popCurrent:
.LFB69:
	.loc 1 162 0
	.cfi_startproc
.LVL4:
	.loc 1 165 0
	lwz 8,0(3)
	.loc 1 168 0
	lis 10,_tempnormalelement@ha
	.loc 1 162 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.loc 1 167 0
	lis 7,_tempcolorelement@ha
	.loc 1 168 0
	lwz 0,-168(8)
	la 11,_tempnormalelement@l(10)
	.loc 1 167 0
	lwz 12,-184(8)
	la 9,_tempcolorelement@l(7)
	lwz 4,-180(8)
	.loc 1 168 0
	lwz 5,-176(8)
	lwz 6,-172(8)
	.loc 1 162 0
	stw 29,12(1)
	.loc 1 165 0
	addi 29,8,-200
	.cfi_offset 29, -12
	.loc 1 162 0
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 167 0
	lwz 30,-192(8)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	lwz 31,-188(8)
	.loc 1 161 0
	addi 8,8,-172
	.loc 1 165 0
	stw 29,0(3)
	.loc 1 168 0
	stw 0,8(11)
.LVL5:
	.loc 1 161 0
	li 0,8
	.loc 1 167 0
	stw 31,4(9)
	.loc 1 161 0
	mtctr 0
	.loc 1 167 0
	stw 12,8(9)
	stw 4,12(9)
	.loc 1 168 0
	lis 9,_temptexcoordelement-8@ha
	.loc 1 167 0
	stw 30,_tempcolorelement@l(7)
	.loc 1 168 0
	la 9,_temptexcoordelement-8@l(9)
	stw 5,_tempnormalelement@l(10)
	stw 6,4(11)
.LVL6:
.L8:
	.loc 1 173 0 discriminator 2
	addi 8,8,8
	lwz 10,0(8)
	lwz 11,4(8)
	stwu 10,8(9)
	stw 11,4(9)
	.loc 1 171 0 discriminator 2
	bdnz .L8
	.loc 1 175 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE69:
	.size	popCurrent, .-popCurrent
	.align 2
	.type	popDepthBuffer, @function
popDepthBuffer:
.LFB71:
	.loc 1 205 0
	.cfi_startproc
.LVL7:
	.loc 1 208 0
	lwz 9,0(3)
	.loc 1 210 0
	lis 10,depthtestenabled@ha
	.loc 1 208 0
	addi 0,9,-8
	.loc 1 213 0
	lwz 11,-4(9)
	.loc 1 208 0
	stw 0,0(3)
	.loc 1 210 0
	lwz 0,-8(9)
	srwi 8,0,31
	.loc 1 211 0
	rlwinm 0,0,2,31,31
	.loc 1 210 0
	stb 8,depthtestenabled@l(10)
	.loc 1 211 0
	lis 10,depthupdate@ha
	stb 0,depthupdate@l(10)
	.loc 1 212 0
	lbz 0,-7(9)
	lis 9,depthfunction@ha
	.loc 1 214 0
	.loc 1 212 0
	stw 0,depthfunction@l(9)
	.loc 1 213 0
	lis 9,_cleardepth@ha
	stw 11,_cleardepth@l(9)
	.loc 1 214 0
	blr
	.cfi_endproc
.LFE71:
	.size	popDepthBuffer, .-popDepthBuffer
	.align 2
	.type	pushEval, @function
pushEval:
.LFB74:
	.loc 1 343 0
	.cfi_startproc
.LVL8:
	.loc 1 342 0
	lwz 3,0(3)
.LVL9:
	.loc 1 351 0
	subfc 3,3,4
	li 3,0
	adde 3,3,3
	blr
	.cfi_endproc
.LFE74:
	.size	pushEval, .-pushEval
	.align 2
	.type	popEval, @function
popEval:
.LFB75:
	.loc 1 354 0
	.cfi_startproc
.LVL10:
	.loc 1 358 0
	blr
	.cfi_endproc
.LFE75:
	.size	popEval, .-popEval
	.align 2
	.type	popFog, @function
popFog:
.LFB77:
	.loc 1 403 0
	.cfi_startproc
.LVL11:
	.loc 1 406 0
	lwz 9,0(3)
	.loc 1 408 0
	lis 8,fog_enable@ha
	.loc 1 406 0
	addi 0,9,-24
	.loc 1 411 0
	lwz 10,-16(9)
	.loc 1 406 0
	stw 0,0(3)
	.loc 1 412 0
	lwz 11,-12(9)
	.loc 1 408 0
	lwz 0,-24(9)
	rlwinm 0,0,0,0,0
	cntlzw 0,0
	srwi 0,0,5
	xori 0,0,1
	stb 0,fog_enable@l(8)
	.loc 1 414 0
	lwz 0,-4(9)
	.loc 1 409 0
	lbz 8,-23(9)
	lis 9,fog_mode@ha
	.loc 1 415 0
	.loc 1 409 0
	stb 8,fog_mode@l(9)
	.loc 1 411 0
	lis 9,fog_startz@ha
	stw 10,fog_startz@l(9)
	.loc 1 412 0
	lis 9,fog_endz@ha
	stw 11,fog_endz@l(9)
	.loc 1 414 0
	lis 9,fog_color@ha
	stw 0,fog_color@l(9)
	.loc 1 415 0
	blr
	.cfi_endproc
.LFE77:
	.size	popFog, .-popFog
	.align 2
	.type	pushHint, @function
pushHint:
.LFB78:
	.loc 1 427 0
	.cfi_startproc
.LVL12:
	.loc 1 426 0
	lwz 3,0(3)
.LVL13:
	.loc 1 435 0
	subfc 3,3,4
	li 3,0
	adde 3,3,3
	blr
	.cfi_endproc
.LFE78:
	.size	pushHint, .-pushHint
	.align 2
	.type	popHint, @function
popHint:
.LFB79:
	.loc 1 438 0
	.cfi_startproc
.LVL14:
	.loc 1 442 0
	blr
	.cfi_endproc
.LFE79:
	.size	popHint, .-popHint
	.align 2
	.type	popLighting, @function
popLighting:
.LFB81:
	.loc 1 497 0
	.cfi_startproc
.LVL15:
	mflr 0
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 505 0
	lis 11,globAmbient@ha
	.loc 1 497 0
	stw 29,12(1)
	.loc 1 505 0
	la 9,globAmbient@l(11)
	.loc 1 497 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 500 0
	lwz 29,0(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 497 0
	stw 28,8(1)
	lis 28,lights@ha
	.cfi_offset 28, -16
	.loc 1 500 0
	addi 30,29,-1412
	.loc 1 497 0
	stw 31,20(1)
	.loc 1 500 0
	stw 30,0(3)
	.loc 1 502 0
	lis 3,copy_mat_enabled@ha
.LVL16:
	.loc 1 504 0
	lwz 4,-1404(29)
	.loc 1 505 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 502 0
	lwz 10,-1412(29)
	la 28,lights@l(28)
	.loc 1 505 0
	lwz 5,-1400(29)
	.loc 1 502 0
	rlwinm 0,10,0,0,0
	.loc 1 505 0
	lwz 6,-1396(29)
	.loc 1 502 0
	cntlzw 0,0
	.loc 1 505 0
	lwz 7,-1392(29)
	.loc 1 502 0
	srwi 0,0,5
	.loc 1 505 0
	lwz 8,-1388(29)
	.loc 1 502 0
	xori 0,0,1
	.loc 1 503 0
	rlwinm 10,10,2,31,31
	.loc 1 502 0
	stb 0,copy_mat_enabled@l(3)
	.loc 1 503 0
	lis 3,lighting@ha
	stb 10,lighting@l(3)
	.loc 1 504 0
	lis 10,copy_material@ha
	stw 4,copy_material@l(10)
	.loc 1 505 0
	stw 5,globAmbient@l(11)
	stw 6,4(9)
	stw 7,8(9)
	stw 8,12(9)
.LVL17:
.L17:
	.loc 1 496 0 discriminator 2
	add 4,30,31
	.loc 1 511 0 discriminator 2
	add 3,28,31
	addi 4,4,28
	li 5,164
	bl memcpy
	.loc 1 509 0 discriminator 2
	cmpwi 7,31,1148
	addi 31,31,164
	bne+ 7,.L17
	.loc 1 514 0
	lis 3,curmat@ha
	addi 4,29,-72
	la 3,curmat@l(3)
	li 5,68
	bl memcpy
	.loc 1 515 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE81:
	.size	popLighting, .-popLighting
	.align 2
	.type	popLine, @function
popLine:
.LFB83:
	.loc 1 542 0
	.cfi_startproc
.LVL18:
	.loc 1 545 0
	lwz 9,0(3)
	.loc 1 547 0
	lwz 0,-4(9)
	.loc 1 545 0
	addi 9,9,-16
	stw 9,0(3)
	.loc 1 547 0
	lis 9,line_width@ha
	stw 0,line_width@l(9)
	.loc 1 548 0
	blr
	.cfi_endproc
.LFE83:
	.size	popLine, .-popLine
	.align 2
	.type	popListBase, @function
popListBase:
.LFB85:
	.loc 1 568 0
	.cfi_startproc
.LVL19:
	.loc 1 571 0
	lwz 9,0(3)
	.loc 1 573 0
	lwz 0,-4(9)
	.loc 1 571 0
	addi 9,9,-4
	stw 9,0(3)
	.loc 1 573 0
	lis 9,call_offset@ha
	stw 0,call_offset@l(9)
	.loc 1 574 0
	blr
	.cfi_endproc
.LFE85:
	.size	popListBase, .-popListBase
	.align 2
	.type	popPixelMode, @function
popPixelMode:
.LFB87:
	.loc 1 620 0
	.cfi_startproc
.LVL20:
	.loc 1 623 0
	lwz 12,0(3)
	.loc 1 620 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.loc 1 627 0
	lwz 9,-40(12)
	.loc 1 620 0
	stw 31,12(1)
	.loc 1 625 0
	lis 31,Trans@ha
	.cfi_offset 31, -4
	lwz 4,-60(12)
	la 31,Trans@l(31)
	lwz 5,-56(12)
	.loc 1 626 0
	lwz 6,-52(12)
	lwz 7,-48(12)
	.loc 1 627 0
	lwz 8,-44(12)
	.loc 1 628 0
	lwz 10,-36(12)
	lwz 11,-32(12)
	.loc 1 629 0
	lwz 0,-4(12)
	.loc 1 623 0
	addi 12,12,-64
	stw 12,0(3)
	.loc 1 627 0
	stw 9,20(31)
	.loc 1 629 0
	lis 9,read_mode@ha
	.loc 1 625 0
	stw 4,0(31)
	stw 5,4(31)
	.loc 1 626 0
	stw 6,8(31)
	stw 7,12(31)
	.loc 1 627 0
	stw 8,16(31)
	.loc 1 628 0
	stw 10,24(31)
	stw 11,28(31)
	.loc 1 629 0
	stw 0,read_mode@l(9)
	.loc 1 630 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE87:
	.size	popPixelMode, .-popPixelMode
	.align 2
	.type	popPoint, @function
popPoint:
.LFB89:
	.loc 1 653 0
	.cfi_startproc
.LVL21:
	.loc 1 656 0
	lwz 9,0(3)
	.loc 1 658 0
	lwz 0,-4(9)
	.loc 1 656 0
	addi 9,9,-8
	stw 9,0(3)
	.loc 1 658 0
	lis 9,point_size@ha
	stw 0,point_size@l(9)
	.loc 1 659 0
	blr
	.cfi_endproc
.LFE89:
	.size	popPoint, .-popPoint
	.align 2
	.type	pushPolyStipple, @function
pushPolyStipple:
.LFB92:
	.loc 1 735 0
	.cfi_startproc
.LVL22:
	.loc 1 738 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,4
	cmplw 7,9,4
	bgt- 7,.L24
.LVL23:
	.loc 1 740 0
	stw 9,0(3)
	.loc 1 742 0
	li 0,1
.LVL24:
.L24:
	.loc 1 743 0
	mr 3,0
.LVL25:
	blr
	.cfi_endproc
.LFE92:
	.size	pushPolyStipple, .-pushPolyStipple
	.align 2
	.type	popPolyStipple, @function
popPolyStipple:
.LFB93:
	.loc 1 746 0
	.cfi_startproc
.LVL26:
	.loc 1 749 0
	lwz 9,0(3)
	.loc 1 750 0
	.loc 1 749 0
	addi 0,9,-4
	stw 0,0(3)
	.loc 1 750 0
	blr
	.cfi_endproc
.LFE93:
	.size	popPolyStipple, .-popPolyStipple
	.align 2
	.type	popScissor, @function
popScissor:
.LFB95:
	.loc 1 773 0
	.cfi_startproc
.LVL27:
	.loc 1 776 0
	lwz 9,0(3)
	.loc 1 779 0
	lis 11,scissorInfo@ha
	.loc 1 778 0
	lis 6,scissor_test@ha
	.loc 1 776 0
	addi 0,9,-20
	.loc 1 779 0
	lwz 8,-12(9)
	.loc 1 776 0
	stw 0,0(3)
	.loc 1 779 0
	lwz 10,-8(9)
	.loc 1 778 0
	lwz 5,-20(9)
	.loc 1 779 0
	lwz 0,-4(9)
	lwz 7,-16(9)
	.loc 1 778 0
	srwi 5,5,31
	.loc 1 779 0
	la 9,scissorInfo@l(11)
	.loc 1 778 0
	stb 5,scissor_test@l(6)
	.loc 1 779 0
	stw 8,4(9)
	stw 10,8(9)
	stw 0,12(9)
	.loc 1 780 0
	.loc 1 779 0
	stw 7,scissorInfo@l(11)
	.loc 1 780 0
	blr
	.cfi_endproc
.LFE95:
	.size	popScissor, .-popScissor
	.align 2
	.type	pushStencil, @function
pushStencil:
.LFB96:
	.loc 1 800 0
	.cfi_startproc
.LVL28:
	.loc 1 803 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,32
	cmplw 7,9,4
	bgt- 7,.L29
.LVL29:
	.loc 1 805 0
	stw 9,0(3)
	.loc 1 807 0
	li 0,1
.LVL30:
.L29:
	.loc 1 808 0
	mr 3,0
.LVL31:
	blr
	.cfi_endproc
.LFE96:
	.size	pushStencil, .-pushStencil
	.align 2
	.type	popStencil, @function
popStencil:
.LFB97:
	.loc 1 811 0
	.cfi_startproc
.LVL32:
	.loc 1 814 0
	lwz 9,0(3)
	.loc 1 815 0
	.loc 1 814 0
	addi 0,9,-32
	stw 0,0(3)
	.loc 1 815 0
	blr
	.cfi_endproc
.LFE97:
	.size	popStencil, .-popStencil
	.align 2
	.type	popTexture, @function
popTexture:
.LFB99:
	.loc 1 853 0
	.cfi_startproc
.LVL33:
	mflr 0
	stwu 1,-24(1)
.LCFI6:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	.loc 1 856 0
	lis 29,_temptexcoordelement-8@ha
	.cfi_offset 29, -12
	.loc 1 853 0
	stw 0,28(1)
	.loc 1 856 0
	la 29,_temptexcoordelement-8@l(29)
	.loc 1 853 0
	stw 30,16(1)
	.loc 1 856 0
	lis 30,glTexEnvs@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	lwz 4,0(3)
	la 30,glTexEnvs@l(30)
	.loc 1 853 0
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
.LVL34:
	.loc 1 856 0
	addi 4,4,-928
	.loc 1 853 0
	stw 31,20(1)
	.loc 1 856 0
	stw 4,0(3)
.LVL35:
	.loc 1 860 0
	li 31,0
	.cfi_offset 31, -4
	b .L34
.LVL36:
.L35:
	lwz 4,0(28)
.LVL37:
.L34:
	.loc 1 862 0 discriminator 2
	slwi 9,31,3
	.loc 1 863 0 discriminator 2
	mulli 0,31,108
	.loc 1 862 0 discriminator 2
	add 9,4,9
	.loc 1 863 0 discriminator 2
	mr 3,30
	.loc 1 862 0 discriminator 2
	lwz 10,0(9)
	.loc 1 863 0 discriminator 2
	add 4,4,0
	.loc 1 862 0 discriminator 2
	lwz 11,4(9)
	.loc 1 863 0 discriminator 2
	addi 4,4,64
	.loc 1 862 0 discriminator 2
	stwu 10,8(29)
	.loc 1 863 0 discriminator 2
	li 5,108
	.loc 1 860 0 discriminator 2
	addi 30,30,108
	.loc 1 862 0 discriminator 2
	stw 11,4(29)
	.loc 1 863 0 discriminator 2
	bl memcpy
.LVL38:
	.loc 1 860 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL39:
	bne+ 7,.L35
	.loc 1 865 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL40:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL41:
	addi 1,1,24
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE99:
	.size	popTexture, .-popTexture
	.align 2
	.type	popTransform, @function
popTransform:
.LFB101:
	.loc 1 897 0
	.cfi_startproc
.LVL42:
	.loc 1 900 0
	lwz 9,0(3)
	.loc 1 902 0
	lwz 0,-4(9)
	.loc 1 900 0
	addi 9,9,-104
	stw 9,0(3)
	.loc 1 902 0
	lis 9,cur_mode@ha
	stw 0,cur_mode@l(9)
	.loc 1 903 0
	blr
	.cfi_endproc
.LFE101:
	.size	popTransform, .-popTransform
	.align 2
	.type	popViewport, @function
popViewport:
.LFB103:
	.loc 1 927 0
	.cfi_startproc
.LVL43:
	.loc 1 930 0
	lwz 9,0(3)
	.loc 1 934 0
	lis 10,viewPort@ha
	la 11,viewPort@l(10)
	.loc 1 932 0
	lwz 4,-24(9)
	.loc 1 933 0
	lwz 5,-20(9)
	.loc 1 934 0
	lwz 6,-16(9)
	lwz 7,-12(9)
	lwz 8,-8(9)
	lwz 0,-4(9)
	.loc 1 930 0
	addi 9,9,-24
	stw 9,0(3)
	.loc 1 932 0
	lis 9,normNear@ha
	stw 4,normNear@l(9)
	.loc 1 933 0
	lis 9,normFar@ha
	stw 5,normFar@l(9)
	.loc 1 935 0
	.loc 1 934 0
	stw 6,viewPort@l(10)
	stw 7,4(11)
	stw 8,8(11)
	stw 0,12(11)
	.loc 1 935 0
	blr
	.cfi_endproc
.LFE103:
	.size	popViewport, .-popViewport
	.align 2
	.type	popPixelStore, @function
popPixelStore:
.LFB113:
	.loc 1 1139 0
	.cfi_startproc
.LVL44:
	.loc 1 1142 0
	lwz 9,0(3)
	.loc 1 1144 0
	lis 7,pack@ha
	.loc 1 1139 0
	stwu 1,-32(1)
.LCFI8:
	.cfi_def_cfa_offset 32
	.loc 1 1145 0
	lis 8,unpack@ha
	lwz 12,-20(9)
	.loc 1 1144 0
	la 10,pack@l(7)
	.loc 1 1145 0
	lwz 4,-16(9)
	la 11,unpack@l(8)
	lwz 5,-12(9)
	lwz 6,-8(9)
	lwz 0,-4(9)
	.loc 1 1139 0
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 1144 0
	lwz 27,-40(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	lwz 28,-36(9)
	.loc 1 1139 0
	stw 29,20(1)
	stw 30,24(1)
	.loc 1 1144 0
	lwz 29,-32(9)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	lwz 30,-28(9)
	.loc 1 1139 0
	stw 31,28(1)
	.loc 1 1144 0
	lwz 31,-24(9)
	.cfi_offset 31, -4
	.loc 1 1142 0
	addi 9,9,-40
	stw 9,0(3)
	.loc 1 1144 0
	stw 27,pack@l(7)
	stw 28,4(10)
	stw 29,8(10)
	stw 30,12(10)
	stw 31,16(10)
	.loc 1 1146 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	.loc 1 1145 0
	stw 12,unpack@l(8)
	stw 4,4(11)
	stw 5,8(11)
	stw 6,12(11)
	stw 0,16(11)
	.loc 1 1146 0
	addi 1,1,32
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE113:
	.size	popPixelStore, .-popPixelStore
	.align 2
	.type	popVertexArray, @function
popVertexArray:
.LFB115:
	.loc 1 1179 0
	.cfi_startproc
.LVL45:
	.loc 1 1182 0
	lwz 9,0(3)
	.loc 1 1184 0
	lis 10,norm@ha
	la 11,norm@l(10)
	.loc 1 1182 0
	addi 0,9,-220
	stw 0,0(3)
	.loc 1 1184 0
	lwz 5,-220(9)
	lwz 6,-216(9)
	lwz 7,-212(9)
	lwz 8,-208(9)
	lwz 0,-204(9)
	stw 6,4(11)
	stw 7,8(11)
	stw 8,12(11)
	stw 0,16(11)
	stw 5,norm@l(10)
	.loc 1 1185 0
	lis 10,vert@ha
	la 11,vert@l(10)
	lwz 9,0(3)
	lwz 5,20(9)
	lwz 6,24(9)
	lwz 7,28(9)
	lwz 8,32(9)
	lwz 0,36(9)
	stw 6,4(11)
	stw 7,8(11)
	stw 8,12(11)
	stw 5,vert@l(10)
	.loc 1 1186 0
	lis 10,color@ha
	.loc 1 1185 0
	stw 0,16(11)
	.loc 1 1186 0
	la 11,color@l(10)
	lwz 9,0(3)
	lwz 5,200(9)
	lwz 6,204(9)
	lwz 7,208(9)
	lwz 8,212(9)
	lwz 0,216(9)
	lis 9,tex@ha
	stw 5,color@l(10)
	la 9,tex@l(9)
	stw 6,4(11)
	.loc 1 1189 0
	li 10,0
	.loc 1 1186 0
	stw 7,8(11)
	stw 8,12(11)
	stw 0,16(11)
.LVL46:
	.loc 1 1189 0
	li 0,8
	mtctr 0
.LVL47:
.L40:
	.loc 1 1191 0 discriminator 2
	lwz 11,0(3)
	mulli 0,10,20
	.loc 1 1189 0 discriminator 2
	addi 10,10,1
.LVL48:
	.loc 1 1191 0 discriminator 2
	add 11,11,0
	lwz 0,52(11)
	lwz 6,40(11)
	lwz 7,44(11)
	lwz 8,48(11)
	stw 6,0(9)
	stw 7,4(9)
	stw 8,8(9)
	stw 0,12(9)
	lwz 0,56(11)
	stw 0,16(9)
	.loc 1 1189 0 discriminator 2
	addi 9,9,20
	bdnz .L40
	.loc 1 1193 0
	blr
	.cfi_endproc
.LFE115:
	.size	popVertexArray, .-popVertexArray
	.align 2
	.type	popPolygon, @function
popPolygon:
.LFB91:
	.loc 1 717 0
	.cfi_startproc
.LVL49:
	mflr 0
	stwu 1,-16(1)
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL50:
	stw 0,20(1)
	.loc 1 720 0
	lwz 9,0(3)
	addi 0,9,-24
	.cfi_offset 65, 4
	stw 0,0(3)
	.loc 1 722 0
	lwz 3,-20(9)
.LVL51:
	bl glCullFace
	.loc 1 724 0
	lwz 9,0(31)
	.loc 1 726 0
	lwz 31,12(1)
.LVL52:
	.loc 1 724 0
	lwz 0,0(9)
	andis. 9,0,16384
	.loc 1 725 0
	rlwinm 0,0,0,0,0
	cntlzw 0,0
	.loc 1 724 0
	lis 9,gxwinding@ha
	mfcr 11
	rlwinm 11,11,3,1
	.loc 1 725 0
	srwi 0,0,5
	xori 0,0,1
	.loc 1 724 0
	subfic 11,11,2305
	stw 11,gxwinding@l(9)
	.loc 1 725 0
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	.loc 1 726 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
	.cfi_endproc
.LFE91:
	.size	popPolygon, .-popPolygon
	.align 2
	.type	popEnable, @function
popEnable:
.LFB73:
	.loc 1 305 0
	.cfi_startproc
.LVL53:
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 310 0
	lis 11,blend_type@ha
	.loc 1 305 0
	stw 0,12(1)
	.loc 1 308 0
	lwz 9,0(3)
	addi 0,9,-8
	.cfi_offset 65, 4
	stw 0,0(3)
	.loc 1 310 0
	lwz 0,-8(9)
	rlwinm 6,0,3,31,31
	.loc 1 313 0
	rlwinm 7,0,6,31,31
	.loc 1 310 0
	stb 6,blend_type@l(11)
	.loc 1 313 0
	lis 11,depthtestenabled@ha
	.loc 1 311 0
	rlwinm 8,0,4,31,31
	.loc 1 313 0
	stb 7,depthtestenabled@l(11)
	.loc 1 311 0
	lis 11,copy_mat_enabled@ha
	.loc 1 312 0
	rlwinm 10,0,5,31,31
	.loc 1 311 0
	stb 8,copy_mat_enabled@l(11)
	.loc 1 312 0
	lis 11,gxcullfaceanabled@ha
	stb 10,gxcullfaceanabled@l(11)
	.loc 1 314 0
	rlwinm 0,0,8,31,31
	lis 11,fog_enable@ha
	.loc 1 320 0
	li 10,1
	.loc 1 314 0
	stb 0,fog_enable@l(11)
	.loc 1 317 0
	li 0,0
	stb 0,-6(9)
.LVL54:
	.loc 1 320 0
	li 0,8
	.loc 1 317 0
	lis 11,lights@ha
	.loc 1 320 0
	mtctr 0
	.loc 1 317 0
	lwz 7,0(3)
	la 11,lights@l(11)
	.loc 1 318 0
	li 9,0
	.loc 1 317 0
	lbz 8,2(7)
.LVL55:
.L47:
	.loc 1 320 0
	slw 0,10,9
	.loc 1 318 0
	addi 9,9,1
	.loc 1 320 0
	and. 6,0,8
	beq- 0,.L46
	.loc 1 322 0
	stb 10,0(11)
.L46:
.LVL56:
	.loc 1 318 0
	addi 11,11,164
	bdnz .L47
	.loc 1 326 0
	lwz 0,0(7)
	lis 9,lighting@ha
.LVL57:
	rlwinm 0,0,25,31,31
	stb 0,lighting@l(9)
	.loc 1 327 0
	lis 9,scissor_test@ha
	lwz 3,4(7)
.LVL58:
	rlwinm 0,3,5,31,31
	.loc 1 330 0
	rlwinm 3,3,8,31,31
	.loc 1 327 0
	stb 0,scissor_test@l(9)
.LVL59:
	.loc 1 330 0
	bl _glSetEnableTex
.LVL60:
	.loc 1 331 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE73:
	.size	popEnable, .-popEnable
	.align 2
	.type	pop, @function
pop:
.LFB109:
	.loc 1 1077 0
	.cfi_startproc
.LVL61:
	mflr 0
	stwu 1,-32(1)
.LCFI14:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 27,12(1)
	.loc 1 1080 0
	lwz 9,64(3)
	.loc 1 1077 0
	stw 28,16(1)
	.loc 1 1080 0
	cmpwi 7,9,0
	.loc 1 1077 0
	stw 29,20(1)
	stw 30,24(1)
	.loc 1 1080 0
	beq- 7,.L60
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 1090 0
	lwz 11,68(3)
	.loc 1 1086 0
	addi 9,9,-1
	.loc 1 1090 0
	lwz 0,72(3)
	.loc 1 1088 0
	slwi 10,9,2
	.loc 1 1086 0
	stw 9,64(3)
	.loc 1 1090 0
	cmplw 7,11,0
	.loc 1 1088 0
	lwzx 28,3,10
.LVL62:
	.loc 1 1090 0
	bgt- 7,.L61
.LVL63:
.LBB18:
.LBB19:
	.loc 1 986 0
	lwz 9,76(3)
	add 11,11,9
.LBE19:
.LBE18:
	.loc 1 1091 0
	cmplw 7,0,11
	bgt- 7,.L62
.LVL64:
	.loc 1 1093 0
	addic. 29,5,-1
	blt- 0,.L49
	.loc 1 1095 0
	mulli 30,5,12
	.loc 1 1097 0
	addi 27,3,72
	.loc 1 1095 0
	addi 30,30,-12
	add 30,4,30
	b .L55
.LVL65:
.L54:
	.loc 1 1093 0
	addic. 29,29,-1
.LVL66:
	addi 30,30,-12
	blt- 0,.L63
.L55:
	.loc 1 1095 0
	lwz 0,0(30)
	and 9,0,28
	cmpw 7,0,9
	bne+ 7,.L54
	.loc 1 1097 0
	lwz 0,8(30)
	mr 3,27
	.loc 1 1093 0
	addi 30,30,-12
	.loc 1 1097 0
	mtctr 0
	bctrl
.LVL67:
	.loc 1 1093 0
	addic. 29,29,-1
.LVL68:
	bge+ 0,.L55
.L63:
	.loc 1 1101 0
	lwz 9,68(31)
	lwz 0,72(31)
	cmplw 7,9,0
	bgt- 7,.L64
	.loc 1 1102 0
	lwz 11,76(31)
	add 9,9,11
	cmplw 7,0,9
	bgt- 7,.L65
.L49:
	.loc 1 1103 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL69:
	lwz 29,20(1)
.LVL70:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL71:
	addi 1,1,32
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL72:
.L60:
.LCFI16:
	.cfi_restore_state
	.loc 1 1082 0
	lis 4,.LC0@ha
.LVL73:
	li 3,1284
.LVL74:
	la 4,.LC0@l(4)
	li 5,1082
.LVL75:
	bl _glSetErrorEx
	.loc 1 1103 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL76:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
.LVL77:
.L65:
.LCFI18:
	.cfi_restore_state
	.loc 1 1102 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1102
	la 3,.LC0@l(3)
.LVL78:
.L59:
	lis 5,.LANCHOR0@ha
	lis 6,.LC2@ha
	la 5,.LANCHOR0@l(5)
	la 6,.LC2@l(6)
	bl __assert_func
.LVL79:
.L64:
	.loc 1 1101 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1101
	la 3,.LC0@l(3)
.LVL80:
.L58:
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	bl __assert_func
.LVL81:
.L62:
	.loc 1 1091 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1091
.LVL82:
	la 3,.LC0@l(3)
	b .L59
.LVL83:
.L61:
	.loc 1 1090 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1090
.LVL84:
	la 3,.LC0@l(3)
	b .L58
	.cfi_endproc
.LFE109:
	.size	pop, .-pop
	.align 2
	.type	pushColorBuffer, @function
pushColorBuffer:
.LFB66:
	.loc 1 77 0
	.cfi_startproc
.LVL85:
	.loc 1 80 0
	lwz 11,0(3)
	.loc 1 77 0
	mr 9,3
.LVL86:
	.loc 1 80 0
	li 3,0
.LVL87:
	addi 0,11,44
	cmplw 7,0,4
	bgtlr- 7
.LVL88:
.LBB22:
.LBB23:
	.loc 1 82 0
	lis 10,blend_type@ha
	.loc 1 91 0
	li 3,1
	.loc 1 82 0
	lbz 0,blend_type@l(10)
	.loc 1 88 0
	lis 10,color_write_mask@ha
	lbz 8,color_write_mask@l(10)
	la 10,color_write_mask@l(10)
	.loc 1 82 0
	stb 0,16(11)
	.loc 1 83 0
	lis 11,blend_src@ha
	lbz 0,blend_src@l(11)
	lwz 11,0(9)
	stb 0,17(11)
	.loc 1 84 0
	lis 11,blend_dst@ha
	lbz 0,blend_dst@l(11)
	lwz 11,0(9)
	stb 0,18(11)
	.loc 1 85 0
	lis 11,blend_op@ha
	lbz 0,blend_op@l(11)
	lwz 11,0(9)
	stb 0,19(11)
	.loc 1 87 0
	lis 11,_clearcolor@ha
	lwz 0,_clearcolor@l(11)
	lwz 11,0(9)
	stw 0,40(11)
	.loc 1 88 0
	lwz 11,0(9)
	lwz 0,0(11)
	rlwimi 0,8,27,4,4
	stw 0,0(11)
	.loc 1 89 0
	lwz 11,0(9)
	lbz 8,1(10)
	lwz 0,0(11)
	rlwimi 0,8,26,5,5
	stw 0,0(11)
	.loc 1 90 0
	lwz 11,0(9)
	lbz 8,2(10)
	lwz 0,0(11)
	rlwimi 0,8,25,6,6
	stw 0,0(11)
	.loc 1 91 0
	lwz 11,0(9)
	lbz 8,3(10)
	lwz 0,0(11)
	addi 10,11,44
	rlwimi 0,8,24,7,7
	stw 0,0(11)
	stw 10,0(9)
.LBE23:
.LBE22:
	.loc 1 94 0
	blr
	.cfi_endproc
.LFE66:
	.size	pushColorBuffer, .-pushColorBuffer
	.align 2
	.type	pushCurrent, @function
pushCurrent:
.LFB68:
	.loc 1 142 0
	.cfi_startproc
.LVL89:
	.loc 1 145 0
	lwz 9,0(3)
	li 0,0
	addi 8,9,200
	cmplw 7,8,4
	bgt- 7,.L70
.LVL90:
.LBB26:
.LBB27:
	.loc 1 148 0
	lis 7,_tempnormalelement@ha
	.loc 1 147 0
	lis 6,_tempcolorelement@ha
	.loc 1 148 0
	la 10,_tempnormalelement@l(7)
	.loc 1 147 0
	la 11,_tempcolorelement@l(6)
	.loc 1 148 0
	lwz 0,8(10)
	lwz 7,_tempnormalelement@l(7)
	.loc 1 147 0
	lwz 5,12(11)
	lwz 4,8(11)
.LVL91:
	lwz 12,4(11)
	lwz 6,_tempcolorelement@l(6)
	.loc 1 148 0
	lwz 11,4(10)
	stw 0,32(9)
.LVL92:
	.loc 1 141 0
	li 0,8
	.loc 1 148 0
	stw 7,24(9)
	.loc 1 141 0
	mtctr 0
	.loc 1 148 0
	lis 7,_temptexcoordelement-8@ha
	.loc 1 147 0
	stw 6,8(9)
	stw 12,12(9)
	.loc 1 148 0
	la 7,_temptexcoordelement-8@l(7)
	.loc 1 147 0
	stw 4,16(9)
	stw 5,20(9)
	.loc 1 148 0
	stw 11,28(9)
	.loc 1 141 0
	addi 9,9,28
.LVL93:
.L71:
	.loc 1 153 0
	addi 7,7,8
	lwz 10,0(7)
	lwz 11,4(7)
	stwu 10,8(9)
	stw 11,4(9)
	.loc 1 151 0
	bdnz .L71
	.loc 1 156 0
	stw 8,0(3)
	li 0,1
.LVL94:
.L70:
.LBE27:
.LBE26:
	.loc 1 159 0
	mr 3,0
.LVL95:
	blr
	.cfi_endproc
.LFE68:
	.size	pushCurrent, .-pushCurrent
	.align 2
	.type	pushDepthBuffer, @function
pushDepthBuffer:
.LFB70:
	.loc 1 191 0
	.cfi_startproc
.LVL96:
	.loc 1 194 0
	lwz 11,0(3)
	.loc 1 191 0
	mr 9,3
.LVL97:
	.loc 1 194 0
	li 3,0
.LVL98:
	addi 0,11,8
	cmplw 7,0,4
	bgtlr- 7
.LVL99:
.LBB30:
.LBB31:
	.loc 1 196 0
	lis 10,depthtestenabled@ha
	.loc 1 199 0
	li 3,1
	.loc 1 196 0
	lbz 0,depthtestenabled@l(10)
	lwz 10,0(11)
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 10,0,31,0,0
	stw 10,0(11)
	.loc 1 197 0
	lis 11,depthupdate@ha
	lbz 0,depthupdate@l(11)
	lwz 11,0(9)
	xori 0,0,1
	lwz 10,0(11)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 10,0,30,1,1
	stw 10,0(11)
	.loc 1 198 0
	lis 10,depthfunction@ha
	lwz 11,0(9)
	lwz 0,depthfunction@l(10)
	.loc 1 199 0
	lis 10,_cleardepth@ha
	.loc 1 198 0
	stb 0,1(11)
	.loc 1 199 0
	lwz 11,0(9)
	lwz 10,_cleardepth@l(10)
	addi 0,11,8
	stw 10,4(11)
	stw 0,0(9)
.LBE31:
.LBE30:
	.loc 1 202 0
	blr
	.cfi_endproc
.LFE70:
	.size	pushDepthBuffer, .-pushDepthBuffer
	.align 2
	.type	pushFog, @function
pushFog:
.LFB76:
	.loc 1 386 0
	.cfi_startproc
.LVL100:
	.loc 1 389 0
	lwz 11,0(3)
	.loc 1 386 0
	mr 9,3
.LVL101:
	.loc 1 389 0
	li 3,0
.LVL102:
	addi 0,11,24
	cmplw 7,0,4
	bgtlr- 7
.LVL103:
.LBB34:
.LBB35:
	.loc 1 391 0
	lis 10,fog_enable@ha
	lwz 0,0(11)
	lbz 10,fog_enable@l(10)
	.loc 1 397 0
	li 3,1
	.loc 1 391 0
	rlwimi 0,10,31,0,0
	.loc 1 392 0
	lis 10,fog_mode@ha
	.loc 1 391 0
	stw 0,0(11)
	.loc 1 392 0
	lwz 11,0(9)
	lbz 0,fog_mode@l(10)
	.loc 1 394 0
	lis 10,fog_startz@ha
	.loc 1 392 0
	stb 0,1(11)
	.loc 1 394 0
	lwz 7,fog_startz@l(10)
	.loc 1 395 0
	lis 10,fog_endz@ha
	.loc 1 394 0
	lwz 11,0(9)
	.loc 1 395 0
	lwz 8,fog_endz@l(10)
	.loc 1 397 0
	lis 10,fog_color@ha
	lwz 10,fog_color@l(10)
	addi 0,11,24
	.loc 1 394 0
	stw 7,8(11)
	.loc 1 395 0
	stw 8,12(11)
	.loc 1 397 0
	stw 10,20(11)
	stw 0,0(9)
.LBE35:
.LBE34:
	.loc 1 400 0
	blr
	.cfi_endproc
.LFE76:
	.size	pushFog, .-pushFog
	.align 2
	.type	pushLighting, @function
pushLighting:
.LFB80:
	.loc 1 474 0
	.cfi_startproc
.LVL104:
	mflr 0
	stwu 1,-32(1)
.LCFI19:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	stw 0,36(1)
	stw 27,12(1)
	.loc 1 477 0
	lwz 30,0(3)
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 474 0
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
.LVL105:
	.loc 1 477 0
	addi 27,30,1412
	.loc 1 474 0
	stw 29,20(1)
	.loc 1 477 0
	cmplw 7,27,4
	.loc 1 474 0
	stw 31,28(1)
	.loc 1 477 0
	li 3,0
.LVL106:
	bgt- 7,.L81
	.cfi_offset 31, -4
	.cfi_offset 29, -12
.LVL107:
.LBB38:
.LBB39:
	.loc 1 479 0
	lis 9,copy_mat_enabled@ha
	lwz 0,0(30)
	lbz 9,copy_mat_enabled@l(9)
	.loc 1 482 0
	lis 11,globAmbient@ha
	.loc 1 481 0
	lis 8,copy_material@ha
	lis 29,lights@ha
	.loc 1 479 0
	rlwimi 0,9,31,0,0
	.loc 1 480 0
	lis 9,lighting@ha
	.loc 1 479 0
	stw 0,0(30)
	.loc 1 482 0
	li 31,0
	la 29,lights@l(29)
	.loc 1 480 0
	lbz 9,lighting@l(9)
	rlwimi 0,9,30,1,1
	.loc 1 482 0
	la 9,globAmbient@l(11)
	.loc 1 480 0
	stw 0,0(30)
	.loc 1 482 0
	lwz 0,12(9)
	lwz 10,8(9)
	lwz 11,globAmbient@l(11)
	lwz 9,4(9)
	.loc 1 481 0
	lwz 8,copy_material@l(8)
	.loc 1 482 0
	stw 11,12(30)
	.loc 1 481 0
	stw 8,8(30)
	.loc 1 482 0
	stw 9,16(30)
	stw 10,20(30)
	stw 0,24(30)
.LVL108:
.L82:
	.loc 1 473 0
	add 3,30,31
	.loc 1 488 0
	add 4,29,31
	addi 3,3,28
	li 5,164
	bl memcpy
	.loc 1 486 0
	cmpwi 7,31,1148
	addi 31,31,164
	bne+ 7,.L82
	.loc 1 491 0
	lis 4,curmat@ha
	addi 3,30,1340
	la 4,curmat@l(4)
	li 5,68
	bl memcpy
	stw 27,0(28)
	li 3,1
.LVL109:
.L81:
.LBE39:
.LBE38:
	.loc 1 494 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL110:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE80:
	.size	pushLighting, .-pushLighting
	.align 2
	.type	pushLine, @function
pushLine:
.LFB82:
	.loc 1 531 0
	.cfi_startproc
.LVL111:
	.loc 1 534 0
	lwz 11,0(3)
	li 0,0
	addi 9,11,16
	cmplw 7,9,4
	bgt- 7,.L86
.LVL112:
.LBB42:
.LBB43:
	.loc 1 536 0
	lis 10,line_width@ha
	li 0,1
	lwz 10,line_width@l(10)
	stw 10,12(11)
	stw 9,0(3)
.LVL113:
.L86:
.LBE43:
.LBE42:
	.loc 1 539 0
	mr 3,0
.LVL114:
	blr
	.cfi_endproc
.LFE82:
	.size	pushLine, .-pushLine
	.align 2
	.type	pushListBase, @function
pushListBase:
.LFB84:
	.loc 1 557 0
	.cfi_startproc
.LVL115:
	.loc 1 560 0
	lwz 11,0(3)
	li 0,0
	addi 9,11,4
	cmplw 7,9,4
	bgt- 7,.L89
.LVL116:
.LBB46:
.LBB47:
	.loc 1 562 0
	lis 10,call_offset@ha
	li 0,1
	lwz 10,call_offset@l(10)
	stw 10,0(11)
	stw 9,0(3)
.LVL117:
.L89:
.LBE47:
.LBE46:
	.loc 1 565 0
	mr 3,0
.LVL118:
	blr
	.cfi_endproc
.LFE84:
	.size	pushListBase, .-pushListBase
	.align 2
	.type	pushPixelMode, @function
pushPixelMode:
.LFB86:
	.loc 1 605 0
	.cfi_startproc
.LVL119:
	.loc 1 608 0
	lwz 9,0(3)
	li 0,0
	.loc 1 605 0
	stwu 1,-24(1)
.LCFI21:
	.cfi_def_cfa_offset 24
	.loc 1 608 0
	addi 11,9,64
	cmplw 7,11,4
	.loc 1 605 0
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 608 0
	bgt- 7,.L92
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LVL120:
.LBB50:
.LBB51:
	.loc 1 610 0
	lis 10,Trans@ha
	la 10,Trans@l(10)
	lwz 29,4(10)
	.loc 1 611 0
	lwz 30,8(10)
	lwz 31,12(10)
	.loc 1 612 0
	lwz 4,16(10)
.LVL121:
	lwz 5,20(10)
	.loc 1 613 0
	lwz 6,24(10)
	lwz 7,28(10)
	.loc 1 610 0
	lwz 28,0(10)
	.loc 1 614 0
	lis 10,read_mode@ha
	lwz 0,read_mode@l(10)
	.loc 1 610 0
	stw 28,4(9)
	.loc 1 614 0
	stw 0,60(9)
	li 0,1
	.loc 1 610 0
	stw 29,8(9)
	.loc 1 611 0
	stw 30,12(9)
	stw 31,16(9)
	.loc 1 612 0
	stw 4,20(9)
	stw 5,24(9)
	.loc 1 613 0
	stw 6,28(9)
	stw 7,32(9)
	.loc 1 614 0
	stw 11,0(3)
.LVL122:
.L92:
.LBE51:
.LBE50:
	.loc 1 617 0
	lwz 28,8(1)
	mr 3,0
.LVL123:
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE86:
	.size	pushPixelMode, .-pushPixelMode
	.align 2
	.type	pushPoint, @function
pushPoint:
.LFB88:
	.loc 1 642 0
	.cfi_startproc
.LVL124:
	.loc 1 645 0
	lwz 11,0(3)
	li 0,0
	addi 9,11,8
	cmplw 7,9,4
	bgt- 7,.L95
.LVL125:
.LBB54:
.LBB55:
	.loc 1 647 0
	lis 10,point_size@ha
	li 0,1
	lwz 10,point_size@l(10)
	stw 10,4(11)
	stw 9,0(3)
.LVL126:
.L95:
.LBE55:
.LBE54:
	.loc 1 650 0
	mr 3,0
.LVL127:
	blr
	.cfi_endproc
.LFE88:
	.size	pushPoint, .-pushPoint
	.align 2
	.type	pushScissor, @function
pushScissor:
.LFB94:
	.loc 1 761 0
	.cfi_startproc
.LVL128:
	.loc 1 764 0
	lwz 9,0(3)
	li 0,0
	addi 11,9,20
	cmplw 7,11,4
	bgt- 7,.L98
.LVL129:
.LBB58:
.LBB59:
	.loc 1 766 0
	lis 10,scissor_test@ha
	.loc 1 767 0
	lis 8,scissorInfo@ha
	.loc 1 766 0
	lbz 0,scissor_test@l(10)
	lwz 10,0(9)
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 10,0,31,0,0
	stw 10,0(9)
	.loc 1 767 0
	la 10,scissorInfo@l(8)
	lwz 0,8(10)
	lwz 7,4(10)
	lwz 6,12(10)
	lwz 10,scissorInfo@l(8)
	stw 6,16(9)
	stw 0,12(9)
	li 0,1
	stw 10,4(9)
	stw 7,8(9)
	stw 11,0(3)
.LVL130:
.L98:
.LBE59:
.LBE58:
	.loc 1 770 0
	mr 3,0
.LVL131:
	blr
	.cfi_endproc
.LFE94:
	.size	pushScissor, .-pushScissor
	.align 2
	.type	pushTexture, @function
pushTexture:
.LFB98:
	.loc 1 834 0
	.cfi_startproc
.LVL132:
	mflr 0
	stwu 1,-24(1)
.LCFI23:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
.LVL133:
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 837 0
	lwz 9,0(3)
	li 3,0
.LVL134:
	.loc 1 834 0
	stw 30,16(1)
	.loc 1 837 0
	addi 0,9,928
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 834 0
	stw 31,20(1)
	.loc 1 837 0
	cmplw 7,0,4
	bgt- 7,.L101
	.cfi_offset 31, -4
	lis 29,_temptexcoordelement-8@ha
	lis 30,glTexEnvs@ha
	la 29,_temptexcoordelement-8@l(29)
	la 30,glTexEnvs@l(30)
	li 31,0
.LVL135:
.L103:
.LBB62:
.LBB63:
	.loc 1 843 0
	addi 29,29,8
	.loc 1 844 0
	mulli 0,31,108
	.loc 1 843 0
	lwz 10,0(29)
	slwi 8,31,3
	lwz 11,4(29)
	add 8,9,8
	stw 10,0(8)
	.loc 1 844 0
	add 9,9,0
	.loc 1 843 0
	stw 11,4(8)
	.loc 1 844 0
	mr 4,30
	addi 3,9,64
	li 5,108
	bl memcpy
.LVL136:
	.loc 1 841 0
	cmpwi 7,31,7
	lwz 9,0(28)
	addi 30,30,108
	addi 31,31,1
.LVL137:
	bne+ 7,.L103
	.loc 1 847 0
	addi 0,9,928
	li 3,1
	stw 0,0(28)
.LVL138:
.L101:
.LBE63:
.LBE62:
	.loc 1 850 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL139:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE98:
	.size	pushTexture, .-pushTexture
	.align 2
	.type	pushTransform, @function
pushTransform:
.LFB100:
	.loc 1 886 0
	.cfi_startproc
.LVL140:
	.loc 1 889 0
	lwz 11,0(3)
	li 0,0
	addi 9,11,104
	cmplw 7,9,4
	bgt- 7,.L106
.LVL141:
.LBB66:
.LBB67:
	.loc 1 891 0
	lis 10,cur_mode@ha
	li 0,1
	lwz 10,cur_mode@l(10)
	stw 10,100(11)
	stw 9,0(3)
.LVL142:
.L106:
.LBE67:
.LBE66:
	.loc 1 894 0
	mr 3,0
.LVL143:
	blr
	.cfi_endproc
.LFE100:
	.size	pushTransform, .-pushTransform
	.align 2
	.type	pushViewport, @function
pushViewport:
.LFB102:
	.loc 1 914 0
	.cfi_startproc
.LVL144:
	.loc 1 917 0
	lwz 9,0(3)
	li 0,0
	addi 11,9,24
	cmplw 7,11,4
	bgt- 7,.L109
.LVL145:
.LBB70:
.LBB71:
	.loc 1 921 0
	lis 8,viewPort@ha
	.loc 1 919 0
	lis 6,normNear@ha
	.loc 1 921 0
	la 10,viewPort@l(8)
	.loc 1 919 0
	lwz 5,normNear@l(6)
	.loc 1 920 0
	lis 6,normFar@ha
	.loc 1 921 0
	lwz 0,12(10)
	lwz 7,8(10)
	lwz 8,viewPort@l(8)
	lwz 10,4(10)
	.loc 1 920 0
	lwz 6,normFar@l(6)
	.loc 1 921 0
	stw 0,20(9)
	li 0,1
	.loc 1 919 0
	stw 5,0(9)
	.loc 1 920 0
	stw 6,4(9)
	.loc 1 921 0
	stw 8,8(9)
	stw 10,12(9)
	stw 7,16(9)
	stw 11,0(3)
.LVL146:
.L109:
.LBE71:
.LBE70:
	.loc 1 924 0
	mr 3,0
.LVL147:
	blr
	.cfi_endproc
.LFE102:
	.size	pushViewport, .-pushViewport
	.align 2
	.type	pushPixelStore, @function
pushPixelStore:
.LFB112:
	.loc 1 1127 0
	.cfi_startproc
.LVL148:
	.loc 1 1130 0
	lwz 9,0(3)
	li 0,0
	.loc 1 1127 0
	stwu 1,-24(1)
.LCFI25:
	.cfi_def_cfa_offset 24
	.loc 1 1130 0
	addi 11,9,40
	cmplw 7,11,4
	.loc 1 1127 0
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 1130 0
	bgt- 7,.L112
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LVL149:
.LBB74:
.LBB75:
	.loc 1 1132 0
	lis 6,pack@ha
	.loc 1 1133 0
	lis 7,unpack@ha
	.loc 1 1132 0
	la 8,pack@l(6)
	.loc 1 1133 0
	la 10,unpack@l(7)
	lwz 0,16(10)
	.loc 1 1132 0
	lwz 4,16(8)
.LVL150:
	lwz 12,12(8)
	lwz 31,8(8)
	lwz 30,4(8)
	.loc 1 1133 0
	lwz 5,4(10)
	lwz 8,12(10)
	.loc 1 1132 0
	lwz 29,pack@l(6)
	.loc 1 1133 0
	lwz 7,unpack@l(7)
	lwz 6,8(10)
	stw 0,36(9)
	li 0,1
	.loc 1 1132 0
	stw 29,0(9)
	stw 30,4(9)
	stw 31,8(9)
	stw 12,12(9)
	stw 4,16(9)
	.loc 1 1133 0
	stw 7,20(9)
	stw 5,24(9)
	stw 6,28(9)
	stw 8,32(9)
	stw 11,0(3)
.LVL151:
.L112:
.LBE75:
.LBE74:
	.loc 1 1136 0
	lwz 29,12(1)
	mr 3,0
.LVL152:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI26:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE112:
	.size	pushPixelStore, .-pushPixelStore
	.align 2
	.type	pushVertexArray, @function
pushVertexArray:
.LFB114:
	.loc 1 1158 0
	.cfi_startproc
.LVL153:
	.loc 1 1161 0
	lwz 11,0(3)
	.loc 1 1158 0
	mr 9,3
.LVL154:
	.loc 1 1161 0
	li 3,0
.LVL155:
	addi 0,11,220
	cmplw 7,0,4
	bgtlr- 7
.LVL156:
.LBB78:
.LBB79:
	.loc 1 1163 0
	lis 8,norm@ha
	la 10,norm@l(8)
	lwz 8,norm@l(8)
	lwz 0,16(10)
	lwz 7,12(10)
	lwz 6,8(10)
	lwz 5,4(10)
	stw 8,0(11)
	.loc 1 1164 0
	lis 8,vert@ha
	.loc 1 1163 0
	stw 5,4(11)
	.loc 1 1164 0
	la 10,vert@l(8)
	.loc 1 1163 0
	stw 6,8(11)
	stw 7,12(11)
	stw 0,16(11)
	.loc 1 1164 0
	lwz 7,12(10)
	lwz 11,0(9)
	lwz 0,16(10)
	lwz 6,8(10)
	lwz 5,4(10)
	lwz 4,vert@l(8)
.LVL157:
	.loc 1 1165 0
	lis 8,color@ha
	.loc 1 1164 0
	stw 5,24(11)
	.loc 1 1165 0
	la 10,color@l(8)
	.loc 1 1164 0
	stw 6,28(11)
	stw 7,32(11)
	stw 0,36(11)
	stw 4,20(11)
	.loc 1 1165 0
	lwz 0,16(10)
	lwz 11,0(9)
	lwz 5,color@l(8)
	lwz 6,4(10)
	lwz 8,12(10)
	lwz 7,8(10)
	stw 0,216(11)
.LVL158:
	.loc 1 1168 0
	li 0,8
	.loc 1 1165 0
	stw 8,212(11)
	.loc 1 1168 0
	mtctr 0
	.loc 1 1165 0
	stw 5,200(11)
	.loc 1 1168 0
	li 8,0
	.loc 1 1165 0
	stw 6,204(11)
	stw 7,208(11)
	lis 11,tex@ha
	la 11,tex@l(11)
.LVL159:
.L116:
	.loc 1 1170 0
	lwz 4,0(9)
	mulli 10,8,20
	lwz 0,12(11)
	.loc 1 1168 0
	addi 8,8,1
.LVL160:
	.loc 1 1170 0
	lwz 5,0(11)
	add 10,4,10
	lwz 6,4(11)
	lwz 7,8(11)
	stw 5,40(10)
	stw 6,44(10)
	stw 7,48(10)
	stw 0,52(10)
	lwz 0,16(11)
	.loc 1 1168 0
	addi 11,11,20
	.loc 1 1170 0
	stw 0,56(10)
	.loc 1 1168 0
	bdnz .L116
	.loc 1 1173 0
	lwz 11,0(9)
	li 3,1
	addi 0,11,220
	stw 0,0(9)
.LBE79:
.LBE78:
	.loc 1 1176 0
	blr
	.cfi_endproc
.LFE114:
	.size	pushVertexArray, .-pushVertexArray
	.align 2
	.type	pushPolygon, @function
pushPolygon:
.LFB90:
	.loc 1 691 0
	.cfi_startproc
.LVL161:
	mflr 0
	stwu 1,-8(1)
.LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 694 0
	lwz 9,0(3)
	addi 0,9,24
	.cfi_offset 65, 4
	cmplw 7,0,4
	bgt- 7,.L126
	.loc 1 696 0
	lis 11,cull_mode@ha
	lbz 11,cull_mode@l(11)
	cmpwi 7,11,2
	beq- 7,.L123
	cmpwi 7,11,3
	beq- 7,.L124
	cmpwi 7,11,1
	beq- 7,.L128
.LBB82:
.LBB83:
	.loc 1 708 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL162:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	li 4,708
.LVL163:
	addi 5,5,4
	la 6,.LC3@l(6)
	bl __assert_func
.LVL164:
.L126:
.LBE83:
.LBE82:
	.loc 1 714 0
	lwz 0,12(1)
	.loc 1 694 0
	li 9,0
	.loc 1 714 0
	mr 3,9
.LVL165:
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI28:
	.cfi_def_cfa_offset 0
	blr
.LVL166:
.L123:
.LCFI29:
	.cfi_restore_state
	.loc 1 702 0
	li 11,1029
	stw 11,4(9)
.L125:
	.loc 1 710 0
	lis 11,gxwinding@ha
	lwz 10,0(9)
	lwz 11,gxwinding@l(11)
	xori 11,11,2305
	cntlzw 11,11
	srwi 11,11,5
	rlwimi 10,11,30,1,1
	.loc 1 711 0
	lis 11,gxcullfaceanabled@ha
	.loc 1 710 0
	stw 10,0(9)
	.loc 1 711 0
	lbz 11,gxcullfaceanabled@l(11)
	rlwimi 10,11,31,0,0
	stw 10,0(9)
	.loc 1 713 0
	li 9,1
	.loc 1 711 0
	stw 0,0(3)
	.loc 1 714 0
	mr 3,9
.LVL167:
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL168:
.L128:
.LCFI31:
	.cfi_restore_state
	.loc 1 699 0
	li 11,1028
	stw 11,4(9)
	.loc 1 700 0
	b .L125
.L124:
	.loc 1 705 0
	li 11,1032
	stw 11,4(9)
	.loc 1 706 0
	b .L125
	.cfi_endproc
.LFE90:
	.size	pushPolygon, .-pushPolygon
	.align 2
	.type	pushEnable, @function
pushEnable:
.LFB72:
	.loc 1 276 0
	.cfi_startproc
.LVL169:
	mflr 0
	stwu 1,-16(1)
.LCFI32:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL170:
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 279 0
	lwz 9,0(3)
	li 3,0
.LVL171:
	addi 0,9,8
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmplw 7,0,4
	bgt- 7,.L130
.LVL172:
.LBB86:
.LBB87:
	.loc 1 281 0
	lis 11,blend_type@ha
	.loc 1 293 0
	li 7,1
	.loc 1 281 0
	lbz 0,blend_type@l(11)
	lwz 11,0(9)
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,29,2,2
	stw 11,0(9)
	.loc 1 282 0
	lis 11,copy_mat_enabled@ha
	lwz 9,0(31)
	lbz 11,copy_mat_enabled@l(11)
	lwz 0,0(9)
	rlwimi 0,11,28,3,3
	.loc 1 283 0
	lis 11,gxcullfaceanabled@ha
	.loc 1 282 0
	stw 0,0(9)
	.loc 1 283 0
	lwz 9,0(31)
	lbz 11,gxcullfaceanabled@l(11)
	lwz 0,0(9)
	rlwimi 0,11,27,4,4
	stw 0,0(9)
	.loc 1 284 0
	lis 9,depthtestenabled@ha
	lbz 0,depthtestenabled@l(9)
	lwz 9,0(31)
	xori 0,0,1
	lwz 11,0(9)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,26,5,5
	stw 11,0(9)
	.loc 1 285 0
	lis 9,fog_enable@ha
	.loc 1 288 0
	lis 11,lights@ha
	.loc 1 285 0
	lwz 10,0(31)
	.loc 1 288 0
	la 11,lights@l(11)
	.loc 1 285 0
	lbz 8,fog_enable@l(9)
	.loc 1 289 0
	li 9,0
	.loc 1 285 0
	lwz 0,0(10)
	rlwimi 0,8,24,7,7
	stw 0,0(10)
	.loc 1 293 0
	li 0,8
	mtctr 0
	.loc 1 288 0
	lwz 10,0(31)
	stb 3,2(10)
.LVL173:
.L132:
	.loc 1 291 0
	lbz 0,0(11)
	.loc 1 293 0
	slw 8,7,9
	.loc 1 289 0
	addi 11,11,164
	addi 9,9,1
	.loc 1 291 0
	cmpwi 7,0,0
	beq- 7,.L131
	.loc 1 293 0
	lwz 10,0(31)
	lbz 0,2(10)
	or 8,8,0
	stb 8,2(10)
.L131:
.LVL174:
	.loc 1 289 0
	bdnz .L132
	.loc 1 297 0
	lwz 9,0(31)
.LVL175:
	lis 11,lighting@ha
	lbz 11,lighting@l(11)
	lwz 0,0(9)
	rlwimi 0,11,7,24,24
	stw 0,0(9)
	.loc 1 298 0
	lis 9,scissor_test@ha
	lbz 0,scissor_test@l(9)
	lwz 9,0(31)
	xori 0,0,1
	lwz 11,4(9)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,27,4,4
	stw 11,4(9)
	.loc 1 299 0
	lis 9,cur_tex@ha
	lwz 30,0(31)
	lwz 3,cur_tex@l(9)
	bl _glGetEnableTex
.LVL176:
	lwz 0,4(30)
	addi 9,30,8
	rlwimi 0,3,24,7,7
	li 3,1
	stw 0,4(30)
	stw 9,0(31)
.LVL177:
.L130:
.LBE87:
.LBE86:
	.loc 1 302 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL178:
	addi 1,1,16
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE72:
	.size	pushEnable, .-pushEnable
	.align 2
	.type	resizeStack, @function
resizeStack:
.LFB105:
	.loc 1 990 0
	.cfi_startproc
.LVL179:
	mflr 0
	stwu 1,-16(1)
.LCFI34:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 1 995 0
	li 30,1024
	.cfi_offset 30, -8
	.loc 1 990 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 990 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 993 0
	lwz 0,76(3)
	cmpwi 7,0,0
	beq- 7,.L136
	.loc 1 999 0
	slwi 30,0,1
.LVL180:
.L136:
	.loc 1 1002 0
	lwz 3,68(31)
.LVL181:
	li 4,1024
	bl realloc
.LVL182:
	.loc 1 1004 0
	cmpwi 0,3,0
	beq- 0,.L140
.LBB96:
	.loc 1 1006 0
	lwz 9,72(31)
	lwz 0,68(31)
	.loc 1 1008 0
	stw 30,76(31)
	.loc 1 1006 0
	subf 0,0,9
.LVL183:
	.loc 1 1007 0
	stw 3,68(31)
	.loc 1 1011 0
	add 0,3,0
.LVL184:
	.loc 1 1012 0
	cmplw 7,3,0
	.loc 1 1011 0
	stw 0,72(31)
	.loc 1 1012 0
	bgt- 7,.L142
.LVL185:
.LBB97:
.LBB98:
	.loc 1 986 0
	add 30,3,30
.LVL186:
.LBE98:
.LBE97:
	.loc 1 1014 0
	li 3,1
.LVL187:
	.loc 1 1013 0
	cmplw 7,0,30
	bgt- 7,.L143
.LBE96:
	.loc 1 1020 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL188:
	addi 1,1,16
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL189:
.L140:
.LCFI36:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 1018 0
	li 3,0
.LVL190:
	.loc 1 1020 0
	lwz 30,8(1)
.LVL191:
	mtlr 0
	lwz 31,12(1)
.LVL192:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI37:
	.cfi_def_cfa_offset 0
	blr
.LVL193:
.L142:
.LCFI38:
	.cfi_restore_state
.LBB99:
.LBB100:
.LBB101:
	.loc 1 1012 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL194:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC1@ha
	la 3,.LC0@l(3)
	li 4,1012
	addi 5,5,16
	la 6,.LC1@l(6)
	bl __assert_func
.LVL195:
.L143:
.LBE101:
.LBE100:
.LBE99:
.LBB102:
	.loc 1 1013 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	li 4,1013
	addi 5,5,16
	la 6,.LC2@l(6)
	bl __assert_func
.LVL196:
.LVL197:
.LVL198:
.LBE102:
	.cfi_endproc
.LFE105:
	.size	resizeStack, .-resizeStack
	.align 2
	.type	push, @function
push:
.LFB108:
	.loc 1 1038 0
	.cfi_startproc
.LVL199:
	mflr 0
	stwu 1,-48(1)
.LCFI39:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 27,28(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 0,52(1)
	stw 30,40(1)
	mr 30,5
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 1041 0
	lwz 0,64(3)
	.loc 1 1038 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 1041 0
	cmpwi 7,0,15
	.loc 1 1038 0
	stw 28,32(1)
	stw 29,36(1)
	.loc 1 1041 0
	bgt- 7,.L163
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 1047 0
	lwz 0,72(3)
	.loc 1 1049 0
	lwz 9,68(3)
	.loc 1 1047 0
	stw 0,8(1)
.LVL200:
	.loc 1 1049 0
	cmplw 7,0,9
	blt- 7,.L164
.LVL201:
.LBB103:
.LBB104:
	.loc 1 986 0
	lwz 11,76(3)
	add 10,9,11
.LBE104:
.LBE103:
	.loc 1 1050 0
	cmplw 7,0,10
	bgt- 7,.L148
.LVL202:
	.loc 1 1052 0 discriminator 1
	cmpwi 7,5,0
	.loc 1 1050 0 discriminator 1
	mr 29,4
	.loc 1 1052 0 discriminator 1
	li 28,0
	beq- 7,.L150
.LVL203:
.L158:
	.loc 1 1054 0
	lwz 0,0(29)
	and 11,0,27
	cmpw 7,0,11
	beq- 7,.L152
.L151:
	.loc 1 1052 0
	addi 28,28,1
.LVL204:
	addi 29,29,12
	cmpw 7,28,30
	bne+ 7,.L158
	lwz 0,72(31)
	.loc 1 1069 0
	cmplw 7,9,0
	bgt- 7,.L160
	lwz 11,76(31)
.LVL205:
.L150:
.LBB105:
.LBB106:
	.loc 1 986 0
	add 9,9,11
.LVL206:
.LBE106:
.LBE105:
	.loc 1 1070 0
	cmplw 7,0,9
	bgt- 7,.L165
	.loc 1 1073 0
	lwz 9,64(31)
	.loc 1 1072 0
	lwz 11,8(1)
	.loc 1 1073 0
	slwi 0,9,2
	addi 9,9,1
	stwx 27,31,0
	.loc 1 1074 0
	lwz 0,52(1)
	.loc 1 1072 0
	stw 11,72(31)
	.loc 1 1074 0
	mtlr 0
	.loc 1 1073 0
	stw 9,64(31)
	.loc 1 1074 0
	lwz 27,28(1)
.LVL207:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL208:
	lwz 31,44(1)
.LVL209:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI40:
	.cfi_def_cfa_offset 0
	blr
.LVL210:
.L167:
.LCFI41:
	.cfi_restore_state
	.loc 1 1059 0
	lwz 9,68(31)
.LVL211:
.L152:
.LBB107:
.LBB108:
	.loc 1 986 0 discriminator 1
	lwz 4,76(31)
.LBE108:
.LBE107:
	.loc 1 1056 0 discriminator 1
	addi 3,1,8
	lwz 0,4(29)
	add 4,9,4
	mtctr 0
	bctrl
.LVL212:
	cmpwi 7,3,0
	bne- 7,.L166
	.loc 1 1059 0
	mr 3,31
	bl resizeStack
	cmpwi 7,3,0
	bne+ 7,.L167
	.loc 1 1062 0
	lis 4,.LC0@ha
	li 3,1283
	la 4,.LC0@l(4)
	li 5,1062
	bl _glSetErrorEx
	.loc 1 1074 0
	lwz 0,52(1)
	lwz 27,28(1)
.LVL213:
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL214:
	lwz 31,44(1)
.LVL215:
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
.LVL216:
.L166:
.LCFI43:
	.cfi_restore_state
	.loc 1 1056 0
	lwz 9,68(31)
	b .L151
.LVL217:
.L163:
	.loc 1 1043 0
	lis 4,.LC0@ha
.LVL218:
	li 3,1283
	la 4,.LC0@l(4)
	li 5,1043
	bl _glSetErrorEx
	.loc 1 1074 0
	lwz 0,52(1)
	lwz 27,28(1)
.LVL219:
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL220:
	lwz 31,44(1)
.LVL221:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI44:
	.cfi_def_cfa_offset 0
	blr
.LVL222:
.L164:
.LCFI45:
	.cfi_restore_state
	.loc 1 1049 0 discriminator 1
	lis 3,.LC0@ha
.LVL223:
	li 4,1049
.LVL224:
	la 3,.LC0@l(3)
.LVL225:
.L161:
	.loc 1 1069 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	addi 5,5,28
	bl __assert_func
.LVL226:
.L148:
	.loc 1 1050 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1050
.LVL227:
	la 3,.LC0@l(3)
.LVL228:
.L162:
	.loc 1 1070 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 6,.LC2@ha
	la 5,.LANCHOR0@l(5)
	la 6,.LC2@l(6)
	addi 5,5,28
	bl __assert_func
.L165:
	lis 3,.LC0@ha
	li 4,1070
	la 3,.LC0@l(3)
	b .L162
.LVL229:
.L160:
	.loc 1 1069 0 discriminator 1
	lis 3,.LC0@ha
	li 4,1069
	la 3,.LC0@l(3)
	b .L161
	.cfi_endproc
.LFE108:
	.size	push, .-push
	.align 2
	.type	initStack, @function
initStack:
.LFB106:
	.loc 1 1023 0
	.cfi_startproc
.LVL230:
	stwu 1,-16(1)
.LCFI46:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 1 1024 0
	li 4,0
	li 5,80
	.loc 1 1023 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 1024 0
	.cfi_offset 65, 4
	bl memset
.LVL231:
	.loc 1 1025 0
	mr 3,31
	bl resizeStack
	.loc 1 1028 0
	lwz 0,68(31)
	.loc 1 1027 0
	li 9,0
	.loc 1 1028 0
	stw 0,72(31)
	.loc 1 1029 0
	lwz 0,20(1)
	.loc 1 1027 0
	stw 9,64(31)
	.loc 1 1029 0
	mtlr 0
	lwz 31,12(1)
.LVL232:
	addi 1,1,16
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE106:
	.size	initStack, .-initStack
	.align 2
	.globl _glInitStacks
	.type	_glInitStacks, @function
_glInitStacks:
.LFB107:
	.loc 1 1032 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI48:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 1033 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR1@l(31)
	.loc 1 1032 0
	stw 0,20(1)
	.loc 1 1033 0
	mr 3,31
	.cfi_offset 65, 4
	bl initStack
	.loc 1 1035 0
	lwz 0,20(1)
	.loc 1 1034 0
	addi 3,31,80
	.loc 1 1035 0
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 1034 0
	b initStack
	.cfi_endproc
.LFE107:
	.size	_glInitStacks, .-_glInitStacks
	.align 2
	.globl glPushAttrib
	.type	glPushAttrib, @function
glPushAttrib:
.LFB110:
	.loc 1 1106 0
	.cfi_startproc
.LVL233:
	mflr 0
	stwu 1,-8(1)
.LCFI50:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1107 0
	lis 9,cur_state@ha
	.loc 1 1106 0
	mr 6,3
	stw 0,12(1)
	.loc 1 1107 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L173
	.loc 1 1110 0
	lwz 0,12(1)
	.loc 1 1109 0
	lis 3,.LANCHOR1@ha
.LVL234:
	lis 4,.LANCHOR2@ha
	.loc 1 1110 0
	mtlr 0
	.loc 1 1109 0
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	li 5,20
	.loc 1 1110 0
	addi 1,1,8
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.loc 1 1109 0
	b push
.LVL235:
.L173:
.LCFI52:
	.cfi_restore_state
	.loc 1 1107 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL236:
	la 4,.LC0@l(4)
	li 5,1107
	bl _glSetErrorEx
.LVL237:
	.loc 1 1110 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI53:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE110:
	.size	glPushAttrib, .-glPushAttrib
	.align 2
	.globl glPopAttrib
	.type	glPopAttrib, @function
glPopAttrib:
.LFB111:
	.loc 1 1113 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI54:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1114 0
	lis 9,cur_state@ha
	.loc 1 1113 0
	stw 0,12(1)
	.loc 1 1114 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L177
	.loc 1 1117 0
	lwz 0,12(1)
	.loc 1 1116 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	.loc 1 1117 0
	mtlr 0
	.loc 1 1116 0
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	li 5,20
	.loc 1 1117 0
	addi 1,1,8
	.cfi_remember_state
.LCFI55:
	.cfi_def_cfa_offset 0
	.loc 1 1116 0
	b pop
.L177:
.LCFI56:
	.cfi_restore_state
	.loc 1 1114 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1114
	bl _glSetErrorEx
	.loc 1 1117 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI57:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE111:
	.size	glPopAttrib, .-glPopAttrib
	.align 2
	.globl glPushClientAttrib
	.type	glPushClientAttrib, @function
glPushClientAttrib:
.LFB116:
	.loc 1 1201 0
	.cfi_startproc
.LVL238:
	mflr 0
	stwu 1,-8(1)
.LCFI58:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1202 0
	lis 9,cur_state@ha
	.loc 1 1201 0
	mr 6,3
	stw 0,12(1)
	.loc 1 1202 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L181
	.loc 1 1205 0
	lwz 0,12(1)
	.loc 1 1204 0
	lis 3,.LANCHOR1@ha
.LVL239:
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	.loc 1 1205 0
	mtlr 0
	.loc 1 1204 0
	addi 3,3,80
	addi 4,4,240
	li 5,2
	.loc 1 1205 0
	addi 1,1,8
	.cfi_remember_state
.LCFI59:
	.cfi_def_cfa_offset 0
	.loc 1 1204 0
	b push
.LVL240:
.L181:
.LCFI60:
	.cfi_restore_state
	.loc 1 1202 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL241:
	la 4,.LC0@l(4)
	li 5,1202
	bl _glSetErrorEx
.LVL242:
	.loc 1 1205 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI61:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE116:
	.size	glPushClientAttrib, .-glPushClientAttrib
	.align 2
	.globl glPopClientAttrib
	.type	glPopClientAttrib, @function
glPopClientAttrib:
.LFB117:
	.loc 1 1208 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI62:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1209 0
	lis 9,cur_state@ha
	.loc 1 1208 0
	stw 0,12(1)
	.loc 1 1209 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L185
	.loc 1 1212 0
	lwz 0,12(1)
	.loc 1 1211 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	.loc 1 1212 0
	mtlr 0
	.loc 1 1211 0
	addi 3,3,80
	addi 4,4,240
	li 5,2
	.loc 1 1212 0
	addi 1,1,8
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.loc 1 1211 0
	b pop
.L185:
.LCFI64:
	.cfi_restore_state
	.loc 1 1209 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1209
	bl _glSetErrorEx
	.loc 1 1212 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI65:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE117:
	.size	glPopClientAttrib, .-glPopClientAttrib
	.globl clientAttribs
	.globl attribs
	.comm	call_offset,4,4
	.comm	read_mode,4,4
	.comm	glTexEnvs,864,4
	.comm	fog_color,4,1
	.comm	fog_density,4,4
	.comm	fog_endz,4,4
	.comm	fog_startz,4,4
	.comm	fog_mode,1,1
	.comm	fog_enable,1,1
	.comm	Trans,32,4
	.comm	_clearcolor,4,1
	.comm	copy_material,4,4
	.comm	copy_mat_enabled,1,1
	.comm	color_write_mask,4,4
	.comm	unpack,20,4
	.comm	pack,20,4
	.comm	point_size,4,4
	.comm	line_width,4,4
	.comm	normFar,4,4
	.comm	normNear,4,4
	.comm	viewPort,16,4
	.comm	scissorInfo,16,4
	.comm	scissor_test,1,1
	.comm	fb_max_width,4,4
	.comm	fb_max_height,4,4
	.comm	cur_state,4,4
	.comm	cull_mode,1,1
	.comm	blend_op,1,1
	.comm	blend_dst,1,1
	.comm	blend_src,1,1
	.comm	blend_type,1,1
	.comm	lighting,1,1
	.comm	gxwinding,4,4
	.comm	gxcullfaceanabled,1,1
	.comm	curmat,68,4
	.comm	globAmbient,16,4
	.comm	lights,1312,4
	.comm	cur_mode,4,4
	.comm	curmtx,4,4
	.comm	texture_stack,128,4
	.comm	projection_stack,16,4
	.comm	model_stack,16,4
	.comm	_cleardepth,4,4
	.comm	depthfunction,4,4
	.comm	depthupdate,1,1
	.comm	depthtestenabled,1,1
	.comm	cur_tex_client,4,4
	.comm	cur_tex,4,4
	.comm	_GLtype,4,4
	.comm	_type,4,4
	.comm	vert_i,4,4
	.comm	_colorelements,16000,32
	.comm	_texcoordelements,64000,32
	.comm	_vertexelements,12000,32
	.comm	_normalelements,12000,32
	.comm	color,20,4
	.comm	tex,160,4
	.comm	vert,20,4
	.comm	norm,20,4
	.comm	_temptexcoordelement,64,4
	.comm	_tempnormalelement,12,4
	.comm	_tempcolorelement,16,4
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.14259, @object
	.size	__FUNCTION__.14259, 4
__FUNCTION__.14259:
	.string	"pop"
	.type	__FUNCTION__.14096, @object
	.size	__FUNCTION__.14096, 12
__FUNCTION__.14096:
	.string	"pushPolygon"
	.type	__FUNCTION__.14230, @object
	.size	__FUNCTION__.14230, 12
__FUNCTION__.14230:
	.string	"resizeStack"
	.type	__FUNCTION__.14245, @object
	.size	__FUNCTION__.14245, 5
__FUNCTION__.14245:
	.string	"push"
	.section	".data"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	attribs, @object
	.size	attribs, 240
attribs:
	.long	512
	.long	pushAccum
	.long	popAccum
	.long	16384
	.long	pushColorBuffer
	.long	popColorBuffer
	.long	1
	.long	pushCurrent
	.long	popCurrent
	.long	256
	.long	pushDepthBuffer
	.long	popDepthBuffer
	.long	8192
	.long	pushEnable
	.long	popEnable
	.long	65536
	.long	pushEval
	.long	popEval
	.long	128
	.long	pushFog
	.long	popFog
	.long	32768
	.long	pushHint
	.long	popHint
	.long	64
	.long	pushLighting
	.long	popLighting
	.long	4
	.long	pushLine
	.long	popLine
	.long	131072
	.long	pushListBase
	.long	popListBase
	.long	32
	.long	pushPixelMode
	.long	popPixelMode
	.long	2
	.long	pushPoint
	.long	popPoint
	.long	8
	.long	pushPolygon
	.long	popPolygon
	.long	16
	.long	pushPolyStipple
	.long	popPolyStipple
	.long	524288
	.long	pushScissor
	.long	popScissor
	.long	1024
	.long	pushStencil
	.long	popStencil
	.long	262144
	.long	pushTexture
	.long	popTexture
	.long	4096
	.long	pushTransform
	.long	popTransform
	.long	2048
	.long	pushViewport
	.long	popViewport
	.type	clientAttribs, @object
	.size	clientAttribs, 24
clientAttribs:
	.long	1
	.long	pushPixelStore
	.long	popPixelStore
	.long	2
	.long	pushVertexArray
	.long	popVertexArray
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_stacks.c"
	.zero	3
.LC1:
	.string	"ptr->begin <= ptr->cur"
	.zero	1
.LC2:
	.string	"ptr->cur <= stackEnd(ptr)"
	.zero	2
.LC3:
	.string	"0"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	attribStack, @object
	.size	attribStack, 80
attribStack:
	.zero	80
	.type	clientAttribStack, @object
	.size	clientAttribStack, 80
clientAttribStack:
	.zero	80
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e51
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF341
	.byte	0x1
	.4byte	.LASF342
	.4byte	.LASF343
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd4
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
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x94
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x95
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0x9e
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x9f
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xf7
	.uleb128 0x6
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x102
	.uleb128 0x6
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.byte	0x4
	.4byte	0x144
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x176
	.uleb128 0xb
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x60
	.4byte	0x145
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x191
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF344
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x1f1
	.uleb128 0xf
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x1f1
	.uleb128 0xf
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x1f6
	.uleb128 0xf
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x1fb
	.uleb128 0xf
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x200
	.uleb128 0xf
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0x132
	.uleb128 0xf
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x205
	.uleb128 0xf
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0x12d
	.byte	0
	.uleb128 0x7
	.4byte	0x37
	.uleb128 0x7
	.4byte	0x47
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x7
	.4byte	0x55
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x499
	.4byte	0x191
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x258
	.uleb128 0x12
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x216
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x281
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x291
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x264
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x2c4
	.uleb128 0xb
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x8
	.byte	0x19
	.4byte	0x2a3
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x2f0
	.uleb128 0xb
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1f
	.4byte	0x2cf
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x334
	.uleb128 0xb
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x27
	.4byte	0x2fb
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x390
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x8
	.byte	0x44
	.4byte	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x8
	.byte	0x46
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x8
	.byte	0x47
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x8
	.byte	0x48
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x8
	.byte	0x49
	.4byte	0x33f
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x3e0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x9
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x9
	.byte	0x12
	.4byte	0x39b
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x4a6
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x8
	.byte	0x85
	.4byte	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x8
	.byte	0x8b
	.4byte	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x8
	.byte	0x8d
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x8
	.byte	0x8e
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0x8f
	.4byte	0x334
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x8
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x8
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x8
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x8
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x8
	.byte	0x95
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.byte	0x96
	.4byte	0x3eb
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x504
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa2
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x8
	.byte	0xa3
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa4
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0xa5
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa6
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x8
	.byte	0xa7
	.4byte	0x4b1
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x52e
	.uleb128 0x16
	.4byte	.LASF62
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF63
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF64
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x8
	.byte	0xc4
	.4byte	0x50f
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x57a
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x8
	.byte	0xec
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x8
	.byte	0xed
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x8
	.byte	0xee
	.4byte	0x539
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x5e9
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x8
	.byte	0xfd
	.4byte	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x8
	.byte	0xfe
	.4byte	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x8
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x103
	.4byte	0x585
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x621
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x119
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x11a
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x11b
	.4byte	0x5f5
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x4
	.byte	0x8
	.2byte	0x11d
	.4byte	0x653
	.uleb128 0x16
	.4byte	.LASF83
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF84
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF85
	.sleb128 2
	.uleb128 0x16
	.4byte	.LASF86
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x7ab
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x129
	.4byte	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x12b
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x12c
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x12d
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x12e
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x12f
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x130
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x131
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x132
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x133
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x134
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x136
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x138
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x139
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x13b
	.4byte	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x13c
	.4byte	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x13d
	.4byte	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x13e
	.4byte	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x142
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x144
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x145
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xc
	.4byte	0x94
	.4byte	0x7bb
	.uleb128 0xd
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x146
	.4byte	0x653
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x10
	.byte	0x1
	.byte	0xc
	.4byte	0x7e2
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x1
	.byte	0xf
	.4byte	0x7c7
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x2c
	.byte	0x1
	.byte	0x30
	.4byte	0x90e
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.byte	0x32
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x1
	.byte	0x33
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1
	.byte	0x34
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.byte	0x35
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x1
	.byte	0x36
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x1
	.byte	0x37
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x1
	.byte	0x38
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x1
	.byte	0x39
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.byte	0x3b
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.byte	0x3d
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x1
	.byte	0x3e
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.byte	0x41
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x1
	.byte	0x42
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.byte	0x43
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1
	.byte	0x44
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.byte	0x46
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x1
	.byte	0x47
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x1
	.byte	0x49
	.4byte	0x258
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x1
	.byte	0x4a
	.4byte	0x7ed
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0xc8
	.byte	0x1
	.byte	0x7d
	.4byte	0x9b9
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x1
	.byte	0x7f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x1
	.byte	0x80
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x1
	.byte	0x82
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x1
	.byte	0x83
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x1
	.byte	0x84
	.4byte	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x1
	.byte	0x85
	.4byte	0x9b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0x87
	.4byte	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x1
	.byte	0x88
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.byte	0x89
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x1
	.byte	0x8a
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xc
	.4byte	0x2f0
	.4byte	0x9c9
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x1
	.byte	0x8b
	.4byte	0x919
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x8
	.byte	0x1
	.byte	0xb5
	.4byte	0xa1f
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x1
	.byte	0xba
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x1
	.byte	0xbb
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x1
	.byte	0xbc
	.4byte	0x9d4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1
	.byte	0xf5
	.4byte	0xbfc
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.byte	0xf7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x1
	.byte	0xf9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF147
	.byte	0x1
	.byte	0xfa
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.byte	0xfb
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x1
	.byte	0xfc
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x1
	.byte	0xfd
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"fog"
	.byte	0x1
	.byte	0xfe
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x1
	.byte	0xff
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x100
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x101
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x102
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x103
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x104
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x105
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x106
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x107
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x108
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x109
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x10b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x10c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x10d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x10e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x10f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x110
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x111
	.4byte	0xa2a
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0
	.byte	0x1
	.2byte	0x152
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x154
	.4byte	0xc08
	.uleb128 0x1d
	.string	"fog"
	.byte	0x18
	.byte	0x1
	.2byte	0x172
	.4byte	0xc97
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x174
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x176
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x178
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x17a
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x17b
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x17e
	.4byte	0x258
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x1e
	.string	"fog"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xc1d
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0
	.byte	0x1
	.2byte	0x1a6
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xca3
	.uleb128 0x1f
	.4byte	.LASF174
	.2byte	0x584
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xd47
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xd47
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"mat"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x504
	.byte	0x3
	.byte	0x23
	.uleb128 0x53c
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x580
	.byte	0
	.uleb128 0xc
	.4byte	0x4a6
	.4byte	0xd57
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xcb8
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x10
	.byte	0x1
	.2byte	0x209
	.4byte	0xdc2
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x20b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x20c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x20d
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x20e
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x20f
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x210
	.4byte	0xd63
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x4
	.byte	0x1
	.2byte	0x227
	.4byte	0xdeb
	.uleb128 0x17
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x229
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x22a
	.4byte	0xdce
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x40
	.byte	0x1
	.2byte	0x249
	.4byte	0xebf
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x24b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x24c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"red"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x24f
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x250
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x251
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x252
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x254
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x255
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x257
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x257
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x259
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x25a
	.4byte	0xdf7
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0x8
	.byte	0x1
	.2byte	0x27b
	.4byte	0xefa
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x27d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x27e
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x27f
	.4byte	0xecb
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0x18
	.byte	0x1
	.2byte	0x2a2
	.4byte	0xfcb
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2ae
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2af
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2b0
	.4byte	0xf06
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0x4
	.byte	0x1
	.2byte	0x2d9
	.4byte	0xff7
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2db
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2dc
	.4byte	0xfd7
	.uleb128 0x11
	.4byte	.LASF206
	.byte	0x14
	.byte	0x1
	.2byte	0x2f2
	.4byte	0x1032
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x57a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2f6
	.4byte	0x1003
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0x20
	.byte	0x1
	.2byte	0x314
	.4byte	0x10d9
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x316
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x317
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x318
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"ref"
	.byte	0x1
	.2byte	0x319
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x31a
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x31b
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x31b
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x31b
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x31c
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x31d
	.4byte	0x103e
	.uleb128 0x1f
	.4byte	.LASF216
	.2byte	0x3a0
	.byte	0x1
	.2byte	0x33b
	.4byte	0x1112
	.uleb128 0x17
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x33d
	.4byte	0x9b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x33e
	.4byte	0x1112
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xc
	.4byte	0x7bb
	.4byte	0x1122
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x33f
	.4byte	0x10e5
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0x10
	.byte	0x1
	.2byte	0x367
	.4byte	0x114b
	.uleb128 0x12
	.string	"equ"
	.byte	0x1
	.2byte	0x369
	.4byte	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x36a
	.4byte	0x112e
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0x68
	.byte	0x1
	.2byte	0x36c
	.4byte	0x11a4
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x36e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x36f
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x370
	.4byte	0x11a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x371
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0
	.uleb128 0xc
	.4byte	0x114b
	.4byte	0x11b4
	.uleb128 0xd
	.4byte	0x30
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x373
	.4byte	0x1157
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0x18
	.byte	0x1
	.2byte	0x38b
	.4byte	0x11fb
	.uleb128 0x17
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x38d
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"far"
	.byte	0x1
	.2byte	0x38d
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x38e
	.4byte	0x57a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x38f
	.4byte	0x11c0
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x1213
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1219
	.uleb128 0x20
	.byte	0x1
	.4byte	0x137
	.4byte	0x122e
	.uleb128 0x21
	.4byte	0x122e
	.uleb128 0x21
	.4byte	0x45
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x45
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x1240
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1246
	.uleb128 0x22
	.byte	0x1
	.4byte	0x1252
	.uleb128 0x21
	.4byte	0x122e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0xc
	.byte	0x1
	.2byte	0x3ac
	.4byte	0x128d
	.uleb128 0x17
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x3af
	.4byte	0x1207
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"pop"
	.byte	0x1
	.2byte	0x3b0
	.4byte	0x1234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x1252
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0x50
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x12f2
	.uleb128 0x17
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x12f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"cur"
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0
	.uleb128 0xc
	.4byte	0x94
	.4byte	0x1302
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x3d1
	.4byte	0x1299
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0x28
	.byte	0x1
	.2byte	0x460
	.4byte	0x133a
	.uleb128 0x17
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x462
	.4byte	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x463
	.4byte	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x464
	.4byte	0x130e
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xdc
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1391
	.uleb128 0x17
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x47f
	.4byte	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x480
	.4byte	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"tex"
	.byte	0x1
	.2byte	0x481
	.4byte	0x1391
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x482
	.4byte	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0
	.uleb128 0xc
	.4byte	0x390
	.4byte	0x13a1
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x483
	.4byte	0x1346
	.uleb128 0x23
	.4byte	.LASF238
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x13de
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x122e
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0x4c
	.4byte	0x45
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.byte	0x4e
	.4byte	0x13de
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13e4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90e
	.uleb128 0x23
	.4byte	.LASF239
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x1424
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0x8d
	.4byte	0x122e
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0x8d
	.4byte	0x45
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0x1424
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x96
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x142a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x1461
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0xbe
	.4byte	0x122e
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0xbe
	.4byte	0x45
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.byte	0xc0
	.4byte	0x1461
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1467
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa1f
	.uleb128 0x26
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x14a2
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x181
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x181
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x183
	.4byte	0x14a2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x14a8
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc97
	.uleb128 0x26
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x1d9
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x14ed
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x14ed
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x14f3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd57
	.uleb128 0x26
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x212
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x152e
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x212
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x212
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x214
	.4byte	0x152e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1534
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdc2
	.uleb128 0x26
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x22c
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x156f
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x22e
	.4byte	0x156f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1575
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdeb
	.uleb128 0x26
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x25c
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x15b0
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x15b0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15b6
	.uleb128 0x8
	.byte	0x4
	.4byte	0xebf
	.uleb128 0x26
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x281
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x15f1
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x281
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x281
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x283
	.4byte	0x15f1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15f7
	.uleb128 0x8
	.byte	0x4
	.4byte	0xefa
	.uleb128 0x26
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x2f8
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x1632
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x1632
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1638
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1032
	.uleb128 0x26
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x341
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x167d
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x341
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x341
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x343
	.4byte	0x167d
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x347
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1683
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1122
	.uleb128 0x26
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x375
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x16be
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x375
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x375
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x377
	.4byte	0x16be
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x16c4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11b4
	.uleb128 0x26
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x391
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x16ff
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x391
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x391
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x393
	.4byte	0x16ff
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1705
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11fb
	.uleb128 0x26
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x3d7
	.byte	0x1
	.4byte	0x45
	.byte	0x3
	.4byte	0x1734
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x1734
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x3d9
	.4byte	0x29d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1302
	.uleb128 0x26
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x466
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x176f
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x466
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x466
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x468
	.4byte	0x176f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1775
	.uleb128 0x8
	.byte	0x4
	.4byte	0x133a
	.uleb128 0x26
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x485
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x17ba
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x485
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x485
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x487
	.4byte	0x17ba
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x48f
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x17c0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13a1
	.uleb128 0x26
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x2b2
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x1809
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x1809
	.uleb128 0x29
	.4byte	.LASF255
	.4byte	0x1825
	.byte	0x1
	.4byte	.LASF254
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x180f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfcb
	.uleb128 0xc
	.4byte	0x71
	.4byte	0x1825
	.uleb128 0xd
	.4byte	0x30
	.byte	0xb
	.byte	0
	.uleb128 0x2a
	.4byte	0x1815
	.uleb128 0x26
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x113
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x1869
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x113
	.4byte	0x122e
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.2byte	0x113
	.4byte	0x45
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x115
	.4byte	0x1869
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x186f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbfc
	.uleb128 0x26
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x3dd
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.4byte	0x18c8
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x1734
	.uleb128 0x2b
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x3df
	.4byte	0x45
	.uleb128 0x2b
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x3e0
	.4byte	0x25
	.uleb128 0x29
	.4byte	.LASF255
	.4byte	0x18c8
	.byte	0x1
	.4byte	.LASF257
	.uleb128 0x2c
	.uleb128 0x28
	.string	"cur"
	.byte	0x1
	.2byte	0x3ee
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x1815
	.uleb128 0x2d
	.4byte	.LASF263
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1912
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0x11
	.4byte	0x122e
	.4byte	.LLST0
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.byte	0x11
	.4byte	0x45
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.byte	0x13
	.4byte	0x1912
	.4byte	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1918
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7e2
	.uleb128 0x31
	.4byte	.LASF259
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x194e
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0x1e
	.4byte	0x1912
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x31
	.4byte	.LASF260
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x197e
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0x62
	.4byte	0x13de
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST2
	.4byte	0x19bc
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0xa3
	.4byte	0x1424
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x25
	.4byte	.LLST3
	.byte	0
	.uleb128 0x31
	.4byte	.LASF262
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x19ec
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0xcc
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0xce
	.4byte	0x1461
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1a35
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x156
	.4byte	0x122e
	.4byte	.LLST4
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x156
	.4byte	0x45
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x158
	.4byte	0x1a35
	.4byte	.LLST4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1a3b
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc11
	.uleb128 0x38
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1a72
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x161
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x163
	.4byte	0x1a35
	.byte	0
	.uleb128 0x38
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x192
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1aa5
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x192
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x194
	.4byte	0x14a2
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1aee
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x122e
	.4byte	.LLST6
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x45
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1aee
	.4byte	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1af4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcac
	.uleb128 0x38
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1b5
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1b2b
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x1aee
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1f0
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST8
	.4byte	0x1b6d
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x122e
	.4byte	.LLST9
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x14ed
	.4byte	.LLST9
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x25
	.byte	0
	.uleb128 0x38
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x21d
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1ba0
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x21d
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x152e
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x237
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1bd3
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x237
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x239
	.4byte	0x156f
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x26b
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST11
	.4byte	0x1c07
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x15b0
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x28c
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1c3a
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x15f1
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x2de
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB92
	.4byte	.LFE92
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1c83
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x122e
	.4byte	.LLST12
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x45
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x1c83
	.4byte	.LLST13
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c89
	.uleb128 0x8
	.byte	0x4
	.4byte	0xff7
	.uleb128 0x38
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x2e9
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1cc2
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0x1c83
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x304
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1cf5
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x304
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x306
	.4byte	0x1632
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x31f
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB96
	.4byte	.LFE96
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1d3e
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x122e
	.4byte	.LLST14
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x45
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x321
	.4byte	0x1d3e
	.4byte	.LLST15
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d44
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10d9
	.uleb128 0x38
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x32a
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1d7d
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x32a
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x1d3e
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x354
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST16
	.4byte	0x1dc3
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x354
	.4byte	0x122e
	.4byte	.LLST17
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x356
	.4byte	0x167d
	.4byte	.LLST18
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x25
	.4byte	.LLST19
	.byte	0
	.uleb128 0x38
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x380
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1df6
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x380
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x382
	.4byte	0x16be
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x39e
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1e29
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x16ff
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x472
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST20
	.4byte	0x1e5d
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x472
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x474
	.4byte	0x176f
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x49a
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1e9e
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ptr"
	.byte	0x1
	.2byte	0x49c
	.4byte	0x17ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x25
	.4byte	.LLST21
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x2cc
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST22
	.4byte	0x1ed6
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x122e
	.4byte	.LLST23
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x1809
	.4byte	.LLST24
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x130
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST25
	.4byte	0x1f2c
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.2byte	0x130
	.4byte	0x122e
	.4byte	.LLST26
	.uleb128 0x37
	.string	"ptr"
	.byte	0x1
	.2byte	0x132
	.4byte	0x1869
	.4byte	.LLST26
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x3b
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x149
	.4byte	0x137
	.4byte	.LLST29
	.byte	0
	.uleb128 0x3c
	.string	"pop"
	.byte	0x1
	.2byte	0x434
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST30
	.4byte	0x1fc8
	.uleb128 0x35
	.string	"ptr"
	.byte	0x1
	.2byte	0x434
	.4byte	0x1734
	.4byte	.LLST31
	.uleb128 0x3d
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x434
	.4byte	0x1fc8
	.4byte	.LLST32
	.uleb128 0x3d
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x434
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x436
	.4byte	0x55
	.4byte	.LLST34
	.uleb128 0x3b
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x440
	.4byte	0x94
	.4byte	.LLST35
	.uleb128 0x3e
	.4byte	.LASF255
	.4byte	0x1fde
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14259
	.uleb128 0x3f
	.4byte	0x170b
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.2byte	0x443
	.uleb128 0x40
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x41
	.4byte	0x1729
	.4byte	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x128d
	.uleb128 0xc
	.4byte	0x71
	.4byte	0x1fde
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	0x1fce
	.uleb128 0x42
	.4byte	0x13ad
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x203c
	.uleb128 0x43
	.4byte	0x13be
	.4byte	.LLST37
	.uleb128 0x44
	.4byte	0x13c7
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x13d2
	.4byte	.LLST38
	.uleb128 0x45
	.4byte	0x13ad
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x4c
	.uleb128 0x44
	.4byte	0x13be
	.byte	0x1
	.byte	0x59
	.uleb128 0x40
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x46
	.4byte	0x13d2
	.uleb128 0x47
	.4byte	0x13c7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x13ea
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x20a7
	.uleb128 0x43
	.4byte	0x13fb
	.4byte	.LLST39
	.uleb128 0x43
	.4byte	0x1404
	.4byte	.LLST40
	.uleb128 0x41
	.4byte	0x140f
	.4byte	.LLST41
	.uleb128 0x46
	.4byte	0x141a
	.uleb128 0x45
	.4byte	0x13ea
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0x8d
	.uleb128 0x43
	.4byte	0x13fb
	.4byte	.LLST42
	.uleb128 0x40
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x46
	.4byte	0x140f
	.uleb128 0x41
	.4byte	0x141a
	.4byte	.LLST43
	.uleb128 0x47
	.4byte	0x1404
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x1430
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2100
	.uleb128 0x43
	.4byte	0x1441
	.4byte	.LLST44
	.uleb128 0x44
	.4byte	0x144a
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x1455
	.4byte	.LLST45
	.uleb128 0x45
	.4byte	0x1430
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x1
	.byte	0xbe
	.uleb128 0x44
	.4byte	0x1441
	.byte	0x1
	.byte	0x59
	.uleb128 0x40
	.4byte	.LBB31
	.4byte	.LBE31
	.uleb128 0x46
	.4byte	0x1455
	.uleb128 0x47
	.4byte	0x144a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x146d
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x215a
	.uleb128 0x43
	.4byte	0x147f
	.4byte	.LLST46
	.uleb128 0x44
	.4byte	0x1489
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x1495
	.4byte	.LLST47
	.uleb128 0x3f
	.4byte	0x146d
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x181
	.uleb128 0x44
	.4byte	0x147f
	.byte	0x1
	.byte	0x59
	.uleb128 0x40
	.4byte	.LBB35
	.4byte	.LBE35
	.uleb128 0x46
	.4byte	0x1495
	.uleb128 0x47
	.4byte	0x1489
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x14ae
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST48
	.4byte	0x21c3
	.uleb128 0x43
	.4byte	0x14c0
	.4byte	.LLST49
	.uleb128 0x43
	.4byte	0x14ca
	.4byte	.LLST50
	.uleb128 0x41
	.4byte	0x14d6
	.4byte	.LLST51
	.uleb128 0x46
	.4byte	0x14e2
	.uleb128 0x3f
	.4byte	0x14ae
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.2byte	0x1d9
	.uleb128 0x43
	.4byte	0x14c0
	.4byte	.LLST52
	.uleb128 0x40
	.4byte	.LBB39
	.4byte	.LBE39
	.uleb128 0x46
	.4byte	0x14d6
	.uleb128 0x46
	.4byte	0x14e2
	.uleb128 0x47
	.4byte	0x14ca
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x14f9
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x221f
	.uleb128 0x43
	.4byte	0x150b
	.4byte	.LLST53
	.uleb128 0x44
	.4byte	0x1515
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x1521
	.4byte	.LLST53
	.uleb128 0x3f
	.4byte	0x14f9
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.2byte	0x212
	.uleb128 0x43
	.4byte	0x150b
	.4byte	.LLST55
	.uleb128 0x40
	.4byte	.LBB43
	.4byte	.LBE43
	.uleb128 0x46
	.4byte	0x1521
	.uleb128 0x47
	.4byte	0x1515
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x153a
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x227b
	.uleb128 0x43
	.4byte	0x154c
	.4byte	.LLST56
	.uleb128 0x44
	.4byte	0x1556
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x1562
	.4byte	.LLST57
	.uleb128 0x3f
	.4byte	0x153a
	.4byte	.LBB46
	.4byte	.LBE46
	.byte	0x1
	.2byte	0x22c
	.uleb128 0x43
	.4byte	0x154c
	.4byte	.LLST58
	.uleb128 0x40
	.4byte	.LBB47
	.4byte	.LBE47
	.uleb128 0x46
	.4byte	0x1562
	.uleb128 0x47
	.4byte	0x1556
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x157b
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST59
	.4byte	0x22da
	.uleb128 0x43
	.4byte	0x158d
	.4byte	.LLST60
	.uleb128 0x43
	.4byte	0x1597
	.4byte	.LLST61
	.uleb128 0x41
	.4byte	0x15a3
	.4byte	.LLST60
	.uleb128 0x3f
	.4byte	0x157b
	.4byte	.LBB50
	.4byte	.LBE50
	.byte	0x1
	.2byte	0x25c
	.uleb128 0x43
	.4byte	0x158d
	.4byte	.LLST63
	.uleb128 0x40
	.4byte	.LBB51
	.4byte	.LBE51
	.uleb128 0x46
	.4byte	0x15a3
	.uleb128 0x47
	.4byte	0x1597
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x15bc
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2336
	.uleb128 0x43
	.4byte	0x15ce
	.4byte	.LLST64
	.uleb128 0x44
	.4byte	0x15d8
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x15e4
	.4byte	.LLST65
	.uleb128 0x3f
	.4byte	0x15bc
	.4byte	.LBB54
	.4byte	.LBE54
	.byte	0x1
	.2byte	0x281
	.uleb128 0x43
	.4byte	0x15ce
	.4byte	.LLST66
	.uleb128 0x40
	.4byte	.LBB55
	.4byte	.LBE55
	.uleb128 0x46
	.4byte	0x15e4
	.uleb128 0x47
	.4byte	0x15d8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x15fd
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2392
	.uleb128 0x43
	.4byte	0x160f
	.4byte	.LLST67
	.uleb128 0x44
	.4byte	0x1619
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x1625
	.4byte	.LLST68
	.uleb128 0x3f
	.4byte	0x15fd
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.2byte	0x2f8
	.uleb128 0x43
	.4byte	0x160f
	.4byte	.LLST69
	.uleb128 0x40
	.4byte	.LBB59
	.4byte	.LBE59
	.uleb128 0x46
	.4byte	0x1625
	.uleb128 0x47
	.4byte	0x1619
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x163e
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST70
	.4byte	0x23fb
	.uleb128 0x43
	.4byte	0x1650
	.4byte	.LLST71
	.uleb128 0x43
	.4byte	0x165a
	.4byte	.LLST72
	.uleb128 0x41
	.4byte	0x1666
	.4byte	.LLST73
	.uleb128 0x46
	.4byte	0x1672
	.uleb128 0x3f
	.4byte	0x163e
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.2byte	0x341
	.uleb128 0x47
	.4byte	0x1650
	.uleb128 0x40
	.4byte	.LBB63
	.4byte	.LBE63
	.uleb128 0x46
	.4byte	0x1666
	.uleb128 0x41
	.4byte	0x1672
	.4byte	.LLST74
	.uleb128 0x47
	.4byte	0x165a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x1689
	.4byte	.LFB100
	.4byte	.LFE100
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2457
	.uleb128 0x43
	.4byte	0x169b
	.4byte	.LLST75
	.uleb128 0x44
	.4byte	0x16a5
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x16b1
	.4byte	.LLST76
	.uleb128 0x3f
	.4byte	0x1689
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.2byte	0x375
	.uleb128 0x43
	.4byte	0x169b
	.4byte	.LLST77
	.uleb128 0x40
	.4byte	.LBB67
	.4byte	.LBE67
	.uleb128 0x46
	.4byte	0x16b1
	.uleb128 0x47
	.4byte	0x16a5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x16ca
	.4byte	.LFB102
	.4byte	.LFE102
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x24b3
	.uleb128 0x43
	.4byte	0x16dc
	.4byte	.LLST78
	.uleb128 0x44
	.4byte	0x16e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x16f2
	.4byte	.LLST78
	.uleb128 0x3f
	.4byte	0x16ca
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.2byte	0x391
	.uleb128 0x43
	.4byte	0x16dc
	.4byte	.LLST80
	.uleb128 0x40
	.4byte	.LBB71
	.4byte	.LBE71
	.uleb128 0x46
	.4byte	0x16f2
	.uleb128 0x47
	.4byte	0x16e6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x173a
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST81
	.4byte	0x2512
	.uleb128 0x43
	.4byte	0x174c
	.4byte	.LLST82
	.uleb128 0x43
	.4byte	0x1756
	.4byte	.LLST83
	.uleb128 0x41
	.4byte	0x1762
	.4byte	.LLST84
	.uleb128 0x3f
	.4byte	0x173a
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.2byte	0x466
	.uleb128 0x43
	.4byte	0x174c
	.4byte	.LLST85
	.uleb128 0x40
	.4byte	.LBB75
	.4byte	.LBE75
	.uleb128 0x46
	.4byte	0x1762
	.uleb128 0x47
	.4byte	0x1756
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x177b
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x257c
	.uleb128 0x43
	.4byte	0x178d
	.4byte	.LLST86
	.uleb128 0x43
	.4byte	0x1797
	.4byte	.LLST87
	.uleb128 0x41
	.4byte	0x17a3
	.4byte	.LLST88
	.uleb128 0x46
	.4byte	0x17af
	.uleb128 0x3f
	.4byte	0x177b
	.4byte	.LBB78
	.4byte	.LBE78
	.byte	0x1
	.2byte	0x485
	.uleb128 0x44
	.4byte	0x178d
	.byte	0x1
	.byte	0x59
	.uleb128 0x40
	.4byte	.LBB79
	.4byte	.LBE79
	.uleb128 0x46
	.4byte	0x17a3
	.uleb128 0x41
	.4byte	0x17af
	.4byte	.LLST89
	.uleb128 0x47
	.4byte	0x1797
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x17c6
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST90
	.4byte	0x25ed
	.uleb128 0x43
	.4byte	0x17d8
	.4byte	.LLST91
	.uleb128 0x43
	.4byte	0x17e2
	.4byte	.LLST92
	.uleb128 0x41
	.4byte	0x17ee
	.4byte	.LLST91
	.uleb128 0x49
	.4byte	0x17fa
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14096
	.uleb128 0x3f
	.4byte	0x17c6
	.4byte	.LBB82
	.4byte	.LBE82
	.byte	0x1
	.2byte	0x2b2
	.uleb128 0x40
	.4byte	.LBB83
	.4byte	.LBE83
	.uleb128 0x46
	.4byte	0x17ee
	.uleb128 0x47
	.4byte	0x17e2
	.uleb128 0x47
	.4byte	0x17d8
	.uleb128 0x49
	.4byte	0x17fa
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14096
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x182a
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST94
	.4byte	0x265a
	.uleb128 0x43
	.4byte	0x183c
	.4byte	.LLST95
	.uleb128 0x43
	.4byte	0x1846
	.4byte	.LLST96
	.uleb128 0x41
	.4byte	0x1852
	.4byte	.LLST97
	.uleb128 0x46
	.4byte	0x185e
	.uleb128 0x3f
	.4byte	0x182a
	.4byte	.LBB86
	.4byte	.LBE86
	.byte	0x1
	.2byte	0x113
	.uleb128 0x43
	.4byte	0x183c
	.4byte	.LLST98
	.uleb128 0x40
	.4byte	.LBB87
	.4byte	.LBE87
	.uleb128 0x46
	.4byte	0x1852
	.uleb128 0x41
	.4byte	0x185e
	.4byte	.LLST99
	.uleb128 0x47
	.4byte	0x1846
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x1875
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST100
	.4byte	0x2711
	.uleb128 0x43
	.4byte	0x1887
	.4byte	.LLST101
	.uleb128 0x41
	.4byte	0x1893
	.4byte	.LLST102
	.uleb128 0x41
	.4byte	0x189f
	.4byte	.LLST103
	.uleb128 0x49
	.4byte	0x18ab
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14230
	.uleb128 0x4a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x26cc
	.uleb128 0x41
	.4byte	0x18ba
	.4byte	.LLST104
	.uleb128 0x3f
	.4byte	0x170b
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.2byte	0x3f5
	.uleb128 0x40
	.4byte	.LBB98
	.4byte	.LBE98
	.uleb128 0x41
	.4byte	0x1729
	.4byte	.LLST105
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x1875
	.4byte	.LBB99
	.4byte	.LBE99
	.byte	0x1
	.2byte	0x3dd
	.uleb128 0x40
	.4byte	.LBB100
	.4byte	.LBE100
	.uleb128 0x46
	.4byte	0x1893
	.uleb128 0x46
	.4byte	0x189f
	.uleb128 0x47
	.4byte	0x1887
	.uleb128 0x49
	.4byte	0x18ab
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14230
	.uleb128 0x40
	.4byte	.LBB101
	.4byte	.LBE101
	.uleb128 0x46
	.4byte	0x18ba
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x40d
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST106
	.4byte	0x280d
	.uleb128 0x35
	.string	"ptr"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x1734
	.4byte	.LLST107
	.uleb128 0x3d
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x40d
	.4byte	0x1fc8
	.4byte	.LLST108
	.uleb128 0x3d
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x40d
	.4byte	0x25
	.4byte	.LLST109
	.uleb128 0x3d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x40d
	.4byte	0x94
	.4byte	.LLST110
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x40f
	.4byte	0x25
	.4byte	.LLST111
	.uleb128 0x37
	.string	"cur"
	.byte	0x1
	.2byte	0x417
	.4byte	0x45
	.4byte	.LLST112
	.uleb128 0x3e
	.4byte	.LASF255
	.4byte	0x281d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14245
	.uleb128 0x4b
	.4byte	0x170b
	.4byte	.LBB103
	.4byte	.LBE103
	.byte	0x1
	.2byte	0x41a
	.4byte	0x27c0
	.uleb128 0x40
	.4byte	.LBB104
	.4byte	.LBE104
	.uleb128 0x41
	.4byte	0x1729
	.4byte	.LLST113
	.byte	0
	.byte	0
	.uleb128 0x4b
	.4byte	0x170b
	.4byte	.LBB105
	.4byte	.LBE105
	.byte	0x1
	.2byte	0x42e
	.4byte	0x27e8
	.uleb128 0x40
	.4byte	.LBB106
	.4byte	.LBE106
	.uleb128 0x41
	.4byte	0x1729
	.4byte	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x170b
	.4byte	.LBB107
	.4byte	.LBE107
	.byte	0x1
	.2byte	0x420
	.uleb128 0x40
	.4byte	.LBB108
	.4byte	.LBE108
	.uleb128 0x41
	.4byte	0x1729
	.4byte	.LLST115
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x71
	.4byte	0x281d
	.uleb128 0xd
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x2a
	.4byte	0x280d
	.uleb128 0x3a
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x3fe
	.byte	0x1
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST116
	.4byte	0x284c
	.uleb128 0x35
	.string	"ptr"
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x1734
	.4byte	.LLST117
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x407
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST118
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x451
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST119
	.4byte	0x288c
	.uleb128 0x3d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x451
	.4byte	0xaa
	.4byte	.LLST120
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST121
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x4b0
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST122
	.4byte	0x28cd
	.uleb128 0x3d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x4b0
	.4byte	0xaa
	.4byte	.LLST123
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x4b7
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST124
	.uleb128 0x4f
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x1302
	.byte	0x5
	.byte	0x3
	.4byte	attribStack
	.uleb128 0x4f
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x1302
	.byte	0x5
	.byte	0x3
	.4byte	clientAttribStack
	.uleb128 0x50
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x2915
	.2byte	0x400
	.uleb128 0x2a
	.4byte	0x25
	.uleb128 0x51
	.4byte	.LASF297
	.byte	0x7
	.2byte	0x548
	.4byte	0x2928
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x292d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x20a
	.uleb128 0x52
	.4byte	.LASF298
	.byte	0x8
	.byte	0x3d
	.4byte	0x334
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x52
	.4byte	.LASF299
	.byte	0x8
	.byte	0x3e
	.4byte	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x52
	.4byte	.LASF300
	.byte	0x8
	.byte	0x3f
	.4byte	0x9b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x52
	.4byte	.LASF236
	.byte	0x8
	.byte	0x4b
	.4byte	0x390
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x52
	.4byte	.LASF237
	.byte	0x8
	.byte	0x4c
	.4byte	0x390
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x53
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0x1391
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x52
	.4byte	.LASF105
	.byte	0x8
	.byte	0x4e
	.4byte	0x390
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xc
	.4byte	0x176
	.4byte	0x29c2
	.uleb128 0x54
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x52
	.4byte	.LASF301
	.byte	0x8
	.byte	0x50
	.4byte	0x29b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x52
	.4byte	.LASF302
	.byte	0x8
	.byte	0x51
	.4byte	0x29b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xc
	.4byte	0x2f0
	.4byte	0x29fd
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.uleb128 0x54
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x52
	.4byte	.LASF303
	.byte	0x8
	.byte	0x52
	.4byte	0x29e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xc
	.4byte	0x334
	.4byte	0x2a20
	.uleb128 0x54
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x52
	.4byte	.LASF304
	.byte	0x8
	.byte	0x53
	.4byte	0x2a0f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x52
	.4byte	.LASF305
	.byte	0x8
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x52
	.4byte	.LASF306
	.byte	0x8
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x52
	.4byte	.LASF307
	.byte	0x8
	.byte	0x5f
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x52
	.4byte	.LASF308
	.byte	0x8
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x52
	.4byte	.LASF309
	.byte	0x8
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x52
	.4byte	.LASF310
	.byte	0x8
	.byte	0x6b
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x52
	.4byte	.LASF311
	.byte	0x8
	.byte	0x6c
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x52
	.4byte	.LASF312
	.byte	0x8
	.byte	0x6d
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x52
	.4byte	.LASF313
	.byte	0x8
	.byte	0x6e
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x52
	.4byte	.LASF314
	.byte	0x8
	.byte	0x7a
	.4byte	0x3e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x52
	.4byte	.LASF315
	.byte	0x8
	.byte	0x7b
	.4byte	0x3e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xc
	.4byte	0x3e0
	.4byte	0x2b08
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x52
	.4byte	.LASF316
	.byte	0x8
	.byte	0x7c
	.4byte	0x2af8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x52
	.4byte	.LASF317
	.byte	0x8
	.byte	0x7d
	.4byte	0x2b2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e0
	.uleb128 0x52
	.4byte	.LASF318
	.byte	0x8
	.byte	0x7e
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x52
	.4byte	.LASF150
	.byte	0x8
	.byte	0x99
	.4byte	0xd47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x52
	.4byte	.LASF319
	.byte	0x8
	.byte	0x9c
	.4byte	0x334
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x52
	.4byte	.LASF320
	.byte	0x8
	.byte	0xa9
	.4byte	0x504
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x52
	.4byte	.LASF321
	.byte	0x8
	.byte	0xac
	.4byte	0x137
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x52
	.4byte	.LASF322
	.byte	0x8
	.byte	0xad
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x52
	.4byte	.LASF151
	.byte	0x8
	.byte	0xb1
	.4byte	0x137
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x52
	.4byte	.LASF123
	.byte	0x8
	.byte	0xb8
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x52
	.4byte	.LASF124
	.byte	0x8
	.byte	0xb9
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x52
	.4byte	.LASF125
	.byte	0x8
	.byte	0xba
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x52
	.4byte	.LASF126
	.byte	0x8
	.byte	0xbb
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x52
	.4byte	.LASF201
	.byte	0x8
	.byte	0xbd
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x52
	.4byte	.LASF323
	.byte	0x8
	.byte	0xc6
	.4byte	0x52e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x52
	.4byte	.LASF324
	.byte	0x8
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x52
	.4byte	.LASF325
	.byte	0x8
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x52
	.4byte	.LASF161
	.byte	0x8
	.byte	0xf2
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x52
	.4byte	.LASF326
	.byte	0x8
	.byte	0xf3
	.4byte	0x57a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x52
	.4byte	.LASF327
	.byte	0x8
	.byte	0xf4
	.4byte	0x57a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x52
	.4byte	.LASF328
	.byte	0x8
	.byte	0xf5
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x52
	.4byte	.LASF329
	.byte	0x8
	.byte	0xf6
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x52
	.4byte	.LASF330
	.byte	0x8
	.byte	0xf8
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x52
	.4byte	.LASF197
	.byte	0x8
	.byte	0xf9
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x55
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x105
	.4byte	0x5e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x55
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x106
	.4byte	0x5e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xc
	.4byte	0x137
	.4byte	0x2cf4
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x55
	.4byte	.LASF331
	.byte	0x8
	.2byte	0x107
	.4byte	0x2ce4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x55
	.4byte	.LASF332
	.byte	0x8
	.2byte	0x10d
	.4byte	0x137
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x55
	.4byte	.LASF333
	.byte	0x8
	.2byte	0x10e
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x55
	.4byte	.LASF334
	.byte	0x8
	.2byte	0x111
	.4byte	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xc
	.4byte	0x621
	.4byte	0x2d50
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x55
	.4byte	.LASF335
	.byte	0x8
	.2byte	0x125
	.4byte	0x2d40
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x55
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x14a
	.4byte	0x137
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x55
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x14b
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x55
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x14c
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x55
	.4byte	.LASF170
	.byte	0x8
	.2byte	0x14d
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x55
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x14e
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x55
	.4byte	.LASF172
	.byte	0x8
	.2byte	0x14f
	.4byte	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x55
	.4byte	.LASF336
	.byte	0x8
	.2byte	0x151
	.4byte	0x1112
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x55
	.4byte	.LASF337
	.byte	0x8
	.2byte	0x156
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x55
	.4byte	.LASF338
	.byte	0x8
	.2byte	0x159
	.4byte	0xcb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0xc
	.4byte	0x128d
	.4byte	0x2e1e
	.uleb128 0xd
	.4byte	0x30
	.byte	0x13
	.byte	0
	.uleb128 0x55
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x2e0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	attribs
	.uleb128 0xc
	.4byte	0x128d
	.4byte	0x2e41
	.uleb128 0xd
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x4ab
	.4byte	0x2e31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clientAttribs
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x4
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB81-.Ltext0
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
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB113-.Ltext0
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
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB91-.Ltext0
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
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0xc
	.byte	0x77
	.sleb128 4
	.byte	0x6
	.byte	0xc
	.4byte	0x1000000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 68
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB80-.Ltext0
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
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI28-.Ltext0
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
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL176-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI35-.Ltext0
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
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL193-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 76
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 76
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB108-.Ltext0
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
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL225-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL225-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL229-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL222-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 68
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LFB106-.Ltext0
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
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL231-1-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LFB107-.Ltext0
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
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE117-.Ltext0
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
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF182:
	.string	"list_base"
.LASF250:
	.string	"pushViewport"
.LASF192:
	.string	"index_shift"
.LASF8:
	.string	"char"
.LASF220:
	.string	"planes"
.LASF319:
	.string	"globAmbient"
.LASF17:
	.string	"GLint"
.LASF332:
	.string	"copy_mat_enabled"
.LASF66:
	.string	"boxInfo"
.LASF275:
	.string	"popPolyStipple"
.LASF255:
	.string	"__FUNCTION__"
.LASF18:
	.string	"GLushort"
.LASF110:
	.string	"accum_clear"
.LASF316:
	.string	"texture_stack"
.LASF215:
	.string	"clear_val"
.LASF323:
	.string	"cur_state"
.LASF269:
	.string	"popLighting"
.LASF249:
	.string	"pushTransform"
.LASF324:
	.string	"fb_max_height"
.LASF214:
	.string	"zpass"
.LASF301:
	.string	"_normalelements"
.LASF191:
	.string	"index_offset"
.LASF175:
	.string	"color_material_face"
.LASF58:
	.string	"_mat"
.LASF200:
	.string	"poly_stipple"
.LASF145:
	.string	"auto_normal"
.LASF121:
	.string	"alpha_func"
.LASF51:
	.string	"specular"
.LASF135:
	.string	"tex_coords"
.LASF188:
	.string	"blue"
.LASF165:
	.string	"eval"
.LASF245:
	.string	"pushPixelMode"
.LASF103:
	.string	"Aarg"
.LASF115:
	.string	"index_logic_op"
.LASF199:
	.string	"cull_ccw"
.LASF77:
	.string	"_trans"
.LASF53:
	.string	"spotCutoff"
.LASF72:
	.string	"row_length"
.LASF87:
	.string	"_tex_env"
.LASF320:
	.string	"curmat"
.LASF43:
	.string	"begin"
.LASF111:
	.string	"color_buffer"
.LASF254:
	.string	"pushPolygon"
.LASF334:
	.string	"_clearcolor"
.LASF93:
	.string	"maxlod"
.LASF62:
	.string	"GL_STATE_NONE"
.LASF258:
	.string	"new_size"
.LASF128:
	.string	"draw_buffer"
.LASF155:
	.string	"point_smooth"
.LASF265:
	.string	"popEval"
.LASF31:
	.string	"_gx_litobj"
.LASF60:
	.string	"shininess"
.LASF294:
	.string	"attribStack"
.LASF302:
	.string	"_vertexelements"
.LASF35:
	.string	"GXColorf"
.LASF102:
	.string	"CargOp"
.LASF112:
	.string	"alpha_test"
.LASF237:
	.string	"vert"
.LASF295:
	.string	"clientAttribStack"
.LASF313:
	.string	"_cleardepth"
.LASF50:
	.string	"diffuse"
.LASF299:
	.string	"_tempnormalelement"
.LASF309:
	.string	"cur_tex_client"
.LASF262:
	.string	"popDepthBuffer"
.LASF24:
	.string	"uint32_t"
.LASF225:
	.string	"pushFun"
.LASF167:
	.string	"fog_mode"
.LASF170:
	.string	"fog_endz"
.LASF306:
	.string	"_type"
.LASF202:
	.string	"front_poly_mode"
.LASF11:
	.string	"float"
.LASF139:
	.string	"raster_tex_coords"
.LASF288:
	.string	"n_opts"
.LASF158:
	.string	"polygon_offset_point"
.LASF183:
	.string	"base"
.LASF133:
	.string	"index"
.LASF79:
	.string	"bias"
.LASF30:
	.string	"GXColor"
.LASF228:
	.string	"push"
.LASF330:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF283:
	.string	"popVertexArray"
.LASF185:
	.string	"map_color"
.LASF335:
	.string	"Trans"
.LASF218:
	.string	"plane_equ"
.LASF233:
	.string	"pack"
.LASF59:
	.string	"emissive"
.LASF227:
	.string	"AttribOpt"
.LASF282:
	.string	"popPixelStore"
.LASF163:
	.string	"texture_1d"
.LASF314:
	.string	"model_stack"
.LASF263:
	.string	"pushAccum"
.LASF101:
	.string	"Carg"
.LASF189:
	.string	"alpha"
.LASF37:
	.string	"enable"
.LASF336:
	.string	"glTexEnvs"
.LASF127:
	.string	"blend_const_color"
.LASF278:
	.string	"popStencil"
.LASF109:
	.string	"accum_buffer"
.LASF123:
	.string	"blend_type"
.LASF240:
	.string	"pushDepthBuffer"
.LASF274:
	.string	"pushPolyStipple"
.LASF231:
	.string	"typeCur"
.LASF276:
	.string	"popScissor"
.LASF208:
	.string	"stencil"
.LASF172:
	.string	"fog_color"
.LASF193:
	.string	"zoom_x"
.LASF194:
	.string	"zoom_y"
.LASF13:
	.string	"size_t"
.LASF206:
	.string	"scissor"
.LASF67:
	.string	"width"
.LASF235:
	.string	"vertex_array"
.LASF88:
	.string	"min_filter"
.LASF259:
	.string	"popAccum"
.LASF260:
	.string	"popColorBuffer"
.LASF210:
	.string	"func"
.LASF308:
	.string	"cur_tex"
.LASF98:
	.string	"mode"
.LASF80:
	.string	"ColorTrans"
.LASF344:
	.string	"_wgpipe"
.LASF219:
	.string	"transform"
.LASF100:
	.string	"comAlpha"
.LASF25:
	.string	"_Bool"
.LASF229:
	.string	"attribStack_t"
.LASF164:
	.string	"texture_2d"
.LASF129:
	.string	"clear_color"
.LASF161:
	.string	"scissor_test"
.LASF253:
	.string	"pushVertexArray"
.LASF257:
	.string	"resizeStack"
.LASF197:
	.string	"point_size"
.LASF279:
	.string	"popTexture"
.LASF181:
	.string	"stipple_pattern"
.LASF339:
	.string	"attribs"
.LASF329:
	.string	"normFar"
.LASF21:
	.string	"GLfloat"
.LASF333:
	.string	"copy_material"
.LASF216:
	.string	"texture"
.LASF209:
	.string	"stencil_write"
.LASF176:
	.string	"color_material_param"
.LASF64:
	.string	"GL_STATE_NEWLIST"
.LASF272:
	.string	"popPixelMode"
.LASF162:
	.string	"stencil_test"
.LASF292:
	.string	"glPopAttrib"
.LASF266:
	.string	"popFog"
.LASF113:
	.string	"dither"
.LASF49:
	.string	"ambient"
.LASF326:
	.string	"scissorInfo"
.LASF322:
	.string	"gxwinding"
.LASF285:
	.string	"popEnable"
.LASF290:
	.string	"glPushAttrib"
.LASF114:
	.string	"color_logic_op"
.LASF32:
	.string	"GXLightObj"
.LASF271:
	.string	"popListBase"
.LASF242:
	.string	"pushLighting"
.LASF238:
	.string	"pushColorBuffer"
.LASF307:
	.string	"_GLtype"
.LASF122:
	.string	"alpha_ref"
.LASF153:
	.string	"line_stipple"
.LASF342:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_stacks.c"
.LASF61:
	.string	"Material"
.LASF312:
	.string	"depthfunction"
.LASF108:
	.string	"glTexEnvSet"
.LASF23:
	.string	"uint8_t"
.LASF138:
	.string	"raster_color"
.LASF315:
	.string	"projection_stack"
.LASF85:
	.string	"TRAN_B"
.LASF304:
	.string	"_colorelements"
.LASF120:
	.string	"logic_op"
.LASF28:
	.string	"_vecf"
.LASF146:
	.string	"blend"
.LASF70:
	.string	"swap"
.LASF26:
	.string	"guVector"
.LASF5:
	.string	"long long int"
.LASF41:
	.string	"VertexArray"
.LASF19:
	.string	"GLuint"
.LASF284:
	.string	"popPolygon"
.LASF63:
	.string	"GL_STATE_BEGIN"
.LASF190:
	.string	"depth"
.LASF337:
	.string	"read_mode"
.LASF44:
	.string	"elem_size"
.LASF252:
	.string	"pushPixelStore"
.LASF251:
	.string	"stackEnd"
.LASF65:
	.string	"glState"
.LASF144:
	.string	"depth_clear"
.LASF54:
	.string	"constant"
.LASF186:
	.string	"map_stencil"
.LASF166:
	.string	"fog_enable"
.LASF16:
	.string	"GLbitfield"
.LASF119:
	.string	"alpha_mask"
.LASF33:
	.string	"VertexElement"
.LASF78:
	.string	"scale"
.LASF95:
	.string	"biasclamp"
.LASF86:
	.string	"TRAN_A"
.LASF173:
	.string	"hint"
.LASF281:
	.string	"popViewport"
.LASF239:
	.string	"pushCurrent"
.LASF22:
	.string	"GLclampf"
.LASF84:
	.string	"TRAN_G"
.LASF311:
	.string	"depthupdate"
.LASF177:
	.string	"Ambient"
.LASF39:
	.string	"size"
.LASF83:
	.string	"TRAN_R"
.LASF140:
	.string	"depth_buffer"
.LASF57:
	.string	"LightObj"
.LASF223:
	.string	"near"
.LASF243:
	.string	"pushLine"
.LASF90:
	.string	"wrap_s"
.LASF91:
	.string	"wrap_t"
.LASF55:
	.string	"linear"
.LASF211:
	.string	"mask"
.LASF125:
	.string	"blend_dst"
.LASF116:
	.string	"red_mask"
.LASF303:
	.string	"_texcoordelements"
.LASF68:
	.string	"height"
.LASF291:
	.string	"glPushClientAttrib"
.LASF331:
	.string	"color_write_mask"
.LASF268:
	.string	"popHint"
.LASF152:
	.string	"line_smooth"
.LASF318:
	.string	"cur_mode"
.LASF256:
	.string	"pushEnable"
.LASF317:
	.string	"curmtx"
.LASF345:
	.string	"_glInitStacks"
.LASF300:
	.string	"_temptexcoordelement"
.LASF187:
	.string	"green"
.LASF12:
	.string	"long double"
.LASF280:
	.string	"popTransform"
.LASF213:
	.string	"zfail"
.LASF236:
	.string	"norm"
.LASF234:
	.string	"unpack"
.LASF48:
	.string	"spotDir"
.LASF36:
	.string	"_array"
.LASF232:
	.string	"pixel_store"
.LASF248:
	.string	"pushTexture"
.LASF52:
	.string	"spotExponent"
.LASF340:
	.string	"clientAttribs"
.LASF286:
	.string	"tex2d"
.LASF184:
	.string	"pixel_mode"
.LASF56:
	.string	"quad_t"
.LASF94:
	.string	"lodbias"
.LASF150:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF92:
	.string	"minlod"
.LASF89:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF203:
	.string	"back_poly_mode"
.LASF118:
	.string	"blue_mask"
.LASF143:
	.string	"depth_func"
.LASF293:
	.string	"glPopClientAttrib"
.LASF289:
	.string	"initStack"
.LASF27:
	.string	"WGPipe"
.LASF14:
	.string	"GLenum"
.LASF154:
	.string	"normalize"
.LASF46:
	.string	"_light"
.LASF105:
	.string	"color"
.LASF20:
	.string	"GLsizei"
.LASF222:
	.string	"viewport"
.LASF338:
	.string	"call_offset"
.LASF298:
	.string	"_tempcolorelement"
.LASF74:
	.string	"skip_pixels"
.LASF29:
	.string	"_gx_color"
.LASF97:
	.string	"maxaniso"
.LASF148:
	.string	"cull_face"
.LASF287:
	.string	"opts"
.LASF0:
	.string	"unsigned int"
.LASF141:
	.string	"depth_test"
.LASF168:
	.string	"fog_density"
.LASF38:
	.string	"stride"
.LASF151:
	.string	"lighting"
.LASF180:
	.string	"stipple_factor"
.LASF159:
	.string	"polygon_smooth"
.LASF160:
	.string	"polygon_stipple"
.LASF195:
	.string	"read_buffer"
.LASF267:
	.string	"pushHint"
.LASF7:
	.string	"long unsigned int"
.LASF226:
	.string	"popFun"
.LASF244:
	.string	"pushListBase"
.LASF136:
	.string	"raster_pos"
.LASF241:
	.string	"pushFog"
.LASF126:
	.string	"blend_op"
.LASF169:
	.string	"fog_startz"
.LASF156:
	.string	"polygon_offset_line"
.LASF76:
	.string	"pixelStore"
.LASF343:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF221:
	.string	"mat_mode"
.LASF341:
	.string	"GNU C 4.6.3"
.LASF296:
	.string	"init_size"
.LASF171:
	.string	"fog_index"
.LASF142:
	.string	"depth_write"
.LASF134:
	.string	"normal"
.LASF40:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF217:
	.string	"glTexEnv"
.LASF47:
	.string	"enabled"
.LASF73:
	.string	"skip_rows"
.LASF179:
	.string	"line"
.LASF264:
	.string	"pushEval"
.LASF305:
	.string	"vert_i"
.LASF71:
	.string	"lsb_first"
.LASF107:
	.string	"alpha_scale"
.LASF198:
	.string	"polygon"
.LASF82:
	.string	"transfer_enum"
.LASF149:
	.string	"clip_planes"
.LASF124:
	.string	"blend_src"
.LASF99:
	.string	"comRGB"
.LASF325:
	.string	"fb_max_width"
.LASF212:
	.string	"fail"
.LASF328:
	.string	"normNear"
.LASF270:
	.string	"popLine"
.LASF310:
	.string	"depthtestenabled"
.LASF117:
	.string	"green_mask"
.LASF96:
	.string	"edgelod"
.LASF321:
	.string	"gxcullfaceanabled"
.LASF246:
	.string	"pushPoint"
.LASF205:
	.string	"units"
.LASF42:
	.string	"_stack"
.LASF224:
	.string	"viewBox"
.LASF3:
	.string	"signed char"
.LASF45:
	.string	"Stack"
.LASF261:
	.string	"popCurrent"
.LASF2:
	.string	"short unsigned int"
.LASF157:
	.string	"polygon_offset_fill"
.LASF297:
	.string	"wgPipe"
.LASF277:
	.string	"pushStencil"
.LASF207:
	.string	"scissor_box"
.LASF130:
	.string	"current"
.LASF196:
	.string	"point"
.LASF247:
	.string	"pushScissor"
.LASF10:
	.string	"double"
.LASF75:
	.string	"alignment"
.LASF273:
	.string	"popPoint"
.LASF34:
	.string	"TexCoordElement"
.LASF204:
	.string	"factor"
.LASF15:
	.string	"GLboolean"
.LASF106:
	.string	"rgb_scale"
.LASF137:
	.string	"raster_index"
.LASF81:
	.string	"_glState"
.LASF178:
	.string	"shade_model"
.LASF147:
	.string	"color_material"
.LASF69:
	.string	"_pixelStore"
.LASF230:
	.string	"typeStack"
.LASF132:
	.string	"edge_flag"
.LASF327:
	.string	"viewPort"
.LASF131:
	.string	"raster_valid"
.LASF201:
	.string	"cull_mode"
.LASF174:
	.string	"lighting_stuff"
.LASF104:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
