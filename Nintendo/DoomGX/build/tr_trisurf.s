	.file	"tr_trisurf.cpp"
	.section	".text"
.Ltext0:
	.section	.text._ZN14idFixedWinding5ClearEv,"axG",@progbits,_ZN14idFixedWinding5ClearEv,comdat
	.align 2
	.weak	_ZN14idFixedWinding5ClearEv
	.type	_ZN14idFixedWinding5ClearEv, @function
_ZN14idFixedWinding5ClearEv:
.LFB1502:
	.file 1 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/geometry/Winding.h"
	.loc 1 398 0
	.cfi_startproc
.LVL0:
	.loc 1 399 0
	li 0,0
	.loc 1 400 0
	.loc 1 399 0
	stw 0,4(3)
	.loc 1 400 0
	blr
	.cfi_endproc
.LFE1502:
	.size	_ZN14idFixedWinding5ClearEv, .-_ZN14idFixedWinding5ClearEv
	.section	".text"
	.align 2
	.type	_ZL9IndexSortPKvS0_, @function
_ZL9IndexSortPKvS0_:
.LFB2604:
	.file 2 "d:/Data/Nintendo/DoomGX/src/renderer/tr_trisurf.cpp"
	.loc 2 1469 0
	.cfi_startproc
.LVL1:
	.loc 2 1470 0
	lwz 0,0(3)
	.loc 2 1471 0
	li 3,-1
.LVL2:
	.loc 2 1470 0
	lwz 9,0(4)
	cmpw 7,0,9
	bltlr- 7
	.loc 2 1471 0
	mfcr 3
	rlwinm 3,3,30,1
	.loc 2 1477 0
	blr
	.cfi_endproc
.LFE2604:
	.size	_ZL9IndexSortPKvS0_, .-_ZL9IndexSortPKvS0_
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 250 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 251 0
	lwz 3,8(3)
.LVL4:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L7
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L7:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL5:
	mtlr 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1473:
	.size	_ZN9idWinding5ClearEv, .-_ZN9idWinding5ClearEv
	.section	.text._ZN9idWindingD2Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD2Ev
	.type	_ZN9idWindingD2Ev, @function
_ZN9idWindingD2Ev:
.LFB1461:
	.loc 1 183 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2971:
	lis 9,_ZTV9idWinding+8@ha
.LBE2971:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2972:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL7:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L9:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE2972:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL8:
	mtlr 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	".text"
	.align 2
	.type	_ZL12R_DefineEdgeiii, @function
_ZL12R_DefineEdgeiii:
.LFB2595:
	.loc 2 936 0
	.cfi_startproc
.LVL9:
.LBB2983:
	.loc 2 940 0
	cmpw 7,3,4
.LBE2983:
	.loc 2 936 0
	mflr 0
	stwu 1,-32(1)
.LCFI4:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 26,8(1)
	mr 26,5
	.cfi_offset 26, -24
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 30,24(1)
.LBB3008:
	.loc 2 940 0
	beq- 7,.L11
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 2 943 0
	lis 30,.LANCHOR0@ha
.LBB2984:
.LBB2985:
	.file 3 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/HashIndex.h"
	.loc 3 402 0
	add 27,3,4
.LBE2985:
.LBE2984:
	.loc 2 943 0
	la 30,.LANCHOR0@l(30)
	lwz 0,20(30)
.LVL10:
.LBB2987:
.LBB2988:
	.loc 3 239 0
	lwz 8,24(30)
.LBE2988:
.LBE2987:
.LBB2990:
.LBB2986:
	.loc 3 402 0
	and 27,27,0
.LVL11:
.LBE2986:
.LBE2990:
.LBB2991:
.LBB2989:
	.loc 3 239 0
	lwz 9,4(30)
	and 0,0,8
	and 0,0,27
	slwi 0,0,2
	lwzx 0,9,0
.LVL12:
.LBE2989:
.LBE2991:
	.loc 2 945 0
	cmplwi 7,0,65535
	bgt- 7,.L13
	.loc 2 946 0
	lwz 7,28(30)
	.loc 2 952 0
	lwz 3,32(30)
.LVL13:
	.loc 2 945 0
	lwz 6,12(30)
	lwz 5,36(30)
.LVL14:
	lwz 4,40(30)
.LVL15:
	b .L18
.L15:
	.loc 2 951 0
	cmpw 7,31,10
	beq- 7,.L25
.L16:
.LVL16:
.LBB2992:
.LBB2993:
	.loc 3 249 0
	and 0,0,8
.LVL17:
	slwi 0,0,2
	lwzx 0,6,0
.LVL18:
.LBE2993:
.LBE2992:
	.loc 2 945 0
	cmplwi 7,0,65535
	bgt- 7,.L26
.L18:
	.loc 2 946 0
	slwi 9,0,4
	add 9,7,9
	lwz 11,8(9)
	lwz 10,12(9)
	cmpw 7,11,31
	bne+ 7,.L15
	.loc 2 946 0 is_stmt 0 discriminator 1
	cmpw 7,10,29
	bne+ 7,.L15
.LBB2996:
.LBB2994:
	.loc 3 249 0 is_stmt 1
	and 0,0,8
.LVL19:
.LBE2994:
.LBE2996:
	.loc 2 947 0
	addi 5,5,1
.LBB2997:
.LBB2995:
	.loc 3 249 0
	slwi 0,0,2
	lwzx 0,6,0
.LVL20:
.LBE2995:
.LBE2997:
	.loc 2 945 0
	cmplwi 7,0,65535
	ble+ 7,.L18
.L26:
	stw 5,36(30)
	stw 4,40(30)
.L13:
	.loc 2 965 0
	lwz 28,44(30)
	lis 0,0x1
.LVL21:
	cmpw 7,28,0
	beq- 7,.L27
.LVL22:
.LBB2998:
.LBB2999:
	.loc 3 197 0
	lwz 9,4(30)
	lis 11,_ZN11idHashIndex13INVALID_INDEXE@ha
	la 0,_ZN11idHashIndex13INVALID_INDEXE@l(11)
	cmpw 7,9,0
	beq- 7,.L28
	.loc 3 200 0
	lwz 0,8(30)
	mr 11,28
	cmpw 7,28,0
	blt+ 7,.L22
	.loc 3 201 0
	mr 3,30
	addi 4,28,1
	bl _ZN11idHashIndex11ResizeIndexEi
.LVL23:
	lwz 11,44(30)
	lwz 9,4(30)
.L22:
.LVL24:
	.loc 3 203 0
	lwz 0,20(30)
	.loc 3 204 0
	lwz 10,12(30)
	.loc 3 203 0
	and 27,27,0
.LVL25:
	.loc 3 204 0
	slwi 0,28,2
	slwi 27,27,2
.LVL26:
.LBE2999:
.LBE2998:
	.loc 2 973 0
	lwz 8,32(30)
.LBB3004:
.LBB3000:
	.loc 3 204 0
	lwzx 9,9,27
	stwx 9,10,0
.LBE3000:
.LBE3004:
	.loc 2 972 0
	slwi 0,11,4
	lwz 10,28(30)
	.loc 2 977 0
	addi 11,11,1
.LBB3005:
.LBB3001:
	.loc 3 205 0
	lwz 7,4(30)
.LBE3001:
.LBE3005:
	.loc 2 972 0
	add 9,10,0
	.loc 2 977 0
	stw 11,44(30)
.LBB3006:
.LBB3002:
	.loc 3 205 0
	stwx 28,7,27
.LBE3002:
.LBE3006:
	.loc 2 972 0
	stwx 26,10,0
	.loc 2 973 0
	stw 8,4(9)
	.loc 2 974 0
	stw 31,8(9)
	.loc 2 975 0
	stw 29,12(9)
.LVL27:
.L11:
.LBE3008:
	.loc 2 978 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL28:
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL29:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL30:
	addi 1,1,32
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL31:
.L25:
.LCFI6:
	.cfi_restore_state
.LBB3009:
	.loc 2 951 0 discriminator 1
	cmpw 7,29,11
	bne+ 7,.L16
	.loc 2 952 0
	lwz 11,4(9)
	cmpw 7,11,3
	beq- 7,.L17
	.loc 2 953 0
	addi 4,4,1
	.loc 2 955 0
	b .L16
.LVL32:
.L27:
	.loc 2 966 0
	lis 9,common@ha
	lis 4,.LC0@ha
	lwz 3,common@l(9)
	la 4,.LC0@l(4)
	lwz 9,0(3)
	lwz 0,84(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LBE3009:
	.loc 2 978 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL33:
	mtlr 0
	lwz 27,12(1)
.LVL34:
	lwz 28,16(1)
	lwz 29,20(1)
.LVL35:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL36:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
.LVL37:
.L17:
.LCFI8:
	.cfi_restore_state
.LBB3010:
	.loc 2 958 0
	stw 26,4(9)
	.loc 2 955 0
	stw 5,36(30)
.LBE3010:
	.loc 2 978 0
	lwz 0,36(1)
.LVL38:
	lwz 26,8(1)
.LVL39:
	mtlr 0
	lwz 27,12(1)
.LVL40:
	lwz 28,16(1)
	lwz 29,20(1)
.LVL41:
	lwz 31,28(1)
.LVL42:
.LBB3011:
	.loc 2 955 0
	stw 4,40(30)
.LBE3011:
	.loc 2 978 0
	lwz 30,24(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
.LVL43:
.L28:
.LCFI10:
	.cfi_restore_state
.LBB3012:
.LBB3007:
.LBB3003:
	.loc 3 198 0
	lwz 5,8(30)
	lis 9,.LANCHOR0@ha
	lwz 4,.LANCHOR0@l(9)
	cmpw 7,28,5
	blt- 7,.L21
	addi 5,28,1
.L21:
	mr 3,30
	bl _ZN11idHashIndex8AllocateEii
	lwz 11,44(30)
	lwz 9,4(30)
	b .L22
.LBE3003:
.LBE3007:
.LBE3012:
	.cfi_endproc
.LFE2595:
	.size	_ZL12R_DefineEdgeiii, .-_ZL12R_DefineEdgeiii
	.align 2
	.type	_ZL11SilEdgeSortPKvS0_, @function
_ZL11SilEdgeSortPKvS0_:
.LFB2596:
	.loc 2 985 0
	.cfi_startproc
.LVL44:
	.loc 2 986 0
	lwz 11,0(3)
	.loc 2 985 0
	mr 9,3
	.loc 2 986 0
	lwz 0,0(4)
	.loc 2 987 0
	li 3,-1
.LVL45:
	.loc 2 986 0
	cmpw 7,11,0
	bltlr- 7
	.loc 2 989 0
	bgt- 7,.L33
.LVL46:
.LBB3015:
.LBB3016:
	.loc 2 992 0
	lwz 9,4(9)
.LVL47:
	lwz 0,4(4)
	cmpw 7,9,0
	bltlr- 7
	.loc 2 993 0
	mfcr 3
	rlwinm 3,3,30,1
	blr
.LVL48:
.L33:
.LBE3016:
.LBE3015:
	.loc 2 990 0
	li 3,1
	.loc 2 999 0
	blr
	.cfi_endproc
.LFE2596:
	.size	_ZL11SilEdgeSortPKvS0_, .-_ZL11SilEdgeSortPKvS0_
	.align 2
	.type	_ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1, @function
_ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1:
.LFB3220:
	.loc 2 1135 0
	.cfi_startproc
.LVL49:
.LBB3017:
	.loc 2 1141 0
	addi 9,5,1
	.loc 2 1142 0
	addi 0,5,2
	.loc 2 1141 0
	slwi 9,9,2
	.loc 2 1140 0
	slwi 5,5,2
.LVL50:
	.loc 2 1142 0
	slwi 0,0,2
.LVL51:
	.loc 2 1140 0
	lwzx 11,4,5
	.loc 2 1141 0
	lwzx 9,4,9
	.loc 2 1142 0
	lwzx 0,4,0
	.loc 2 1140 0
	mulli 11,11,60
	.loc 2 1141 0
	mulli 9,9,60
	.loc 2 1142 0
	mulli 0,0,60
	.loc 2 1140 0
	add 11,3,11
.LVL52:
	.loc 2 1141 0
	add 9,3,9
.LVL53:
	.loc 2 1144 0
	lfs 13,12(11)
	.loc 2 1142 0
	add 3,3,0
.LVL54:
	.loc 2 1145 0
	lfs 0,16(11)
.LVL55:
	lfs 9,16(9)
	.loc 2 1147 0
	lfs 12,12(3)
	.loc 2 1145 0
	fsubs 9,9,0
	.loc 2 1144 0
	lfs 10,12(9)
	.loc 2 1147 0
	fsubs 12,12,13
	.loc 2 1148 0
	lfs 11,16(3)
	.loc 2 1144 0
	fsubs 13,10,13
	.loc 2 1151 0
	lis 9,.LC1@ha
.LVL56:
	.loc 2 1148 0
	fsubs 0,11,0
.LBE3017:
	.loc 2 1155 0
.LBB3018:
	.loc 2 1150 0
	fmuls 12,9,12
	fmsubs 0,13,0,12
.LVL57:
	.loc 2 1151 0
	lfs 12,.LC1@l(9)
	fcmpu 7,0,12
	cror 30,29,30
	mfcr 3
	rlwinm 3,3,31,1
.LVL58:
.LBE3018:
	.loc 2 1155 0
	xori 3,3,1
	blr
	.cfi_endproc
.LFE3220:
	.size	_ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1, .-_ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1
	.section	.text._ZN14idFixedWindingD0Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD0Ev
	.type	_ZN14idFixedWindingD0Ev, @function
_ZN14idFixedWindingD0Ev:
.LFB1500:
	.loc 1 380 0
	.cfi_startproc
.LVL59:
	mflr 0
	stwu 1,-8(1)
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3025:
.LBB3026:
.LBB3027:
.LBB3028:
.LBB3029:
.LBB3030:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE3030:
.LBE3029:
.LBE3028:
.LBE3027:
.LBE3026:
.LBE3025:
	.loc 1 380 0
	stw 0,12(1)
.LBB3036:
.LBB3035:
.LBB3034:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL60:
.LBB3033:
.LBB3032:
.LBB3031:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE3031:
.LBE3032:
.LBE3033:
.LBE3034:
.LBE3035:
.LBE3036:
	.loc 1 382 0
	bl _ZdlPv
.LVL61:
	lwz 0,12(1)
	addi 1,1,8
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	.text._ZN9idWindingD0Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD0Ev
	.type	_ZN9idWindingD0Ev, @function
_ZN9idWindingD0Ev:
.LFB1463:
	.loc 1 183 0
	.cfi_startproc
.LVL62:
	mflr 0
	stwu 1,-16(1)
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3040:
.LBB3041:
.LBB3042:
	lis 9,_ZTV9idWinding+8@ha
.LBE3042:
.LBE3041:
.LBE3040:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL63:
	stw 0,20(1)
.LBB3047:
.LBB3045:
.LBB3043:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL64:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L41
	bl _ZdaPv
.LVL65:
.L41:
	.loc 1 185 0
	li 0,0
.LBE3043:
.LBE3045:
.LBE3047:
	.loc 1 186 0
	mr 3,31
.LBB3048:
.LBB3046:
.LBB3044:
	.loc 1 185 0
	stw 0,8(31)
.LBE3044:
.LBE3046:
.LBE3048:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL66:
	mtlr 0
	addi 1,1,16
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1463:
	.size	_ZN9idWindingD0Ev, .-_ZN9idWindingD0Ev
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL67:
.LBB3053:
	.loc 1 381 0
	li 0,0
.LBB3054:
.LBB3055:
.LBB3056:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE3056:
.LBE3055:
.LBE3054:
	.loc 1 381 0
	stw 0,8(3)
.LVL68:
.LBB3059:
.LBB3058:
.LBB3057:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE3057:
.LBE3058:
.LBE3059:
.LBE3053:
	.loc 1 382 0
	blr
	.cfi_endproc
.LFE1498:
	.size	_ZN14idFixedWindingD2Ev, .-_ZN14idFixedWindingD2Ev
	.section	".text"
	.align 2
	.globl _Z17R_InitTriSurfDatav
	.type	_Z17R_InitTriSurfDatav, @function
_Z17R_InitTriSurfDatav:
.LFB2566:
	.loc 2 157 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI15:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 2 158 0
	lis 3,0x10
	.loc 2 157 0
	stw 30,8(1)
	.loc 2 158 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,.LANCHOR0@l(30)
	.loc 2 157 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 158 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl _Z13R_StaticAlloci
.LBB3150:
.LBB3151:
.LBB3152:
.LBB3153:
.LBB3154:
.LBB3155:
.LBB3156:
	.file 4 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Heap.h"
	.loc 4 215 0
	lwz 9,72(30)
.LBE3156:
.LBE3155:
	.file 5 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/BTree.h"
	.loc 5 377 0
	li 31,0
.LBE3154:
.LBE3153:
.LBE3152:
.LBE3151:
.LBE3150:
	.loc 2 158 0
	stw 3,28(30)
.LVL69:
.LBB3171:
.LBB3168:
.LBB3165:
.LBB3162:
.LBB3159:
.LBB3158:
.LBB3157:
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,72(30)
	.loc 4 216 0
	bl _Znwj
.LVL70:
.LBE3157:
.LBE3158:
	.loc 5 377 0
	stw 31,4(3)
.LBE3159:
.LBE3162:
	.loc 5 104 0
	addi 9,3,4
.LBB3163:
.LBB3160:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3160:
.LBE3163:
.LBE3165:
.LBE3168:
.LBE3171:
.LBB3172:
.LBB3173:
.LBB3174:
.LBB3175:
.LBB3176:
.LBB3177:
.LBB3178:
	.loc 4 215 0
	lwz 11,140(30)
.LBE3178:
.LBE3177:
.LBE3176:
.LBE3175:
.LBE3174:
.LBE3173:
.LBE3172:
.LBB3199:
.LBB3169:
.LBB3166:
.LBB3164:
.LBB3161:
	.loc 5 383 0
	stw 31,32(3)
.LBE3161:
.LBE3164:
.LBE3166:
.LBE3169:
.LBE3199:
.LBB3200:
.LBB3195:
.LBB3191:
.LBB3187:
.LBB3183:
.LBB3181:
.LBB3179:
	.loc 4 216 0
	li 3,36
.LVL71:
	.loc 4 215 0
	addi 0,11,1
.LBE3179:
.LBE3181:
.LBE3183:
.LBE3187:
.LBE3191:
.LBE3195:
.LBE3200:
.LBB3201:
.LBB3170:
.LBB3167:
	.loc 5 104 0
	stw 9,56(30)
.LVL72:
.LBE3167:
.LBE3170:
.LBE3201:
.LBB3202:
.LBB3196:
.LBB3192:
.LBB3188:
.LBB3184:
.LBB3182:
.LBB3180:
	.loc 4 215 0
	stw 0,140(30)
	.loc 4 216 0
	bl _Znwj
.LVL73:
.LBE3180:
.LBE3182:
	.loc 5 377 0
	stw 31,4(3)
.LBE3184:
.LBE3188:
	.loc 5 104 0
	addi 9,3,4
.LBB3189:
.LBB3185:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3185:
.LBE3189:
.LBE3192:
.LBE3196:
.LBE3202:
.LBB3203:
.LBB3204:
.LBB3205:
.LBB3206:
.LBB3207:
.LBB3208:
.LBB3209:
	.loc 4 215 0
	lwz 11,208(30)
.LBE3209:
.LBE3208:
.LBE3207:
.LBE3206:
.LBE3205:
.LBE3204:
.LBE3203:
.LBB3230:
.LBB3197:
.LBB3193:
.LBB3190:
.LBB3186:
	.loc 5 383 0
	stw 31,32(3)
.LBE3186:
.LBE3190:
.LBE3193:
.LBE3197:
.LBE3230:
.LBB3231:
.LBB3226:
.LBB3222:
.LBB3218:
.LBB3214:
.LBB3212:
.LBB3210:
	.loc 4 216 0
	li 3,36
.LVL74:
	.loc 4 215 0
	addi 0,11,1
.LBE3210:
.LBE3212:
.LBE3214:
.LBE3218:
.LBE3222:
.LBE3226:
.LBE3231:
.LBB3232:
.LBB3198:
.LBB3194:
	.loc 5 104 0
	stw 9,124(30)
.LVL75:
.LBE3194:
.LBE3198:
.LBE3232:
.LBB3233:
.LBB3227:
.LBB3223:
.LBB3219:
.LBB3215:
.LBB3213:
.LBB3211:
	.loc 4 215 0
	stw 0,208(30)
	.loc 4 216 0
	bl _Znwj
.LVL76:
.LBE3211:
.LBE3213:
	.loc 5 377 0
	stw 31,4(3)
.LBE3215:
.LBE3219:
	.loc 5 104 0
	addi 9,3,4
.LBB3220:
.LBB3216:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3216:
.LBE3220:
.LBE3223:
.LBE3227:
.LBE3233:
.LBB3234:
.LBB3235:
.LBB3236:
.LBB3237:
.LBB3238:
.LBB3239:
.LBB3240:
	.loc 4 215 0
	lwz 11,276(30)
.LBE3240:
.LBE3239:
.LBE3238:
.LBE3237:
.LBE3236:
.LBE3235:
.LBE3234:
.LBB3261:
.LBB3228:
.LBB3224:
.LBB3221:
.LBB3217:
	.loc 5 383 0
	stw 31,32(3)
.LBE3217:
.LBE3221:
.LBE3224:
.LBE3228:
.LBE3261:
.LBB3262:
.LBB3257:
.LBB3253:
.LBB3249:
.LBB3245:
.LBB3243:
.LBB3241:
	.loc 4 216 0
	li 3,36
.LVL77:
	.loc 4 215 0
	addi 0,11,1
.LBE3241:
.LBE3243:
.LBE3245:
.LBE3249:
.LBE3253:
.LBE3257:
.LBE3262:
.LBB3263:
.LBB3229:
.LBB3225:
	.loc 5 104 0
	stw 9,192(30)
.LVL78:
.LBE3225:
.LBE3229:
.LBE3263:
.LBB3264:
.LBB3258:
.LBB3254:
.LBB3250:
.LBB3246:
.LBB3244:
.LBB3242:
	.loc 4 215 0
	stw 0,276(30)
	.loc 4 216 0
	bl _Znwj
.LVL79:
.LBE3242:
.LBE3244:
	.loc 5 377 0
	stw 31,4(3)
.LBE3246:
.LBE3250:
	.loc 5 104 0
	addi 9,3,4
.LBB3251:
.LBB3247:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3247:
.LBE3251:
.LBE3254:
.LBE3258:
.LBE3264:
.LBB3265:
.LBB3266:
.LBB3267:
.LBB3268:
.LBB3269:
.LBB3270:
.LBB3271:
	.loc 4 215 0
	lwz 11,344(30)
.LBE3271:
.LBE3270:
.LBE3269:
.LBE3268:
.LBE3267:
.LBE3266:
.LBE3265:
.LBB3292:
.LBB3259:
.LBB3255:
.LBB3252:
.LBB3248:
	.loc 5 383 0
	stw 31,32(3)
.LBE3248:
.LBE3252:
.LBE3255:
.LBE3259:
.LBE3292:
.LBB3293:
.LBB3288:
.LBB3284:
.LBB3280:
.LBB3276:
.LBB3274:
.LBB3272:
	.loc 4 216 0
	li 3,36
.LVL80:
	.loc 4 215 0
	addi 0,11,1
.LBE3272:
.LBE3274:
.LBE3276:
.LBE3280:
.LBE3284:
.LBE3288:
.LBE3293:
.LBB3294:
.LBB3260:
.LBB3256:
	.loc 5 104 0
	stw 9,260(30)
.LVL81:
.LBE3256:
.LBE3260:
.LBE3294:
.LBB3295:
.LBB3289:
.LBB3285:
.LBB3281:
.LBB3277:
.LBB3275:
.LBB3273:
	.loc 4 215 0
	stw 0,344(30)
	.loc 4 216 0
	bl _Znwj
.LVL82:
.LBE3273:
.LBE3275:
	.loc 5 377 0
	stw 31,4(3)
.LBE3277:
.LBE3281:
	.loc 5 104 0
	addi 9,3,4
.LBB3282:
.LBB3278:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3278:
.LBE3282:
.LBE3285:
.LBE3289:
.LBE3295:
.LBB3296:
.LBB3297:
.LBB3298:
.LBB3299:
.LBB3300:
.LBB3301:
.LBB3302:
	.loc 4 215 0
	lwz 11,412(30)
.LBE3302:
.LBE3301:
.LBE3300:
.LBE3299:
.LBE3298:
.LBE3297:
.LBE3296:
.LBB3323:
.LBB3290:
.LBB3286:
.LBB3283:
.LBB3279:
	.loc 5 383 0
	stw 31,32(3)
.LBE3279:
.LBE3283:
.LBE3286:
.LBE3290:
.LBE3323:
.LBB3324:
.LBB3319:
.LBB3315:
.LBB3311:
.LBB3307:
.LBB3305:
.LBB3303:
	.loc 4 216 0
	li 3,36
.LVL83:
	.loc 4 215 0
	addi 0,11,1
.LBE3303:
.LBE3305:
.LBE3307:
.LBE3311:
.LBE3315:
.LBE3319:
.LBE3324:
.LBB3325:
.LBB3291:
.LBB3287:
	.loc 5 104 0
	stw 9,328(30)
.LVL84:
.LBE3287:
.LBE3291:
.LBE3325:
.LBB3326:
.LBB3320:
.LBB3316:
.LBB3312:
.LBB3308:
.LBB3306:
.LBB3304:
	.loc 4 215 0
	stw 0,412(30)
	.loc 4 216 0
	bl _Znwj
.LVL85:
.LBE3304:
.LBE3306:
	.loc 5 377 0
	stw 31,4(3)
.LBE3308:
.LBE3312:
	.loc 5 104 0
	addi 9,3,4
.LBB3313:
.LBB3309:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3309:
.LBE3313:
.LBE3316:
.LBE3320:
.LBE3326:
.LBB3327:
.LBB3328:
.LBB3329:
.LBB3330:
.LBB3331:
.LBB3332:
.LBB3333:
	.loc 4 215 0
	lwz 11,480(30)
.LBE3333:
.LBE3332:
.LBE3331:
.LBE3330:
.LBE3329:
.LBE3328:
.LBE3327:
.LBB3354:
.LBB3321:
.LBB3317:
.LBB3314:
.LBB3310:
	.loc 5 383 0
	stw 31,32(3)
.LBE3310:
.LBE3314:
.LBE3317:
.LBE3321:
.LBE3354:
.LBB3355:
.LBB3350:
.LBB3346:
.LBB3342:
.LBB3338:
.LBB3336:
.LBB3334:
	.loc 4 216 0
	li 3,36
.LVL86:
	.loc 4 215 0
	addi 0,11,1
.LBE3334:
.LBE3336:
.LBE3338:
.LBE3342:
.LBE3346:
.LBE3350:
.LBE3355:
.LBB3356:
.LBB3322:
.LBB3318:
	.loc 5 104 0
	stw 9,396(30)
.LVL87:
.LBE3318:
.LBE3322:
.LBE3356:
.LBB3357:
.LBB3351:
.LBB3347:
.LBB3343:
.LBB3339:
.LBB3337:
.LBB3335:
	.loc 4 215 0
	stw 0,480(30)
	.loc 4 216 0
	bl _Znwj
.LVL88:
.LBE3335:
.LBE3337:
	.loc 5 377 0
	stw 31,4(3)
.LBE3339:
.LBE3343:
	.loc 5 104 0
	addi 9,3,4
.LBB3344:
.LBB3340:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3340:
.LBE3344:
.LBE3347:
.LBE3351:
.LBE3357:
.LBB3358:
.LBB3359:
.LBB3360:
.LBB3361:
.LBB3362:
.LBB3363:
.LBB3364:
	.loc 4 215 0
	lwz 11,548(30)
.LBE3364:
.LBE3363:
.LBE3362:
.LBE3361:
.LBE3360:
.LBE3359:
.LBE3358:
.LBB3385:
.LBB3352:
.LBB3348:
.LBB3345:
.LBB3341:
	.loc 5 383 0
	stw 31,32(3)
.LBE3341:
.LBE3345:
.LBE3348:
.LBE3352:
.LBE3385:
.LBB3386:
.LBB3381:
.LBB3377:
.LBB3373:
.LBB3369:
.LBB3367:
.LBB3365:
	.loc 4 216 0
	li 3,36
.LVL89:
	.loc 4 215 0
	addi 0,11,1
.LBE3365:
.LBE3367:
.LBE3369:
.LBE3373:
.LBE3377:
.LBE3381:
.LBE3386:
.LBB3387:
.LBB3353:
.LBB3349:
	.loc 5 104 0
	stw 9,464(30)
.LVL90:
.LBE3349:
.LBE3353:
.LBE3387:
.LBB3388:
.LBB3382:
.LBB3378:
.LBB3374:
.LBB3370:
.LBB3368:
.LBB3366:
	.loc 4 215 0
	stw 0,548(30)
	.loc 4 216 0
	bl _Znwj
.LVL91:
.LBE3366:
.LBE3368:
	.loc 5 377 0
	stw 31,4(3)
.LBE3370:
.LBE3374:
	.loc 5 104 0
	addi 9,3,4
.LBB3375:
.LBB3371:
	.loc 5 384 0
	stw 31,8(3)
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
.LBE3371:
.LBE3375:
.LBE3378:
.LBE3382:
.LBE3388:
.LBB3389:
.LBB3390:
.LBB3391:
.LBB3392:
.LBB3393:
.LBB3394:
.LBB3395:
	.loc 4 215 0
	lwz 11,616(30)
.LBE3395:
.LBE3394:
.LBE3393:
.LBE3392:
.LBE3391:
.LBE3390:
.LBE3389:
.LBB3416:
.LBB3383:
.LBB3379:
.LBB3376:
.LBB3372:
	.loc 5 383 0
	stw 31,32(3)
.LBE3372:
.LBE3376:
.LBE3379:
.LBE3383:
.LBE3416:
.LBB3417:
.LBB3412:
.LBB3408:
.LBB3404:
.LBB3400:
.LBB3398:
.LBB3396:
	.loc 4 216 0
	li 3,36
.LVL92:
	.loc 4 215 0
	addi 0,11,1
.LBE3396:
.LBE3398:
.LBE3400:
.LBE3404:
.LBE3408:
.LBE3412:
.LBE3417:
.LBB3418:
.LBB3384:
.LBB3380:
	.loc 5 104 0
	stw 9,532(30)
.LVL93:
.LBE3380:
.LBE3384:
.LBE3418:
.LBB3419:
.LBB3413:
.LBB3409:
.LBB3405:
.LBB3401:
.LBB3399:
.LBB3397:
	.loc 4 215 0
	stw 0,616(30)
	.loc 4 216 0
	bl _Znwj
.LVL94:
.LBE3397:
.LBE3399:
	.loc 5 377 0
	stw 31,4(3)
.LBE3401:
.LBE3405:
.LBE3409:
.LBE3413:
.LBE3419:
.LBB3420:
.LBB3421:
	.loc 4 532 0
	li 0,1
.LBE3421:
.LBE3420:
.LBB3423:
.LBB3414:
.LBB3410:
.LBB3406:
.LBB3402:
	.loc 5 384 0
	stw 31,8(3)
.LBE3402:
.LBE3406:
	.loc 5 104 0
	addi 9,3,4
.LBB3407:
.LBB3403:
	.loc 5 378 0
	stw 31,12(3)
	.loc 5 379 0
	stw 31,16(3)
	.loc 5 380 0
	stw 31,20(3)
	.loc 5 381 0
	stw 31,24(3)
	.loc 5 382 0
	stw 31,28(3)
	.loc 5 383 0
	stw 31,32(3)
.LBE3403:
.LBE3407:
.LBE3410:
.LBE3414:
.LBE3423:
.LBB3424:
.LBB3422:
	.loc 4 532 0
	stb 0,77(30)
.LBE3422:
.LBE3424:
.LBB3425:
.LBB3426:
	stb 0,145(30)
.LBE3426:
.LBE3425:
.LBB3427:
.LBB3428:
	stb 0,213(30)
.LBE3428:
.LBE3427:
.LBB3429:
.LBB3430:
	stb 0,281(30)
.LBE3430:
.LBE3429:
.LBB3431:
.LBB3432:
	stb 0,349(30)
.LBE3432:
.LBE3431:
.LBB3433:
.LBB3434:
	stb 0,417(30)
.LBE3434:
.LBE3433:
.LBB3435:
.LBB3436:
	stb 0,485(30)
.LBE3436:
.LBE3435:
.LBB3437:
.LBB3438:
	stb 0,553(30)
.LBE3438:
.LBE3437:
.LBB3439:
.LBB3440:
	stb 0,621(30)
.LBE3440:
.LBE3439:
	.loc 2 181 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
.LBB3441:
.LBB3415:
.LBB3411:
	.loc 5 104 0
	stw 9,600(30)
.LVL95:
.LBE3411:
.LBE3415:
.LBE3441:
	.loc 2 181 0
	lwz 30,8(1)
	addi 1,1,16
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2566:
	.size	_Z17R_InitTriSurfDatav, .-_Z17R_InitTriSurfDatav
	.align 2
	.globl _Z21R_ShowTriSurfMemory_fRK9idCmdArgs
	.type	_Z21R_ShowTriSurfMemory_fRK9idCmdArgs, @function
_Z21R_ShowTriSurfMemory_fRK9idCmdArgs:
.LFB2569:
	.loc 2 229 0
	.cfi_startproc
.LVL96:
	stwu 1,-56(1)
.LCFI17:
	.cfi_def_cfa_offset 56
	mflr 0
	.loc 2 232 0
	lis 4,.LC2@ha
	.loc 2 229 0
	stw 30,48(1)
	.loc 2 232 0
	lis 30,common@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 2 229 0
	stw 20,8(1)
	.loc 2 232 0
	la 4,.LC2@l(4)
	.loc 2 229 0
	stw 22,16(1)
	stw 31,52(1)
	.loc 2 231 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_offset 22, -40
	.cfi_offset 20, -48
	.loc 2 229 0
	stw 0,60(1)
	.loc 2 231 0
	la 31,.LANCHOR0@l(31)
	.loc 2 229 0
	stw 21,12(1)
	.loc 2 231 0
	addi 20,31,660
	.loc 2 229 0
	stw 23,20(1)
	.loc 2 235 0
	addi 22,31,48
	.loc 2 229 0
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	.loc 2 232 0
	lwz 3,common@l(30)
.LVL97:
	.loc 2 231 0
	lwz 6,12(20)
	.loc 2 232 0
	lwz 9,0(3)
	rlwinm 5,6,29,10,31
	lwz 0,68(9)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 2 236 0
	lwz 3,common@l(30)
	lwz 9,48(31)
.LVL98:
.LBB3442:
.LBB3443:
	.loc 4 574 0
	li 8,0
.LBE3443:
.LBE3442:
	.loc 2 236 0
	lwz 11,0(3)
	lwz 5,36(22)
.LBB3447:
.LBB3444:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3444:
.LBE3447:
	.loc 2 236 0
	lwz 6,52(22)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(22)
	srawi 6,6,10
.LVL99:
.L157:
.LBB3448:
.LBB3445:
	.loc 4 574 0
	beq- 7,.L50
.L156:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L51
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L156
.L50:
.LBE3445:
.LBE3448:
	.loc 2 236 0
	lis 4,.LC3@ha
	mtctr 0
	la 4,.LC3@l(4)
	.loc 2 239 0
	addi 21,31,116
	.loc 2 236 0
	crxor 6,6,6
	bctrl
	.loc 2 240 0
	lwz 3,common@l(30)
	lwz 9,116(31)
.LVL100:
.LBB3449:
.LBB3450:
	.loc 4 574 0
	li 8,0
.LBE3450:
.LBE3449:
	.loc 2 240 0
	lwz 11,0(3)
	lwz 5,36(21)
.LBB3454:
.LBB3451:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3451:
.LBE3454:
	.loc 2 240 0
	lwz 6,52(21)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(21)
	srawi 6,6,10
.LVL101:
.L158:
.LBB3455:
.LBB3452:
	.loc 4 574 0
	beq- 7,.L57
.L155:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L58
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L155
.L57:
.LBE3452:
.LBE3455:
	.loc 2 240 0
	lis 4,.LC4@ha
	mtctr 0
	la 4,.LC4@l(4)
	.loc 2 243 0
	addi 23,31,184
	.loc 2 240 0
	crxor 6,6,6
	bctrl
	.loc 2 244 0
	lwz 3,common@l(30)
	lwz 9,184(31)
.LVL102:
.LBB3456:
.LBB3457:
	.loc 4 574 0
	li 8,0
.LBE3457:
.LBE3456:
	.loc 2 244 0
	lwz 11,0(3)
	lwz 5,36(23)
.LBB3461:
.LBB3458:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3458:
.LBE3461:
	.loc 2 244 0
	lwz 6,52(23)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(23)
	srawi 6,6,10
.LVL103:
.L159:
.LBB3462:
.LBB3459:
	.loc 4 574 0
	beq- 7,.L64
.L154:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L65
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L154
.L64:
.LBE3459:
.LBE3462:
	.loc 2 244 0
	lis 4,.LC5@ha
	mtctr 0
	la 4,.LC5@l(4)
	.loc 2 247 0
	addi 24,31,252
	.loc 2 244 0
	crxor 6,6,6
	bctrl
	.loc 2 248 0
	lwz 3,common@l(30)
	lwz 9,252(31)
.LVL104:
.LBB3463:
.LBB3464:
	.loc 4 574 0
	li 8,0
.LBE3464:
.LBE3463:
	.loc 2 248 0
	lwz 11,0(3)
	lwz 5,36(24)
.LBB3468:
.LBB3465:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3465:
.LBE3468:
	.loc 2 248 0
	lwz 6,52(24)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(24)
	srawi 6,6,10
.LVL105:
.L160:
.LBB3469:
.LBB3466:
	.loc 4 574 0
	beq- 7,.L71
.L153:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L72
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L153
.L71:
.LBE3466:
.LBE3469:
	.loc 2 248 0
	lis 4,.LC6@ha
	mtctr 0
	la 4,.LC6@l(4)
	.loc 2 251 0
	addi 25,31,320
	.loc 2 248 0
	crxor 6,6,6
	bctrl
	.loc 2 252 0
	lwz 3,common@l(30)
	lwz 9,320(31)
.LVL106:
.LBB3470:
.LBB3471:
	.loc 4 574 0
	li 8,0
.LBE3471:
.LBE3470:
	.loc 2 252 0
	lwz 11,0(3)
	lwz 5,36(25)
.LBB3475:
.LBB3472:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3472:
.LBE3475:
	.loc 2 252 0
	lwz 6,52(25)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(25)
	srawi 6,6,10
.LVL107:
.L161:
.LBB3476:
.LBB3473:
	.loc 4 574 0
	beq- 7,.L78
.L152:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L79
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L152
.L78:
.LBE3473:
.LBE3476:
	.loc 2 252 0
	lis 4,.LC7@ha
	mtctr 0
	la 4,.LC7@l(4)
	.loc 2 255 0
	addi 26,31,388
	.loc 2 252 0
	crxor 6,6,6
	bctrl
	.loc 2 256 0
	lwz 3,common@l(30)
	lwz 9,388(31)
.LVL108:
.LBB3477:
.LBB3478:
	.loc 4 574 0
	li 8,0
.LBE3478:
.LBE3477:
	.loc 2 256 0
	lwz 11,0(3)
	lwz 5,36(26)
.LBB3482:
.LBB3479:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3479:
.LBE3482:
	.loc 2 256 0
	lwz 6,52(26)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(26)
	srawi 6,6,10
.LVL109:
.L162:
.LBB3483:
.LBB3480:
	.loc 4 574 0
	beq- 7,.L85
.L151:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L86
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L151
.L85:
.LBE3480:
.LBE3483:
	.loc 2 256 0
	lis 4,.LC8@ha
	mtctr 0
	la 4,.LC8@l(4)
	.loc 2 259 0
	addi 27,31,456
	.loc 2 256 0
	crxor 6,6,6
	bctrl
	.loc 2 260 0
	lwz 3,common@l(30)
	lwz 9,456(31)
.LVL110:
.LBB3484:
.LBB3485:
	.loc 4 574 0
	li 8,0
.LBE3485:
.LBE3484:
	.loc 2 260 0
	lwz 11,0(3)
	lwz 5,36(27)
.LBB3489:
.LBB3486:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3486:
.LBE3489:
	.loc 2 260 0
	lwz 6,52(27)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(27)
	srawi 6,6,10
.LVL111:
.L163:
.LBB3490:
.LBB3487:
	.loc 4 574 0
	beq- 7,.L92
.L150:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L93
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L150
.L92:
.LBE3487:
.LBE3490:
	.loc 2 260 0
	lis 4,.LC9@ha
	mtctr 0
	la 4,.LC9@l(4)
	.loc 2 263 0
	addi 28,31,524
	.loc 2 260 0
	crxor 6,6,6
	bctrl
	.loc 2 264 0
	lwz 3,common@l(30)
	lwz 9,524(31)
.LVL112:
.LBB3491:
.LBB3492:
	.loc 4 574 0
	li 8,0
.LBE3492:
.LBE3491:
	.loc 2 264 0
	lwz 11,0(3)
	lwz 5,36(28)
.LBB3496:
.LBB3493:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3493:
.LBE3496:
	.loc 2 264 0
	lwz 6,52(28)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(28)
	srawi 6,6,10
.LVL113:
.L164:
.LBB3497:
.LBB3494:
	.loc 4 574 0
	beq- 7,.L99
.L149:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L100
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L149
.L99:
.LBE3494:
.LBE3497:
	.loc 2 264 0
	lis 4,.LC10@ha
	mtctr 0
	la 4,.LC10@l(4)
	.loc 2 267 0
	addi 29,31,592
	.loc 2 264 0
	crxor 6,6,6
	bctrl
	.loc 2 268 0
	lwz 3,common@l(30)
	lwz 9,592(31)
.LVL114:
.LBB3498:
.LBB3499:
	.loc 4 574 0
	li 8,0
.LBE3499:
.LBE3498:
	.loc 2 268 0
	lwz 11,0(3)
	lwz 5,36(29)
.LBB3503:
.LBB3500:
	.loc 4 574 0
	cmpwi 7,9,0
.LBE3500:
.LBE3503:
	.loc 2 268 0
	lwz 6,52(29)
	lwz 0,68(11)
	srawi 5,5,10
	lwz 7,48(29)
	srawi 6,6,10
.LVL115:
.L165:
.LBB3504:
.LBB3501:
	.loc 4 574 0
	beq- 7,.L106
.L148:
	.loc 4 575 0
	lwz 11,0(9)
	cmpwi 7,11,0
	blt- 7,.L107
	lwz 9,8(9)
	cmpwi 7,9,0
	.loc 4 574 0
	bne+ 7,.L148
.L106:
.LBE3501:
.LBE3504:
	.loc 2 268 0
	lis 4,.LC11@ha
	mtctr 0
	la 4,.LC11@l(4)
	crxor 6,6,6
	bctrl
	.loc 2 280 0
	lwz 9,36(22)
	lwz 5,36(21)
	lis 4,.LC12@ha
	lwz 0,36(23)
	la 4,.LC12@l(4)
	add 5,5,9
	lwz 9,36(24)
	add 5,5,0
	lwz 0,36(25)
	add 5,5,9
	lwz 9,36(26)
	add 5,5,0
	lwz 0,36(27)
	lwz 3,common@l(30)
	add 5,5,9
	lwz 9,36(28)
	add 5,5,0
	lwz 11,36(29)
	lwz 0,12(20)
	add 5,5,9
	lwz 9,0(3)
	add 5,5,11
	slwi 0,0,7
	add 5,5,0
	lwz 0,68(9)
	srwi 5,5,10
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 2 281 0
	lwz 0,60(1)
	lwz 20,8(1)
	mtlr 0
	lwz 21,12(1)
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI18:
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
	blr
.L51:
.LCFI19:
	.cfi_restore_state
.LBB3505:
.LBB3446:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L166
	cmpwi 7,9,0
	beq- 7,.L54
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L156
.L54:
	.loc 4 576 0
	addi 8,8,1
.LVL116:
	b .L157
.LVL117:
.L58:
.LBE3446:
.LBE3505:
.LBB3506:
.LBB3453:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L167
	cmpwi 7,9,0
	beq- 7,.L61
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L155
.L61:
	.loc 4 576 0
	addi 8,8,1
.LVL118:
	b .L158
.LVL119:
.L65:
.LBE3453:
.LBE3506:
.LBB3507:
.LBB3460:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L168
	cmpwi 7,9,0
	beq- 7,.L68
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L154
.L68:
	.loc 4 576 0
	addi 8,8,1
.LVL120:
	b .L159
.LVL121:
.L72:
.LBE3460:
.LBE3507:
.LBB3508:
.LBB3467:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L169
	cmpwi 7,9,0
	beq- 7,.L75
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L153
.L75:
	.loc 4 576 0
	addi 8,8,1
.LVL122:
	b .L160
.LVL123:
.L79:
.LBE3467:
.LBE3508:
.LBB3509:
.LBB3474:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L170
	cmpwi 7,9,0
	beq- 7,.L82
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L152
.L82:
	.loc 4 576 0
	addi 8,8,1
.LVL124:
	b .L161
.LVL125:
.L86:
.LBE3474:
.LBE3509:
.LBB3510:
.LBB3481:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L171
	cmpwi 7,9,0
	beq- 7,.L89
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L151
.L89:
	.loc 4 576 0
	addi 8,8,1
.LVL126:
	b .L162
.LVL127:
.L93:
.LBE3481:
.LBE3510:
.LBB3511:
.LBB3488:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L172
	cmpwi 7,9,0
	beq- 7,.L96
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L150
.L96:
	.loc 4 576 0
	addi 8,8,1
.LVL128:
	b .L163
.LVL129:
.L100:
.LBE3488:
.LBE3511:
.LBB3512:
.LBB3495:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L173
	cmpwi 7,9,0
	beq- 7,.L103
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L149
.L103:
	.loc 4 576 0
	addi 8,8,1
.LVL130:
	b .L164
.LVL131:
.L107:
.LBE3495:
.LBE3512:
.LBB3513:
.LBB3502:
	.loc 4 575 0
	lwz 11,12(9)
	lwz 9,8(9)
	cmpwi 7,11,0
	beq- 7,.L174
	cmpwi 7,9,0
	beq- 7,.L110
	lwz 11,0(9)
	cmpwi 6,11,0
	bge+ 6,.L148
.L110:
	.loc 4 576 0
	addi 8,8,1
.LVL132:
	b .L165
.LVL133:
.L166:
	cmpwi 7,9,0
	b .L157
.L170:
	cmpwi 7,9,0
	b .L161
.L169:
	cmpwi 7,9,0
	b .L160
.L168:
	cmpwi 7,9,0
	b .L159
.L167:
	cmpwi 7,9,0
	b .L158
.L174:
	cmpwi 7,9,0
	b .L165
.L173:
	cmpwi 7,9,0
	b .L164
.L172:
	cmpwi 7,9,0
	b .L163
.L171:
	cmpwi 7,9,0
	b .L162
.LBE3502:
.LBE3513:
	.cfi_endproc
.LFE2569:
	.size	_Z21R_ShowTriSurfMemory_fRK9idCmdArgs, .-_Z21R_ShowTriSurfMemory_fRK9idCmdArgs
	.align 2
	.globl _Z15R_TriSurfMemoryPK14srfTriangles_s
	.type	_Z15R_TriSurfMemoryPK14srfTriangles_s, @function
_Z15R_TriSurfMemoryPK14srfTriangles_s:
.LFB2570:
	.loc 2 290 0
	.cfi_startproc
.LVL134:
.LBB3514:
	.loc 2 293 0
	mr. 9,3
	.loc 2 294 0
	li 3,0
.LVL135:
	.loc 2 293 0
	beqlr- 0
	.loc 2 298 0
	cmpwi 7,9,-1
	beqlr- 7
	.loc 2 302 0
	lwz 0,100(9)
	cmpwi 7,0,0
	beq- 7,.L177
.LVL136:
	.loc 2 303 0
	lwz 3,36(9)
	slwi 3,3,4
.LVL137:
.L178:
	.loc 2 309 0
	lwz 0,80(9)
	cmpwi 7,0,0
	beq- 7,.L180
	.loc 2 310 0
	lwz 0,44(9)
	lis 11,0x5555
	ori 11,11,21846
	mulhw 11,0,11
	srawi 0,0,31
	subf 0,0,11
	slwi 0,0,4
	add 3,3,0
.L180:
	.loc 2 312 0
	lwz 0,48(9)
	cmpwi 7,0,0
	beq- 7,.L181
	.loc 2 313 0
	lwz 11,104(9)
	cmpwi 7,11,0
	beq- 7,.L182
	.loc 2 313 0 is_stmt 0 discriminator 1
	lwz 11,48(11)
	cmpw 7,0,11
	beq- 7,.L181
.L182:
	.loc 2 314 0 is_stmt 1
	lwz 0,44(9)
	slwi 0,0,2
	add 3,3,0
.L181:
	.loc 2 317 0
	lwz 0,52(9)
	cmpwi 7,0,0
	beq- 7,.L183
	.loc 2 318 0
	lwz 0,44(9)
	slwi 0,0,2
	add 3,3,0
.L183:
	.loc 2 320 0
	lwz 0,76(9)
	cmpwi 7,0,0
	beq- 7,.L184
	.loc 2 321 0
	lwz 0,72(9)
	slwi 0,0,4
	add 3,3,0
.L184:
	.loc 2 323 0
	lwz 0,84(9)
	cmpwi 7,0,0
	beq- 7,.L185
	.loc 2 324 0
	lwz 0,36(9)
	mulli 0,0,20
	add 3,3,0
.L185:
	.loc 2 326 0
	lwz 0,60(9)
	cmpwi 7,0,0
	beq- 7,.L186
	.loc 2 327 0
	lwz 0,56(9)
	slwi 0,0,2
	add 3,3,0
.L186:
	.loc 2 329 0
	lwz 0,68(9)
	cmpwi 7,0,0
	beq- 7,.L187
	.loc 2 330 0
	lwz 0,64(9)
	slwi 0,0,2
	add 3,3,0
.L187:
	.loc 2 333 0
	addi 3,3,128
.LVL138:
.LBE3514:
	.loc 2 336 0
	blr
.LVL139:
.L177:
.LBB3515:
	.loc 2 304 0
	lwz 0,40(9)
	li 3,0
	cmpwi 7,0,0
	beq- 7,.L178
	.loc 2 305 0
	lwz 11,104(9)
	cmpwi 7,11,0
	beq- 7,.L179
	.loc 2 305 0 is_stmt 0 discriminator 1
	lwz 11,40(11)
	cmpw 7,0,11
	beq- 7,.L178
.L179:
.LVL140:
	.loc 2 306 0 is_stmt 1
	lwz 3,36(9)
	mulli 3,3,60
	b .L178
.LBE3515:
	.cfi_endproc
.LFE2570:
	.size	_Z15R_TriSurfMemoryPK14srfTriangles_s, .-_Z15R_TriSurfMemoryPK14srfTriangles_s
	.align 2
	.globl _Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s
	.type	_Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s, @function
_Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s:
.LFB2571:
	.loc 2 343 0
	.cfi_startproc
.LVL141:
	mflr 0
	stwu 1,-24(1)
.LCFI20:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	.loc 2 346 0
	lis 30,vertexCache@ha
	.cfi_offset 30, -8
	.loc 2 343 0
	stw 31,20(1)
	.loc 2 346 0
	la 30,vertexCache@l(30)
	.loc 2 343 0
	stw 0,28(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 29,12(1)
	.loc 2 344 0
	lwz 29,104(3)
	.cfi_offset 29, -12
	cmpwi 7,29,0
	beq- 7,.L198
	.loc 2 351 0
	lwz 4,120(3)
	mr 3,30
.LVL142:
	bl _ZN13idVertexCache4FreeEP11vertCache_s
	.loc 2 352 0
	li 0,0
	stw 0,120(31)
.L194:
	.loc 2 354 0
	lwz 4,112(31)
	cmpwi 7,4,0
	beq- 7,.L195
	.loc 2 355 0
	mr 3,30
	bl _ZN13idVertexCache4FreeEP11vertCache_s
	.loc 2 356 0
	li 0,0
	stw 0,112(31)
.L195:
	.loc 2 358 0
	lwz 4,124(31)
	cmpwi 7,4,0
	beq- 7,.L192
	.loc 2 358 0 is_stmt 0 discriminator 1
	lwz 0,100(31)
	cmpwi 7,0,0
	beq- 7,.L199
.L197:
	.loc 2 362 0 is_stmt 1
	mr 3,30
	bl _ZN13idVertexCache4FreeEP11vertCache_s
	.loc 2 363 0
	li 0,0
	stw 0,124(31)
.L192:
	.loc 2 365 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL143:
	addi 1,1,24
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL144:
.L199:
.LCFI22:
	.cfi_restore_state
	.loc 2 358 0 discriminator 2
	lwz 0,40(31)
	cmpwi 7,0,0
	bne+ 7,.L197
	b .L192
.L198:
	.loc 2 346 0
	lwz 4,116(3)
	mr 3,30
	bl _ZN13idVertexCache4FreeEP11vertCache_s
	.loc 2 347 0
	stw 29,116(31)
	b .L194
	.cfi_endproc
.LFE2571:
	.size	_Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s, .-_Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s
	.align 2
	.globl _Z26R_CheckStaticTriSurfMemoryPK14srfTriangles_s
	.type	_Z26R_CheckStaticTriSurfMemoryPK14srfTriangles_s, @function
_Z26R_CheckStaticTriSurfMemoryPK14srfTriangles_s:
.LFB2573:
	.loc 2 441 0
	.cfi_startproc
.LVL145:
	.loc 2 468 0
	blr
	.cfi_endproc
.LFE2573:
	.size	_Z26R_CheckStaticTriSurfMemoryPK14srfTriangles_s, .-_Z26R_CheckStaticTriSurfMemoryPK14srfTriangles_s
	.align 2
	.globl _Z20R_AllocStaticTriSurfv
	.type	_Z20R_AllocStaticTriSurfv, @function
_Z20R_AllocStaticTriSurfv:
.LFB2576:
	.loc 2 532 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI23:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3516:
.LBB3517:
.LBB3518:
	.loc 4 215 0
	lis 9,.LANCHOR0@ha
	.loc 4 216 0
	li 3,132
.LBE3518:
.LBE3517:
.LBE3516:
	.loc 2 532 0
	stw 31,12(1)
.LBB3523:
.LBB3521:
.LBB3519:
	.loc 4 215 0
	la 9,.LANCHOR0@l(9)
.LBE3519:
.LBE3521:
.LBE3523:
	.loc 2 532 0
	stw 0,20(1)
.LBB3524:
.LBB3522:
.LBB3520:
	.loc 4 215 0
	lwz 11,672(9)
	addi 0,11,1
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 0,672(9)
	.loc 4 216 0
	bl _Znwj
.LVL146:
.LBE3520:
.LBE3522:
	.loc 2 534 0
	li 4,0
	.loc 2 533 0
	addi 31,3,4
.LVL147:
	.loc 2 534 0
	li 5,128
	mr 3,31
.LVL148:
	bl memset
.LBE3524:
	.loc 2 536 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL149:
	mtlr 0
	addi 1,1,16
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2576:
	.size	_Z20R_AllocStaticTriSurfv, .-_Z20R_AllocStaticTriSurfv
	.align 2
	.globl _Z29R_ReferenceStaticTriSurfVertsP14srfTriangles_sPKS_
	.type	_Z29R_ReferenceStaticTriSurfVertsP14srfTriangles_sPKS_, @function
_Z29R_ReferenceStaticTriSurfVertsP14srfTriangles_sPKS_:
.LFB2585:
	.loc 2 645 0
	.cfi_startproc
.LVL150:
	.loc 2 646 0
	lwz 0,40(4)
	stw 0,40(3)
	.loc 2 647 0
	blr
	.cfi_endproc
.LFE2585:
	.size	_Z29R_ReferenceStaticTriSurfVertsP14srfTriangles_sPKS_, .-_Z29R_ReferenceStaticTriSurfVertsP14srfTriangles_sPKS_
	.align 2
	.globl _Z31R_ReferenceStaticTriSurfIndexesP14srfTriangles_sPKS_
	.type	_Z31R_ReferenceStaticTriSurfIndexesP14srfTriangles_sPKS_, @function
_Z31R_ReferenceStaticTriSurfIndexesP14srfTriangles_sPKS_:
.LFB2586:
	.loc 2 654 0
	.cfi_startproc
.LVL151:
	.loc 2 655 0
	lwz 0,48(4)
	stw 0,48(3)
	.loc 2 656 0
	blr
	.cfi_endproc
.LFE2586:
	.size	_Z31R_ReferenceStaticTriSurfIndexesP14srfTriangles_sPKS_, .-_Z31R_ReferenceStaticTriSurfIndexesP14srfTriangles_sPKS_
	.align 2
	.globl _Z19R_RangeCheckIndexesPK14srfTriangles_s
	.type	_Z19R_RangeCheckIndexesPK14srfTriangles_s, @function
_Z19R_RangeCheckIndexesPK14srfTriangles_s:
.LFB2588:
	.loc 2 680 0
	.cfi_startproc
.LVL152:
	mflr 0
	stwu 1,-24(1)
.LCFI25:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 31,20(1)
.LBB3525:
	.loc 2 683 0
	lwz 0,44(3)
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	cmpwi 7,0,0
	blt- 7,.L213
.LVL153:
.L205:
	.loc 2 686 0
	lwz 0,36(30)
	cmpwi 7,0,0
	blt- 7,.L214
.L206:
	.loc 2 691 0
	lwz 9,44(30)
	lis 0,0x5555
	ori 0,0,21846
	mulhw 0,9,0
	srawi 11,9,31
	subf 0,11,0
	mulli 0,0,3
	cmpw 7,9,0
	bne- 7,.L215
.L207:
.LVL154:
	.loc 2 695 0 discriminator 1
	cmpwi 7,9,0
	ble- 7,.L204
	.loc 2 697 0
	lis 29,.LC16@ha
	.loc 2 695 0
	li 31,0
	.loc 2 697 0
	lis 28,common@ha
	la 29,.LC16@l(29)
.LVL155:
.L211:
	.loc 2 696 0
	lwz 11,48(30)
	slwi 0,31,2
	.loc 2 697 0
	mr 4,29
	.loc 2 695 0
	addi 31,31,1
	.loc 2 696 0
	lwzx 0,11,0
	cmpwi 7,0,0
	blt- 7,.L209
	.loc 2 696 0 is_stmt 0 discriminator 1
	lwz 11,36(30)
	cmpw 7,0,11
	blt- 7,.L210
.L209:
	.loc 2 697 0 is_stmt 1
	lwz 3,common@l(28)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	lwz 9,44(30)
.L210:
.LVL156:
	.loc 2 695 0
	cmpw 7,9,31
	bgt+ 7,.L211
.LVL157:
.L204:
.LBE3525:
	.loc 2 706 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL158:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI26:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL159:
.L215:
.LCFI27:
	.cfi_restore_state
.LBB3526:
	.loc 2 692 0
	lis 9,common@ha
	lis 4,.LC15@ha
	lwz 3,common@l(9)
	la 4,.LC15@l(4)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	lwz 9,44(30)
	b .L207
.L214:
	.loc 2 687 0
	lis 9,common@ha
	lis 4,.LC14@ha
	lwz 3,common@l(9)
	la 4,.LC14@l(4)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	b .L206
.L213:
	.loc 2 684 0
	lis 9,common@ha
	lis 4,.LC13@ha
	lwz 3,common@l(9)
	la 4,.LC13@l(4)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	b .L205
.LBE3526:
	.cfi_endproc
.LFE2588:
	.size	_Z19R_RangeCheckIndexesPK14srfTriangles_s, .-_Z19R_RangeCheckIndexesPK14srfTriangles_s
	.align 2
	.globl _Z14R_BoundTriSurfP14srfTriangles_s
	.type	_Z14R_BoundTriSurfP14srfTriangles_s, @function
_Z14R_BoundTriSurfP14srfTriangles_s:
.LFB2589:
	.loc 2 713 0
	.cfi_startproc
.LVL160:
	mflr 0
	stwu 1,-8(1)
.LCFI28:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 714 0
	lis 9,SIMDProcessor@ha
	.loc 2 713 0
	mr 4,3
.LVL161:
	.loc 2 714 0
	lwz 9,SIMDProcessor@l(9)
	addi 5,4,12
	.loc 2 713 0
	stw 0,12(1)
	.loc 2 714 0
	mr 3,9
.LVL162:
	lwz 11,0(9)
	lwz 6,40(4)
	lwz 0,128(11)
	.cfi_offset 65, 4
	lwz 7,36(4)
	mtctr 0
	bctrl
.LVL163:
	.loc 2 715 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI29:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2589:
	.size	_Z14R_BoundTriSurfP14srfTriangles_s, .-_Z14R_BoundTriSurfP14srfTriangles_s
	.align 2
	.globl _Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s
	.type	_Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s, @function
_Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s:
.LFB2602:
	.loc 2 1384 0
	.cfi_startproc
.LVL164:
	mflr 0
	stwu 1,-96(1)
.LCFI30:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
.LBB3579:
	.loc 2 1390 0
	lis 9,0xaaaa
	ori 9,9,43691
.LBE3579:
	.loc 2 1384 0
	stw 31,68(1)
	stw 0,100(1)
	mr 31,1
	.cfi_offset 65, 4
	.cfi_offset 31, -28
.LCFI31:
	.cfi_def_cfa_register 31
.LBB3800:
	.loc 2 1390 0
	lwz 0,44(3)
.LBE3800:
	.loc 2 1384 0
	stfd 29,72(1)
.LBB3801:
	.loc 2 1390 0
	mulli 11,0,28
.LBB3580:
.LBB3581:
.LBB3582:
	.loc 2 1181 0
	cmpwi 7,0,0
.LBE3582:
.LBE3581:
.LBE3580:
.LBE3801:
	.loc 2 1384 0
	stfd 30,80(1)
.LBB3802:
	.loc 2 1390 0
	mulhwu 11,11,9
	lwz 9,0(1)
.LBE3802:
	.loc 2 1384 0
	stfd 31,88(1)
	stw 21,28(1)
	stw 22,32(1)
.LBB3803:
	.loc 2 1390 0
	srwi 11,11,1
.LBE3803:
	.loc 2 1384 0
	stw 23,36(1)
.LBB3804:
	.loc 2 1390 0
	addi 0,11,45
.LBE3804:
	.loc 2 1384 0
	stw 24,40(1)
.LBB3805:
	.loc 2 1390 0
	rlwinm 0,0,0,0,27
.LBE3805:
	.loc 2 1384 0
	stw 25,44(1)
.LBB3806:
	.loc 2 1390 0
	neg 0,0
.LBE3806:
	.loc 2 1384 0
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
.LBB3807:
	.loc 2 1390 0
	stwux 9,1,0
	addi 5,1,23
	rlwinm 5,5,0,0,27
.LVL165:
.LBB3750:
.LBB3749:
.LBB3748:
	.loc 2 1181 0
	ble- 7,.L218
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
.LVL166:
	lis 9,.LC19@ha
.LBB3583:
	.loc 2 1186 0
	lis 26,0x5555
	.loc 2 1205 0
	lfs 1,.LC19@l(9)
.LBB3584:
.LBB3585:
.LBB3586:
.LBB3587:
	.file 6 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Math.h"
	.loc 6 276 0
	lis 28,_ZN6idMath5iSqrtE@ha
.LBE3587:
.LBE3586:
.LBE3585:
.LBE3584:
	.loc 2 1213 0
	lis 9,.LC1@ha
.LBE3583:
	.loc 2 1181 0
	li 30,4
	li 10,0
.LBB3742:
	.loc 2 1186 0
	ori 26,26,21846
	.loc 2 1213 0
	lfs 13,.LC1@l(9)
	.loc 2 1220 0
	li 27,0
.LBB3642:
.LBB3622:
.LBB3605:
.LBB3588:
	.loc 6 275 0
	lis 22,.LC20@ha
	.loc 6 276 0
	la 28,_ZN6idMath5iSqrtE@l(28)
	.loc 6 278 0
	lis 23,.LC22@ha
.LBE3588:
.LBE3605:
.LBE3622:
.LBE3642:
	.loc 2 1223 0
	lis 21,.LC18@ha
	lis 24,.LC17@ha
	.loc 2 1207 0
	li 25,1
	b .L224
.LVL167:
.L243:
	.loc 2 1206 0
	stb 27,24(9)
.LBE3742:
	.loc 2 1181 0
	addi 10,10,3
.LBB3743:
	.loc 2 1207 0
	stb 25,25(9)
.LVL168:
.LBE3743:
	.loc 2 1181 0
	addi 30,30,12
.LBB3744:
.LBB3643:
.LBB3644:
	.file 7 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Vector.h"
	.loc 7 416 0
	stfs 13,8(9)
	stfs 13,4(9)
	stfsx 13,5,0
.LVL169:
.LBE3644:
.LBE3643:
.LBB3645:
.LBB3646:
	stfs 13,20(9)
	stfs 13,16(9)
	stfs 13,12(9)
.LVL170:
.LBE3646:
.LBE3645:
.LBE3744:
	.loc 2 1181 0
	lwz 0,44(3)
	cmpw 7,10,0
	bge- 7,.L218
.LVL171:
.L224:
.LBB3745:
	.loc 2 1188 0
	lwz 11,48(3)
	slwi 0,10,2
	.loc 2 1186 0
	mulhw 29,10,26
	.loc 2 1189 0
	mr 9,11
	.loc 2 1188 0
	lwzx 0,11,0
	.loc 2 1189 0
	lwzux 12,9,30
	.loc 2 1188 0
	lwz 11,40(3)
	.loc 2 1190 0
	lwz 4,4(9)
	.loc 2 1189 0
	mulli 12,12,60
	.loc 2 1188 0
	mulli 9,0,60
	.loc 2 1186 0
	srawi 0,10,31
	.loc 2 1190 0
	mulli 4,4,60
	.loc 2 1189 0
	add 6,11,12
	.loc 2 1188 0
	add 7,11,9
	.loc 2 1196 0
	lfs 9,16(6)
	.loc 2 1190 0
	add 8,11,4
	.loc 2 1196 0
	lfs 0,16(7)
	.loc 2 1195 0
	lfs 12,12(7)
	.loc 2 1186 0
	subf 0,0,29
	.loc 2 1201 0
	lfs 10,12(8)
	.loc 2 1196 0
	fsubs 9,9,0
	.loc 2 1195 0
	lfs 8,12(6)
	.loc 2 1186 0
	mulli 0,0,28
	.loc 2 1201 0
	fsubs 10,10,12
	.loc 2 1202 0
	lfs 11,16(8)
	.loc 2 1195 0
	fsubs 12,8,12
	.loc 2 1192 0
	lfsx 6,11,9
	.loc 2 1202 0
	fsubs 11,11,0
	.loc 2 1192 0
	lfsx 4,11,12
	.loc 2 1204 0
	fmuls 0,9,10
	.loc 2 1186 0
	add 9,5,0
.LVL172:
	.loc 2 1193 0
	lfs 5,4(6)
.LVL173:
	lfs 7,4(7)
.LVL174:
	.loc 2 1204 0
	fmsubs 0,12,11,0
	.loc 2 1194 0
	lfs 3,8(6)
.LVL175:
	.loc 2 1198 0
	lfsx 31,11,4
	.loc 2 1199 0
	lfs 30,4(8)
	.loc 2 1205 0
	fabs 8,0
	.loc 2 1200 0
	lfs 2,8(8)
	.loc 2 1205 0
	fcmpu 7,8,1
	.loc 2 1194 0
	lfs 8,8(7)
.LVL176:
	.loc 2 1205 0
	blt- 7,.L243
	.loc 2 1213 0
	fcmpu 7,0,13
	.loc 2 1220 0
	stb 27,25(9)
	.loc 2 1223 0
	lfs 0,.LC17@l(24)
.LVL177:
	.loc 2 1213 0
	mfcr 11
	rlwinm 11,11,30,1
.LBB3648:
.LBB3647:
	.loc 2 1384 0
	xori 11,11,1
	.loc 7 416 0
	stb 11,24(9)
.LBE3647:
.LBE3648:
	.loc 2 1223 0
	blt- 7,.L222
	lfs 0,.LC18@l(21)
.L222:
	.loc 2 1193 0
	fsubs 5,5,7
.LBE3745:
	.loc 2 1181 0
	addi 10,10,3
.LBB3746:
	.loc 2 1199 0
	fsubs 7,30,7
.LBE3746:
	.loc 2 1181 0
	addi 30,30,12
.LBB3747:
	.loc 2 1192 0
	fsubs 4,4,6
	.loc 2 1198 0
	fsubs 6,31,6
	.loc 2 1226 0
	fmuls 29,9,7
	.loc 2 1232 0
	fmuls 30,5,10
	.loc 2 1194 0
	fsubs 3,3,8
	.loc 2 1225 0
	fmuls 31,9,6
	.loc 2 1200 0
	fsubs 8,2,8
.LVL178:
	.loc 2 1226 0
	fmsubs 5,5,11,29
	.loc 2 1231 0
	fmuls 2,4,10
	.loc 2 1232 0
	fmsubs 7,12,7,30
	.loc 2 1226 0
	fmuls 5,0,5
	.loc 2 1225 0
	fmsubs 4,4,11,31
	.loc 2 1227 0
	fmuls 9,9,8
.LVL179:
	.loc 2 1232 0
	fmuls 7,0,7
	.loc 2 1231 0
	fmsubs 6,12,6,2
	.loc 2 1233 0
	fmuls 10,3,10
.LVL180:
	.loc 2 1225 0
	fmuls 4,4,0
.LVL181:
	.loc 2 1227 0
	fmsubs 11,3,11,9
.LVL182:
.LBB3649:
.LBB3623:
	.loc 7 649 0
	fmuls 31,5,5
.LBE3623:
.LBE3649:
	.loc 2 1233 0
	fmsubs 8,12,8,10
	.loc 2 1231 0
	fmuls 6,0,6
.LBB3650:
.LBB3651:
	.loc 7 649 0
	fmuls 2,7,7
.LBE3651:
.LBE3650:
	.loc 2 1227 0
	fmuls 11,0,11
.LVL183:
	.loc 7 649 0
	fmadds 10,4,4,31
.LBB3697:
.LBB3624:
.LBB3606:
.LBB3589:
	.loc 6 275 0
	lfs 31,.LC20@l(22)
.LBE3589:
.LBE3606:
.LBE3624:
.LBE3697:
	.loc 2 1233 0
	fmuls 0,0,8
.LVL184:
.LBB3698:
.LBB3625:
.LBB3607:
.LBB3590:
	.loc 6 278 0
	lfs 8,.LC22@l(23)
.LBE3590:
.LBE3607:
.LBE3625:
.LBE3698:
	.loc 7 649 0
	fmadds 12,6,6,2
.LVL185:
	fmadds 10,11,11,10
	fmadds 12,0,0,12
	stfs 10,8(31)
.LVL186:
	stfs 12,12(31)
.LBB3699:
.LBB3626:
.LBB3608:
.LBB3591:
	.loc 6 275 0
	fmuls 12,10,31
	.loc 6 270 0
	lwz 8,8(31)
.LVL187:
.LBE3591:
.LBE3608:
.LBE3626:
.LBE3699:
.LBB3700:
.LBB3680:
.LBB3652:
.LBB3653:
	lwz 11,12(31)
.LBE3653:
.LBE3652:
.LBE3680:
.LBE3700:
.LBB3701:
.LBB3627:
.LBB3609:
.LBB3592:
	.loc 6 276 0
	rlwinm 6,8,19,21,29
.LVL188:
	rlwinm 29,8,9,24,31
	lwzx 6,28,6
	subfic 8,29,380
.LBE3592:
.LBE3609:
.LBE3627:
.LBE3701:
.LBB3702:
.LBB3681:
.LBB3667:
.LBB3654:
	rlwinm 7,11,19,21,29
.LVL189:
	rlwinm 4,11,9,24,31
.LBE3654:
.LBE3667:
.LBE3681:
.LBE3702:
.LBB3703:
.LBB3628:
.LBB3610:
.LBB3593:
	rlwinm 8,8,22,0,8
.LVL190:
.LBE3593:
.LBE3610:
.LBE3628:
.LBE3703:
.LBB3704:
.LBB3682:
.LBB3668:
.LBB3655:
	lwzx 7,28,7
	subfic 11,4,380
.LBE3655:
.LBE3668:
.LBE3682:
.LBE3704:
.LBB3705:
.LBB3629:
.LBB3611:
.LBB3594:
	or 8,8,6
	.loc 6 277 0
	stw 8,16(31)
.LBE3594:
.LBE3611:
.LBE3629:
.LBE3705:
.LBB3706:
.LBB3683:
.LBB3669:
.LBB3656:
	.loc 6 276 0
	rlwinm 11,11,22,0,8
	.loc 6 275 0
	lfs 10,12(31)
.LVL191:
	.loc 6 276 0
	or 11,11,7
.LBE3656:
.LBE3669:
.LBE3683:
.LBE3706:
.LBB3707:
.LBB3630:
.LBB3612:
.LBB3595:
	.loc 2 1384 0
	fneg 12,12
.LVL192:
.LBE3595:
.LBE3612:
.LBE3630:
.LBE3707:
.LBB3708:
.LBB3684:
.LBB3670:
.LBB3657:
	.loc 6 275 0
	fmuls 31,10,31
.LBE3657:
.LBE3670:
.LBE3684:
.LBE3708:
.LBB3709:
.LBB3631:
.LBB3613:
.LBB3596:
	.loc 6 277 0
	lfs 10,16(31)
.LBE3596:
.LBE3613:
.LBE3631:
.LBE3709:
.LBB3710:
.LBB3685:
.LBB3671:
.LBB3658:
	stw 11,16(31)
.LBE3658:
.LBE3671:
.LBE3685:
.LBE3710:
.LBB3711:
.LBB3632:
.LBB3614:
.LBB3597:
	fmr 2,10
.LVL193:
.LBE3597:
.LBE3614:
.LBE3632:
.LBE3711:
.LBB3712:
.LBB3686:
.LBB3672:
.LBB3659:
	lfs 10,16(31)
.LVL194:
	.loc 2 1384 0
	fneg 31,31
	.loc 6 277 0
	fmr 3,10
.LBE3659:
.LBE3672:
.LBE3686:
.LBE3712:
.LBB3713:
.LBB3633:
.LBB3615:
.LBB3598:
	.loc 6 278 0
	fmul 9,2,2
.LBE3598:
.LBE3615:
.LBE3633:
.LBE3713:
.LBB3714:
.LBB3687:
.LBB3673:
.LBB3660:
	fmul 10,3,3
.LBE3660:
.LBE3673:
.LBE3687:
.LBE3714:
.LBB3715:
.LBB3634:
.LBB3616:
.LBB3599:
	fmadd 9,12,9,8
.LBE3599:
.LBE3616:
.LBE3634:
.LBE3715:
.LBB3716:
.LBB3688:
.LBB3674:
.LBB3661:
	fmadd 10,31,10,8
.LBE3661:
.LBE3674:
.LBE3688:
.LBE3716:
.LBB3717:
.LBB3635:
.LBB3617:
.LBB3600:
	fmul 9,2,9
.LVL195:
.LBE3600:
.LBE3617:
.LBE3635:
.LBE3717:
.LBB3718:
.LBB3689:
.LBB3675:
.LBB3662:
	fmul 10,3,10
.LBE3662:
.LBE3675:
.LBE3689:
.LBE3718:
.LBB3719:
.LBB3636:
.LBB3618:
.LBB3601:
	.loc 6 279 0
	fmul 2,9,9
.LBE3601:
.LBE3618:
.LBE3636:
.LBE3719:
.LBB3720:
.LBB3690:
.LBB3676:
.LBB3663:
	fmul 3,10,10
.LBE3663:
.LBE3676:
.LBE3690:
.LBE3720:
.LBB3721:
.LBB3637:
.LBB3619:
.LBB3602:
	fmadd 12,12,2,8
.LVL196:
.LBE3602:
.LBE3619:
.LBE3637:
.LBE3721:
.LBB3722:
.LBB3691:
.LBB3677:
.LBB3664:
	fmadd 8,31,3,8
.LBE3664:
.LBE3677:
.LBE3691:
.LBE3722:
.LBB3723:
.LBB3638:
.LBB3620:
.LBB3603:
	fmul 12,9,12
.LVL197:
.LBE3603:
.LBE3620:
.LBE3638:
.LBE3723:
.LBB3724:
.LBB3692:
.LBB3678:
.LBB3665:
	fmul 8,10,8
.LBE3665:
.LBE3678:
.LBE3692:
.LBE3724:
.LBB3725:
.LBB3639:
.LBB3621:
.LBB3604:
	.loc 6 280 0
	frsp 12,12
.LVL198:
.LBE3604:
.LBE3621:
.LBE3639:
.LBE3725:
.LBB3726:
.LBB3693:
.LBB3679:
.LBB3666:
	frsp 8,8
.LBE3666:
.LBE3679:
.LBE3693:
.LBE3726:
.LBB3727:
.LBB3640:
	.loc 7 651 0
	fmuls 4,4,12
	.loc 7 652 0
	fmuls 5,5,12
.LBE3640:
.LBE3727:
.LBB3728:
.LBB3694:
	.loc 7 651 0
	fmuls 6,6,8
.LBE3694:
.LBE3728:
.LBB3729:
.LBB3641:
	.loc 7 653 0
	fmuls 12,11,12
.LBE3641:
.LBE3729:
.LBB3730:
.LBB3731:
	.loc 7 424 0
	stfsx 4,5,0
.LBE3731:
.LBE3730:
.LBB3734:
.LBB3695:
	.loc 7 652 0
	fmuls 7,7,8
.LBE3695:
.LBE3734:
.LBB3735:
.LBB3732:
	.loc 7 425 0
	stfs 5,4(9)
.LBE3732:
.LBE3735:
.LBB3736:
.LBB3696:
	.loc 7 653 0
	fmuls 0,0,8
.LBE3696:
.LBE3736:
.LBB3737:
.LBB3738:
	.loc 7 424 0
	stfs 6,12(9)
.LBE3738:
.LBE3737:
.LBB3740:
.LBB3733:
	.loc 7 426 0
	stfs 12,8(9)
.LVL199:
.LBE3733:
.LBE3740:
.LBB3741:
.LBB3739:
	.loc 7 425 0
	stfs 7,16(9)
	.loc 7 426 0
	stfs 0,20(9)
.LVL200:
.LBE3739:
.LBE3741:
.LBE3747:
	.loc 2 1181 0
	lwz 0,44(3)
	cmpw 7,10,0
	blt+ 7,.L224
.LVL201:
.L218:
.LBE3748:
.LBE3749:
.LBE3750:
	.loc 2 1394 0 discriminator 1
	lwz 11,36(3)
	cmpwi 7,11,0
	ble- 7,.L225
	.loc 2 1394 0 is_stmt 0
	li 9,0
	li 10,0
.LBB3751:
.LBB3752:
	.loc 7 416 0 is_stmt 1
	li 0,0
.LVL202:
.L226:
.LBE3752:
.LBE3751:
	.loc 2 1395 0 discriminator 2
	lwz 11,40(3)
	.loc 2 1394 0 discriminator 2
	addi 10,10,1
	.loc 2 1395 0 discriminator 2
	add 11,11,9
.LVL203:
.LBB3754:
.LBB3753:
	.loc 7 416 0 discriminator 2
	stw 0,40(11)
	stw 0,36(11)
	stw 0,32(11)
.LBE3753:
.LBE3754:
	.loc 2 1396 0 discriminator 2
	lwz 11,40(3)
.LVL204:
	add 11,11,9
.LVL205:
	.loc 2 1394 0 discriminator 2
	addi 9,9,60
.LBB3755:
.LBB3756:
	.loc 7 416 0 discriminator 2
	stw 0,52(11)
	stw 0,48(11)
	stw 0,44(11)
.LBE3756:
.LBE3755:
	.loc 2 1394 0 discriminator 2
	lwz 11,36(3)
.LVL206:
	cmpw 7,11,10
	bgt+ 7,.L226
.LVL207:
.L225:
	.loc 2 1400 0 discriminator 1
	lwz 0,44(3)
	cmpwi 7,0,0
	ble- 7,.L227
	.loc 2 1401 0
	lis 6,0x5555
	.loc 2 1400 0
	li 8,0
	.loc 2 1401 0
	ori 6,6,21846
.LVL208:
.L229:
	mulhw 11,8,6
	srawi 0,8,31
	li 10,0
	slwi 7,8,2
	subf 11,0,11
	mulli 11,11,28
	add 11,5,11
.LVL209:
.L228:
	.loc 2 1405 0 discriminator 2
	lwz 9,48(3)
	add 0,7,10
.LBB3757:
.LBB3758:
	.loc 7 456 0 discriminator 2
	lfs 0,0(11)
.LBE3758:
.LBE3757:
	.loc 2 1404 0 discriminator 2
	cmpwi 7,10,8
	.loc 2 1405 0 discriminator 2
	lwzx 9,9,0
	.loc 2 1404 0 discriminator 2
	addi 10,10,4
	.loc 2 1405 0 discriminator 2
	lwz 0,40(3)
	mulli 9,9,60
	add 9,0,9
.LVL210:
.LBB3762:
.LBB3759:
	.loc 7 456 0 discriminator 2
	lfs 13,32(9)
	.loc 7 457 0 discriminator 2
	lfs 9,36(9)
	.loc 7 456 0 discriminator 2
	fadds 0,13,0
	.loc 7 458 0 discriminator 2
	lfs 10,40(9)
.LBE3759:
.LBE3762:
.LBB3763:
.LBB3764:
	.loc 7 456 0 discriminator 2
	lfs 11,44(9)
	.loc 7 457 0 discriminator 2
	lfs 12,48(9)
.LBE3764:
.LBE3763:
.LBB3767:
.LBB3760:
	.loc 7 456 0 discriminator 2
	stfs 0,32(9)
.LBE3760:
.LBE3767:
.LBB3768:
.LBB3765:
	.loc 7 458 0 discriminator 2
	lfs 13,52(9)
.LBE3765:
.LBE3768:
.LBB3769:
.LBB3761:
	.loc 7 457 0 discriminator 2
	lfs 0,4(11)
	fadds 0,9,0
	stfs 0,36(9)
	.loc 7 458 0 discriminator 2
	lfs 0,8(11)
	fadds 0,10,0
	stfs 0,40(9)
.LVL211:
.LBE3761:
.LBE3769:
.LBB3770:
.LBB3766:
	.loc 7 456 0 discriminator 2
	lfs 0,12(11)
	fadds 0,11,0
	stfs 0,44(9)
	.loc 7 457 0 discriminator 2
	lfs 0,16(11)
	fadds 0,12,0
	stfs 0,48(9)
	.loc 7 458 0 discriminator 2
	lfs 0,20(11)
	fadds 0,13,0
	stfs 0,52(9)
.LBE3766:
.LBE3770:
	.loc 2 1404 0 discriminator 2
	bne+ 7,.L228
	.loc 2 1400 0
	lwz 0,44(3)
	addi 8,8,3
.LVL212:
	cmpw 7,0,8
	bgt+ 7,.L229
	lwz 11,36(3)
.LVL213:
.L227:
.LBB3771:
	.loc 2 1434 0 discriminator 1
	cmpwi 7,11,0
	ble- 7,.L230
	lis 9,.LC20@ha
	lis 12,_ZN6idMath5iSqrtE@ha
.LBB3772:
.LBB3773:
.LBB3774:
.LBB3775:
.LBB3776:
.LBB3777:
.LBB3778:
	.loc 6 275 0
	lfs 5,.LC20@l(9)
	.loc 6 278 0
	lis 9,.LC22@ha
	lfs 6,.LC22@l(9)
.LBE3778:
.LBE3777:
.LBE3776:
.LBE3775:
.LBE3774:
.LBE3773:
.LBE3772:
	.loc 2 1434 0
	li 4,0
	li 5,0
.LVL214:
	la 12,_ZN6idMath5iSqrtE@l(12)
.LVL215:
.L232:
.LBB3799:
	.loc 2 1435 0
	lwz 9,40(3)
	.loc 2 1436 0
	li 10,0
	.loc 2 1435 0
	add 9,9,4
.LVL216:
.L231:
.LBB3798:
.LBB3795:
	.loc 2 1439 0 discriminator 2
	mulli 11,10,12
.LBB3783:
.LBB3784:
	.loc 7 435 0 discriminator 2
	lfs 13,24(9)
	lfs 12,20(9)
.LBE3784:
.LBE3783:
.LBE3795:
	.loc 2 1436 0 discriminator 2
	cmpwi 7,10,1
.LBB3796:
	.loc 2 1439 0 discriminator 2
	addi 0,11,32
.LBB3788:
.LBB3785:
	.loc 7 435 0 discriminator 2
	lfs 7,28(9)
.LBE3785:
.LBE3788:
	.loc 2 1439 0 discriminator 2
	add 11,9,0
.LVL217:
.LBB3789:
.LBB3786:
	.loc 7 435 0 discriminator 2
	lfsx 9,9,0
	lfs 8,4(11)
	.loc 2 1384 0 discriminator 2
	fneg 0,7
	.loc 7 435 0 discriminator 2
	lfs 10,8(11)
.LBE3786:
.LBE3789:
.LBE3796:
	.loc 2 1436 0 discriminator 2
	addi 10,10,1
.LBB3797:
.LBB3790:
.LBB3787:
	.loc 7 435 0 discriminator 2
	fmuls 11,8,13
	.loc 2 1384 0 discriminator 2
	fneg 13,13
	.loc 7 435 0 discriminator 2
	fmadds 11,9,12,11
	.loc 2 1384 0 discriminator 2
	fneg 12,12
	.loc 7 435 0 discriminator 2
	fmadds 11,10,7,11
.LVL218:
	.loc 7 431 0 discriminator 2
	fmadds 13,13,11,8
	fmadds 12,12,11,9
	fmadds 0,0,11,10
.LVL219:
.LBE3787:
.LBE3790:
.LBB3791:
.LBB3781:
	.loc 7 649 0 discriminator 2
	fmuls 11,13,13
.LVL220:
.LBE3781:
.LBE3791:
.LBB3792:
.LBB3793:
	.loc 7 424 0 discriminator 2
	stfsx 12,9,0
	.loc 7 425 0 discriminator 2
	stfs 13,4(11)
	.loc 7 649 0 discriminator 2
	fmadds 11,12,12,11
	.loc 7 426 0 discriminator 2
	stfs 0,8(11)
.LVL221:
	.loc 7 649 0 discriminator 2
	fmadds 11,0,0,11
	stfs 11,8(31)
.LVL222:
.LBE3793:
.LBE3792:
.LBB3794:
.LBB3782:
.LBB3780:
.LBB3779:
	.loc 6 275 0 discriminator 2
	fmuls 8,11,5
	.loc 6 270 0 discriminator 2
	lwz 8,8(31)
.LVL223:
	.loc 2 1384 0 discriminator 2
	fneg 8,8
	.loc 6 276 0 discriminator 2
	rlwinm 6,8,9,24,31
	rlwinm 8,8,19,21,29
	lwzx 7,12,8
	subfic 8,6,380
	rlwinm 8,8,22,0,8
	or 8,8,7
	.loc 6 277 0 discriminator 2
	stw 8,16(31)
	lfs 11,16(31)
.LVL224:
	fmr 9,11
.LVL225:
	.loc 6 278 0 discriminator 2
	fmul 10,9,9
	fmadd 10,8,10,6
	fmul 10,9,10
.LVL226:
	.loc 6 279 0 discriminator 2
	fmul 11,10,10
	fmadd 11,8,11,6
.LVL227:
	fmul 11,10,11
.LVL228:
	.loc 6 280 0 discriminator 2
	frsp 11,11
.LVL229:
.LBE3779:
.LBE3780:
	.loc 7 651 0 discriminator 2
	fmuls 12,12,11
.LVL230:
	.loc 7 652 0 discriminator 2
	fmuls 13,13,11
.LVL231:
	.loc 7 653 0 discriminator 2
	fmuls 0,0,11
.LVL232:
	.loc 7 651 0 discriminator 2
	stfsx 12,9,0
	.loc 7 652 0 discriminator 2
	stfs 13,4(11)
	.loc 7 653 0 discriminator 2
	stfs 0,8(11)
.LBE3782:
.LBE3794:
.LBE3797:
	.loc 2 1436 0 discriminator 2
	bne- 7,.L231
.LBE3798:
.LBE3799:
	.loc 2 1434 0
	lwz 0,36(3)
	addi 5,5,1
.LVL233:
	addi 4,4,60
	cmpw 7,0,5
	bgt+ 7,.L232
.LVL234:
.L230:
.LBE3771:
	.loc 2 1445 0
	li 0,1
.LBE3807:
	.loc 2 1446 0
	addi 11,31,96
.LBB3808:
	.loc 2 1445 0
	stb 0,29(3)
.LBE3808:
	.loc 2 1446 0
	lwz 0,4(11)
	lwz 21,-68(11)
	mtlr 0
	lwz 22,-64(11)
	lwz 23,-60(11)
	lwz 24,-56(11)
	lwz 25,-52(11)
	lwz 26,-48(11)
	lwz 27,-44(11)
	lwz 28,-40(11)
	lwz 29,-36(11)
	lwz 30,-32(11)
	lwz 31,-28(11)
.LCFI32:
	.cfi_def_cfa 11, 0
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
.LCFI33:
	.cfi_def_cfa_register 1
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
	.cfi_restore 22
	.cfi_restore 21
	blr
	.cfi_endproc
.LFE2602:
	.size	_Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s, .-_Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s
	.align 2
	.globl _Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s
	.type	_Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s, @function
_Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s:
.LFB2606:
	.loc 2 1587 0
	.cfi_startproc
.LVL235:
	mflr 0
	stwu 1,-16(1)
.LCFI34:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 1588 0
	lbz 0,29(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne+ 7,.L244
.LVL236:
.LBB3811:
.LBB3812:
	.loc 2 1594 0
	lis 9,SIMDProcessor@ha
	lwz 4,40(31)
	lwz 3,SIMDProcessor@l(9)
.LVL237:
	lwz 5,84(31)
	lwz 9,0(3)
	lwz 6,36(31)
	lwz 0,280(9)
	mtctr 0
	bctrl
	.loc 2 1644 0
	li 0,1
	stb 0,29(31)
.LVL238:
.L244:
.LBE3812:
.LBE3811:
	.loc 2 1645 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL239:
	mtlr 0
	addi 1,1,16
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2606:
	.size	_Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s, .-_Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s
	.align 2
	.globl _Z27R_RemoveDuplicatedTrianglesP14srfTriangles_s
	.type	_Z27R_RemoveDuplicatedTrianglesP14srfTriangles_s, @function
_Z27R_RemoveDuplicatedTrianglesP14srfTriangles_s:
.LFB2608:
	.loc 2 1851 0
	.cfi_startproc
.LVL240:
	mflr 0
	stwu 1,-72(1)
.LCFI36:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 28,56(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 0,76(1)
	stw 17,12(1)
	stw 18,16(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
.LBB3813:
	.loc 2 1861 0
	lwz 10,44(3)
	cmpwi 7,10,0
	mr 0,10
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 65, 4
	ble- 7,.L246
	.loc 2 1864 0
	lis 22,0x5555
	.loc 2 1861 0
	li 19,0
	li 23,0
	li 17,0
	.loc 2 1864 0
	ori 22,22,21846
.LVL241:
.L247:
	.loc 2 1861 0 discriminator 1
	addi 24,23,3
.LBE3813:
	.loc 2 1851 0 discriminator 1
	mr 25,19
	li 27,1
.LVL242:
.L255:
.LBB3814:
	.loc 2 1864 0
	mulhw 8,27,22
	srawi 9,27,31
	mr 21,27
	.loc 2 1866 0
	cmpw 7,24,0
	.loc 2 1864 0
	subf 8,9,8
	.loc 2 1863 0
	lwz 9,52(28)
	.loc 2 1864 0
	mulli 8,8,3
	.loc 2 1863 0
	lwzx 29,9,25
.LVL243:
	.loc 2 1864 0
	subf 8,8,27
	.loc 2 1851 0
	addi 27,27,1
	.loc 2 1865 0
	mulhw 7,27,22
	srawi 11,27,31
	.loc 2 1864 0
	add 8,8,23
	slwi 8,8,2
	lwzx 26,9,8
.LVL244:
	.loc 2 1865 0
	subf 11,11,7
	mulli 11,11,3
	subf 11,11,27
	add 11,11,23
	slwi 11,11,2
	lwzx 20,9,11
.LVL245:
	.loc 2 1866 0
	bge- 7,.L249
	mr 31,24
	.loc 2 1867 0
	slwi 30,31,2
	lwzx 11,9,30
.LVL246:
	cmpw 7,11,29
	beq- 7,.L250
.LVL247:
.L260:
	mr 0,10
	.loc 2 1866 0
	addi 31,31,3
.LVL248:
	cmpw 7,31,0
	bge- 7,.L249
.L261:
	lwz 9,52(28)
	.loc 2 1867 0
	slwi 30,31,2
	lwzx 11,9,30
	cmpw 7,11,29
	bne+ 7,.L260
.L250:
	.loc 2 1867 0 is_stmt 0 discriminator 1
	addi 11,31,1
	slwi 11,11,2
	lwzx 11,9,11
	cmpw 7,11,26
	bne+ 7,.L260
	.loc 2 1867 0 discriminator 2
	addi 11,31,2
	slwi 11,11,2
	lwzx 9,9,11
	cmpw 7,9,20
	bne+ 7,.L260
	.loc 2 1869 0 is_stmt 1
	subf 5,31,0
	lwz 3,48(28)
	addi 18,31,3
	addi 5,5,-3
	slwi 18,18,2
	slwi 5,5,2
	add 4,3,18
	add 3,3,30
	bl memmove
	.loc 2 1870 0
	lwz 5,44(28)
	lwz 4,52(28)
	.loc 2 1868 0
	addi 17,17,1
.LVL249:
	.loc 2 1870 0
	subf 5,31,5
	.loc 2 1872 0
	addi 31,31,-3
.LVL250:
	.loc 2 1870 0
	addi 5,5,-3
	add 3,4,30
	slwi 5,5,2
	add 4,4,18
	bl memmove
.LVL251:
	.loc 2 1871 0
	lwz 10,44(28)
	.loc 2 1866 0
	addi 31,31,3
.LVL252:
	.loc 2 1871 0
	addi 0,10,-3
	.loc 2 1866 0
	cmpw 7,31,0
	.loc 2 1871 0
	stw 0,44(28)
	mr 10,0
	.loc 2 1866 0
	blt+ 7,.L261
.LVL253:
.L249:
	.loc 2 1862 0
	cmpwi 7,21,3
	.loc 2 1866 0
	addi 25,25,4
	.loc 2 1862 0
	bne+ 7,.L255
.LVL254:
	.loc 2 1861 0
	cmpw 7,0,24
	.loc 2 1862 0
	addi 19,19,12
	.loc 2 1861 0
	ble- 7,.L256
	mr 23,24
	b .L247
.L256:
	.loc 2 1878 0
	cmpwi 7,17,0
	beq+ 7,.L246
	.loc 2 1879 0
	lis 9,common@ha
	lis 4,.LC23@ha
	lwz 3,common@l(9)
	la 4,.LC23@l(4)
	mr 5,17
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL255:
.L246:
.LBE3814:
	.loc 2 1882 0
	lwz 0,76(1)
	lwz 17,12(1)
	mtlr 0
	lwz 18,16(1)
	lwz 19,20(1)
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
.LVL256:
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
.LCFI37:
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
	.cfi_endproc
.LFE2608:
	.size	_Z27R_RemoveDuplicatedTrianglesP14srfTriangles_s, .-_Z27R_RemoveDuplicatedTrianglesP14srfTriangles_s
	.align 2
	.globl _Z27R_RemoveDegenerateTrianglesP14srfTriangles_s
	.type	_Z27R_RemoveDegenerateTrianglesP14srfTriangles_s, @function
_Z27R_RemoveDegenerateTrianglesP14srfTriangles_s:
.LFB2609:
	.loc 2 1891 0
	.cfi_startproc
.LVL257:
	mflr 0
	stwu 1,-32(1)
.LCFI38:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
.LBB3815:
	.loc 2 1898 0
	lwz 8,44(3)
	cmpwi 7,8,0
	mr 0,8
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	ble- 7,.L262
	li 31,0
	li 27,0
	b .L267
.LVL258:
.L270:
	.loc 2 1902 0 discriminator 2
	beq- 1,.L264
	.loc 2 1902 0 is_stmt 0
	mr 0,8
.LVL259:
	.loc 2 1898 0 is_stmt 1
	addi 31,31,3
.LVL260:
	cmpw 7,31,0
	bge- 7,.L269
.LVL261:
.L267:
	.loc 2 1899 0
	lwz 9,52(30)
	.loc 2 1900 0
	addi 11,31,1
	.loc 2 1904 0
	subf 5,31,0
	.loc 2 1899 0
	slwi 29,31,2
	.loc 2 1900 0
	slwi 0,11,2
	.loc 2 1899 0
	lwzx 10,9,29
.LVL262:
	.loc 2 1900 0
	lwzx 11,9,0
.LVL263:
	.loc 2 1901 0
	addi 0,31,2
.LVL264:
	slwi 0,0,2
	.loc 2 1904 0
	addi 28,31,3
	.loc 2 1902 0
	cmpw 7,10,11
	.loc 2 1901 0
	lwzx 0,9,0
.LVL265:
	.loc 2 1904 0
	addi 5,5,-3
	slwi 28,28,2
	slwi 5,5,2
	.loc 2 1902 0
	cmpw 6,10,0
	cmpw 1,11,0
	beq- 7,.L264
	.loc 2 1902 0 is_stmt 0 discriminator 1
	bne+ 6,.L270
.L264:
	.loc 2 1904 0 is_stmt 1
	lwz 3,48(30)
	.loc 2 1903 0
	addi 27,27,1
.LVL266:
	.loc 2 1904 0
	add 4,3,28
	add 3,3,29
	bl memmove
.LVL267:
	.loc 2 1905 0
	lwz 4,52(30)
	cmpwi 7,4,0
	.loc 2 1906 0
	add 3,4,29
	add 4,4,28
	.loc 2 1905 0
	beq- 7,.L266
	.loc 2 1906 0
	lwz 5,44(30)
	subf 5,31,5
	addi 5,5,-3
	slwi 5,5,2
	bl memmove
.L266:
	.loc 2 1908 0
	lwz 8,44(30)
	.loc 2 1909 0
	addi 31,31,-3
.LVL268:
	.loc 2 1898 0
	addi 31,31,3
.LVL269:
	.loc 2 1908 0
	addi 0,8,-3
	.loc 2 1898 0
	cmpw 7,31,0
	.loc 2 1908 0
	stw 0,44(30)
	mr 8,0
.LVL270:
	.loc 2 1898 0
	blt+ 7,.L267
.L269:
	.loc 2 1915 0
	cmpwi 7,27,0
	bne- 7,.L271
.LVL271:
.L262:
.LBE3815:
	.loc 2 1918 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL272:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL273:
.L271:
.LCFI40:
	.cfi_restore_state
.LBB3816:
	.loc 2 1916 0
	lis 9,common@ha
	lis 4,.LC24@ha
	lwz 3,common@l(9)
	mr 5,27
	la 4,.LC24@l(4)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LBE3816:
	.loc 2 1918 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL274:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL275:
	lwz 31,28(1)
.LVL276:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2609:
	.size	_Z27R_RemoveDegenerateTrianglesP14srfTriangles_s, .-_Z27R_RemoveDegenerateTrianglesP14srfTriangles_s
	.align 2
	.globl _Z28R_TestDegenerateTextureSpaceP14srfTriangles_s
	.type	_Z28R_TestDegenerateTextureSpaceP14srfTriangles_s, @function
_Z28R_TestDegenerateTextureSpaceP14srfTriangles_s:
.LFB2610:
	.loc 2 1925 0
	.cfi_startproc
.LVL277:
	.loc 2 1944 0
	blr
	.cfi_endproc
.LFE2610:
	.size	_Z28R_TestDegenerateTextureSpaceP14srfTriangles_s, .-_Z28R_TestDegenerateTextureSpaceP14srfTriangles_s
	.align 2
	.globl _Z19R_RemoveUnusedVertsP14srfTriangles_s
	.type	_Z19R_RemoveUnusedVertsP14srfTriangles_s, @function
_Z19R_RemoveUnusedVertsP14srfTriangles_s:
.LFB2611:
	.loc 2 1951 0
	.cfi_startproc
.LVL278:
	mflr 0
	stwu 1,-40(1)
.LCFI42:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 28,24(1)
	stw 0,44(1)
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB3817:
	.loc 2 1957 0
	lwz 3,36(3)
.LVL279:
	slwi 3,3,2
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl _Z20R_ClearedStaticAlloci
	.loc 2 1959 0
	lwz 0,44(31)
	.loc 2 1957 0
	mr 28,3
.LVL280:
	.loc 2 1959 0
	cmpwi 7,0,0
	ble- 7,.L274
	.loc 2 1962 0
	lis 26,.LC25@ha
	.loc 2 1959 0
	li 30,0
	.loc 2 1962 0
	lis 24,common@ha
	la 26,.LC25@l(26)
	.loc 2 1964 0
	li 25,1
.LVL281:
.L280:
	.loc 2 1960 0
	lwz 9,48(31)
	.loc 2 1951 0
	slwi 27,30,2
	.loc 2 1962 0
	mr 4,26
	.loc 2 1959 0
	addi 30,30,1
	.loc 2 1960 0
	lwzx 29,9,27
.LVL282:
	.loc 2 1961 0
	cmpwi 7,29,0
	blt- 7,.L275
	.loc 2 1961 0 is_stmt 0 discriminator 1
	lwz 0,36(31)
	cmpw 7,29,0
	blt- 7,.L276
.L275:
	.loc 2 1962 0 is_stmt 1
	lwz 3,common@l(24)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL283:
.L276:
	.loc 2 1964 0
	slwi 29,29,2
.LVL284:
	.loc 2 1969 0
	mr 4,26
	.loc 2 1964 0
	stwx 25,28,29
	.loc 2 1966 0
	lwz 9,52(31)
	cmpwi 7,9,0
	beq- 7,.L277
	.loc 2 1967 0
	lwzx 29,9,27
.LVL285:
	.loc 2 1968 0
	cmpwi 7,29,0
	blt- 7,.L278
	.loc 2 1968 0 is_stmt 0 discriminator 1
	lwz 0,36(31)
	cmpw 7,29,0
	blt- 7,.L279
.L278:
	.loc 2 1969 0 is_stmt 1
	lwz 3,common@l(24)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL286:
.L279:
	.loc 2 1971 0
	slwi 29,29,2
.LVL287:
	stwx 25,28,29
.L277:
.LVL288:
	.loc 2 1959 0
	lwz 0,44(31)
	cmpw 7,0,30
	bgt+ 7,.L280
.LVL289:
.L274:
	.loc 2 1976 0 discriminator 1
	lwz 8,36(31)
	li 10,0
	cmpwi 7,8,0
	ble- 7,.L281
	.loc 2 1951 0
	addi 11,28,-4
	li 9,0
.LVL290:
.L283:
	.loc 2 1977 0
	lwzu 0,4(11)
	.loc 2 1976 0
	addi 9,9,1
	.loc 2 1977 0
	cmpwi 7,0,0
	beq- 7,.L282
	.loc 2 1980 0
	addi 10,10,1
	stw 10,0(11)
.LVL291:
	lwz 8,36(31)
.LVL292:
.L282:
	.loc 2 1976 0
	cmpw 7,8,9
	bgt+ 7,.L283
.LVL293:
.L281:
	.loc 2 1984 0
	cmpw 7,10,8
	beq- 7,.L284
.LVL294:
	.loc 2 1985 0 discriminator 1
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L285
	.loc 2 1985 0 is_stmt 0
	li 9,0
.LVL295:
.L287:
	.loc 2 1986 0 is_stmt 1
	lwz 11,48(31)
	.loc 2 1951 0
	slwi 0,9,2
	.loc 2 1985 0
	addi 9,9,1
	.loc 2 1986 0
	lwzx 8,11,0
	slwi 8,8,2
	lwzx 8,28,8
	addi 8,8,-1
	stwx 8,11,0
	.loc 2 1987 0
	lwz 11,52(31)
	cmpwi 7,11,0
	beq- 7,.L286
	.loc 2 1988 0
	lwzx 8,11,0
	slwi 8,8,2
	lwzx 8,28,8
	addi 8,8,-1
	stwx 8,11,0
.L286:
.LVL296:
	.loc 2 1985 0
	lwz 0,44(31)
	cmpw 7,0,9
	bgt+ 7,.L287
.LVL297:
.L285:
	.loc 2 1993 0
	cmpwi 7,10,0
	.loc 2 1991 0
	stw 10,36(31)
.LVL298:
	.loc 2 1993 0
	ble- 7,.L284
	.loc 2 1951 0
	addi 5,28,-4
	li 6,0
	.loc 2 1993 0
	li 7,0
.LVL299:
.L289:
	.loc 2 1994 0
	lwzu 11,4(5)
.LVL300:
	.loc 2 1993 0
	addi 7,7,1
	.loc 2 1995 0
	cmpwi 7,11,0
	.loc 2 1998 0
	addi 9,11,-1
	mulli 9,9,60
	.loc 2 1995 0
	beq- 7,.L288
	.loc 2 1998 0
	lwz 11,40(31)
.LBB3818:
.LBB3819:
.LBB3820:
.LBB3821:
	.loc 7 424 0
	lwzx 0,11,6
.LBE3821:
.LBE3820:
.LBE3819:
.LBE3818:
	.loc 2 1998 0
	add 8,11,6
.LBB3832:
.LBB3830:
.LBB3824:
.LBB3822:
	.loc 7 424 0
	stwx 0,11,9
.LBE3822:
.LBE3824:
.LBE3830:
.LBE3832:
	.loc 2 1998 0
	add 9,11,9
.LVL301:
.LBB3833:
.LBB3831:
.LBB3825:
.LBB3823:
	.loc 7 425 0
	lwz 0,4(8)
	stw 0,4(9)
	.loc 7 426 0
	lwz 0,8(8)
	stw 0,8(9)
.LBE3823:
.LBE3825:
	.file 8 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/geometry/DrawVert.h"
	.loc 8 40 0
	lwz 10,12(8)
	lwz 11,16(8)
	stw 10,12(9)
	stw 11,16(9)
.LVL302:
.LBB3826:
.LBB3827:
	.loc 7 424 0
	lwz 0,20(8)
	stw 0,20(9)
	.loc 7 425 0
	lwz 0,24(8)
	stw 0,24(9)
	.loc 7 426 0
	lwz 0,28(8)
	stw 0,28(9)
.LVL303:
.LBE3827:
.LBE3826:
.LBB3828:
.LBB3829:
	.loc 7 424 0
	lwz 0,32(8)
	stw 0,32(9)
	.loc 7 425 0
	lwz 0,36(8)
	stw 0,36(9)
	.loc 7 426 0
	lwz 0,40(8)
	stw 0,40(9)
.LVL304:
	.loc 7 424 0
	lwz 0,44(8)
	stw 0,44(9)
	.loc 7 425 0
	lwz 0,48(8)
	stw 0,48(9)
	.loc 7 426 0
	lwz 0,52(8)
	stw 0,52(9)
.LBE3829:
.LBE3828:
	.loc 8 40 0
	lwz 0,56(8)
	stw 0,56(9)
.LVL305:
.L288:
.LBE3831:
.LBE3833:
	.loc 2 1993 0
	lwz 0,36(31)
	addi 6,6,60
	cmpw 7,0,7
	bgt+ 7,.L289
.LVL306:
.L284:
	.loc 2 2004 0
	mr 3,28
	bl _Z12R_StaticFreePv
.LBE3817:
	.loc 2 2005 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
.LVL307:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL308:
	addi 1,1,40
.LCFI43:
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
	.cfi_endproc
.LFE2611:
	.size	_Z19R_RemoveUnusedVertsP14srfTriangles_s, .-_Z19R_RemoveUnusedVertsP14srfTriangles_s
	.align 2
	.globl _Z18R_ReverseTrianglesP14srfTriangles_s
	.type	_Z18R_ReverseTrianglesP14srfTriangles_s, @function
_Z18R_ReverseTrianglesP14srfTriangles_s:
.LFB2614:
	.loc 2 2078 0
	.cfi_startproc
.LVL309:
.LBB3834:
	.loc 2 2084 0
	lwz 0,36(3)
	cmpwi 7,0,0
	ble- 7,.L296
	lis 11,vec3_origin@ha
	li 10,0
	la 9,vec3_origin@l(11)
	lfs 9,vec3_origin@l(11)
	lfs 10,4(9)
	li 11,0
	lfs 11,8(9)
.LVL310:
.L297:
	.loc 2 2085 0 discriminator 2
	lwz 9,40(3)
	.loc 2 2084 0 discriminator 2
	addi 11,11,1
	.loc 2 2085 0 discriminator 2
	add 9,9,10
.LVL311:
	.loc 2 2084 0 discriminator 2
	addi 10,10,60
.LBB3835:
.LBB3836:
	.loc 7 431 0 discriminator 2
	lfs 12,24(9)
	lfs 13,28(9)
	lfs 0,20(9)
	fsubs 12,10,12
	fsubs 13,11,13
.LVL312:
	fsubs 0,9,0
.LBE3836:
.LBE3835:
.LBB3837:
.LBB3838:
	.loc 7 425 0 discriminator 2
	stfs 12,24(9)
	.loc 7 426 0 discriminator 2
	stfs 13,28(9)
	.loc 7 424 0 discriminator 2
	stfs 0,20(9)
.LBE3838:
.LBE3837:
	.loc 2 2084 0 discriminator 2
	lwz 0,36(3)
	cmpw 7,0,11
	bgt+ 7,.L297
.LVL313:
.L296:
.LBB3839:
	.loc 2 2089 0 discriminator 1
	lwz 0,44(3)
	cmpwi 7,0,0
	blelr- 7
	.loc 2 2089 0 is_stmt 0
	li 11,4
	li 9,0
.LVL314:
.L299:
.LBB3840:
	.loc 2 2092 0 is_stmt 1 discriminator 2
	lwz 10,48(3)
	.loc 2 2078 0 discriminator 2
	slwi 0,9,2
.LBE3840:
	.loc 2 2089 0 discriminator 2
	addi 9,9,3
.LBB3841:
	.loc 2 2093 0 discriminator 2
	lwzx 7,10,11
	.loc 2 2092 0 discriminator 2
	lwzx 8,10,0
.LVL315:
	.loc 2 2093 0 discriminator 2
	stwx 7,10,0
	.loc 2 2094 0 discriminator 2
	lwz 10,48(3)
	stwx 8,10,11
.LBE3841:
	.loc 2 2089 0 discriminator 2
	addi 11,11,12
	lwz 0,44(3)
.LVL316:
	cmpw 7,0,9
	bgt+ 7,.L299
	blr
.LBE3839:
.LBE3834:
	.cfi_endproc
.LFE2614:
	.size	_Z18R_ReverseTrianglesP14srfTriangles_s, .-_Z18R_ReverseTrianglesP14srfTriangles_s
	.align 2
	.globl _Z22R_DeformInfoMemoryUsedP12deformInfo_s
	.type	_Z22R_DeformInfoMemoryUsedP12deformInfo_s, @function
_Z22R_DeformInfoMemoryUsedP12deformInfo_s:
.LFB2621:
	.loc 2 2258 0
	.cfi_startproc
.LVL317:
.LBB3842:
	.loc 2 2261 0
	lwz 0,20(3)
	li 9,0
	cmpwi 7,0,0
	beq- 7,.L303
.LVL318:
	.loc 2 2262 0
	lwz 9,16(3)
	slwi 9,9,2
.LVL319:
.L303:
	.loc 2 2264 0
	lwz 0,24(3)
	cmpwi 7,0,0
	beq- 7,.L304
	.loc 2 2265 0
	lwz 0,16(3)
	slwi 0,0,2
	add 9,9,0
.L304:
	.loc 2 2267 0
	lwz 0,40(3)
	cmpwi 7,0,0
	beq- 7,.L305
	.loc 2 2268 0
	lwz 0,36(3)
	slwi 0,0,4
	add 9,9,0
.L305:
	.loc 2 2270 0
	lwz 0,44(3)
	cmpwi 7,0,0
	beq- 7,.L306
	.loc 2 2271 0
	lwz 0,0(3)
	mulli 0,0,20
	add 9,9,0
.L306:
	.loc 2 2273 0
	lwz 0,12(3)
	cmpwi 7,0,0
	beq- 7,.L307
	.loc 2 2274 0
	lwz 0,8(3)
	slwi 0,0,2
	add 9,9,0
.L307:
	.loc 2 2276 0
	lwz 0,32(3)
	cmpwi 7,0,0
	beq- 7,.L308
	.loc 2 2277 0
	lwz 0,28(3)
	slwi 0,0,2
	add 9,9,0
.L308:
.LVL320:
.LBE3842:
	.loc 2 2282 0
	addi 3,9,48
.LVL321:
	blr
	.cfi_endproc
.LFE2621:
	.size	_Z22R_DeformInfoMemoryUsedP12deformInfo_s, .-_Z22R_DeformInfoMemoryUsedP12deformInfo_s
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2843:
	.loc 4 536 0
	.cfi_startproc
.LVL322:
	mflr 0
	stwu 1,-48(1)
.LCFI44:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB3883:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL323:
	cmpwi 7,30,0
	beq- 7,.L310
	lwz 0,0(30)
.LBB3884:
.LBB3885:
	.loc 4 881 0
	li 28,0
.LBE3885:
.LBE3884:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL324:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L361
.LVL325:
.L371:
	cmpwi 4,29,0
.L313:
.LVL326:
	.loc 4 539 0 discriminator 1
	beq- 4,.L310
.L376:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL327:
.L315:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL328:
	.loc 4 542 0
	bge+ 7,.L371
.LVL329:
.L361:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L313
	.loc 4 542 0 discriminator 3
	beq- 4,.L314
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L315
.L314:
.LVL330:
.LBB3950:
.LBB3947:
.LBB3886:
.LBB3887:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE3887:
.LBE3886:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL331:
.LBB3940:
.LBB3937:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L316
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L318
.L383:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L319:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL332:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L370
.LVL333:
.L367:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L372
.L370:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L337
.L373:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L337
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L343
	.loc 5 243 0
	stw 0,0(25)
.L343:
	.loc 5 240 0
	lwz 25,8(25)
.LVL334:
	cmpwi 7,25,0
	bne+ 7,.L373
.L337:
.LVL335:
.LBB3888:
.LBB3889:
.LBB3890:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE3890:
.LBE3889:
.LBE3888:
.LBB3893:
	.loc 5 251 0
	lwz 3,8(31)
.LBE3893:
.LBB3901:
.LBB3892:
.LBB3891:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE3891:
.LBE3892:
.LBE3901:
.LBB3902:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L374
.L344:
.LBE3902:
.LBE3937:
.LBE3940:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB3941:
.LBB3942:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE3942:
.LBE3941:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE3947:
.LBE3950:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L345
.LVL336:
.L381:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L347
.L382:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L375
.L349:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB3951:
.LBB3952:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE3952:
.LBE3951:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL337:
	.loc 4 539 0
	bne+ 4,.L376
.LVL338:
.L310:
.LBE3883:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL339:
	addi 1,1,48
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL340:
.L372:
.LCFI46:
	.cfi_restore_state
.LBB3961:
.LBB3953:
.LBB3948:
.LBB3944:
.LBB3938:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L377
.LVL341:
.LBB3903:
.LBB3904:
	.loc 5 445 0
	lwz 11,24(25)
.LVL342:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L362
	b .L384
.LVL343:
.L352:
	mr 9,0
.LVL344:
.L362:
	.loc 5 446 0
	stw 26,8(11)
.LVL345:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L352
.L322:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL346:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L324
	.loc 5 456 0
	stw 26,12(9)
.L325:
	.loc 5 460 0
	lwz 0,16(25)
.LBB3905:
.LBB3906:
.LBB3907:
	.loc 4 228 0
	addi 3,25,-4
.LBE3907:
.LBE3906:
.LBE3905:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL347:
.LBB3910:
.LBB3909:
.LBB3908:
	.loc 4 228 0
	bl _ZdlPv
.LVL348:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL349:
.L326:
.LBE3908:
.LBE3909:
.LBE3910:
.LBE3904:
.LBE3903:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L331
	.loc 5 232 0
	stw 0,0(26)
.L331:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L379
	.loc 5 222 0
	lwz 25,8(26)
.LVL350:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L367
	b .L370
.LVL351:
.L377:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L326
.LVL352:
.LBB3912:
.LBB3913:
	.loc 5 445 0
	lwz 11,24(3)
.LVL353:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L363
	b .L385
.LVL354:
.L355:
	mr 9,0
.LVL355:
.L363:
	.loc 5 446 0
	stw 25,8(11)
.LVL356:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L355
.L327:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL357:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L329
	.loc 5 456 0
	stw 25,12(9)
.L330:
	.loc 5 460 0
	lwz 0,16(3)
.LBB3914:
.LBB3915:
.LBB3916:
	.loc 4 228 0
	addi 3,3,-4
.LBE3916:
.LBE3915:
.LBE3914:
	.loc 5 461 0
	lwz 9,8(25)
.LBB3921:
.LBB3919:
.LBB3917:
	.loc 4 230 0
	mr 26,25
.LBE3917:
.LBE3919:
.LBE3921:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL358:
.LBB3922:
.LBB3920:
.LBB3918:
	.loc 4 228 0
	bl _ZdlPv
.LVL359:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL360:
	b .L326
.LVL361:
.L324:
.LBE3918:
.LBE3920:
.LBE3922:
.LBE3913:
.LBE3912:
.LBB3925:
.LBB3911:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L325
.LVL362:
.L384:
	.loc 5 445 0
	mr 9,11
	b .L322
.LVL363:
.L329:
.LBE3911:
.LBE3925:
.LBB3926:
.LBB3923:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L330
.LVL364:
.L379:
.LBE3923:
.LBE3926:
.LBB3927:
.LBB3928:
.LBB3929:
.LBB3930:
.LBB3931:
.LBB3932:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL365:
.LBE3932:
.LBE3931:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE3930:
.LBE3929:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL366:
	.loc 5 404 0
	stw 10,8(9)
.LVL367:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L333
	li 11,3
.LVL368:
.L334:
	.loc 5 406 0
	lwz 9,12(9)
.LVL369:
	.loc 5 405 0
	addi 11,11,2
.LVL370:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L334
.LVL371:
.L333:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL372:
	cmpwi 7,9,0
	beq- 7,.L335
	.loc 5 425 0
	stw 10,12(9)
.L336:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L370
.LVL373:
.L374:
.LBE3928:
.LBE3927:
.LBB3934:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L344
.LVL374:
.LBB3894:
	.loc 5 253 0
	stw 0,8(9)
.LBB3895:
.LBB3896:
.LBB3897:
	.loc 4 228 0
	addi 3,3,-4
.LVL375:
.LBE3897:
.LBE3896:
.LBE3895:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL376:
.LBB3900:
.LBB3899:
.LBB3898:
	.loc 4 228 0
	bl _ZdlPv
.LVL377:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE3898:
.LBE3899:
.LBE3900:
.LBE3894:
.LBE3934:
.LBE3938:
.LBE3944:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB3945:
.LBB3943:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE3943:
.LBE3945:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE3948:
.LBE3953:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L381
.L345:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L382
.L347:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L349
.L375:
.LBB3954:
.LBB3955:
	.loc 4 387 0
	lwz 5,0(30)
.LBE3955:
.LBE3954:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB3958:
.LBB3956:
	.loc 4 387 0
	srawi 0,5,31
.LBE3956:
.LBE3958:
	.loc 4 555 0
	lwz 9,0(3)
.LBB3959:
.LBB3957:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE3957:
.LBE3959:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L349
.LVL378:
.L385:
.LBB3960:
.LBB3949:
.LBB3946:
.LBB3939:
.LBB3935:
.LBB3924:
	.loc 5 445 0
	mr 9,11
	b .L327
.LVL379:
.L316:
.LBE3924:
.LBE3935:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L383
.L318:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L319
.LVL380:
.L335:
.LBB3936:
.LBB3933:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L336
.LBE3933:
.LBE3936:
.LBE3939:
.LBE3946:
.LBE3949:
.LBE3960:
.LBE3961:
	.cfi_endproc
.LFE2843:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2844:
	.loc 4 536 0
	.cfi_startproc
.LVL381:
	mflr 0
	stwu 1,-48(1)
.LCFI47:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4009:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL382:
	cmpwi 7,30,0
	beq- 7,.L386
.LVL383:
	lwz 0,0(30)
.LBB4010:
.LBB4011:
	.loc 4 881 0
	li 28,0
.LBE4011:
.LBE4010:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL384:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L437
.LVL385:
.L447:
	cmpwi 4,29,0
.L389:
.LVL386:
	.loc 4 539 0 discriminator 1
	beq- 4,.L386
.L452:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL387:
.L391:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL388:
	.loc 4 542 0
	bge+ 7,.L447
.LVL389:
.L437:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L389
	.loc 4 542 0 discriminator 3
	beq- 4,.L390
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L391
.L390:
.LVL390:
.LBB4079:
.LBB4076:
.LBB4012:
.LBB4013:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4013:
.LBE4012:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL391:
.LBB4069:
.LBB4056:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L392
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L394
.L459:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L395:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL392:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L446
.LVL393:
.L443:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L448
.L446:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L413
.L449:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L413
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L419
	.loc 5 243 0
	stw 0,0(25)
.L419:
	.loc 5 240 0
	lwz 25,8(25)
.LVL394:
	cmpwi 7,25,0
	bne+ 7,.L449
.L413:
.LVL395:
.LBB4014:
.LBB4015:
.LBB4016:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4016:
.LBE4015:
.LBE4014:
.LBB4019:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4019:
.LBB4020:
.LBB4018:
.LBB4017:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4017:
.LBE4018:
.LBE4020:
.LBB4021:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L450
.L420:
.LBE4021:
.LBE4056:
.LBE4069:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4070:
.LBB4071:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4071:
.LBE4070:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4076:
.LBE4079:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L421
.LVL396:
.L457:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L423
.L458:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L451
.L425:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4080:
.LBB4081:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4081:
.LBE4080:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL397:
	.loc 4 539 0
	bne+ 4,.L452
.LVL398:
.L386:
.LBE4009:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL399:
	addi 1,1,48
	.cfi_remember_state
.LCFI48:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL400:
.L448:
.LCFI49:
	.cfi_restore_state
.LBB4090:
.LBB4082:
.LBB4077:
.LBB4073:
.LBB4057:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L453
.LVL401:
.LBB4022:
.LBB4023:
	.loc 5 445 0
	lwz 11,24(25)
.LVL402:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L438
	b .L460
.LVL403:
.L428:
	mr 9,0
.LVL404:
.L438:
	.loc 5 446 0
	stw 26,8(11)
.LVL405:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L428
.L398:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL406:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L400
	.loc 5 456 0
	stw 26,12(9)
.L401:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4024:
.LBB4025:
.LBB4026:
	.loc 4 228 0
	addi 3,25,-4
.LBE4026:
.LBE4025:
.LBE4024:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL407:
.LBB4029:
.LBB4028:
.LBB4027:
	.loc 4 228 0
	bl _ZdlPv
.LVL408:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL409:
.L402:
.LBE4027:
.LBE4028:
.LBE4029:
.LBE4023:
.LBE4022:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L407
	.loc 5 232 0
	stw 0,0(26)
.L407:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L455
	.loc 5 222 0
	lwz 25,8(26)
.LVL410:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L443
	b .L446
.LVL411:
.L453:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L402
.LVL412:
.LBB4031:
.LBB4032:
	.loc 5 445 0
	lwz 11,24(3)
.LVL413:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L439
	b .L461
.LVL414:
.L431:
	mr 9,0
.LVL415:
.L439:
	.loc 5 446 0
	stw 25,8(11)
.LVL416:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L431
.L403:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL417:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L405
	.loc 5 456 0
	stw 25,12(9)
.L406:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4033:
.LBB4034:
.LBB4035:
	.loc 4 228 0
	addi 3,3,-4
.LBE4035:
.LBE4034:
.LBE4033:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4040:
.LBB4038:
.LBB4036:
	.loc 4 230 0
	mr 26,25
.LBE4036:
.LBE4038:
.LBE4040:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL418:
.LBB4041:
.LBB4039:
.LBB4037:
	.loc 4 228 0
	bl _ZdlPv
.LVL419:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL420:
	b .L402
.LVL421:
.L400:
.LBE4037:
.LBE4039:
.LBE4041:
.LBE4032:
.LBE4031:
.LBB4044:
.LBB4030:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L401
.LVL422:
.L460:
	.loc 5 445 0
	mr 9,11
	b .L398
.LVL423:
.L405:
.LBE4030:
.LBE4044:
.LBB4045:
.LBB4042:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L406
.LVL424:
.L455:
.LBE4042:
.LBE4045:
.LBB4046:
.LBB4047:
.LBB4048:
.LBB4049:
.LBB4050:
.LBB4051:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL425:
.LBE4051:
.LBE4050:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4049:
.LBE4048:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL426:
	.loc 5 404 0
	stw 10,8(9)
.LVL427:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L409
	li 11,3
.LVL428:
.L410:
	.loc 5 406 0
	lwz 9,12(9)
.LVL429:
	.loc 5 405 0
	addi 11,11,2
.LVL430:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L410
.LVL431:
.L409:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL432:
	cmpwi 7,9,0
	beq- 7,.L411
	.loc 5 425 0
	stw 10,12(9)
.L412:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L446
.LVL433:
.L450:
.LBE4047:
.LBE4046:
.LBB4053:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L420
.LVL434:
.LBE4053:
.LBE4057:
.LBB4058:
.LBB4059:
.LBB4060:
.LBB4061:
	.loc 5 253 0
	stw 0,8(9)
.LBB4062:
.LBB4063:
.LBB4064:
	.loc 4 228 0
	addi 3,3,-4
.LVL435:
.LBE4064:
.LBE4063:
.LBE4062:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL436:
.LBB4067:
.LBB4066:
.LBB4065:
	.loc 4 228 0
	bl _ZdlPv
.LVL437:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4065:
.LBE4066:
.LBE4067:
.LBE4061:
.LBE4060:
.LBE4059:
.LBE4058:
.LBE4073:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4074:
.LBB4072:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4072:
.LBE4074:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4077:
.LBE4082:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L457
.L421:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L458
.L423:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L425
.L451:
.LBB4083:
.LBB4084:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4084:
.LBE4083:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4087:
.LBB4085:
	.loc 4 387 0
	srawi 0,5,31
.LBE4085:
.LBE4087:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4088:
.LBB4086:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4086:
.LBE4088:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L425
.LVL438:
.L461:
.LBB4089:
.LBB4078:
.LBB4075:
.LBB4068:
.LBB4054:
.LBB4043:
	.loc 5 445 0
	mr 9,11
	b .L403
.LVL439:
.L392:
.LBE4043:
.LBE4054:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L459
.L394:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L395
.LVL440:
.L411:
.LBB4055:
.LBB4052:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L412
.LBE4052:
.LBE4055:
.LBE4068:
.LBE4075:
.LBE4078:
.LBE4089:
.LBE4090:
	.cfi_endproc
.LFE2844:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2845:
	.loc 4 536 0
	.cfi_startproc
.LVL441:
	mflr 0
	stwu 1,-48(1)
.LCFI50:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4131:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL442:
	cmpwi 7,30,0
	beq- 7,.L462
	lwz 0,0(30)
.LBB4132:
.LBB4133:
	.loc 4 881 0
	li 28,0
.LBE4133:
.LBE4132:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL443:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L513
.LVL444:
.L523:
	cmpwi 4,29,0
.L465:
.LVL445:
	.loc 4 539 0 discriminator 1
	beq- 4,.L462
.L528:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL446:
.L467:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL447:
	.loc 4 542 0
	bge+ 7,.L523
.LVL448:
.L513:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L465
	.loc 4 542 0 discriminator 3
	beq- 4,.L466
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L467
.L466:
.LVL449:
.LBB4198:
.LBB4195:
.LBB4134:
.LBB4135:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4135:
.LBE4134:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL450:
.LBB4188:
.LBB4185:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L468
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L470
.L535:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L471:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL451:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L522
.LVL452:
.L519:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L524
.L522:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L489
.L525:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L489
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L495
	.loc 5 243 0
	stw 0,0(25)
.L495:
	.loc 5 240 0
	lwz 25,8(25)
.LVL453:
	cmpwi 7,25,0
	bne+ 7,.L525
.L489:
.LVL454:
.LBB4136:
.LBB4137:
.LBB4138:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4138:
.LBE4137:
.LBE4136:
.LBB4141:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4141:
.LBB4149:
.LBB4140:
.LBB4139:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4139:
.LBE4140:
.LBE4149:
.LBB4150:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L526
.L496:
.LBE4150:
.LBE4185:
.LBE4188:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4189:
.LBB4190:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4190:
.LBE4189:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4195:
.LBE4198:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L497
.LVL455:
.L533:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L499
.L534:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L527
.L501:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4199:
.LBB4200:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4200:
.LBE4199:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL456:
	.loc 4 539 0
	bne+ 4,.L528
.LVL457:
.L462:
.LBE4131:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL458:
	addi 1,1,48
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL459:
.L524:
.LCFI52:
	.cfi_restore_state
.LBB4209:
.LBB4201:
.LBB4196:
.LBB4192:
.LBB4186:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L529
.LVL460:
.LBB4151:
.LBB4152:
	.loc 5 445 0
	lwz 11,24(25)
.LVL461:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L514
	b .L536
.LVL462:
.L504:
	mr 9,0
.LVL463:
.L514:
	.loc 5 446 0
	stw 26,8(11)
.LVL464:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L504
.L474:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL465:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L476
	.loc 5 456 0
	stw 26,12(9)
.L477:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4153:
.LBB4154:
.LBB4155:
	.loc 4 228 0
	addi 3,25,-4
.LBE4155:
.LBE4154:
.LBE4153:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL466:
.LBB4158:
.LBB4157:
.LBB4156:
	.loc 4 228 0
	bl _ZdlPv
.LVL467:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL468:
.L478:
.LBE4156:
.LBE4157:
.LBE4158:
.LBE4152:
.LBE4151:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L483
	.loc 5 232 0
	stw 0,0(26)
.L483:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L531
	.loc 5 222 0
	lwz 25,8(26)
.LVL469:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L519
	b .L522
.LVL470:
.L529:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L478
.LVL471:
.LBB4160:
.LBB4161:
	.loc 5 445 0
	lwz 11,24(3)
.LVL472:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L515
	b .L537
.LVL473:
.L507:
	mr 9,0
.LVL474:
.L515:
	.loc 5 446 0
	stw 25,8(11)
.LVL475:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L507
.L479:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL476:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L481
	.loc 5 456 0
	stw 25,12(9)
.L482:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4162:
.LBB4163:
.LBB4164:
	.loc 4 228 0
	addi 3,3,-4
.LBE4164:
.LBE4163:
.LBE4162:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4169:
.LBB4167:
.LBB4165:
	.loc 4 230 0
	mr 26,25
.LBE4165:
.LBE4167:
.LBE4169:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL477:
.LBB4170:
.LBB4168:
.LBB4166:
	.loc 4 228 0
	bl _ZdlPv
.LVL478:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL479:
	b .L478
.LVL480:
.L476:
.LBE4166:
.LBE4168:
.LBE4170:
.LBE4161:
.LBE4160:
.LBB4173:
.LBB4159:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L477
.LVL481:
.L536:
	.loc 5 445 0
	mr 9,11
	b .L474
.LVL482:
.L481:
.LBE4159:
.LBE4173:
.LBB4174:
.LBB4171:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L482
.LVL483:
.L531:
.LBE4171:
.LBE4174:
.LBB4175:
.LBB4176:
.LBB4177:
.LBB4178:
.LBB4179:
.LBB4180:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL484:
.LBE4180:
.LBE4179:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4178:
.LBE4177:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL485:
	.loc 5 404 0
	stw 10,8(9)
.LVL486:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L485
	li 11,3
.LVL487:
.L486:
	.loc 5 406 0
	lwz 9,12(9)
.LVL488:
	.loc 5 405 0
	addi 11,11,2
.LVL489:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L486
.LVL490:
.L485:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL491:
	cmpwi 7,9,0
	beq- 7,.L487
	.loc 5 425 0
	stw 10,12(9)
.L488:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L522
.LVL492:
.L526:
.LBE4176:
.LBE4175:
.LBB4182:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L496
.LVL493:
.LBB4142:
	.loc 5 253 0
	stw 0,8(9)
.LBB4143:
.LBB4144:
.LBB4145:
	.loc 4 228 0
	addi 3,3,-4
.LVL494:
.LBE4145:
.LBE4144:
.LBE4143:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL495:
.LBB4148:
.LBB4147:
.LBB4146:
	.loc 4 228 0
	bl _ZdlPv
.LVL496:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4146:
.LBE4147:
.LBE4148:
.LBE4142:
.LBE4182:
.LBE4186:
.LBE4192:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4193:
.LBB4191:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4191:
.LBE4193:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4196:
.LBE4201:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L533
.L497:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L534
.L499:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L501
.L527:
.LBB4202:
.LBB4203:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4203:
.LBE4202:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4206:
.LBB4204:
	.loc 4 387 0
	srawi 0,5,31
.LBE4204:
.LBE4206:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4207:
.LBB4205:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4205:
.LBE4207:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L501
.LVL497:
.L537:
.LBB4208:
.LBB4197:
.LBB4194:
.LBB4187:
.LBB4183:
.LBB4172:
	.loc 5 445 0
	mr 9,11
	b .L479
.LVL498:
.L468:
.LBE4172:
.LBE4183:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L535
.L470:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L471
.LVL499:
.L487:
.LBB4184:
.LBB4181:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L488
.LBE4181:
.LBE4184:
.LBE4187:
.LBE4194:
.LBE4197:
.LBE4208:
.LBE4209:
	.cfi_endproc
.LFE2845:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2846:
	.loc 4 536 0
	.cfi_startproc
.LVL500:
	mflr 0
	stwu 1,-48(1)
.LCFI53:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4250:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL501:
	cmpwi 7,30,0
	beq- 7,.L538
.LVL502:
	lwz 0,0(30)
.LBB4251:
.LBB4252:
	.loc 4 881 0
	li 28,0
.LBE4252:
.LBE4251:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL503:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L589
.LVL504:
.L599:
	cmpwi 4,29,0
.L541:
.LVL505:
	.loc 4 539 0 discriminator 1
	beq- 4,.L538
.L604:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL506:
.L543:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL507:
	.loc 4 542 0
	bge+ 7,.L599
.LVL508:
.L589:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L541
	.loc 4 542 0 discriminator 3
	beq- 4,.L542
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L543
.L542:
.LVL509:
.LBB4317:
.LBB4314:
.LBB4253:
.LBB4254:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4254:
.LBE4253:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL510:
.LBB4307:
.LBB4304:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L544
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L546
.L611:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L547:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL511:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L598
.LVL512:
.L595:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L600
.L598:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L565
.L601:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L565
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L571
	.loc 5 243 0
	stw 0,0(25)
.L571:
	.loc 5 240 0
	lwz 25,8(25)
.LVL513:
	cmpwi 7,25,0
	bne+ 7,.L601
.L565:
.LVL514:
.LBB4255:
.LBB4256:
.LBB4257:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4257:
.LBE4256:
.LBE4255:
.LBB4260:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4260:
.LBB4268:
.LBB4259:
.LBB4258:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4258:
.LBE4259:
.LBE4268:
.LBB4269:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L602
.L572:
.LBE4269:
.LBE4304:
.LBE4307:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4308:
.LBB4309:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4309:
.LBE4308:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4314:
.LBE4317:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L573
.LVL515:
.L609:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L575
.L610:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L603
.L577:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4318:
.LBB4319:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4319:
.LBE4318:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL516:
	.loc 4 539 0
	bne+ 4,.L604
.LVL517:
.L538:
.LBE4250:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL518:
	addi 1,1,48
	.cfi_remember_state
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL519:
.L600:
.LCFI55:
	.cfi_restore_state
.LBB4328:
.LBB4320:
.LBB4315:
.LBB4311:
.LBB4305:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L605
.LVL520:
.LBB4270:
.LBB4271:
	.loc 5 445 0
	lwz 11,24(25)
.LVL521:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L590
	b .L612
.LVL522:
.L580:
	mr 9,0
.LVL523:
.L590:
	.loc 5 446 0
	stw 26,8(11)
.LVL524:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L580
.L550:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL525:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L552
	.loc 5 456 0
	stw 26,12(9)
.L553:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4272:
.LBB4273:
.LBB4274:
	.loc 4 228 0
	addi 3,25,-4
.LBE4274:
.LBE4273:
.LBE4272:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL526:
.LBB4277:
.LBB4276:
.LBB4275:
	.loc 4 228 0
	bl _ZdlPv
.LVL527:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL528:
.L554:
.LBE4275:
.LBE4276:
.LBE4277:
.LBE4271:
.LBE4270:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L559
	.loc 5 232 0
	stw 0,0(26)
.L559:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L607
	.loc 5 222 0
	lwz 25,8(26)
.LVL529:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L595
	b .L598
.LVL530:
.L605:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L554
.LVL531:
.LBB4279:
.LBB4280:
	.loc 5 445 0
	lwz 11,24(3)
.LVL532:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L591
	b .L613
.LVL533:
.L583:
	mr 9,0
.LVL534:
.L591:
	.loc 5 446 0
	stw 25,8(11)
.LVL535:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L583
.L555:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL536:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L557
	.loc 5 456 0
	stw 25,12(9)
.L558:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4281:
.LBB4282:
.LBB4283:
	.loc 4 228 0
	addi 3,3,-4
.LBE4283:
.LBE4282:
.LBE4281:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4288:
.LBB4286:
.LBB4284:
	.loc 4 230 0
	mr 26,25
.LBE4284:
.LBE4286:
.LBE4288:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL537:
.LBB4289:
.LBB4287:
.LBB4285:
	.loc 4 228 0
	bl _ZdlPv
.LVL538:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL539:
	b .L554
.LVL540:
.L552:
.LBE4285:
.LBE4287:
.LBE4289:
.LBE4280:
.LBE4279:
.LBB4292:
.LBB4278:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L553
.LVL541:
.L612:
	.loc 5 445 0
	mr 9,11
	b .L550
.LVL542:
.L557:
.LBE4278:
.LBE4292:
.LBB4293:
.LBB4290:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L558
.LVL543:
.L607:
.LBE4290:
.LBE4293:
.LBB4294:
.LBB4295:
.LBB4296:
.LBB4297:
.LBB4298:
.LBB4299:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL544:
.LBE4299:
.LBE4298:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4297:
.LBE4296:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL545:
	.loc 5 404 0
	stw 10,8(9)
.LVL546:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L561
	li 11,3
.LVL547:
.L562:
	.loc 5 406 0
	lwz 9,12(9)
.LVL548:
	.loc 5 405 0
	addi 11,11,2
.LVL549:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L562
.LVL550:
.L561:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL551:
	cmpwi 7,9,0
	beq- 7,.L563
	.loc 5 425 0
	stw 10,12(9)
.L564:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L598
.LVL552:
.L602:
.LBE4295:
.LBE4294:
.LBB4301:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L572
.LVL553:
.LBB4261:
	.loc 5 253 0
	stw 0,8(9)
.LBB4262:
.LBB4263:
.LBB4264:
	.loc 4 228 0
	addi 3,3,-4
.LVL554:
.LBE4264:
.LBE4263:
.LBE4262:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL555:
.LBB4267:
.LBB4266:
.LBB4265:
	.loc 4 228 0
	bl _ZdlPv
.LVL556:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4265:
.LBE4266:
.LBE4267:
.LBE4261:
.LBE4301:
.LBE4305:
.LBE4311:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4312:
.LBB4310:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4310:
.LBE4312:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4315:
.LBE4320:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L609
.L573:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L610
.L575:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L577
.L603:
.LBB4321:
.LBB4322:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4322:
.LBE4321:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4325:
.LBB4323:
	.loc 4 387 0
	srawi 0,5,31
.LBE4323:
.LBE4325:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4326:
.LBB4324:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4324:
.LBE4326:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L577
.LVL557:
.L613:
.LBB4327:
.LBB4316:
.LBB4313:
.LBB4306:
.LBB4302:
.LBB4291:
	.loc 5 445 0
	mr 9,11
	b .L555
.LVL558:
.L544:
.LBE4291:
.LBE4302:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L611
.L546:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L547
.LVL559:
.L563:
.LBB4303:
.LBB4300:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L564
.LBE4300:
.LBE4303:
.LBE4306:
.LBE4313:
.LBE4316:
.LBE4327:
.LBE4328:
	.cfi_endproc
.LFE2846:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2847:
	.loc 4 536 0
	.cfi_startproc
.LVL560:
	mflr 0
	stwu 1,-48(1)
.LCFI56:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4376:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL561:
	cmpwi 7,30,0
	beq- 7,.L614
.LVL562:
	lwz 0,0(30)
.LBB4377:
.LBB4378:
	.loc 4 881 0
	li 28,0
.LBE4378:
.LBE4377:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL563:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L665
.LVL564:
.L675:
	cmpwi 4,29,0
.L617:
.LVL565:
	.loc 4 539 0 discriminator 1
	beq- 4,.L614
.L680:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL566:
.L619:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL567:
	.loc 4 542 0
	bge+ 7,.L675
.LVL568:
.L665:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L617
	.loc 4 542 0 discriminator 3
	beq- 4,.L618
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L619
.L618:
.LVL569:
.LBB4446:
.LBB4443:
.LBB4379:
.LBB4380:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4380:
.LBE4379:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL570:
.LBB4436:
.LBB4423:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L620
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L622
.L687:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L623:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL571:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L674
.LVL572:
.L671:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L676
.L674:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L641
.L677:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L641
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L647
	.loc 5 243 0
	stw 0,0(25)
.L647:
	.loc 5 240 0
	lwz 25,8(25)
.LVL573:
	cmpwi 7,25,0
	bne+ 7,.L677
.L641:
.LVL574:
.LBB4381:
.LBB4382:
.LBB4383:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4383:
.LBE4382:
.LBE4381:
.LBB4386:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4386:
.LBB4387:
.LBB4385:
.LBB4384:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4384:
.LBE4385:
.LBE4387:
.LBB4388:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L678
.L648:
.LBE4388:
.LBE4423:
.LBE4436:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4437:
.LBB4438:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4438:
.LBE4437:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4443:
.LBE4446:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L649
.LVL575:
.L685:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L651
.L686:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L679
.L653:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4447:
.LBB4448:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4448:
.LBE4447:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL576:
	.loc 4 539 0
	bne+ 4,.L680
.LVL577:
.L614:
.LBE4376:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL578:
	addi 1,1,48
	.cfi_remember_state
.LCFI57:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL579:
.L676:
.LCFI58:
	.cfi_restore_state
.LBB4457:
.LBB4449:
.LBB4444:
.LBB4440:
.LBB4424:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L681
.LVL580:
.LBB4389:
.LBB4390:
	.loc 5 445 0
	lwz 11,24(25)
.LVL581:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L666
	b .L688
.LVL582:
.L656:
	mr 9,0
.LVL583:
.L666:
	.loc 5 446 0
	stw 26,8(11)
.LVL584:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L656
.L626:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL585:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L628
	.loc 5 456 0
	stw 26,12(9)
.L629:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4391:
.LBB4392:
.LBB4393:
	.loc 4 228 0
	addi 3,25,-4
.LBE4393:
.LBE4392:
.LBE4391:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL586:
.LBB4396:
.LBB4395:
.LBB4394:
	.loc 4 228 0
	bl _ZdlPv
.LVL587:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL588:
.L630:
.LBE4394:
.LBE4395:
.LBE4396:
.LBE4390:
.LBE4389:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L635
	.loc 5 232 0
	stw 0,0(26)
.L635:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L683
	.loc 5 222 0
	lwz 25,8(26)
.LVL589:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L671
	b .L674
.LVL590:
.L681:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L630
.LVL591:
.LBB4398:
.LBB4399:
	.loc 5 445 0
	lwz 11,24(3)
.LVL592:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L667
	b .L689
.LVL593:
.L659:
	mr 9,0
.LVL594:
.L667:
	.loc 5 446 0
	stw 25,8(11)
.LVL595:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L659
.L631:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL596:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L633
	.loc 5 456 0
	stw 25,12(9)
.L634:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4400:
.LBB4401:
.LBB4402:
	.loc 4 228 0
	addi 3,3,-4
.LBE4402:
.LBE4401:
.LBE4400:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4407:
.LBB4405:
.LBB4403:
	.loc 4 230 0
	mr 26,25
.LBE4403:
.LBE4405:
.LBE4407:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL597:
.LBB4408:
.LBB4406:
.LBB4404:
	.loc 4 228 0
	bl _ZdlPv
.LVL598:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL599:
	b .L630
.LVL600:
.L628:
.LBE4404:
.LBE4406:
.LBE4408:
.LBE4399:
.LBE4398:
.LBB4411:
.LBB4397:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L629
.LVL601:
.L688:
	.loc 5 445 0
	mr 9,11
	b .L626
.LVL602:
.L633:
.LBE4397:
.LBE4411:
.LBB4412:
.LBB4409:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L634
.LVL603:
.L683:
.LBE4409:
.LBE4412:
.LBB4413:
.LBB4414:
.LBB4415:
.LBB4416:
.LBB4417:
.LBB4418:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL604:
.LBE4418:
.LBE4417:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4416:
.LBE4415:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL605:
	.loc 5 404 0
	stw 10,8(9)
.LVL606:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L637
	li 11,3
.LVL607:
.L638:
	.loc 5 406 0
	lwz 9,12(9)
.LVL608:
	.loc 5 405 0
	addi 11,11,2
.LVL609:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L638
.LVL610:
.L637:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL611:
	cmpwi 7,9,0
	beq- 7,.L639
	.loc 5 425 0
	stw 10,12(9)
.L640:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L674
.LVL612:
.L678:
.LBE4414:
.LBE4413:
.LBB4420:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L648
.LVL613:
.LBE4420:
.LBE4424:
.LBB4425:
.LBB4426:
.LBB4427:
.LBB4428:
	.loc 5 253 0
	stw 0,8(9)
.LBB4429:
.LBB4430:
.LBB4431:
	.loc 4 228 0
	addi 3,3,-4
.LVL614:
.LBE4431:
.LBE4430:
.LBE4429:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL615:
.LBB4434:
.LBB4433:
.LBB4432:
	.loc 4 228 0
	bl _ZdlPv
.LVL616:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4432:
.LBE4433:
.LBE4434:
.LBE4428:
.LBE4427:
.LBE4426:
.LBE4425:
.LBE4440:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4441:
.LBB4439:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4439:
.LBE4441:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4444:
.LBE4449:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L685
.L649:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L686
.L651:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L653
.L679:
.LBB4450:
.LBB4451:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4451:
.LBE4450:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4454:
.LBB4452:
	.loc 4 387 0
	srawi 0,5,31
.LBE4452:
.LBE4454:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4455:
.LBB4453:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4453:
.LBE4455:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L653
.LVL617:
.L689:
.LBB4456:
.LBB4445:
.LBB4442:
.LBB4435:
.LBB4421:
.LBB4410:
	.loc 5 445 0
	mr 9,11
	b .L631
.LVL618:
.L620:
.LBE4410:
.LBE4421:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L687
.L622:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L623
.LVL619:
.L639:
.LBB4422:
.LBB4419:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L640
.LBE4419:
.LBE4422:
.LBE4435:
.LBE4442:
.LBE4445:
.LBE4456:
.LBE4457:
	.cfi_endproc
.LFE2847:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2848:
	.loc 4 536 0
	.cfi_startproc
.LVL620:
	mflr 0
	stwu 1,-48(1)
.LCFI59:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4498:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL621:
	cmpwi 7,30,0
	beq- 7,.L690
	lwz 0,0(30)
.LBB4499:
.LBB4500:
	.loc 4 881 0
	li 28,0
.LBE4500:
.LBE4499:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL622:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L741
.LVL623:
.L751:
	cmpwi 4,29,0
.L693:
.LVL624:
	.loc 4 539 0 discriminator 1
	beq- 4,.L690
.L756:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL625:
.L695:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL626:
	.loc 4 542 0
	bge+ 7,.L751
.LVL627:
.L741:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L693
	.loc 4 542 0 discriminator 3
	beq- 4,.L694
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L695
.L694:
.LVL628:
.LBB4565:
.LBB4562:
.LBB4501:
.LBB4502:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4502:
.LBE4501:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL629:
.LBB4555:
.LBB4552:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L696
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L698
.L763:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L699:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL630:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L750
.LVL631:
.L747:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L752
.L750:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L717
.L753:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L717
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L723
	.loc 5 243 0
	stw 0,0(25)
.L723:
	.loc 5 240 0
	lwz 25,8(25)
.LVL632:
	cmpwi 7,25,0
	bne+ 7,.L753
.L717:
.LVL633:
.LBB4503:
.LBB4504:
.LBB4505:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4505:
.LBE4504:
.LBE4503:
.LBB4508:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4508:
.LBB4516:
.LBB4507:
.LBB4506:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4506:
.LBE4507:
.LBE4516:
.LBB4517:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L754
.L724:
.LBE4517:
.LBE4552:
.LBE4555:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4556:
.LBB4557:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4557:
.LBE4556:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4562:
.LBE4565:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L725
.LVL634:
.L761:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L727
.L762:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L755
.L729:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4566:
.LBB4567:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4567:
.LBE4566:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL635:
	.loc 4 539 0
	bne+ 4,.L756
.LVL636:
.L690:
.LBE4498:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL637:
	addi 1,1,48
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL638:
.L752:
.LCFI61:
	.cfi_restore_state
.LBB4576:
.LBB4568:
.LBB4563:
.LBB4559:
.LBB4553:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L757
.LVL639:
.LBB4518:
.LBB4519:
	.loc 5 445 0
	lwz 11,24(25)
.LVL640:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L742
	b .L764
.LVL641:
.L732:
	mr 9,0
.LVL642:
.L742:
	.loc 5 446 0
	stw 26,8(11)
.LVL643:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L732
.L702:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL644:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L704
	.loc 5 456 0
	stw 26,12(9)
.L705:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4520:
.LBB4521:
.LBB4522:
	.loc 4 228 0
	addi 3,25,-4
.LBE4522:
.LBE4521:
.LBE4520:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL645:
.LBB4525:
.LBB4524:
.LBB4523:
	.loc 4 228 0
	bl _ZdlPv
.LVL646:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL647:
.L706:
.LBE4523:
.LBE4524:
.LBE4525:
.LBE4519:
.LBE4518:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L711
	.loc 5 232 0
	stw 0,0(26)
.L711:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L759
	.loc 5 222 0
	lwz 25,8(26)
.LVL648:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L747
	b .L750
.LVL649:
.L757:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L706
.LVL650:
.LBB4527:
.LBB4528:
	.loc 5 445 0
	lwz 11,24(3)
.LVL651:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L743
	b .L765
.LVL652:
.L735:
	mr 9,0
.LVL653:
.L743:
	.loc 5 446 0
	stw 25,8(11)
.LVL654:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L735
.L707:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL655:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L709
	.loc 5 456 0
	stw 25,12(9)
.L710:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4529:
.LBB4530:
.LBB4531:
	.loc 4 228 0
	addi 3,3,-4
.LBE4531:
.LBE4530:
.LBE4529:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4536:
.LBB4534:
.LBB4532:
	.loc 4 230 0
	mr 26,25
.LBE4532:
.LBE4534:
.LBE4536:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL656:
.LBB4537:
.LBB4535:
.LBB4533:
	.loc 4 228 0
	bl _ZdlPv
.LVL657:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL658:
	b .L706
.LVL659:
.L704:
.LBE4533:
.LBE4535:
.LBE4537:
.LBE4528:
.LBE4527:
.LBB4540:
.LBB4526:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L705
.LVL660:
.L764:
	.loc 5 445 0
	mr 9,11
	b .L702
.LVL661:
.L709:
.LBE4526:
.LBE4540:
.LBB4541:
.LBB4538:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L710
.LVL662:
.L759:
.LBE4538:
.LBE4541:
.LBB4542:
.LBB4543:
.LBB4544:
.LBB4545:
.LBB4546:
.LBB4547:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL663:
.LBE4547:
.LBE4546:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4545:
.LBE4544:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL664:
	.loc 5 404 0
	stw 10,8(9)
.LVL665:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L713
	li 11,3
.LVL666:
.L714:
	.loc 5 406 0
	lwz 9,12(9)
.LVL667:
	.loc 5 405 0
	addi 11,11,2
.LVL668:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L714
.LVL669:
.L713:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL670:
	cmpwi 7,9,0
	beq- 7,.L715
	.loc 5 425 0
	stw 10,12(9)
.L716:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L750
.LVL671:
.L754:
.LBE4543:
.LBE4542:
.LBB4549:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L724
.LVL672:
.LBB4509:
	.loc 5 253 0
	stw 0,8(9)
.LBB4510:
.LBB4511:
.LBB4512:
	.loc 4 228 0
	addi 3,3,-4
.LVL673:
.LBE4512:
.LBE4511:
.LBE4510:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL674:
.LBB4515:
.LBB4514:
.LBB4513:
	.loc 4 228 0
	bl _ZdlPv
.LVL675:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4513:
.LBE4514:
.LBE4515:
.LBE4509:
.LBE4549:
.LBE4553:
.LBE4559:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4560:
.LBB4558:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4558:
.LBE4560:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4563:
.LBE4568:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L761
.L725:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L762
.L727:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L729
.L755:
.LBB4569:
.LBB4570:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4570:
.LBE4569:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4573:
.LBB4571:
	.loc 4 387 0
	srawi 0,5,31
.LBE4571:
.LBE4573:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4574:
.LBB4572:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4572:
.LBE4574:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L729
.LVL676:
.L765:
.LBB4575:
.LBB4564:
.LBB4561:
.LBB4554:
.LBB4550:
.LBB4539:
	.loc 5 445 0
	mr 9,11
	b .L707
.LVL677:
.L696:
.LBE4539:
.LBE4550:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L763
.L698:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L699
.LVL678:
.L715:
.LBB4551:
.LBB4548:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L716
.LBE4548:
.LBE4551:
.LBE4554:
.LBE4561:
.LBE4564:
.LBE4575:
.LBE4576:
	.cfi_endproc
.LFE2848:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2849:
	.loc 4 536 0
	.cfi_startproc
.LVL679:
	mflr 0
	stwu 1,-48(1)
.LCFI62:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4617:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL680:
	cmpwi 7,30,0
	beq- 7,.L766
.LVL681:
	lwz 0,0(30)
.LBB4618:
.LBB4619:
	.loc 4 881 0
	li 28,0
.LBE4619:
.LBE4618:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL682:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L817
.LVL683:
.L827:
	cmpwi 4,29,0
.L769:
.LVL684:
	.loc 4 539 0 discriminator 1
	beq- 4,.L766
.L832:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL685:
.L771:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL686:
	.loc 4 542 0
	bge+ 7,.L827
.LVL687:
.L817:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L769
	.loc 4 542 0 discriminator 3
	beq- 4,.L770
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L771
.L770:
.LVL688:
.LBB4684:
.LBB4681:
.LBB4620:
.LBB4621:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4621:
.LBE4620:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL689:
.LBB4674:
.LBB4671:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L772
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L774
.L839:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L775:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL690:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L826
.LVL691:
.L823:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L828
.L826:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L793
.L829:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L793
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L799
	.loc 5 243 0
	stw 0,0(25)
.L799:
	.loc 5 240 0
	lwz 25,8(25)
.LVL692:
	cmpwi 7,25,0
	bne+ 7,.L829
.L793:
.LVL693:
.LBB4622:
.LBB4623:
.LBB4624:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4624:
.LBE4623:
.LBE4622:
.LBB4627:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4627:
.LBB4635:
.LBB4626:
.LBB4625:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4625:
.LBE4626:
.LBE4635:
.LBB4636:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L830
.L800:
.LBE4636:
.LBE4671:
.LBE4674:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4675:
.LBB4676:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4676:
.LBE4675:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4681:
.LBE4684:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L801
.LVL694:
.L837:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L803
.L838:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L831
.L805:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4685:
.LBB4686:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4686:
.LBE4685:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL695:
	.loc 4 539 0
	bne+ 4,.L832
.LVL696:
.L766:
.LBE4617:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL697:
	addi 1,1,48
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL698:
.L828:
.LCFI64:
	.cfi_restore_state
.LBB4695:
.LBB4687:
.LBB4682:
.LBB4678:
.LBB4672:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L833
.LVL699:
.LBB4637:
.LBB4638:
	.loc 5 445 0
	lwz 11,24(25)
.LVL700:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L818
	b .L840
.LVL701:
.L808:
	mr 9,0
.LVL702:
.L818:
	.loc 5 446 0
	stw 26,8(11)
.LVL703:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L808
.L778:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL704:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L780
	.loc 5 456 0
	stw 26,12(9)
.L781:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4639:
.LBB4640:
.LBB4641:
	.loc 4 228 0
	addi 3,25,-4
.LBE4641:
.LBE4640:
.LBE4639:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL705:
.LBB4644:
.LBB4643:
.LBB4642:
	.loc 4 228 0
	bl _ZdlPv
.LVL706:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL707:
.L782:
.LBE4642:
.LBE4643:
.LBE4644:
.LBE4638:
.LBE4637:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L787
	.loc 5 232 0
	stw 0,0(26)
.L787:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L835
	.loc 5 222 0
	lwz 25,8(26)
.LVL708:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L823
	b .L826
.LVL709:
.L833:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L782
.LVL710:
.LBB4646:
.LBB4647:
	.loc 5 445 0
	lwz 11,24(3)
.LVL711:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L819
	b .L841
.LVL712:
.L811:
	mr 9,0
.LVL713:
.L819:
	.loc 5 446 0
	stw 25,8(11)
.LVL714:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L811
.L783:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL715:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L785
	.loc 5 456 0
	stw 25,12(9)
.L786:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4648:
.LBB4649:
.LBB4650:
	.loc 4 228 0
	addi 3,3,-4
.LBE4650:
.LBE4649:
.LBE4648:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4655:
.LBB4653:
.LBB4651:
	.loc 4 230 0
	mr 26,25
.LBE4651:
.LBE4653:
.LBE4655:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL716:
.LBB4656:
.LBB4654:
.LBB4652:
	.loc 4 228 0
	bl _ZdlPv
.LVL717:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL718:
	b .L782
.LVL719:
.L780:
.LBE4652:
.LBE4654:
.LBE4656:
.LBE4647:
.LBE4646:
.LBB4659:
.LBB4645:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L781
.LVL720:
.L840:
	.loc 5 445 0
	mr 9,11
	b .L778
.LVL721:
.L785:
.LBE4645:
.LBE4659:
.LBB4660:
.LBB4657:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L786
.LVL722:
.L835:
.LBE4657:
.LBE4660:
.LBB4661:
.LBB4662:
.LBB4663:
.LBB4664:
.LBB4665:
.LBB4666:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL723:
.LBE4666:
.LBE4665:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4664:
.LBE4663:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL724:
	.loc 5 404 0
	stw 10,8(9)
.LVL725:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L789
	li 11,3
.LVL726:
.L790:
	.loc 5 406 0
	lwz 9,12(9)
.LVL727:
	.loc 5 405 0
	addi 11,11,2
.LVL728:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L790
.LVL729:
.L789:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL730:
	cmpwi 7,9,0
	beq- 7,.L791
	.loc 5 425 0
	stw 10,12(9)
.L792:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L826
.LVL731:
.L830:
.LBE4662:
.LBE4661:
.LBB4668:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L800
.LVL732:
.LBB4628:
	.loc 5 253 0
	stw 0,8(9)
.LBB4629:
.LBB4630:
.LBB4631:
	.loc 4 228 0
	addi 3,3,-4
.LVL733:
.LBE4631:
.LBE4630:
.LBE4629:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL734:
.LBB4634:
.LBB4633:
.LBB4632:
	.loc 4 228 0
	bl _ZdlPv
.LVL735:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4632:
.LBE4633:
.LBE4634:
.LBE4628:
.LBE4668:
.LBE4672:
.LBE4678:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4679:
.LBB4677:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4677:
.LBE4679:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4682:
.LBE4687:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L837
.L801:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L838
.L803:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L805
.L831:
.LBB4688:
.LBB4689:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4689:
.LBE4688:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4692:
.LBB4690:
	.loc 4 387 0
	srawi 0,5,31
.LBE4690:
.LBE4692:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4693:
.LBB4691:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4691:
.LBE4693:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L805
.LVL736:
.L841:
.LBB4694:
.LBB4683:
.LBB4680:
.LBB4673:
.LBB4669:
.LBB4658:
	.loc 5 445 0
	mr 9,11
	b .L783
.LVL737:
.L772:
.LBE4658:
.LBE4669:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L839
.L774:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L775
.LVL738:
.L791:
.LBB4670:
.LBB4667:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L792
.LBE4667:
.LBE4670:
.LBE4673:
.LBE4680:
.LBE4683:
.LBE4694:
.LBE4695:
	.cfi_endproc
.LFE2849:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv:
.LFB2850:
	.loc 4 536 0
	.cfi_startproc
.LVL739:
	mflr 0
	stwu 1,-48(1)
.LCFI65:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mfcr 12
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 12,8(1)
.LBB4743:
	.loc 4 539 0
	lwz 30,0(3)
	.cfi_offset 70, -40
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL740:
	cmpwi 7,30,0
	beq- 7,.L842
	lwz 0,0(30)
.LBB4744:
.LBB4745:
	.loc 4 881 0
	li 28,0
.LBE4745:
.LBE4744:
	.loc 4 555 0
	lis 27,_ZN5idLib3sysE@ha
	.loc 4 540 0
	lwz 29,8(30)
.LVL741:
	cmpwi 7,0,0
	.loc 4 542 0
	blt- 7,.L893
.LVL742:
.L903:
	cmpwi 4,29,0
.L845:
.LVL743:
	.loc 4 539 0 discriminator 1
	beq- 4,.L842
.L908:
	.loc 4 539 0 is_stmt 0
	lwz 0,0(29)
	cmpwi 7,0,0
.LVL744:
.L847:
	.loc 4 540 0 is_stmt 1
	mr 30,29
	lwz 29,8(30)
.LVL745:
	.loc 4 542 0
	bge+ 7,.L903
.LVL746:
.L893:
	.loc 4 542 0 is_stmt 0 discriminator 1
	lwz 23,12(30)
	cmpwi 4,29,0
	cmpwi 7,23,0
	beq- 7,.L845
	.loc 4 542 0 discriminator 3
	beq- 4,.L846
	.loc 2 2282 0 is_stmt 1 discriminator 5
	lwz 0,0(29)
	.loc 4 542 0 discriminator 5
	cmpwi 7,0,0
	bge+ 7,.L847
.L846:
.LVL747:
.LBB4813:
.LBB4810:
.LBB4746:
.LBB4747:
	.loc 5 209 0 discriminator 6
	lwz 9,16(23)
.LBE4747:
.LBE4746:
	.loc 4 880 0 discriminator 6
	addi 24,31,8
.LVL748:
.LBB4803:
.LBB4790:
	.loc 5 209 0 discriminator 6
	cmpwi 7,9,0
	beq- 7,.L848
	.loc 5 210 0
	lwz 0,12(23)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	beq- 7,.L850
.L915:
	.loc 5 215 0
	lwz 0,16(23)
	stw 0,16(9)
.L851:
	.loc 5 219 0
	lwz 9,8(23)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 25,8(23)
.LVL749:
	lwz 0,8(31)
	cmpw 7,25,0
	beq- 7,.L902
.LVL750:
.L899:
	lwz 0,20(25)
	cmpwi 7,0,1
	ble- 7,.L904
.L902:
	.loc 5 240 0
	cmpwi 7,25,0
	beq- 7,.L869
.L905:
	lwz 9,28(25)
	cmpwi 7,9,0
	beq- 7,.L869
	.loc 5 242 0
	lwz 0,0(9)
	lwz 9,0(25)
	cmpw 7,9,0
	ble- 7,.L875
	.loc 5 243 0
	stw 0,0(25)
.L875:
	.loc 5 240 0
	lwz 25,8(25)
.LVL751:
	cmpwi 7,25,0
	bne+ 7,.L905
.L869:
.LVL752:
.LBB4748:
.LBB4749:
.LBB4750:
	.loc 4 228 0
	addi 3,23,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,24(31)
.LBE4750:
.LBE4749:
.LBE4748:
.LBB4753:
	.loc 5 251 0
	lwz 3,8(31)
.LBE4753:
.LBB4754:
.LBB4752:
.LBB4751:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,24(31)
.LBE4751:
.LBE4752:
.LBE4754:
.LBB4755:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L906
.L876:
.LBE4755:
.LBE4790:
.LBE4803:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4804:
.LBB4805:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4805:
.LBE4804:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4810:
.LBE4813:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	beq- 7,.L877
.LVL753:
.L913:
	.loc 4 545 0
	stw 0,8(9)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	beq- 7,.L879
.L914:
	.loc 4 550 0
	stw 0,4(9)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	bne- 7,.L907
.L881:
	.loc 4 557 0
	lwz 11,32(31)
	.loc 4 559 0
	mr 3,30
	.loc 4 558 0
	lwz 9,36(31)
	.loc 4 557 0
	addi 0,11,-1
	stw 0,32(31)
.LBB4814:
.LBB4815:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4815:
.LBE4814:
	.loc 4 558 0
	subfic 0,0,-16
	add 0,9,0
	stw 0,36(31)
	.loc 4 559 0
	bl _Z10Mem_Free16Pv
.LVL754:
	.loc 4 539 0
	bne+ 4,.L908
.LVL755:
.L842:
.LBE4743:
	.loc 4 566 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL756:
	addi 1,1,48
	.cfi_remember_state
.LCFI66:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL757:
.L904:
.LCFI67:
	.cfi_restore_state
.LBB4824:
.LBB4816:
.LBB4811:
.LBB4807:
.LBB4791:
	.loc 5 224 0
	lwz 26,12(25)
	cmpwi 7,26,0
	beq- 7,.L909
.LVL758:
.LBB4756:
.LBB4757:
	.loc 5 445 0
	lwz 11,24(25)
.LVL759:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L894
	b .L916
.LVL760:
.L884:
	mr 9,0
.LVL761:
.L894:
	.loc 5 446 0
	stw 26,8(11)
.LVL762:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L884
.L854:
	.loc 5 448 0
	stw 26,8(9)
	.loc 5 449 0
	lwz 0,24(26)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(26)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(25)
	.loc 5 452 0
	lwz 9,20(26)
.LVL763:
	.loc 5 451 0
	stw 0,24(26)
	.loc 5 452 0
	lwz 0,20(25)
	add 0,9,0
	stw 0,20(26)
	.loc 5 455 0
	lwz 9,16(25)
	cmpwi 7,9,0
	beq- 7,.L856
	.loc 5 456 0
	stw 26,12(9)
.L857:
	.loc 5 460 0
	lwz 0,16(25)
.LBB4758:
.LBB4759:
.LBB4760:
	.loc 4 228 0
	addi 3,25,-4
.LBE4760:
.LBE4759:
.LBE4758:
	.loc 5 461 0
	lwz 9,8(26)
	.loc 5 460 0
	stw 0,16(26)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL764:
.LBB4763:
.LBB4762:
.LBB4761:
	.loc 4 228 0
	bl _ZdlPv
.LVL765:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL766:
.L858:
.LBE4761:
.LBE4762:
.LBE4763:
.LBE4757:
.LBE4756:
	.loc 5 231 0
	lwz 11,28(26)
	lwz 9,0(26)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L863
	.loc 5 232 0
	stw 0,0(26)
.L863:
	.loc 5 235 0
	lwz 0,20(26)
	cmpwi 7,0,4
	bgt- 7,.L911
	.loc 5 222 0
	lwz 25,8(26)
.LVL767:
	lwz 0,0(24)
	cmpw 7,25,0
	bne+ 7,.L899
	b .L902
.LVL768:
.L909:
	.loc 5 226 0
	lwz 3,16(25)
	mr 26,25
	cmpwi 7,3,0
	beq- 7,.L858
.LVL769:
.LBB4765:
.LBB4766:
	.loc 5 445 0
	lwz 11,24(3)
.LVL770:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L895
	b .L917
.LVL771:
.L887:
	mr 9,0
.LVL772:
.L895:
	.loc 5 446 0
	stw 25,8(11)
.LVL773:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L887
.L859:
	.loc 5 448 0
	stw 25,8(9)
	.loc 5 449 0
	lwz 0,24(25)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(25)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(25)
.LVL774:
	.loc 5 451 0
	stw 0,24(25)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(25)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L861
	.loc 5 456 0
	stw 25,12(9)
.L862:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4767:
.LBB4768:
.LBB4769:
	.loc 4 228 0
	addi 3,3,-4
.LBE4769:
.LBE4768:
.LBE4767:
	.loc 5 461 0
	lwz 9,8(25)
.LBB4774:
.LBB4772:
.LBB4770:
	.loc 4 230 0
	mr 26,25
.LBE4770:
.LBE4772:
.LBE4774:
	.loc 5 460 0
	stw 0,16(25)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL775:
.LBB4775:
.LBB4773:
.LBB4771:
	.loc 4 228 0
	bl _ZdlPv
.LVL776:
	.loc 4 230 0
	lwz 9,16(24)
	addi 0,9,-1
	stw 0,16(24)
.LVL777:
	b .L858
.LVL778:
.L856:
.LBE4771:
.LBE4773:
.LBE4775:
.LBE4766:
.LBE4765:
.LBB4778:
.LBB4764:
	.loc 5 458 0
	lwz 9,8(25)
	stw 26,24(9)
	b .L857
.LVL779:
.L916:
	.loc 5 445 0
	mr 9,11
	b .L854
.LVL780:
.L861:
.LBE4764:
.LBE4778:
.LBB4779:
.LBB4776:
	.loc 5 458 0
	lwz 9,8(3)
	stw 25,24(9)
	b .L862
.LVL781:
.L911:
.LBE4776:
.LBE4779:
.LBB4780:
.LBB4781:
.LBB4782:
.LBB4783:
.LBB4784:
.LBB4785:
	.loc 4 215 0
	lwz 9,24(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,24(31)
	.loc 4 216 0
	bl _Znwj
.LVL782:
.LBE4785:
.LBE4784:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE4783:
.LBE4782:
	.loc 5 400 0
	lwz 0,8(26)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(26)
.LVL783:
	.loc 5 404 0
	stw 10,8(9)
.LVL784:
	.loc 5 405 0
	lwz 0,20(26)
	cmpwi 7,0,3
	ble- 7,.L865
	li 11,3
.LVL785:
.L866:
	.loc 5 406 0
	lwz 9,12(9)
.LVL786:
	.loc 5 405 0
	addi 11,11,2
.LVL787:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(26)
	cmpw 7,11,0
	blt+ 7,.L866
.LVL788:
.L865:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(26)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(26)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(26)
	subf 0,0,11
	stw 0,20(26)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(26)
	.loc 5 418 0
	lwz 11,12(9)
	stw 28,16(11)
	.loc 5 419 0
	stw 28,12(9)
	.loc 5 424 0
	lwz 9,16(26)
.LVL789:
	cmpwi 7,9,0
	beq- 7,.L867
	.loc 5 425 0
	stw 10,12(9)
.L868:
	.loc 5 429 0
	lwz 0,16(26)
	.loc 5 433 0
	mr 25,26
	.loc 5 430 0
	stw 26,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(26)
	.loc 5 433 0
	lwz 9,8(26)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L902
.LVL790:
.L906:
.LBE4781:
.LBE4780:
.LBB4787:
	.loc 5 251 0
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L876
.LVL791:
.LBE4787:
.LBE4791:
.LBB4792:
.LBB4793:
.LBB4794:
.LBB4795:
	.loc 5 253 0
	stw 0,8(9)
.LBB4796:
.LBB4797:
.LBB4798:
	.loc 4 228 0
	addi 3,3,-4
.LVL792:
.LBE4798:
.LBE4797:
.LBE4796:
	.loc 5 254 0
	lwz 9,8(31)
	lwz 0,24(9)
	stw 0,8(31)
.LVL793:
.LBB4801:
.LBB4800:
.LBB4799:
	.loc 4 228 0
	bl _ZdlPv
.LVL794:
	.loc 4 230 0
	lwz 0,24(31)
	addic 0,0,-1
	stw 0,24(31)
.LBE4799:
.LBE4800:
.LBE4801:
.LBE4795:
.LBE4794:
.LBE4793:
.LBE4792:
.LBE4807:
	.loc 4 881 0
	stw 28,12(30)
	.loc 4 882 0
	lwz 11,48(31)
	.loc 4 883 0
	lwz 9,52(31)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(31)
.LBB4808:
.LBB4806:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4806:
.LBE4808:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(31)
.LBE4811:
.LBE4816:
	.loc 4 544 0
	lwz 9,4(30)
	.loc 4 545 0
	lwz 0,8(30)
	.loc 4 544 0
	cmpwi 7,9,0
	bne+ 7,.L913
.L877:
	.loc 4 547 0
	stw 0,0(31)
	.loc 4 549 0
	lwz 9,8(30)
	.loc 4 550 0
	lwz 0,4(30)
	.loc 4 549 0
	cmpwi 7,9,0
	bne+ 7,.L914
.L879:
	.loc 4 552 0
	stw 0,4(31)
	.loc 4 554 0
	lbz 0,29(31)
	cmpwi 7,0,0
	beq+ 7,.L881
.L907:
.LBB4817:
.LBB4818:
	.loc 4 387 0
	lwz 5,0(30)
.LBE4818:
.LBE4817:
	.loc 4 555 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(27)
.LBB4821:
.LBB4819:
	.loc 4 387 0
	srawi 0,5,31
.LBE4819:
.LBE4821:
	.loc 4 555 0
	lwz 9,0(3)
.LBB4822:
.LBB4820:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE4820:
.LBE4822:
	.loc 4 555 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	b .L881
.LVL795:
.L917:
.LBB4823:
.LBB4812:
.LBB4809:
.LBB4802:
.LBB4788:
.LBB4777:
	.loc 5 445 0
	mr 9,11
	b .L859
.LVL796:
.L848:
.LBE4777:
.LBE4788:
	.loc 5 212 0
	lwz 9,8(23)
	lwz 0,12(23)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(23)
	cmpwi 7,9,0
	bne+ 7,.L915
.L850:
	.loc 5 217 0
	lwz 9,8(23)
	lwz 0,16(23)
	stw 0,28(9)
	b .L851
.LVL797:
.L867:
.LBB4789:
.LBB4786:
	.loc 5 427 0
	lwz 9,8(26)
	stw 10,24(9)
	b .L868
.LBE4786:
.LBE4789:
.LBE4802:
.LBE4809:
.LBE4812:
.LBE4823:
.LBE4824:
	.cfi_endproc
.LFE2850:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.section	.text._ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.type	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, @function
_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE:
.LFB3117:
	.loc 5 203 0
	.cfi_startproc
.LVL798:
.LBB4854:
	.loc 5 209 0
	lwz 9,16(4)
.LBE4854:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI68:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB4904:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE4904:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB4905:
	.loc 5 209 0
	beq- 7,.L919
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L921
.L972:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L922:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL799:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L965
.LVL800:
.L962:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L966
.L965:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L940
.L967:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L940
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L946
	.loc 5 243 0
	stw 0,0(30)
.L946:
	.loc 5 240 0
	lwz 30,8(30)
.LVL801:
	cmpwi 7,30,0
	bne+ 7,.L967
.L940:
.LVL802:
.LBB4855:
.LBB4856:
.LBB4857:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE4857:
.LBE4856:
.LBE4855:
.LBB4860:
	.loc 5 251 0
	lwz 3,0(29)
.LBE4860:
.LBB4868:
.LBB4859:
.LBB4858:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE4858:
.LBE4859:
.LBE4868:
.LBB4869:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L948
.LVL803:
.L918:
.LBE4869:
.LBE4905:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL804:
	mtlr 0
	lwz 29,12(1)
.LVL805:
	lwz 30,16(1)
.LVL806:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI69:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL807:
.L966:
.LCFI70:
	.cfi_restore_state
.LBB4906:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L968
.LVL808:
.LBB4870:
.LBB4871:
	.loc 5 445 0
	lwz 11,24(30)
.LVL809:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L957
	b .L973
.LVL810:
.L950:
	mr 9,0
.LVL811:
.L957:
	.loc 5 446 0
	stw 31,8(11)
.LVL812:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L950
.L925:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL813:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L927
	.loc 5 456 0
	stw 31,12(9)
.L928:
	.loc 5 460 0
	lwz 0,16(30)
.LBB4872:
.LBB4873:
.LBB4874:
	.loc 4 228 0
	addi 3,30,-4
.LBE4874:
.LBE4873:
.LBE4872:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL814:
.LBB4877:
.LBB4876:
.LBB4875:
	.loc 4 228 0
	bl _ZdlPv
.LVL815:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL816:
.L929:
.LBE4875:
.LBE4876:
.LBE4877:
.LBE4871:
.LBE4870:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L934
	.loc 5 232 0
	stw 0,0(31)
.L934:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L970
	.loc 5 222 0
	lwz 30,8(31)
.LVL817:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L962
	b .L965
.LVL818:
.L968:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L929
.LVL819:
.LBB4879:
.LBB4880:
	.loc 5 445 0
	lwz 11,24(3)
.LVL820:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L958
	b .L974
.LVL821:
.L953:
	mr 9,0
.LVL822:
.L958:
	.loc 5 446 0
	stw 30,8(11)
.LVL823:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L953
.L930:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL824:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L932
	.loc 5 456 0
	stw 30,12(9)
.L933:
	.loc 5 460 0
	lwz 0,16(3)
.LBB4881:
.LBB4882:
.LBB4883:
	.loc 4 228 0
	addi 3,3,-4
.LBE4883:
.LBE4882:
.LBE4881:
	.loc 5 461 0
	lwz 9,8(30)
.LBB4888:
.LBB4886:
.LBB4884:
	.loc 4 230 0
	mr 31,30
.LBE4884:
.LBE4886:
.LBE4888:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL825:
.LBB4889:
.LBB4887:
.LBB4885:
	.loc 4 228 0
	bl _ZdlPv
.LVL826:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL827:
	b .L929
.LVL828:
.L927:
.LBE4885:
.LBE4887:
.LBE4889:
.LBE4880:
.LBE4879:
.LBB4892:
.LBB4878:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L928
.LVL829:
.L973:
	.loc 5 445 0
	mr 9,11
	b .L925
.LVL830:
.L932:
.LBE4878:
.LBE4892:
.LBB4893:
.LBB4890:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L933
.LVL831:
.L970:
.LBE4890:
.LBE4893:
.LBB4894:
.LBB4895:
.LBB4896:
.LBB4897:
.LBB4898:
.LBB4899:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL832:
.LBE4899:
.LBE4898:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE4897:
.LBE4896:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL833:
	.loc 5 404 0
	stw 10,8(9)
.LVL834:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L936
	li 11,3
.LVL835:
.L937:
	.loc 5 406 0
	lwz 9,12(9)
.LVL836:
	.loc 5 405 0
	addi 11,11,2
.LVL837:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L937
.LVL838:
.L936:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL839:
	cmpwi 7,9,0
	beq- 7,.L938
	.loc 5 425 0
	stw 10,12(9)
.L939:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L965
.LVL840:
.L948:
.LBE4895:
.LBE4894:
.LBB4901:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L918
.LVL841:
.LBB4861:
	.loc 5 253 0
	stw 0,8(9)
.LBB4862:
.LBB4863:
.LBB4864:
	.loc 4 228 0
	addi 3,3,-4
.LVL842:
.LBE4864:
.LBE4863:
.LBE4862:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL843:
.LBB4867:
.LBB4866:
.LBB4865:
	.loc 4 228 0
	bl _ZdlPv
.LVL844:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L918
.LVL845:
.L974:
.LBE4865:
.LBE4866:
.LBE4867:
.LBE4861:
.LBE4901:
.LBB4902:
.LBB4891:
	.loc 5 445 0
	mr 9,11
	b .L930
.LVL846:
.L919:
.LBE4891:
.LBE4902:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L972
.L921:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L922
.LVL847:
.L938:
.LBB4903:
.LBB4900:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L939
.LBE4900:
.LBE4903:
.LBE4906:
	.cfi_endproc
.LFE3117:
	.size	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, .-_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi:
.LFB3031:
	.loc 4 727 0
	.cfi_startproc
.LVL848:
	mflr 0
	stwu 1,-24(1)
.LCFI71:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB4921:
	.loc 4 729 0
	mulli 4,4,60
.LVL849:
.LBE4921:
	.loc 4 727 0
	stw 28,8(1)
	stw 30,16(1)
.LBB4944:
	.loc 4 729 0
	addi 28,4,15
	.cfi_offset 30, -8
	.cfi_offset 28, -16
.LBE4944:
	.loc 4 727 0
	stw 0,28(1)
	mr 30,3
	stw 29,12(1)
.LBB4945:
	.loc 4 729 0
	rlwinm 28,28,0,0,27
.LVL850:
.LBE4945:
	.loc 4 727 0
	stw 31,20(1)
.LBB4946:
.LBB4922:
.LBB4923:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL851:
	cmpwi 7,9,0
	bne+ 7,.L995
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	b .L977
.LVL852:
.L979:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,28,11
	ble- 7,.L978
	mr 9,0
.LVL853:
.L995:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L979
.L978:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L996
	.loc 5 289 0
	lwz 9,24(9)
.LVL854:
	cmpwi 7,9,0
	bne+ 7,.L995
.L977:
.LBE4923:
.LBE4922:
.LBB4925:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L981
.LBB4926:
.LBB4927:
.LBB4928:
	.file 9 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Lib.h"
	.loc 9 158 0
	lis 0,0xf
.LBE4928:
.LBE4927:
	.loc 4 735 0
	addi 29,28,16
.LVL855:
.LBB4931:
.LBB4929:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,28
.LVL856:
	cmpw 7,29,0
	ble- 7,.L997
.LVL857:
.L984:
.LBE4929:
.LBE4931:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL858:
	mr 4,29
.LVL859:
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL860:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL861:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L998
.LVL862:
.L985:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L999
.L986:
.LVL863:
	.loc 4 749 0
	li 0,0
.LBB4932:
.LBB4933:
	.loc 4 388 0
	stw 28,0(31)
.LBE4933:
.LBE4932:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L987
	.loc 4 752 0
	stw 31,8(9)
.L988:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE4926:
.LBE4925:
.LBE4946:
	.loc 4 764 0
	mr 3,31
.LBB4947:
.LBB4937:
.LBB4935:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE4935:
.LBE4937:
.LBE4947:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL864:
	lwz 31,20(1)
.LVL865:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI72:
	.cfi_def_cfa_offset 0
	blr
.LVL866:
.L996:
.LCFI73:
	.cfi_restore_state
.LBB4948:
.LBB4938:
.LBB4924:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,28,0
	bgt- 7,.L977
.LVL867:
.LBE4924:
.LBE4938:
.LBB4939:
.LBB4940:
	.loc 4 880 0
	lwz 4,12(31)
	addi 3,30,8
.LVL868:
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL869:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB4941:
.LBB4942:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE4942:
.LBE4941:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL870:
.L981:
.LBE4940:
.LBE4939:
.LBE4948:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL871:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL872:
	lwz 31,20(1)
.LVL873:
	addi 1,1,24
	.cfi_remember_state
.LCFI74:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL874:
.L997:
.LCFI75:
	.cfi_restore_state
.LBB4949:
.LBB4943:
.LBB4936:
.LBB4934:
.LBB4930:
	.loc 9 158 0
	lis 28,0xfff0
	lis 29,0x10
.LVL875:
	ori 28,28,16
	b .L984
.LVL876:
.L999:
.LBE4930:
.LBE4934:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x10
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L986
.LVL877:
.L987:
	.loc 4 754 0
	stw 31,0(30)
	b .L988
.LVL878:
.L998:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L985
.LBE4936:
.LBE4943:
.LBE4949:
	.cfi_endproc
.LFE3031:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
	.type	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE, @function
_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE:
.LFB3118:
	.loc 5 203 0
	.cfi_startproc
.LVL879:
.LBB4986:
	.loc 5 209 0
	lwz 9,16(4)
.LBE4986:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI76:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5029:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE5029:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5030:
	.loc 5 209 0
	beq- 7,.L1001
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L1003
.L1054:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L1004:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL880:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L1047
.LVL881:
.L1044:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L1048
.L1047:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L1022
.L1049:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L1022
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L1028
	.loc 5 243 0
	stw 0,0(30)
.L1028:
	.loc 5 240 0
	lwz 30,8(30)
.LVL882:
	cmpwi 7,30,0
	bne+ 7,.L1049
.L1022:
.LVL883:
.LBB4987:
.LBB4988:
.LBB4989:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE4989:
.LBE4988:
.LBE4987:
.LBB4992:
	.loc 5 251 0
	lwz 3,0(29)
.LBE4992:
.LBB4993:
.LBB4991:
.LBB4990:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE4990:
.LBE4991:
.LBE4993:
.LBB4994:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L1030
.LVL884:
.L1000:
.LBE4994:
.LBE5030:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL885:
	mtlr 0
	lwz 29,12(1)
.LVL886:
	lwz 30,16(1)
.LVL887:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL888:
.L1048:
.LCFI78:
	.cfi_restore_state
.LBB5031:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L1050
.LVL889:
.LBB4995:
.LBB4996:
	.loc 5 445 0
	lwz 11,24(30)
.LVL890:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1039
	b .L1055
.LVL891:
.L1032:
	mr 9,0
.LVL892:
.L1039:
	.loc 5 446 0
	stw 31,8(11)
.LVL893:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1032
.L1007:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL894:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1009
	.loc 5 456 0
	stw 31,12(9)
.L1010:
	.loc 5 460 0
	lwz 0,16(30)
.LBB4997:
.LBB4998:
.LBB4999:
	.loc 4 228 0
	addi 3,30,-4
.LBE4999:
.LBE4998:
.LBE4997:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL895:
.LBB5002:
.LBB5001:
.LBB5000:
	.loc 4 228 0
	bl _ZdlPv
.LVL896:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL897:
.L1011:
.LBE5000:
.LBE5001:
.LBE5002:
.LBE4996:
.LBE4995:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L1016
	.loc 5 232 0
	stw 0,0(31)
.L1016:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L1052
	.loc 5 222 0
	lwz 30,8(31)
.LVL898:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L1044
	b .L1047
.LVL899:
.L1050:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L1011
.LVL900:
.LBB5004:
.LBB5005:
	.loc 5 445 0
	lwz 11,24(3)
.LVL901:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1040
	b .L1056
.LVL902:
.L1035:
	mr 9,0
.LVL903:
.L1040:
	.loc 5 446 0
	stw 30,8(11)
.LVL904:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1035
.L1012:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL905:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L1014
	.loc 5 456 0
	stw 30,12(9)
.L1015:
	.loc 5 460 0
	lwz 0,16(3)
.LBB5006:
.LBB5007:
.LBB5008:
	.loc 4 228 0
	addi 3,3,-4
.LBE5008:
.LBE5007:
.LBE5006:
	.loc 5 461 0
	lwz 9,8(30)
.LBB5013:
.LBB5011:
.LBB5009:
	.loc 4 230 0
	mr 31,30
.LBE5009:
.LBE5011:
.LBE5013:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL906:
.LBB5014:
.LBB5012:
.LBB5010:
	.loc 4 228 0
	bl _ZdlPv
.LVL907:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL908:
	b .L1011
.LVL909:
.L1009:
.LBE5010:
.LBE5012:
.LBE5014:
.LBE5005:
.LBE5004:
.LBB5017:
.LBB5003:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L1010
.LVL910:
.L1055:
	.loc 5 445 0
	mr 9,11
	b .L1007
.LVL911:
.L1014:
.LBE5003:
.LBE5017:
.LBB5018:
.LBB5015:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L1015
.LVL912:
.L1052:
.LBE5015:
.LBE5018:
.LBB5019:
.LBB5020:
.LBB5021:
.LBB5022:
.LBB5023:
.LBB5024:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL913:
.LBE5024:
.LBE5023:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE5022:
.LBE5021:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL914:
	.loc 5 404 0
	stw 10,8(9)
.LVL915:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L1018
	li 11,3
.LVL916:
.L1019:
	.loc 5 406 0
	lwz 9,12(9)
.LVL917:
	.loc 5 405 0
	addi 11,11,2
.LVL918:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L1019
.LVL919:
.L1018:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL920:
	cmpwi 7,9,0
	beq- 7,.L1020
	.loc 5 425 0
	stw 10,12(9)
.L1021:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L1047
.LVL921:
.L1030:
.LBE5020:
.LBE5019:
.LBB5026:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1000
.LVL922:
.LBE5026:
.LBE5031:
.LBB5032:
.LBB5033:
.LBB5034:
.LBB5035:
	.loc 5 253 0
	stw 0,8(9)
.LBB5036:
.LBB5037:
.LBB5038:
	.loc 4 228 0
	addi 3,3,-4
.LVL923:
.LBE5038:
.LBE5037:
.LBE5036:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL924:
.LBB5041:
.LBB5040:
.LBB5039:
	.loc 4 228 0
	bl _ZdlPv
.LVL925:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L1000
.LVL926:
.L1056:
.LBE5039:
.LBE5040:
.LBE5041:
.LBE5035:
.LBE5034:
.LBE5033:
.LBE5032:
.LBB5042:
.LBB5027:
.LBB5016:
	.loc 5 445 0
	mr 9,11
	b .L1012
.LVL927:
.L1001:
.LBE5016:
.LBE5027:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L1054
.L1003:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L1004
.LVL928:
.L1020:
.LBB5028:
.LBB5025:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L1021
.LBE5025:
.LBE5028:
.LBE5042:
	.cfi_endproc
.LFE3118:
	.size	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE, .-_ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi:
.LFB3043:
	.loc 4 727 0
	.cfi_startproc
.LVL929:
	mflr 0
	stwu 1,-24(1)
.LCFI79:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5058:
	.loc 4 729 0
	slwi 4,4,2
.LVL930:
.LBE5058:
	.loc 4 727 0
	stw 28,8(1)
.LBB5079:
	.loc 4 729 0
	addi 28,4,15
	.cfi_offset 28, -16
.LBE5079:
	.loc 4 727 0
	stw 30,16(1)
.LBB5080:
	.loc 4 729 0
	rlwinm 28,28,0,0,27
.LVL931:
.LBE5080:
	.loc 4 727 0
	stw 0,28(1)
	mr 30,3
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 29,12(1)
	stw 31,20(1)
.LBB5081:
.LBB5059:
.LBB5060:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL932:
	cmpwi 7,9,0
	bne+ 7,.L1077
	.cfi_offset 31, -4
	.cfi_offset 29, -12
.LVL933:
	b .L1059
.LVL934:
.L1061:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,28,11
	ble- 7,.L1060
	mr 9,0
.LVL935:
.L1077:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1061
.L1060:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1078
	.loc 5 289 0
	lwz 9,24(9)
.LVL936:
	cmpwi 7,9,0
	bne+ 7,.L1077
.L1059:
.LBE5060:
.LBE5059:
.LBB5062:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1063
.LBB5063:
.LBB5064:
.LBB5065:
	.loc 9 158 0
	lis 0,0x1
.LBE5065:
.LBE5064:
	.loc 4 735 0
	addi 29,28,16
.LVL937:
.LBB5067:
.LBB5066:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,28
.LVL938:
	cmpw 7,29,0
	bgt- 7,.L1066
	lis 28,0xfffe
	lis 29,0x2
.LVL939:
	ori 28,28,16
.L1066:
.LBE5066:
.LBE5067:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL940:
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL941:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL942:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1079
.LVL943:
.L1067:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1080
.L1068:
.LVL944:
	.loc 4 749 0
	li 0,0
.LBB5068:
.LBB5069:
	.loc 4 388 0
	stw 28,0(31)
.LBE5069:
.LBE5068:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1069
	.loc 4 752 0
	stw 31,8(9)
.L1070:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5063:
.LBE5062:
.LBE5081:
	.loc 4 764 0
	mr 3,31
.LBB5082:
.LBB5072:
.LBB5070:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5070:
.LBE5072:
.LBE5082:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL945:
	lwz 31,20(1)
.LVL946:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI80:
	.cfi_def_cfa_offset 0
	blr
.LVL947:
.L1078:
.LCFI81:
	.cfi_restore_state
.LBB5083:
.LBB5073:
.LBB5061:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,28,0
	bgt- 7,.L1059
.LVL948:
.LBE5061:
.LBE5073:
.LBB5074:
.LBB5075:
	.loc 4 880 0
	lwz 4,12(31)
	addi 3,30,8
.LVL949:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL950:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5076:
.LBB5077:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5077:
.LBE5076:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL951:
.L1063:
.LBE5075:
.LBE5074:
.LBE5083:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL952:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL953:
	lwz 31,20(1)
.LVL954:
	addi 1,1,24
	.cfi_remember_state
.LCFI82:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL955:
.L1080:
.LCFI83:
	.cfi_restore_state
.LBB5084:
.LBB5078:
.LBB5071:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x2
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1068
.LVL956:
.L1069:
	.loc 4 754 0
	stw 31,0(30)
	b .L1070
.LVL957:
.L1079:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1067
.LBE5071:
.LBE5078:
.LBE5084:
	.cfi_endproc
.LFE3043:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi:
.LFB3034:
	.loc 4 727 0
	.cfi_startproc
.LVL958:
	mflr 0
	stwu 1,-24(1)
.LCFI84:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5100:
	.loc 4 729 0
	slwi 4,4,2
.LVL959:
.LBE5100:
	.loc 4 727 0
	stw 28,8(1)
.LBB5121:
	.loc 4 729 0
	addi 28,4,15
	.cfi_offset 28, -16
.LBE5121:
	.loc 4 727 0
	stw 30,16(1)
.LBB5122:
	.loc 4 729 0
	rlwinm 28,28,0,0,27
.LVL960:
.LBE5122:
	.loc 4 727 0
	stw 0,28(1)
	mr 30,3
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 29,12(1)
	stw 31,20(1)
.LBB5123:
.LBB5101:
.LBB5102:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL961:
	cmpwi 7,9,0
	bne+ 7,.L1101
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	b .L1083
.LVL962:
.L1085:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,28,11
	ble- 7,.L1084
	mr 9,0
.LVL963:
.L1101:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1085
.L1084:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1102
	.loc 5 289 0
	lwz 9,24(9)
.LVL964:
	cmpwi 7,9,0
	bne+ 7,.L1101
.L1083:
.LBE5102:
.LBE5101:
.LBB5104:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1087
.LBB5105:
.LBB5106:
.LBB5107:
	.loc 9 158 0
	lis 0,0x3
.LBE5107:
.LBE5106:
	.loc 4 735 0
	addi 29,28,16
.LVL965:
.LBB5109:
.LBB5108:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,28
.LVL966:
	cmpw 7,29,0
	bgt- 7,.L1090
	lis 28,0xfffc
	lis 29,0x4
.LVL967:
	ori 28,28,16
.L1090:
.LBE5108:
.LBE5109:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL968:
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL969:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL970:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1103
.LVL971:
.L1091:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1104
.L1092:
.LVL972:
	.loc 4 749 0
	li 0,0
.LBB5110:
.LBB5111:
	.loc 4 388 0
	stw 28,0(31)
.LBE5111:
.LBE5110:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1093
	.loc 4 752 0
	stw 31,8(9)
.L1094:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5105:
.LBE5104:
.LBE5123:
	.loc 4 764 0
	mr 3,31
.LBB5124:
.LBB5114:
.LBB5112:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5112:
.LBE5114:
.LBE5124:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL973:
	lwz 31,20(1)
.LVL974:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI85:
	.cfi_def_cfa_offset 0
	blr
.LVL975:
.L1102:
.LCFI86:
	.cfi_restore_state
.LBB5125:
.LBB5115:
.LBB5103:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,28,0
	bgt- 7,.L1083
.LVL976:
.LBE5103:
.LBE5115:
.LBB5116:
.LBB5117:
	.loc 4 880 0
	lwz 4,12(31)
	addi 3,30,8
.LVL977:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL978:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5118:
.LBB5119:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5119:
.LBE5118:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL979:
.L1087:
.LBE5117:
.LBE5116:
.LBE5125:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL980:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL981:
	lwz 31,20(1)
.LVL982:
	addi 1,1,24
	.cfi_remember_state
.LCFI87:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL983:
.L1104:
.LCFI88:
	.cfi_restore_state
.LBB5126:
.LBB5120:
.LBB5113:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x4
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1092
.LVL984:
.L1093:
	.loc 4 754 0
	stw 31,0(30)
	b .L1094
.LVL985:
.L1103:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1091
.LBE5113:
.LBE5120:
.LBE5126:
	.cfi_endproc
.LFE3034:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi:
.LFB3045:
	.loc 4 727 0
	.cfi_startproc
.LVL986:
	mflr 0
	stwu 1,-24(1)
.LCFI89:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5142:
	.loc 4 729 0
	slwi 4,4,2
.LVL987:
.LBE5142:
	.loc 4 727 0
	stw 28,8(1)
.LBB5163:
	.loc 4 729 0
	addi 28,4,15
	.cfi_offset 28, -16
.LBE5163:
	.loc 4 727 0
	stw 30,16(1)
.LBB5164:
	.loc 4 729 0
	rlwinm 28,28,0,0,27
.LVL988:
.LBE5164:
	.loc 4 727 0
	stw 0,28(1)
	mr 30,3
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 29,12(1)
	stw 31,20(1)
.LBB5165:
.LBB5143:
.LBB5144:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL989:
	cmpwi 7,9,0
	bne+ 7,.L1125
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	b .L1107
.LVL990:
.L1109:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,28,11
	ble- 7,.L1108
	mr 9,0
.LVL991:
.L1125:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1109
.L1108:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1126
	.loc 5 289 0
	lwz 9,24(9)
.LVL992:
	cmpwi 7,9,0
	bne+ 7,.L1125
.L1107:
.LBE5144:
.LBE5143:
.LBB5146:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1111
.LBB5147:
.LBB5148:
.LBB5149:
	.loc 9 158 0
	li 0,0
.LBE5149:
.LBE5148:
	.loc 4 735 0
	addi 29,28,16
.LVL993:
.LBB5151:
.LBB5150:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,28
.LVL994:
	cmpw 7,29,0
	bgt- 7,.L1114
	lis 28,0xffff
	lis 29,0x1
.LVL995:
	ori 28,28,16
.L1114:
.LBE5150:
.LBE5151:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL996:
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL997:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL998:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1127
.LVL999:
.L1115:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1128
.L1116:
.LVL1000:
	.loc 4 749 0
	li 0,0
.LBB5152:
.LBB5153:
	.loc 4 388 0
	stw 28,0(31)
.LBE5153:
.LBE5152:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1117
	.loc 4 752 0
	stw 31,8(9)
.L1118:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5147:
.LBE5146:
.LBE5165:
	.loc 4 764 0
	mr 3,31
.LBB5166:
.LBB5156:
.LBB5154:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5154:
.LBE5156:
.LBE5166:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1001:
	lwz 31,20(1)
.LVL1002:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI90:
	.cfi_def_cfa_offset 0
	blr
.LVL1003:
.L1126:
.LCFI91:
	.cfi_restore_state
.LBB5167:
.LBB5157:
.LBB5145:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,28,0
	bgt- 7,.L1107
.LVL1004:
.LBE5145:
.LBE5157:
.LBB5158:
.LBB5159:
	.loc 4 880 0
	lwz 4,12(31)
	addi 3,30,8
.LVL1005:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1006:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5160:
.LBB5161:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5161:
.LBE5160:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL1007:
.L1111:
.LBE5159:
.LBE5158:
.LBE5167:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL1008:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1009:
	lwz 31,20(1)
.LVL1010:
	addi 1,1,24
	.cfi_remember_state
.LCFI92:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1011:
.L1128:
.LCFI93:
	.cfi_restore_state
.LBB5168:
.LBB5162:
.LBB5155:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x1
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1116
.LVL1012:
.L1117:
	.loc 4 754 0
	stw 31,0(30)
	b .L1118
.LVL1013:
.L1127:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1115
.LBE5155:
.LBE5162:
.LBE5168:
	.cfi_endproc
.LFE3045:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.type	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, @function
_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE:
.LFB3119:
	.loc 5 203 0
	.cfi_startproc
.LVL1014:
.LBB5198:
	.loc 5 209 0
	lwz 9,16(4)
.LBE5198:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI94:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5248:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE5248:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5249:
	.loc 5 209 0
	beq- 7,.L1130
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L1132
.L1183:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L1133:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL1015:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L1176
.LVL1016:
.L1173:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L1177
.L1176:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L1151
.L1178:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L1151
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L1157
	.loc 5 243 0
	stw 0,0(30)
.L1157:
	.loc 5 240 0
	lwz 30,8(30)
.LVL1017:
	cmpwi 7,30,0
	bne+ 7,.L1178
.L1151:
.LVL1018:
.LBB5199:
.LBB5200:
.LBB5201:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE5201:
.LBE5200:
.LBE5199:
.LBB5204:
	.loc 5 251 0
	lwz 3,0(29)
.LBE5204:
.LBB5212:
.LBB5203:
.LBB5202:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE5202:
.LBE5203:
.LBE5212:
.LBB5213:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L1159
.LVL1019:
.L1129:
.LBE5213:
.LBE5249:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1020:
	mtlr 0
	lwz 29,12(1)
.LVL1021:
	lwz 30,16(1)
.LVL1022:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI95:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1023:
.L1177:
.LCFI96:
	.cfi_restore_state
.LBB5250:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L1179
.LVL1024:
.LBB5214:
.LBB5215:
	.loc 5 445 0
	lwz 11,24(30)
.LVL1025:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1168
	b .L1184
.LVL1026:
.L1161:
	mr 9,0
.LVL1027:
.L1168:
	.loc 5 446 0
	stw 31,8(11)
.LVL1028:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1161
.L1136:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL1029:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1138
	.loc 5 456 0
	stw 31,12(9)
.L1139:
	.loc 5 460 0
	lwz 0,16(30)
.LBB5216:
.LBB5217:
.LBB5218:
	.loc 4 228 0
	addi 3,30,-4
.LBE5218:
.LBE5217:
.LBE5216:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1030:
.LBB5221:
.LBB5220:
.LBB5219:
	.loc 4 228 0
	bl _ZdlPv
.LVL1031:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1032:
.L1140:
.LBE5219:
.LBE5220:
.LBE5221:
.LBE5215:
.LBE5214:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L1145
	.loc 5 232 0
	stw 0,0(31)
.L1145:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L1181
	.loc 5 222 0
	lwz 30,8(31)
.LVL1033:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L1173
	b .L1176
.LVL1034:
.L1179:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L1140
.LVL1035:
.LBB5223:
.LBB5224:
	.loc 5 445 0
	lwz 11,24(3)
.LVL1036:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1169
	b .L1185
.LVL1037:
.L1164:
	mr 9,0
.LVL1038:
.L1169:
	.loc 5 446 0
	stw 30,8(11)
.LVL1039:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1164
.L1141:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL1040:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L1143
	.loc 5 456 0
	stw 30,12(9)
.L1144:
	.loc 5 460 0
	lwz 0,16(3)
.LBB5225:
.LBB5226:
.LBB5227:
	.loc 4 228 0
	addi 3,3,-4
.LBE5227:
.LBE5226:
.LBE5225:
	.loc 5 461 0
	lwz 9,8(30)
.LBB5232:
.LBB5230:
.LBB5228:
	.loc 4 230 0
	mr 31,30
.LBE5228:
.LBE5230:
.LBE5232:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1041:
.LBB5233:
.LBB5231:
.LBB5229:
	.loc 4 228 0
	bl _ZdlPv
.LVL1042:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1043:
	b .L1140
.LVL1044:
.L1138:
.LBE5229:
.LBE5231:
.LBE5233:
.LBE5224:
.LBE5223:
.LBB5236:
.LBB5222:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L1139
.LVL1045:
.L1184:
	.loc 5 445 0
	mr 9,11
	b .L1136
.LVL1046:
.L1143:
.LBE5222:
.LBE5236:
.LBB5237:
.LBB5234:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L1144
.LVL1047:
.L1181:
.LBE5234:
.LBE5237:
.LBB5238:
.LBB5239:
.LBB5240:
.LBB5241:
.LBB5242:
.LBB5243:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL1048:
.LBE5243:
.LBE5242:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE5241:
.LBE5240:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL1049:
	.loc 5 404 0
	stw 10,8(9)
.LVL1050:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L1147
	li 11,3
.LVL1051:
.L1148:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1052:
	.loc 5 405 0
	addi 11,11,2
.LVL1053:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L1148
.LVL1054:
.L1147:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL1055:
	cmpwi 7,9,0
	beq- 7,.L1149
	.loc 5 425 0
	stw 10,12(9)
.L1150:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L1176
.LVL1056:
.L1159:
.LBE5239:
.LBE5238:
.LBB5245:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1129
.LVL1057:
.LBB5205:
	.loc 5 253 0
	stw 0,8(9)
.LBB5206:
.LBB5207:
.LBB5208:
	.loc 4 228 0
	addi 3,3,-4
.LVL1058:
.LBE5208:
.LBE5207:
.LBE5206:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL1059:
.LBB5211:
.LBB5210:
.LBB5209:
	.loc 4 228 0
	bl _ZdlPv
.LVL1060:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L1129
.LVL1061:
.L1185:
.LBE5209:
.LBE5210:
.LBE5211:
.LBE5205:
.LBE5245:
.LBB5246:
.LBB5235:
	.loc 5 445 0
	mr 9,11
	b .L1141
.LVL1062:
.L1130:
.LBE5235:
.LBE5246:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L1183
.L1132:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L1133
.LVL1063:
.L1149:
.LBB5247:
.LBB5244:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L1150
.LBE5244:
.LBE5247:
.LBE5250:
	.cfi_endproc
.LFE3119:
	.size	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, .-_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi:
.LFB3037:
	.loc 4 727 0
	.cfi_startproc
.LVL1064:
	mflr 0
	stwu 1,-24(1)
.LCFI97:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5265:
	.loc 4 729 0
	slwi 4,4,4
.LVL1065:
.LBE5265:
	.loc 4 727 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 31,20(1)
.LBB5288:
.LBB5266:
.LBB5267:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL1066:
	cmpwi 7,9,0
	bne+ 7,.L1206
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	b .L1188
.LVL1067:
.L1190:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,4,11
	ble- 7,.L1189
	mr 9,0
.LVL1068:
.L1206:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1190
.L1189:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1207
	.loc 5 289 0
	lwz 9,24(9)
.LVL1069:
	cmpwi 7,9,0
	bne+ 7,.L1206
.L1188:
.LBE5267:
.LBE5266:
.LBB5269:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1192
.LBB5270:
.LBB5271:
.LBB5272:
	.loc 9 158 0
	lis 0,0x3
.LBE5272:
.LBE5271:
	.loc 4 735 0
	addi 29,4,16
.LVL1070:
.LBB5275:
.LBB5273:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,4
	cmpw 7,29,0
	ble- 7,.L1208
.LVL1071:
.L1195:
.LBE5273:
.LBE5275:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL1072:
	mr 4,29
.LVL1073:
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL1074:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL1075:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1209
.LVL1076:
.L1196:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1210
.L1197:
.LVL1077:
	.loc 4 749 0
	li 0,0
.LBB5276:
.LBB5277:
	.loc 4 388 0
	stw 28,0(31)
.LBE5277:
.LBE5276:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1198
	.loc 4 752 0
	stw 31,8(9)
.L1199:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5270:
.LBE5269:
.LBE5288:
	.loc 4 764 0
	mr 3,31
.LBB5289:
.LBB5281:
.LBB5279:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5279:
.LBE5281:
.LBE5289:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1078:
	lwz 31,20(1)
.LVL1079:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI98:
	.cfi_def_cfa_offset 0
	blr
.LVL1080:
.L1207:
.LCFI99:
	.cfi_restore_state
.LBB5290:
.LBB5282:
.LBB5268:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,4,0
	bgt- 7,.L1188
.LVL1081:
.LBE5268:
.LBE5282:
.LBB5283:
.LBB5284:
	.loc 4 880 0
	lwz 4,12(31)
.LVL1082:
	addi 3,30,8
.LVL1083:
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1084:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5285:
.LBB5286:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5286:
.LBE5285:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL1085:
.L1192:
.LBE5284:
.LBE5283:
.LBE5290:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1086:
	lwz 31,20(1)
.LVL1087:
	addi 1,1,24
	.cfi_remember_state
.LCFI100:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1088:
.L1208:
.LCFI101:
	.cfi_restore_state
.LBB5291:
.LBB5287:
.LBB5280:
.LBB5278:
.LBB5274:
	.loc 9 158 0
	lis 28,0xfffc
	lis 29,0x4
.LVL1089:
	ori 28,28,16
	b .L1195
.LVL1090:
.L1210:
.LBE5274:
.LBE5278:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x4
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1197
.LVL1091:
.L1198:
	.loc 4 754 0
	stw 31,0(30)
	b .L1199
.LVL1092:
.L1209:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1196
.LBE5280:
.LBE5287:
.LBE5291:
	.cfi_endproc
.LFE3037:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.type	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, @function
_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE:
.LFB3120:
	.loc 5 203 0
	.cfi_startproc
.LVL1093:
.LBB5321:
	.loc 5 209 0
	lwz 9,16(4)
.LBE5321:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI102:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5371:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE5371:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5372:
	.loc 5 209 0
	beq- 7,.L1212
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L1214
.L1265:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L1215:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL1094:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L1258
.LVL1095:
.L1255:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L1259
.L1258:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L1233
.L1260:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L1233
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L1239
	.loc 5 243 0
	stw 0,0(30)
.L1239:
	.loc 5 240 0
	lwz 30,8(30)
.LVL1096:
	cmpwi 7,30,0
	bne+ 7,.L1260
.L1233:
.LVL1097:
.LBB5322:
.LBB5323:
.LBB5324:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE5324:
.LBE5323:
.LBE5322:
.LBB5327:
	.loc 5 251 0
	lwz 3,0(29)
.LBE5327:
.LBB5335:
.LBB5326:
.LBB5325:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE5325:
.LBE5326:
.LBE5335:
.LBB5336:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L1241
.LVL1098:
.L1211:
.LBE5336:
.LBE5372:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1099:
	mtlr 0
	lwz 29,12(1)
.LVL1100:
	lwz 30,16(1)
.LVL1101:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI103:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1102:
.L1259:
.LCFI104:
	.cfi_restore_state
.LBB5373:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L1261
.LVL1103:
.LBB5337:
.LBB5338:
	.loc 5 445 0
	lwz 11,24(30)
.LVL1104:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1250
	b .L1266
.LVL1105:
.L1243:
	mr 9,0
.LVL1106:
.L1250:
	.loc 5 446 0
	stw 31,8(11)
.LVL1107:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1243
.L1218:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL1108:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1220
	.loc 5 456 0
	stw 31,12(9)
.L1221:
	.loc 5 460 0
	lwz 0,16(30)
.LBB5339:
.LBB5340:
.LBB5341:
	.loc 4 228 0
	addi 3,30,-4
.LBE5341:
.LBE5340:
.LBE5339:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1109:
.LBB5344:
.LBB5343:
.LBB5342:
	.loc 4 228 0
	bl _ZdlPv
.LVL1110:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1111:
.L1222:
.LBE5342:
.LBE5343:
.LBE5344:
.LBE5338:
.LBE5337:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L1227
	.loc 5 232 0
	stw 0,0(31)
.L1227:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L1263
	.loc 5 222 0
	lwz 30,8(31)
.LVL1112:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L1255
	b .L1258
.LVL1113:
.L1261:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L1222
.LVL1114:
.LBB5346:
.LBB5347:
	.loc 5 445 0
	lwz 11,24(3)
.LVL1115:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1251
	b .L1267
.LVL1116:
.L1246:
	mr 9,0
.LVL1117:
.L1251:
	.loc 5 446 0
	stw 30,8(11)
.LVL1118:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1246
.L1223:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL1119:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L1225
	.loc 5 456 0
	stw 30,12(9)
.L1226:
	.loc 5 460 0
	lwz 0,16(3)
.LBB5348:
.LBB5349:
.LBB5350:
	.loc 4 228 0
	addi 3,3,-4
.LBE5350:
.LBE5349:
.LBE5348:
	.loc 5 461 0
	lwz 9,8(30)
.LBB5355:
.LBB5353:
.LBB5351:
	.loc 4 230 0
	mr 31,30
.LBE5351:
.LBE5353:
.LBE5355:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1120:
.LBB5356:
.LBB5354:
.LBB5352:
	.loc 4 228 0
	bl _ZdlPv
.LVL1121:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1122:
	b .L1222
.LVL1123:
.L1220:
.LBE5352:
.LBE5354:
.LBE5356:
.LBE5347:
.LBE5346:
.LBB5359:
.LBB5345:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L1221
.LVL1124:
.L1266:
	.loc 5 445 0
	mr 9,11
	b .L1218
.LVL1125:
.L1225:
.LBE5345:
.LBE5359:
.LBB5360:
.LBB5357:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L1226
.LVL1126:
.L1263:
.LBE5357:
.LBE5360:
.LBB5361:
.LBB5362:
.LBB5363:
.LBB5364:
.LBB5365:
.LBB5366:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL1127:
.LBE5366:
.LBE5365:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE5364:
.LBE5363:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL1128:
	.loc 5 404 0
	stw 10,8(9)
.LVL1129:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L1229
	li 11,3
.LVL1130:
.L1230:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1131:
	.loc 5 405 0
	addi 11,11,2
.LVL1132:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L1230
.LVL1133:
.L1229:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL1134:
	cmpwi 7,9,0
	beq- 7,.L1231
	.loc 5 425 0
	stw 10,12(9)
.L1232:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L1258
.LVL1135:
.L1241:
.LBE5362:
.LBE5361:
.LBB5368:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1211
.LVL1136:
.LBB5328:
	.loc 5 253 0
	stw 0,8(9)
.LBB5329:
.LBB5330:
.LBB5331:
	.loc 4 228 0
	addi 3,3,-4
.LVL1137:
.LBE5331:
.LBE5330:
.LBE5329:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL1138:
.LBB5334:
.LBB5333:
.LBB5332:
	.loc 4 228 0
	bl _ZdlPv
.LVL1139:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L1211
.LVL1140:
.L1267:
.LBE5332:
.LBE5333:
.LBE5334:
.LBE5328:
.LBE5368:
.LBB5369:
.LBB5358:
	.loc 5 445 0
	mr 9,11
	b .L1223
.LVL1141:
.L1212:
.LBE5358:
.LBE5369:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L1265
.L1214:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L1215
.LVL1142:
.L1231:
.LBB5370:
.LBB5367:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L1232
.LBE5367:
.LBE5370:
.LBE5373:
	.cfi_endproc
.LFE3120:
	.size	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, .-_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi:
.LFB3040:
	.loc 4 727 0
	.cfi_startproc
.LVL1143:
	mflr 0
	stwu 1,-24(1)
.LCFI105:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5388:
	.loc 4 729 0
	slwi 4,4,4
.LVL1144:
.LBE5388:
	.loc 4 727 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 31,20(1)
.LBB5411:
.LBB5389:
.LBB5390:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL1145:
	cmpwi 7,9,0
	bne+ 7,.L1288
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	b .L1270
.LVL1146:
.L1272:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,4,11
	ble- 7,.L1271
	mr 9,0
.LVL1147:
.L1288:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1272
.L1271:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1289
	.loc 5 289 0
	lwz 9,24(9)
.LVL1148:
	cmpwi 7,9,0
	bne+ 7,.L1288
.L1270:
.LBE5390:
.LBE5389:
.LBB5392:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1274
.LBB5393:
.LBB5394:
.LBB5395:
	.loc 9 158 0
	lis 0,0x1
.LBE5395:
.LBE5394:
	.loc 4 735 0
	addi 29,4,16
.LVL1149:
.LBB5398:
.LBB5396:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,4
	cmpw 7,29,0
	ble- 7,.L1290
.LVL1150:
.L1277:
.LBE5396:
.LBE5398:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL1151:
	mr 4,29
.LVL1152:
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL1153:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL1154:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1291
.LVL1155:
.L1278:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1292
.L1279:
.LVL1156:
	.loc 4 749 0
	li 0,0
.LBB5399:
.LBB5400:
	.loc 4 388 0
	stw 28,0(31)
.LBE5400:
.LBE5399:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1280
	.loc 4 752 0
	stw 31,8(9)
.L1281:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5393:
.LBE5392:
.LBE5411:
	.loc 4 764 0
	mr 3,31
.LBB5412:
.LBB5404:
.LBB5402:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5402:
.LBE5404:
.LBE5412:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1157:
	lwz 31,20(1)
.LVL1158:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI106:
	.cfi_def_cfa_offset 0
	blr
.LVL1159:
.L1289:
.LCFI107:
	.cfi_restore_state
.LBB5413:
.LBB5405:
.LBB5391:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,4,0
	bgt- 7,.L1270
.LVL1160:
.LBE5391:
.LBE5405:
.LBB5406:
.LBB5407:
	.loc 4 880 0
	lwz 4,12(31)
.LVL1161:
	addi 3,30,8
.LVL1162:
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1163:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5408:
.LBB5409:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5409:
.LBE5408:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL1164:
.L1274:
.LBE5407:
.LBE5406:
.LBE5413:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1165:
	lwz 31,20(1)
.LVL1166:
	addi 1,1,24
	.cfi_remember_state
.LCFI108:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1167:
.L1290:
.LCFI109:
	.cfi_restore_state
.LBB5414:
.LBB5410:
.LBB5403:
.LBB5401:
.LBB5397:
	.loc 9 158 0
	lis 28,0xfffe
	lis 29,0x2
.LVL1168:
	ori 28,28,16
	b .L1277
.LVL1169:
.L1292:
.LBE5397:
.LBE5401:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x2
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1279
.LVL1170:
.L1280:
	.loc 4 754 0
	stw 31,0(30)
	b .L1281
.LVL1171:
.L1291:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1278
.LBE5403:
.LBE5410:
.LBE5414:
	.cfi_endproc
.LFE3040:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.type	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, @function
_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE:
.LFB3121:
	.loc 5 203 0
	.cfi_startproc
.LVL1172:
.LBB5444:
	.loc 5 209 0
	lwz 9,16(4)
.LBE5444:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI110:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5494:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE5494:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5495:
	.loc 5 209 0
	beq- 7,.L1294
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L1296
.L1347:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L1297:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL1173:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L1340
.LVL1174:
.L1337:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L1341
.L1340:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L1315
.L1342:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L1315
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L1321
	.loc 5 243 0
	stw 0,0(30)
.L1321:
	.loc 5 240 0
	lwz 30,8(30)
.LVL1175:
	cmpwi 7,30,0
	bne+ 7,.L1342
.L1315:
.LVL1176:
.LBB5445:
.LBB5446:
.LBB5447:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE5447:
.LBE5446:
.LBE5445:
.LBB5450:
	.loc 5 251 0
	lwz 3,0(29)
.LBE5450:
.LBB5458:
.LBB5449:
.LBB5448:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE5448:
.LBE5449:
.LBE5458:
.LBB5459:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L1323
.LVL1177:
.L1293:
.LBE5459:
.LBE5495:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1178:
	mtlr 0
	lwz 29,12(1)
.LVL1179:
	lwz 30,16(1)
.LVL1180:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI111:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1181:
.L1341:
.LCFI112:
	.cfi_restore_state
.LBB5496:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L1343
.LVL1182:
.LBB5460:
.LBB5461:
	.loc 5 445 0
	lwz 11,24(30)
.LVL1183:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1332
	b .L1348
.LVL1184:
.L1325:
	mr 9,0
.LVL1185:
.L1332:
	.loc 5 446 0
	stw 31,8(11)
.LVL1186:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1325
.L1300:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL1187:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1302
	.loc 5 456 0
	stw 31,12(9)
.L1303:
	.loc 5 460 0
	lwz 0,16(30)
.LBB5462:
.LBB5463:
.LBB5464:
	.loc 4 228 0
	addi 3,30,-4
.LBE5464:
.LBE5463:
.LBE5462:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1188:
.LBB5467:
.LBB5466:
.LBB5465:
	.loc 4 228 0
	bl _ZdlPv
.LVL1189:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1190:
.L1304:
.LBE5465:
.LBE5466:
.LBE5467:
.LBE5461:
.LBE5460:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L1309
	.loc 5 232 0
	stw 0,0(31)
.L1309:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L1345
	.loc 5 222 0
	lwz 30,8(31)
.LVL1191:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L1337
	b .L1340
.LVL1192:
.L1343:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L1304
.LVL1193:
.LBB5469:
.LBB5470:
	.loc 5 445 0
	lwz 11,24(3)
.LVL1194:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1333
	b .L1349
.LVL1195:
.L1328:
	mr 9,0
.LVL1196:
.L1333:
	.loc 5 446 0
	stw 30,8(11)
.LVL1197:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1328
.L1305:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL1198:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L1307
	.loc 5 456 0
	stw 30,12(9)
.L1308:
	.loc 5 460 0
	lwz 0,16(3)
.LBB5471:
.LBB5472:
.LBB5473:
	.loc 4 228 0
	addi 3,3,-4
.LBE5473:
.LBE5472:
.LBE5471:
	.loc 5 461 0
	lwz 9,8(30)
.LBB5478:
.LBB5476:
.LBB5474:
	.loc 4 230 0
	mr 31,30
.LBE5474:
.LBE5476:
.LBE5478:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1199:
.LBB5479:
.LBB5477:
.LBB5475:
	.loc 4 228 0
	bl _ZdlPv
.LVL1200:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1201:
	b .L1304
.LVL1202:
.L1302:
.LBE5475:
.LBE5477:
.LBE5479:
.LBE5470:
.LBE5469:
.LBB5482:
.LBB5468:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L1303
.LVL1203:
.L1348:
	.loc 5 445 0
	mr 9,11
	b .L1300
.LVL1204:
.L1307:
.LBE5468:
.LBE5482:
.LBB5483:
.LBB5480:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L1308
.LVL1205:
.L1345:
.LBE5480:
.LBE5483:
.LBB5484:
.LBB5485:
.LBB5486:
.LBB5487:
.LBB5488:
.LBB5489:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL1206:
.LBE5489:
.LBE5488:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE5487:
.LBE5486:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL1207:
	.loc 5 404 0
	stw 10,8(9)
.LVL1208:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L1311
	li 11,3
.LVL1209:
.L1312:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1210:
	.loc 5 405 0
	addi 11,11,2
.LVL1211:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L1312
.LVL1212:
.L1311:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL1213:
	cmpwi 7,9,0
	beq- 7,.L1313
	.loc 5 425 0
	stw 10,12(9)
.L1314:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L1340
.LVL1214:
.L1323:
.LBE5485:
.LBE5484:
.LBB5491:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1293
.LVL1215:
.LBB5451:
	.loc 5 253 0
	stw 0,8(9)
.LBB5452:
.LBB5453:
.LBB5454:
	.loc 4 228 0
	addi 3,3,-4
.LVL1216:
.LBE5454:
.LBE5453:
.LBE5452:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL1217:
.LBB5457:
.LBB5456:
.LBB5455:
	.loc 4 228 0
	bl _ZdlPv
.LVL1218:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L1293
.LVL1219:
.L1349:
.LBE5455:
.LBE5456:
.LBE5457:
.LBE5451:
.LBE5491:
.LBB5492:
.LBB5481:
	.loc 5 445 0
	mr 9,11
	b .L1305
.LVL1220:
.L1294:
.LBE5481:
.LBE5492:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L1347
.L1296:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L1297
.LVL1221:
.L1313:
.LBB5493:
.LBB5490:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L1314
.LBE5490:
.LBE5493:
.LBE5496:
	.cfi_endproc
.LFE3121:
	.size	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, .-_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi:
.LFB3047:
	.loc 4 727 0
	.cfi_startproc
.LVL1222:
	mflr 0
	stwu 1,-24(1)
.LCFI113:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5511:
	.loc 4 729 0
	slwi 4,4,4
.LVL1223:
.LBE5511:
	.loc 4 727 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 31,20(1)
.LBB5534:
.LBB5512:
.LBB5513:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL1224:
	cmpwi 7,9,0
	bne+ 7,.L1370
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL1225:
	b .L1352
.LVL1226:
.L1354:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,4,11
	ble- 7,.L1353
	mr 9,0
.LVL1227:
.L1370:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1354
.L1353:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1371
	.loc 5 289 0
	lwz 9,24(9)
.LVL1228:
	cmpwi 7,9,0
	bne+ 7,.L1370
.L1352:
.LBE5513:
.LBE5512:
.LBB5515:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1356
.LBB5516:
.LBB5517:
.LBB5518:
	.loc 9 158 0
	lis 0,0x1
.LBE5518:
.LBE5517:
	.loc 4 735 0
	addi 29,4,16
.LVL1229:
.LBB5521:
.LBB5519:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,4
	cmpw 7,29,0
	ble- 7,.L1372
.LVL1230:
.L1359:
.LBE5519:
.LBE5521:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL1231:
	mr 4,29
.LVL1232:
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL1233:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL1234:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1373
.LVL1235:
.L1360:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1374
.L1361:
.LVL1236:
	.loc 4 749 0
	li 0,0
.LBB5522:
.LBB5523:
	.loc 4 388 0
	stw 28,0(31)
.LBE5523:
.LBE5522:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1362
	.loc 4 752 0
	stw 31,8(9)
.L1363:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5516:
.LBE5515:
.LBE5534:
	.loc 4 764 0
	mr 3,31
.LBB5535:
.LBB5527:
.LBB5525:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5525:
.LBE5527:
.LBE5535:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1237:
	lwz 31,20(1)
.LVL1238:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI114:
	.cfi_def_cfa_offset 0
	blr
.LVL1239:
.L1371:
.LCFI115:
	.cfi_restore_state
.LBB5536:
.LBB5528:
.LBB5514:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,4,0
	bgt- 7,.L1352
.LVL1240:
.LBE5514:
.LBE5528:
.LBB5529:
.LBB5530:
	.loc 4 880 0
	lwz 4,12(31)
.LVL1241:
	addi 3,30,8
.LVL1242:
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1243:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5531:
.LBB5532:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5532:
.LBE5531:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL1244:
.L1356:
.LBE5530:
.LBE5529:
.LBE5536:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1245:
	lwz 31,20(1)
.LVL1246:
	addi 1,1,24
	.cfi_remember_state
.LCFI116:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1247:
.L1372:
.LCFI117:
	.cfi_restore_state
.LBB5537:
.LBB5533:
.LBB5526:
.LBB5524:
.LBB5520:
	.loc 9 158 0
	lis 28,0xfffe
	lis 29,0x2
.LVL1248:
	ori 28,28,16
	b .L1359
.LVL1249:
.L1374:
.LBE5520:
.LBE5524:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x2
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1361
.LVL1250:
.L1362:
	.loc 4 754 0
	stw 31,0(30)
	b .L1363
.LVL1251:
.L1373:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1360
.LBE5526:
.LBE5533:
.LBE5537:
	.cfi_endproc
.LFE3047:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.type	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, @function
_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE:
.LFB3122:
	.loc 5 203 0
	.cfi_startproc
.LVL1252:
.LBB5567:
	.loc 5 209 0
	lwz 9,16(4)
.LBE5567:
	.loc 5 203 0
	mflr 0
	stwu 1,-24(1)
.LCFI118:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5617:
	.loc 5 209 0
	cmpwi 7,9,0
.LBE5617:
	.loc 5 203 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5618:
	.loc 5 209 0
	beq- 7,.L1376
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 210 0
	lwz 0,12(4)
	stw 0,12(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	beq- 7,.L1378
.L1429:
	.loc 5 215 0
	lwz 0,16(28)
	stw 0,16(9)
.L1379:
	.loc 5 219 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
	.loc 5 222 0
	lwz 30,8(28)
.LVL1253:
	lwz 0,0(29)
	cmpw 7,30,0
	beq- 7,.L1422
.LVL1254:
.L1419:
	.loc 5 222 0 is_stmt 0 discriminator 2
	lwz 0,20(30)
	cmpwi 7,0,1
	ble- 7,.L1423
.L1422:
	.loc 5 240 0 is_stmt 1
	cmpwi 7,30,0
	beq- 7,.L1397
.L1424:
	.loc 5 240 0 is_stmt 0 discriminator 2
	lwz 9,28(30)
	cmpwi 7,9,0
	beq- 7,.L1397
	.loc 5 242 0 is_stmt 1 discriminator 5
	lwz 0,0(9)
	lwz 9,0(30)
	cmpw 7,9,0
	ble- 7,.L1403
	.loc 5 243 0
	stw 0,0(30)
.L1403:
	.loc 5 240 0
	lwz 30,8(30)
.LVL1255:
	cmpwi 7,30,0
	bne+ 7,.L1424
.L1397:
.LVL1256:
.LBB5568:
.LBB5569:
.LBB5570:
	.loc 4 228 0
	addi 3,28,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,16(29)
.LBE5570:
.LBE5569:
.LBE5568:
.LBB5573:
	.loc 5 251 0
	lwz 3,0(29)
.LBE5573:
.LBB5581:
.LBB5572:
.LBB5571:
	.loc 4 230 0
	addi 0,9,-1
	stw 0,16(29)
.LBE5571:
.LBE5572:
.LBE5581:
.LBB5582:
	.loc 5 251 0
	lwz 0,20(3)
	cmpwi 7,0,1
	beq- 7,.L1405
.LVL1257:
.L1375:
.LBE5582:
.LBE5618:
	.loc 5 261 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1258:
	mtlr 0
	lwz 29,12(1)
.LVL1259:
	lwz 30,16(1)
.LVL1260:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI119:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1261:
.L1423:
.LCFI120:
	.cfi_restore_state
.LBB5619:
	.loc 5 224 0 discriminator 5
	lwz 31,12(30)
	cmpwi 7,31,0
	beq- 7,.L1425
.LVL1262:
.LBB5583:
.LBB5584:
	.loc 5 445 0
	lwz 11,24(30)
.LVL1263:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1414
	b .L1430
.LVL1264:
.L1407:
	mr 9,0
.LVL1265:
.L1414:
	.loc 5 446 0
	stw 31,8(11)
.LVL1266:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1407
.L1382:
	.loc 5 448 0
	stw 31,8(9)
	.loc 5 449 0
	lwz 0,24(31)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(31)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(30)
	.loc 5 452 0
	lwz 9,20(31)
.LVL1267:
	.loc 5 451 0
	stw 0,24(31)
	.loc 5 452 0
	lwz 0,20(30)
	add 0,9,0
	stw 0,20(31)
	.loc 5 455 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1384
	.loc 5 456 0
	stw 31,12(9)
.L1385:
	.loc 5 460 0
	lwz 0,16(30)
.LBB5585:
.LBB5586:
.LBB5587:
	.loc 4 228 0
	addi 3,30,-4
.LBE5587:
.LBE5586:
.LBE5585:
	.loc 5 461 0
	lwz 9,8(31)
	.loc 5 460 0
	stw 0,16(31)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1268:
.LBB5590:
.LBB5589:
.LBB5588:
	.loc 4 228 0
	bl _ZdlPv
.LVL1269:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1270:
.L1386:
.LBE5588:
.LBE5589:
.LBE5590:
.LBE5584:
.LBE5583:
	.loc 5 231 0
	lwz 11,28(31)
	lwz 9,0(31)
	lwz 0,0(11)
	cmpw 7,9,0
	ble- 7,.L1391
	.loc 5 232 0
	stw 0,0(31)
.L1391:
	.loc 5 235 0
	lwz 0,20(31)
	cmpwi 7,0,4
	bgt- 7,.L1427
	.loc 5 222 0
	lwz 30,8(31)
.LVL1271:
	lwz 0,0(29)
	cmpw 7,0,30
	bne+ 7,.L1419
	b .L1422
.LVL1272:
.L1425:
	.loc 5 226 0
	lwz 3,16(30)
	mr 31,30
	cmpwi 7,3,0
	beq- 7,.L1386
.LVL1273:
.LBB5592:
.LBB5593:
	.loc 5 445 0
	lwz 11,24(3)
.LVL1274:
	lwz 9,12(11)
	cmpwi 7,9,0
	bne+ 7,.L1415
	b .L1431
.LVL1275:
.L1410:
	mr 9,0
.LVL1276:
.L1415:
	.loc 5 446 0
	stw 30,8(11)
.LVL1277:
	.loc 5 445 0
	mr 11,9
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1410
.L1387:
	.loc 5 448 0
	stw 30,8(9)
	.loc 5 449 0
	lwz 0,24(30)
	stw 0,12(9)
	.loc 5 450 0
	lwz 11,24(30)
	stw 9,16(11)
	.loc 5 451 0
	lwz 0,24(3)
	.loc 5 452 0
	lwz 9,20(30)
.LVL1278:
	.loc 5 451 0
	stw 0,24(30)
	.loc 5 452 0
	lwz 0,20(3)
	add 0,9,0
	stw 0,20(30)
	.loc 5 455 0
	lwz 9,16(3)
	cmpwi 7,9,0
	beq- 7,.L1389
	.loc 5 456 0
	stw 30,12(9)
.L1390:
	.loc 5 460 0
	lwz 0,16(3)
.LBB5594:
.LBB5595:
.LBB5596:
	.loc 4 228 0
	addi 3,3,-4
.LBE5596:
.LBE5595:
.LBE5594:
	.loc 5 461 0
	lwz 9,8(30)
.LBB5601:
.LBB5599:
.LBB5597:
	.loc 4 230 0
	mr 31,30
.LBE5597:
.LBE5599:
.LBE5601:
	.loc 5 460 0
	stw 0,16(30)
	.loc 5 461 0
	lwz 11,20(9)
	addi 0,11,-1
	stw 0,20(9)
.LVL1279:
.LBB5602:
.LBB5600:
.LBB5598:
	.loc 4 228 0
	bl _ZdlPv
.LVL1280:
	.loc 4 230 0
	lwz 9,16(29)
	addi 0,9,-1
	stw 0,16(29)
.LVL1281:
	b .L1386
.LVL1282:
.L1384:
.LBE5598:
.LBE5600:
.LBE5602:
.LBE5593:
.LBE5592:
.LBB5605:
.LBB5591:
	.loc 5 458 0
	lwz 9,8(30)
	stw 31,24(9)
	b .L1385
.LVL1283:
.L1430:
	.loc 5 445 0
	mr 9,11
	b .L1382
.LVL1284:
.L1389:
.LBE5591:
.LBE5605:
.LBB5606:
.LBB5603:
	.loc 5 458 0
	lwz 9,8(3)
	stw 30,24(9)
	b .L1390
.LVL1285:
.L1427:
.LBE5603:
.LBE5606:
.LBB5607:
.LBB5608:
.LBB5609:
.LBB5610:
.LBB5611:
.LBB5612:
	.loc 4 215 0
	lwz 9,16(29)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(29)
	.loc 4 216 0
	bl _Znwj
.LVL1286:
.LBE5612:
.LBE5611:
	.loc 5 377 0
	li 0,0
	.loc 5 378 0
	stw 0,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 0,4(3)
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
	.loc 5 384 0
	stw 0,8(3)
.LBE5610:
.LBE5609:
	.loc 5 400 0
	lwz 0,8(31)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(31)
.LVL1287:
	.loc 5 404 0
	stw 10,8(9)
.LVL1288:
	.loc 5 405 0
	lwz 0,20(31)
	cmpwi 7,0,3
	ble- 7,.L1393
	li 11,3
.LVL1289:
.L1394:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1290:
	.loc 5 405 0
	addi 11,11,2
.LVL1291:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(31)
	cmpw 7,11,0
	blt+ 7,.L1394
.LVL1292:
.L1393:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(31)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(31)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(31)
	subf 11,11,8
	stw 11,20(31)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(31)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(31)
.LVL1293:
	cmpwi 7,9,0
	beq- 7,.L1395
	.loc 5 425 0
	stw 10,12(9)
.L1396:
	.loc 5 429 0
	lwz 0,16(31)
	.loc 5 433 0
	mr 30,31
	.loc 5 430 0
	stw 31,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(31)
	.loc 5 433 0
	lwz 9,8(31)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
	b .L1422
.LVL1294:
.L1405:
.LBE5608:
.LBE5607:
.LBB5614:
	.loc 5 251 0 discriminator 1
	lwz 9,24(3)
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1375
.LVL1295:
.LBB5574:
	.loc 5 253 0
	stw 0,8(9)
.LBB5575:
.LBB5576:
.LBB5577:
	.loc 4 228 0
	addi 3,3,-4
.LVL1296:
.LBE5577:
.LBE5576:
.LBE5575:
	.loc 5 254 0
	lwz 9,0(29)
	lwz 0,24(9)
	stw 0,0(29)
.LVL1297:
.LBB5580:
.LBB5579:
.LBB5578:
	.loc 4 228 0
	bl _ZdlPv
.LVL1298:
	.loc 4 230 0
	lwz 0,16(29)
	addic 0,0,-1
	stw 0,16(29)
	b .L1375
.LVL1299:
.L1431:
.LBE5578:
.LBE5579:
.LBE5580:
.LBE5574:
.LBE5614:
.LBB5615:
.LBB5604:
	.loc 5 445 0
	mr 9,11
	b .L1387
.LVL1300:
.L1376:
.LBE5604:
.LBE5615:
	.loc 5 212 0
	lwz 9,8(4)
	lwz 0,12(4)
	stw 0,24(9)
	.loc 5 214 0
	lwz 9,12(28)
	cmpwi 7,9,0
	bne+ 7,.L1429
.L1378:
	.loc 5 217 0
	lwz 9,8(28)
	lwz 0,16(28)
	stw 0,28(9)
	b .L1379
.LVL1301:
.L1395:
.LBB5616:
.LBB5613:
	.loc 5 427 0
	lwz 9,8(31)
	stw 10,24(9)
	b .L1396
.LBE5613:
.LBE5616:
.LBE5619:
	.cfi_endproc
.LFE3122:
	.size	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE, .-_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi:
.LFB3050:
	.loc 4 727 0
	.cfi_startproc
.LVL1302:
	mflr 0
	stwu 1,-24(1)
.LCFI121:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5634:
	.loc 4 729 0
	mulli 4,4,20
.LVL1303:
.LBE5634:
	.loc 4 727 0
	stw 28,8(1)
	stw 30,16(1)
.LBB5657:
	.loc 4 729 0
	addi 28,4,15
	.cfi_offset 30, -8
	.cfi_offset 28, -16
.LBE5657:
	.loc 4 727 0
	stw 0,28(1)
	mr 30,3
	stw 29,12(1)
.LBB5658:
	.loc 4 729 0
	rlwinm 28,28,0,0,27
.LVL1304:
.LBE5658:
	.loc 4 727 0
	stw 31,20(1)
.LBB5659:
.LBB5635:
.LBB5636:
	.loc 5 289 0
	lwz 9,8(3)
	lwz 9,24(9)
.LVL1305:
	cmpwi 7,9,0
	bne+ 7,.L1452
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1306:
	b .L1434
.LVL1307:
.L1436:
	.loc 5 291 0
	lwz 11,0(9)
	cmpw 7,28,11
	ble- 7,.L1435
	mr 9,0
.LVL1308:
.L1452:
	.loc 5 290 0
	lwz 0,12(9)
	cmpwi 7,0,0
	bne+ 7,.L1436
.L1435:
	.loc 5 296 0
	lwz 31,4(9)
	cmpwi 7,31,0
	bne- 7,.L1453
	.loc 5 289 0
	lwz 9,24(9)
.LVL1309:
	cmpwi 7,9,0
	bne+ 7,.L1452
.L1434:
.LBE5636:
.LBE5635:
.LBB5638:
	.loc 4 734 0
	lbz 0,28(30)
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L1438
.LBB5639:
.LBB5640:
.LBB5641:
	.loc 9 158 0
	li 0,0
.LBE5641:
.LBE5640:
	.loc 4 735 0
	addi 29,28,16
.LVL1310:
.LBB5644:
.LBB5642:
	.loc 9 158 0
	ori 0,0,65535
	neg 28,28
.LVL1311:
	cmpw 7,29,0
	ble- 7,.L1454
.LVL1312:
.L1441:
.LBE5642:
.LBE5644:
	.loc 4 736 0
	lis 3,.LC26@ha
.LVL1313:
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL1314:
	.loc 4 737 0
	mr 3,29
	bl _Z11Mem_Alloc16i
.LVL1315:
	.loc 4 738 0
	mr. 31,3
	beq- 0,.L1455
.LVL1316:
.L1442:
	.loc 4 741 0
	lbz 0,29(30)
	cmpwi 7,0,0
	bne- 7,.L1456
.L1443:
.LVL1317:
	.loc 4 749 0
	li 0,0
.LBB5645:
.LBB5646:
	.loc 4 388 0
	stw 28,0(31)
.LBE5646:
.LBE5645:
	.loc 4 749 0
	stw 0,8(31)
	.loc 4 750 0
	lwz 0,4(30)
	stw 0,4(31)
	.loc 4 751 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1444
	.loc 4 752 0
	stw 31,8(9)
.L1445:
	.loc 4 757 0
	li 0,0
	.loc 4 756 0
	stw 31,4(30)
	.loc 4 757 0
	stw 0,12(31)
.LBE5639:
.LBE5638:
.LBE5659:
	.loc 4 764 0
	mr 3,31
.LBB5660:
.LBB5650:
.LBB5648:
	.loc 4 759 0
	lwz 11,32(30)
	.loc 4 760 0
	lwz 9,36(30)
	.loc 4 759 0
	addi 0,11,1
	.loc 4 760 0
	add 29,9,29
	.loc 4 759 0
	stw 0,32(30)
	.loc 4 760 0
	stw 29,36(30)
.LBE5648:
.LBE5650:
.LBE5660:
	.loc 4 764 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1318:
	lwz 31,20(1)
.LVL1319:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI122:
	.cfi_def_cfa_offset 0
	blr
.LVL1320:
.L1453:
.LCFI123:
	.cfi_restore_state
.LBB5661:
.LBB5651:
.LBB5637:
	.loc 5 297 0
	lwz 0,0(9)
	cmpw 7,28,0
	bgt- 7,.L1434
.LVL1321:
.LBE5637:
.LBE5651:
.LBB5652:
.LBB5653:
	.loc 4 880 0
	lwz 4,12(31)
	addi 3,30,8
.LVL1322:
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1323:
	.loc 4 881 0
	li 0,0
	stw 0,12(31)
	.loc 4 882 0
	lwz 11,48(30)
	.loc 4 883 0
	lwz 9,52(30)
	.loc 4 882 0
	addi 0,11,-1
	stw 0,48(30)
.LBB5654:
.LBB5655:
	.loc 4 387 0
	lwz 0,0(31)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5655:
.LBE5654:
	.loc 4 883 0
	subf 0,0,9
	stw 0,52(30)
.LVL1324:
.L1438:
.LBE5653:
.LBE5652:
.LBE5661:
	.loc 4 764 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
.LVL1325:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1326:
	lwz 31,20(1)
.LVL1327:
	addi 1,1,24
	.cfi_remember_state
.LCFI124:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1328:
.L1454:
.LCFI125:
	.cfi_restore_state
.LBB5662:
.LBB5656:
.LBB5649:
.LBB5647:
.LBB5643:
	.loc 9 158 0
	lis 28,0xffff
	lis 29,0x1
.LVL1329:
	ori 28,28,16
	b .L1441
.LVL1330:
.L1456:
.LBE5643:
.LBE5647:
	.loc 4 742 0
	lis 9,_ZN5idLib3sysE@ha
	mr 4,31
	lwz 3,_ZN5idLib3sysE@l(9)
	lis 5,0x1
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
	b .L1443
.LVL1331:
.L1444:
	.loc 4 754 0
	stw 31,0(30)
	b .L1445
.LVL1332:
.L1455:
	.loc 4 739 0
	lis 3,.LC27@ha
	mr 4,29
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L1442
.LBE5649:
.LBE5656:
.LBE5662:
	.cfi_endproc
.LFE3050:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi
	.section	.text._ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i
	.type	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i, @function
_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i:
.LFB3136:
	.loc 5 114 0
	.cfi_startproc
.LVL1333:
	mflr 0
	stwu 1,-40(1)
.LCFI126:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB5690:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L1490
.LVL1334:
.L1458:
.LBB5691:
.LBB5692:
.LBB5693:
.LBB5694:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE5694:
.LBE5693:
.LBE5692:
.LBE5691:
.LBB5700:
.LBB5701:
	.loc 5 418 0
	li 26,0
.LBE5701:
.LBE5700:
.LBB5708:
.LBB5699:
.LBB5697:
.LBB5695:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE5695:
.LBE5697:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB5698:
.LBB5696:
	.loc 4 216 0
	mr 27,3
.LVL1335:
.LBE5696:
.LBE5698:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE5699:
.LBE5708:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL1336:
.L1489:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L1491
.L1481:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1487
	.loc 5 135 0
	stw 29,0(11)
.LVL1337:
	.loc 5 139 0
	b .L1487
.L1467:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1466
	mr 30,9
.LVL1338:
.L1487:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L1467
.L1466:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L1492
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL1339:
	cmpwi 7,0,3
	ble+ 7,.L1489
.LVL1340:
.LBB5709:
.LBB5706:
.LBB5702:
.LBB5703:
.LBB5704:
.LBB5705:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1341:
.LBE5705:
.LBE5704:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE5703:
.LBE5702:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL1342:
	.loc 5 404 0
	stw 10,8(9)
.LVL1343:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L1477
	li 11,3
.LVL1344:
.L1478:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1345:
	.loc 5 405 0
	addi 11,11,2
.LVL1346:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L1478
.LVL1347:
.L1477:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL1348:
	cmpwi 7,9,0
	beq- 7,.L1479
	.loc 5 425 0
	stw 10,12(9)
.L1480:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE5706:
.LBE5709:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1489
	mr 11,30
.LVL1349:
	.loc 5 132 0
	lwz 30,24(11)
.LVL1350:
	cmpwi 7,30,0
	bne+ 7,.L1481
.LVL1351:
.L1491:
	.loc 5 189 0
	lwz 0,0(31)
.LBE5690:
	.loc 5 200 0
	mr 3,25
.LBB5739:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL1352:
	addi 0,11,1
	stw 0,20(9)
.LBE5739:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1353:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1354:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1355:
	addi 1,1,40
	.cfi_remember_state
.LCFI127:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1356:
.L1479:
.LCFI128:
	.cfi_restore_state
.LBB5740:
.LBB5710:
.LBB5707:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L1480
.LVL1357:
.L1492:
.LBE5707:
.LBE5710:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1493
	.loc 5 159 0
	beq- 7,.L1473
	.loc 5 160 0
	stw 25,16(9)
.L1474:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L1472:
	.loc 5 169 0
	stw 11,12(27)
.LBE5740:
	.loc 5 200 0
	mr 3,25
.LBB5741:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE5741:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL1358:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1359:
	lwz 30,32(1)
.LVL1360:
	lwz 31,36(1)
.LVL1361:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI129:
	.cfi_def_cfa_offset 0
	blr
.LVL1362:
.L1493:
.LCFI130:
	.cfi_restore_state
.LBB5742:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1470
	.loc 5 150 0
	stw 25,12(9)
.L1471:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L1472
.LVL1363:
.L1490:
.LBB5711:
.LBB5712:
.LBB5713:
.LBB5714:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE5714:
.LBE5713:
	.loc 5 377 0
	li 27,0
.LBB5717:
.LBB5715:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1364:
.LBE5715:
.LBE5717:
	.loc 5 377 0
	stw 27,4(3)
.LBB5718:
.LBB5716:
	.loc 4 216 0
	mr 9,3
.LVL1365:
.LBE5716:
.LBE5718:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE5712:
.LBE5711:
.LBB5719:
.LBB5720:
.LBB5721:
.LBB5722:
.LBB5723:
.LBB5724:
	.loc 4 216 0
	li 3,36
.LVL1366:
.LBE5724:
.LBE5723:
.LBE5722:
.LBE5721:
.LBE5720:
.LBE5719:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL1367:
	stw 26,8(9)
.LBB5736:
.LBB5733:
.LBB5731:
.LBB5729:
.LBB5727:
.LBB5725:
	.loc 4 215 0
	lwz 9,16(31)
.LBE5725:
.LBE5727:
.LBE5729:
.LBE5731:
.LBE5733:
.LBE5736:
	.loc 5 124 0
	lwz 28,0(31)
.LVL1368:
.LBB5737:
.LBB5734:
.LBB5732:
.LBB5730:
.LBB5728:
.LBB5726:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1369:
.LBE5726:
.LBE5728:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE5730:
.LBE5732:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL1370:
	.loc 5 404 0
	stw 10,8(9)
.LVL1371:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L1459
	li 11,3
.LVL1372:
.L1460:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1373:
	.loc 5 405 0
	addi 11,11,2
.LVL1374:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L1460
.LVL1375:
.L1459:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL1376:
	cmpwi 7,9,0
	beq- 7,.L1461
	.loc 5 425 0
	stw 10,12(9)
.L1462:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LVL1377:
.LBE5734:
.LBE5737:
	.loc 5 125 0
	stw 26,0(31)
	b .L1458
.L1461:
.LBB5738:
.LBB5735:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L1462
.LVL1378:
.L1470:
.LBE5735:
.LBE5738:
	.loc 5 152 0
	stw 25,24(11)
	b .L1471
.L1473:
	.loc 5 162 0
	stw 25,28(11)
	b .L1474
.LBE5742:
	.cfi_endproc
.LFE3136:
	.size	_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i, .-_ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E:
.LFB2997:
	.loc 4 833 0
	.cfi_startproc
.LVL1379:
	mflr 0
	stwu 1,-24(1)
.LCFI131:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB5776:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1380:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1495
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1495
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL1381:
	cmpwi 7,4,0
	beq- 7,.L1495
.LVL1382:
.LBB5777:
.LBB5778:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL1383:
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1384:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB5779:
.LBB5780:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5780:
.LBE5779:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE5778:
.LBE5777:
.LBB5781:
.LBB5782:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE5782:
.LBE5781:
.LBB5784:
.LBB5785:
	srawi 10,0,31
.LBE5785:
.LBE5784:
.LBB5787:
.LBB5788:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE5788:
.LBE5787:
.LBB5791:
.LBB5786:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE5786:
.LBE5791:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB5792:
.LBB5783:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE5783:
.LBE5792:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL1385:
.LBB5793:
.LBB5789:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1508
.LVL1386:
.L1496:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE5789:
.LBE5793:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1497
	.loc 4 848 0
	stw 30,4(9)
.LVL1387:
.L1495:
	.loc 4 855 0
	lwz 29,4(30)
.LVL1388:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1499
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1499
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1499
.LVL1389:
.LBB5794:
.LBB5795:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1390:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB5796:
.LBB5797:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5797:
.LBE5796:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE5795:
.LBE5794:
.LBB5798:
.LBB5799:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE5799:
.LBE5798:
.LBB5801:
.LBB5802:
	srawi 10,0,31
.LBE5802:
.LBE5801:
.LBB5804:
.LBB5805:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE5805:
.LBE5804:
.LBB5808:
.LBB5803:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE5803:
.LBE5808:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB5809:
.LBB5800:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE5800:
.LBE5809:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL1391:
.LBB5810:
.LBB5806:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1509
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE5806:
.LBE5810:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL1392:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1501
.LVL1393:
.L1510:
	.loc 4 861 0
	stw 29,4(9)
.L1502:
.LVL1394:
.LBB5811:
.LBB5812:
.LBB5813:
.LBB5814:
	.loc 4 387 0
	lwz 5,0(29)
.LBE5814:
.LBE5813:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB5815:
.LBB5816:
	.loc 4 387 0
	lwz 0,0(29)
.LBE5816:
.LBE5815:
.LBE5812:
.LBE5811:
.LBB5817:
.LBB5818:
.LBB5819:
.LBB5820:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5820:
.LBE5819:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE5818:
.LBE5817:
.LBE5776:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1395:
	lwz 30,16(1)
.LVL1396:
	lwz 31,20(1)
.LVL1397:
	addi 1,1,24
	.cfi_remember_state
.LCFI132:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1398:
.L1499:
.LCFI133:
	.cfi_restore_state
.LBB5827:
.LBB5824:
.LBB5823:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE3AddEPS2_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB5822:
.LBB5821:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5821:
.LBE5822:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE5823:
.LBE5824:
.LBE5827:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1399:
	lwz 30,16(1)
.LVL1400:
	lwz 31,20(1)
.LVL1401:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI134:
	.cfi_def_cfa_offset 0
	blr
.LVL1402:
.L1509:
.LCFI135:
	.cfi_restore_state
.LBB5828:
.LBB5825:
.LBB5807:
	.loc 4 388 0
	neg 0,0
.LVL1403:
	stw 0,0(29)
.LBE5807:
.LBE5825:
	.loc 4 859 0
	lwz 0,8(30)
.LVL1404:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1510
	b .L1501
.LVL1405:
.L1508:
.LBB5826:
.LBB5790:
	.loc 4 388 0
	neg 0,0
.LVL1406:
	b .L1496
.LVL1407:
.L1501:
.LBE5790:
.LBE5826:
	.loc 4 863 0
	stw 29,4(31)
	b .L1502
.LVL1408:
.L1497:
	.loc 4 850 0
	stw 30,4(31)
	b .L1495
.LBE5828:
	.cfi_endproc
.LFE2997:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv:
.LFB2835:
	.loc 4 474 0
	.cfi_startproc
.LVL1409:
	mflr 0
	stwu 1,-24(1)
.LCFI136:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB5829:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1410:
	cmpwi 7,30,0
	beq- 7,.L1512
.LVL1411:
.L1518:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1521
.L1513:
	.loc 4 477 0
	lwz 30,8(30)
.LVL1412:
	cmpwi 7,30,0
	bne+ 7,.L1518
	.loc 4 483 0
	lwz 30,0(31)
.LVL1413:
	cmpwi 7,30,0
	beq- 7,.L1512
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1517
.LVL1414:
.L1515:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1415:
	cmpwi 7,30,0
	beq- 7,.L1512
.LVL1416:
.L1517:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1515
.LBB5830:
.LBB5831:
	.loc 4 387 0
	lwz 5,0(30)
.LBE5831:
.LBE5830:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB5834:
.LBB5832:
	.loc 4 387 0
	srawi 0,5,31
.LBE5832:
.LBE5834:
	.loc 4 487 0
	lwz 9,0(3)
.LBB5835:
.LBB5833:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE5833:
.LBE5835:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1417:
	cmpwi 7,30,0
	bne+ 7,.L1517
.LVL1418:
.L1512:
.LBB5836:
.LBB5837:
.LBB5838:
.LBB5839:
	.loc 4 245 0
	li 0,0
.LBE5839:
.LBE5838:
.LBE5837:
.LBE5836:
.LBB5843:
.LBB5844:
	.loc 4 707 0
	li 9,1
.LBE5844:
.LBE5843:
.LBB5846:
.LBB5842:
.LBB5841:
.LBB5840:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE5840:
.LBE5841:
	.loc 5 110 0
	stw 0,8(31)
.LVL1419:
.LBE5842:
.LBE5846:
.LBB5847:
.LBB5845:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE5845:
.LBE5847:
.LBE5829:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1420:
	lwz 31,20(1)
.LVL1421:
	addi 1,1,24
	.cfi_remember_state
.LCFI137:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1422:
.L1521:
.LCFI138:
	.cfi_restore_state
.LBB5848:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	b .L1513
.LBE5848:
	.cfi_endproc
.LFE2835:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_:
.LFB2884:
	.loc 4 644 0
	.cfi_startproc
.LVL1423:
	mflr 0
.LBB5849:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE5849:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI139:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB5852:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1522
.LVL1424:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB5850:
.LBB5851:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL1425:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5851:
.LBE5850:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL1426:
.L1522:
.LBE5852:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI140:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2884:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei:
.LFB3032:
	.loc 4 767 0
	.cfi_startproc
.LVL1427:
	mflr 0
	stwu 1,-24(1)
.LCFI141:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
.LBB5884:
	.loc 4 768 0
	mulli 30,5,60
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE5884:
	.loc 4 767 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 28,8(1)
.LBB5924:
	.loc 4 768 0
	addi 30,30,15
	rlwinm 30,30,0,0,27
.LVL1428:
.LBB5885:
.LBB5886:
.LBB5887:
	.loc 4 387 0
	lwz 9,0(4)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LBE5887:
.LBE5886:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1525
	.cfi_offset 28, -16
.LBB5888:
	.loc 4 777 0
	lwz 28,8(4)
.LVL1429:
.LBB5889:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1526
	.loc 2 2282 0 discriminator 1
	lwz 0,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,0,0
	blt- 7,.L1526
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL1430:
	cmpwi 7,4,0
	beq- 7,.L1526
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 0,0,9
	cmpw 7,30,0
	bgt- 7,.L1526
.LVL1431:
.LBB5890:
.LBB5891:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL1432:
	bl _ZN7idBTreeI14idDynamicBlockI10idDrawVertEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL1433:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB5892:
.LBB5893:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5893:
.LBE5892:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE5891:
.LBE5890:
.LBB5894:
.LBB5895:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE5895:
.LBE5894:
.LBB5898:
.LBB5899:
	srawi 11,9,31
.LBE5899:
.LBE5898:
.LBB5901:
.LBB5902:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE5902:
.LBE5901:
.LBB5904:
.LBB5900:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE5900:
.LBE5904:
.LBB5905:
.LBB5896:
	srawi 11,0,31
	xor 0,11,0
.LBE5896:
.LBE5905:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB5906:
.LBB5897:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE5897:
.LBE5906:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL1434:
.LBB5907:
.LBB5903:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1527
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL1435:
.L1527:
	stw 0,0(31)
.LBE5903:
.LBE5907:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1528
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL1436:
.L1525:
.LBE5889:
.LBE5888:
.LBE5885:
	.loc 4 804 0
	subf 9,30,9
.LVL1437:
	cmpwi 7,9,1039
	ble- 7,.L1529
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB5916:
.LBB5917:
	.loc 4 388 0
	stwx 9,31,4
.LBE5917:
.LBE5916:
	.loc 4 810 0
	add 4,31,4
.LVL1438:
	.loc 4 816 0
	lwz 9,8(31)
.LVL1439:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1530
	.loc 4 819 0
	stw 4,4(9)
.L1531:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL1440:
.LBB5918:
.LBB5919:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1536
.LVL1441:
.L1532:
	stw 30,0(31)
.LBE5919:
.LBE5918:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL1442:
.L1529:
.LBE5924:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1443:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI142:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1444:
.L1526:
.LCFI143:
	.cfi_restore_state
.LBB5925:
.LBB5921:
.LBB5914:
.LBB5912:
.LBB5908:
	.loc 4 794 0
	mr 3,29
.LVL1445:
	mr 4,5
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi
.LVL1446:
	.loc 4 795 0
	mr. 28,3
.LVL1447:
	beq- 0,.L1537
.LVL1448:
.LBB5909:
.LBB5910:
	.loc 4 387 0
	lwz 5,0(31)
.LBE5910:
.LBE5909:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL1449:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL1450:
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL1451:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1525
.LVL1452:
.L1536:
.LBE5908:
.LBE5912:
.LBE5914:
.LBE5921:
.LBB5922:
.LBB5920:
	.loc 4 388 0
	neg 30,30
.LVL1453:
	b .L1532
.LVL1454:
.L1530:
.LBE5920:
.LBE5922:
	.loc 4 821 0
	stw 4,4(29)
	b .L1531
.LVL1455:
.L1528:
.LBB5923:
.LBB5915:
.LBB5913:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1525
.LVL1456:
.L1537:
.LBB5911:
	.loc 4 796 0
	li 31,0
.LVL1457:
	b .L1529
.LBE5911:
.LBE5913:
.LBE5915:
.LBE5923:
.LBE5925:
	.cfi_endproc
.LFE3032:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi:
.LFB2900:
	.loc 4 583 0
	.cfi_startproc
.LVL1458:
	mflr 0
	stwu 1,-24(1)
.LCFI144:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB5926:
	.loc 4 588 0
	mr. 29,4
	.cfi_offset 29, -12
.LBE5926:
	.loc 4 583 0
	stw 0,28(1)
	stw 30,16(1)
.LBB5929:
	.loc 4 589 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE5929:
	.loc 4 583 0
	stw 31,20(1)
	.loc 4 583 0
	mr 31,3
	.cfi_offset 31, -4
.LBB5930:
	.loc 4 586 0
	lwz 9,56(3)
	addi 0,9,1
	stw 0,56(3)
	.loc 4 588 0
	ble- 0,.L1539
	.loc 4 592 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE13AllocInternalEi
.LVL1459:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1539
	.loc 4 596 0
	mr 3,31
.LVL1460:
	mr 5,29
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL1461:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1539
	.loc 4 605 0
	lwz 11,40(31)
	.loc 4 608 0
	addi 30,3,16
	.loc 4 606 0
	lwz 9,44(31)
	.loc 4 605 0
	addi 0,11,1
	stw 0,40(31)
.LBB5927:
.LBB5928:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE5928:
.LBE5927:
	.loc 4 606 0
	add 0,9,0
	stw 0,44(31)
.LVL1462:
.L1539:
.LBE5930:
	.loc 4 609 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
.LVL1463:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1464:
	addi 1,1,24
.LCFI145:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2900:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi
	.section	".text"
	.align 2
	.globl _Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
	.type	_Z25R_AllocStaticTriSurfVertsP14srfTriangles_si, @function
_Z25R_AllocStaticTriSurfVertsP14srfTriangles_si:
.LFB2578:
	.loc 2 564 0
	.cfi_startproc
.LVL1465:
	stwu 1,-16(1)
.LCFI146:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 566 0
	lis 3,.LANCHOR0@ha
.LVL1466:
	.loc 2 564 0
	stw 0,20(1)
	.loc 2 566 0
	la 3,.LANCHOR0@l(3)
	addi 3,3,48
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi
.LVL1467:
	stw 3,40(31)
	.loc 2 567 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1468:
	mtlr 0
	addi 1,1,16
.LCFI147:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2578:
	.size	_Z25R_AllocStaticTriSurfVertsP14srfTriangles_si, .-_Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
	.section	.text._ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i,"axG",@progbits,_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i
	.type	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i, @function
_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i:
.LFB2904:
	.loc 4 612 0
	.cfi_startproc
.LVL1469:
	mflr 0
	stwu 1,-16(1)
.LCFI148:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB5931:
	.loc 4 616 0
	mr. 9,4
.LBE5931:
	.loc 4 612 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB5940:
	.loc 4 614 0
	lwz 11,60(3)
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,60(3)
	.loc 4 616 0
	beq- 0,.L1549
	.loc 4 620 0
	cmpwi 7,5,0
	ble- 7,.L1550
.LVL1470:
.LBB5932:
.LBB5933:
	.loc 4 387 0
	lwz 0,-16(9)
.LBE5933:
.LBE5932:
	.loc 4 629 0
	addi 4,9,-16
.LVL1471:
	.loc 4 627 0
	lwz 11,44(3)
.LBB5935:
.LBB5934:
	.loc 4 387 0
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5934:
.LBE5935:
	.loc 4 627 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 629 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL1472:
	.loc 4 630 0
	mr. 9,3
	.loc 4 631 0
	li 3,0
.LVL1473:
	.loc 4 630 0
	beq- 0,.L1546
.LBB5936:
.LBB5937:
	.loc 4 387 0
	lwz 0,0(9)
.LBE5937:
.LBE5936:
	.loc 4 640 0
	addi 3,9,16
	.loc 4 638 0
	lwz 11,44(31)
.LBB5939:
.LBB5938:
	.loc 4 387 0
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE5938:
.LBE5939:
	.loc 4 638 0
	add 0,11,0
	stw 0,44(31)
.LVL1474:
.L1546:
.LBE5940:
	.loc 4 641 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1475:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI149:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1476:
.L1549:
.LCFI150:
	.cfi_restore_state
.LBB5941:
	.loc 4 617 0
	mr 4,5
.LVL1477:
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE5AllocEi
.LVL1478:
	b .L1546
.LVL1479:
.L1550:
	.loc 4 621 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_
.LVL1480:
	.loc 4 622 0
	li 3,0
	b .L1546
.LBE5941:
	.cfi_endproc
.LFE2904:
	.size	_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i, .-_ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i
	.section	".text"
	.align 2
	.globl _Z26R_ResizeStaticTriSurfVertsP14srfTriangles_si
	.type	_Z26R_ResizeStaticTriSurfVertsP14srfTriangles_si, @function
_Z26R_ResizeStaticTriSurfVertsP14srfTriangles_si:
.LFB2582:
	.loc 2 606 0
	.cfi_startproc
.LVL1481:
	mflr 0
	stwu 1,-16(1)
.LCFI151:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 5,4
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 608 0
	lwz 4,40(3)
.LVL1482:
	lis 3,.LANCHOR0@ha
.LVL1483:
	la 3,.LANCHOR0@l(3)
	addi 3,3,48
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i
.LVL1484:
	stw 3,40(31)
	.loc 2 612 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1485:
	mtlr 0
	addi 1,1,16
.LCFI152:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2582:
	.size	_Z26R_ResizeStaticTriSurfVertsP14srfTriangles_si, .-_Z26R_ResizeStaticTriSurfVertsP14srfTriangles_si
	.section	.text._ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	.type	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i, @function
_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i:
.LFB3137:
	.loc 5 114 0
	.cfi_startproc
.LVL1486:
	mflr 0
	stwu 1,-40(1)
.LCFI153:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB5969:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L1585
.LVL1487:
.L1553:
.LBB5970:
.LBB5971:
.LBB5972:
.LBB5973:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE5973:
.LBE5972:
.LBE5971:
.LBE5970:
.LBB5979:
.LBB5980:
	.loc 5 418 0
	li 26,0
.LBE5980:
.LBE5979:
.LBB5987:
.LBB5978:
.LBB5976:
.LBB5974:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE5974:
.LBE5976:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB5977:
.LBB5975:
	.loc 4 216 0
	mr 27,3
.LVL1488:
.LBE5975:
.LBE5977:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE5978:
.LBE5987:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL1489:
.L1584:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L1586
.L1576:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1582
	.loc 5 135 0
	stw 29,0(11)
.LVL1490:
	.loc 5 139 0
	b .L1582
.L1562:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1561
	mr 30,9
.LVL1491:
.L1582:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L1562
.L1561:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L1587
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL1492:
	cmpwi 7,0,3
	ble+ 7,.L1584
.LVL1493:
.LBB5988:
.LBB5985:
.LBB5981:
.LBB5982:
.LBB5983:
.LBB5984:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1494:
.LBE5984:
.LBE5983:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE5982:
.LBE5981:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL1495:
	.loc 5 404 0
	stw 10,8(9)
.LVL1496:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L1572
	li 11,3
.LVL1497:
.L1573:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1498:
	.loc 5 405 0
	addi 11,11,2
.LVL1499:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L1573
.LVL1500:
.L1572:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL1501:
	cmpwi 7,9,0
	beq- 7,.L1574
	.loc 5 425 0
	stw 10,12(9)
.L1575:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE5985:
.LBE5988:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1584
	mr 11,30
.LVL1502:
	.loc 5 132 0
	lwz 30,24(11)
.LVL1503:
	cmpwi 7,30,0
	bne+ 7,.L1576
.LVL1504:
.L1586:
	.loc 5 189 0
	lwz 0,0(31)
.LBE5969:
	.loc 5 200 0
	mr 3,25
.LBB6018:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL1505:
	addi 0,11,1
	stw 0,20(9)
.LBE6018:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1506:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1507:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1508:
	addi 1,1,40
	.cfi_remember_state
.LCFI154:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1509:
.L1574:
.LCFI155:
	.cfi_restore_state
.LBB6019:
.LBB5989:
.LBB5986:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L1575
.LVL1510:
.L1587:
.LBE5986:
.LBE5989:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1588
	.loc 5 159 0
	beq- 7,.L1568
	.loc 5 160 0
	stw 25,16(9)
.L1569:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L1567:
	.loc 5 169 0
	stw 11,12(27)
.LBE6019:
	.loc 5 200 0
	mr 3,25
.LBB6020:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE6020:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL1511:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1512:
	lwz 30,32(1)
.LVL1513:
	lwz 31,36(1)
.LVL1514:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI156:
	.cfi_def_cfa_offset 0
	blr
.LVL1515:
.L1588:
.LCFI157:
	.cfi_restore_state
.LBB6021:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1565
	.loc 5 150 0
	stw 25,12(9)
.L1566:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L1567
.LVL1516:
.L1585:
.LBB5990:
.LBB5991:
.LBB5992:
.LBB5993:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE5993:
.LBE5992:
	.loc 5 377 0
	li 27,0
.LBB5996:
.LBB5994:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1517:
.LBE5994:
.LBE5996:
	.loc 5 377 0
	stw 27,4(3)
.LBB5997:
.LBB5995:
	.loc 4 216 0
	mr 9,3
.LVL1518:
.LBE5995:
.LBE5997:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE5991:
.LBE5990:
.LBB5998:
.LBB5999:
.LBB6000:
.LBB6001:
.LBB6002:
.LBB6003:
	.loc 4 216 0
	li 3,36
.LVL1519:
.LBE6003:
.LBE6002:
.LBE6001:
.LBE6000:
.LBE5999:
.LBE5998:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL1520:
	stw 26,8(9)
.LBB6015:
.LBB6012:
.LBB6010:
.LBB6008:
.LBB6006:
.LBB6004:
	.loc 4 215 0
	lwz 9,16(31)
.LBE6004:
.LBE6006:
.LBE6008:
.LBE6010:
.LBE6012:
.LBE6015:
	.loc 5 124 0
	lwz 28,0(31)
.LVL1521:
.LBB6016:
.LBB6013:
.LBB6011:
.LBB6009:
.LBB6007:
.LBB6005:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1522:
.LBE6005:
.LBE6007:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE6009:
.LBE6011:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL1523:
	.loc 5 404 0
	stw 10,8(9)
.LVL1524:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L1554
	li 11,3
.LVL1525:
.L1555:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1526:
	.loc 5 405 0
	addi 11,11,2
.LVL1527:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L1555
.LVL1528:
.L1554:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL1529:
	cmpwi 7,9,0
	beq- 7,.L1556
	.loc 5 425 0
	stw 10,12(9)
.L1557:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LVL1530:
.LBE6013:
.LBE6016:
	.loc 5 125 0
	stw 26,0(31)
	b .L1553
.L1556:
.LBB6017:
.LBB6014:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L1557
.LVL1531:
.L1565:
.LBE6014:
.LBE6017:
	.loc 5 152 0
	stw 25,24(11)
	b .L1566
.L1568:
	.loc 5 162 0
	stw 25,28(11)
	b .L1569
.LBE6021:
	.cfi_endproc
.LFE3137:
	.size	_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i, .-_ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE:
.LFB3009:
	.loc 4 833 0
	.cfi_startproc
.LVL1532:
	mflr 0
	stwu 1,-24(1)
.LCFI158:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB6055:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1533:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1590
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1590
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL1534:
	cmpwi 7,4,0
	beq- 7,.L1590
.LVL1535:
.LBB6056:
.LBB6057:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL1536:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1537:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6058:
.LBB6059:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6059:
.LBE6058:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE6057:
.LBE6056:
.LBB6060:
.LBB6061:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE6061:
.LBE6060:
.LBB6063:
.LBB6064:
	srawi 10,0,31
.LBE6064:
.LBE6063:
.LBB6066:
.LBB6067:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6067:
.LBE6066:
.LBB6070:
.LBB6065:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6065:
.LBE6070:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB6071:
.LBB6062:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6062:
.LBE6071:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL1538:
.LBB6072:
.LBB6068:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1603
.LVL1539:
.L1591:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE6068:
.LBE6072:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1592
	.loc 4 848 0
	stw 30,4(9)
.LVL1540:
.L1590:
	.loc 4 855 0
	lwz 29,4(30)
.LVL1541:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1594
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1594
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1594
.LVL1542:
.LBB6073:
.LBB6074:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1543:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6075:
.LBB6076:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6076:
.LBE6075:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE6074:
.LBE6073:
.LBB6077:
.LBB6078:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE6078:
.LBE6077:
.LBB6080:
.LBB6081:
	srawi 10,0,31
.LBE6081:
.LBE6080:
.LBB6083:
.LBB6084:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6084:
.LBE6083:
.LBB6087:
.LBB6082:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6082:
.LBE6087:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB6088:
.LBB6079:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6079:
.LBE6088:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL1544:
.LBB6089:
.LBB6085:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1604
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE6085:
.LBE6089:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL1545:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1596
.LVL1546:
.L1605:
	.loc 4 861 0
	stw 29,4(9)
.L1597:
.LVL1547:
.LBB6090:
.LBB6091:
.LBB6092:
.LBB6093:
	.loc 4 387 0
	lwz 5,0(29)
.LBE6093:
.LBE6092:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6094:
.LBB6095:
	.loc 4 387 0
	lwz 0,0(29)
.LBE6095:
.LBE6094:
.LBE6091:
.LBE6090:
.LBB6096:
.LBB6097:
.LBB6098:
.LBB6099:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6099:
.LBE6098:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6097:
.LBE6096:
.LBE6055:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1548:
	lwz 30,16(1)
.LVL1549:
	lwz 31,20(1)
.LVL1550:
	addi 1,1,24
	.cfi_remember_state
.LCFI159:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1551:
.L1594:
.LCFI160:
	.cfi_restore_state
.LBB6106:
.LBB6103:
.LBB6102:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6101:
.LBB6100:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6100:
.LBE6101:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6102:
.LBE6103:
.LBE6106:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1552:
	lwz 30,16(1)
.LVL1553:
	lwz 31,20(1)
.LVL1554:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI161:
	.cfi_def_cfa_offset 0
	blr
.LVL1555:
.L1604:
.LCFI162:
	.cfi_restore_state
.LBB6107:
.LBB6104:
.LBB6086:
	.loc 4 388 0
	neg 0,0
.LVL1556:
	stw 0,0(29)
.LBE6086:
.LBE6104:
	.loc 4 859 0
	lwz 0,8(30)
.LVL1557:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1605
	b .L1596
.LVL1558:
.L1603:
.LBB6105:
.LBB6069:
	.loc 4 388 0
	neg 0,0
.LVL1559:
	b .L1591
.LVL1560:
.L1596:
.LBE6069:
.LBE6105:
	.loc 4 863 0
	stw 29,4(31)
	b .L1597
.LVL1561:
.L1592:
	.loc 4 850 0
	stw 30,4(31)
	b .L1590
.LBE6107:
	.cfi_endproc
.LFE3009:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv:
.LFB2839:
	.loc 4 474 0
	.cfi_startproc
.LVL1562:
	mflr 0
	stwu 1,-24(1)
.LCFI163:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6108:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1563:
	cmpwi 7,30,0
	beq- 7,.L1607
.LVL1564:
.L1613:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1616
.L1608:
	.loc 4 477 0
	lwz 30,8(30)
.LVL1565:
	cmpwi 7,30,0
	bne+ 7,.L1613
	.loc 4 483 0
	lwz 30,0(31)
.LVL1566:
	cmpwi 7,30,0
	beq- 7,.L1607
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1612
.LVL1567:
.L1610:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1568:
	cmpwi 7,30,0
	beq- 7,.L1607
.LVL1569:
.L1612:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1610
.LBB6109:
.LBB6110:
	.loc 4 387 0
	lwz 5,0(30)
.LBE6110:
.LBE6109:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB6113:
.LBB6111:
	.loc 4 387 0
	srawi 0,5,31
.LBE6111:
.LBE6113:
	.loc 4 487 0
	lwz 9,0(3)
.LBB6114:
.LBB6112:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE6112:
.LBE6114:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1570:
	cmpwi 7,30,0
	bne+ 7,.L1612
.LVL1571:
.L1607:
.LBB6115:
.LBB6116:
.LBB6117:
.LBB6118:
	.loc 4 245 0
	li 0,0
.LBE6118:
.LBE6117:
.LBE6116:
.LBE6115:
.LBB6122:
.LBB6123:
	.loc 4 707 0
	li 9,1
.LBE6123:
.LBE6122:
.LBB6125:
.LBB6121:
.LBB6120:
.LBB6119:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE6119:
.LBE6120:
	.loc 5 110 0
	stw 0,8(31)
.LVL1572:
.LBE6121:
.LBE6125:
.LBB6126:
.LBB6124:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE6124:
.LBE6126:
.LBE6108:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1573:
	lwz 31,20(1)
.LVL1574:
	addi 1,1,24
	.cfi_remember_state
.LCFI164:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1575:
.L1616:
.LCFI165:
	.cfi_restore_state
.LBB6127:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	b .L1608
.LBE6127:
	.cfi_endproc
.LFE2839:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi:
.LFB2886:
	.loc 4 644 0
	.cfi_startproc
.LVL1576:
	mflr 0
.LBB6128:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE6128:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI166:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB6131:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1617
.LVL1577:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB6129:
.LBB6130:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL1578:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6130:
.LBE6129:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1579:
.L1617:
.LBE6131:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI167:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2886:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
	.section	".text"
	.align 2
	.globl _Z29R_FreeStaticTriSurfSilIndexesP14srfTriangles_s
	.type	_Z29R_FreeStaticTriSurfSilIndexesP14srfTriangles_s, @function
_Z29R_FreeStaticTriSurfSilIndexesP14srfTriangles_s:
.LFB2587:
	.loc 2 663 0
	.cfi_startproc
.LVL1580:
	mflr 0
	stwu 1,-16(1)
.LCFI168:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 664 0
	lwz 4,52(3)
	lis 3,.LANCHOR0@ha
.LVL1581:
	la 3,.LANCHOR0@l(3)
	addi 3,3,320
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
	.loc 2 665 0
	li 0,0
	stw 0,52(31)
	.loc 2 666 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1582:
	mtlr 0
	addi 1,1,16
.LCFI169:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2587:
	.size	_Z29R_FreeStaticTriSurfSilIndexesP14srfTriangles_s, .-_Z29R_FreeStaticTriSurfSilIndexesP14srfTriangles_s
	.section	.text._ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.type	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, @function
_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi:
.LFB3044:
	.loc 4 767 0
	.cfi_startproc
.LVL1583:
	mflr 0
	stwu 1,-24(1)
.LCFI170:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
.LBB6163:
	.loc 4 768 0
	slwi 30,5,2
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE6163:
	.loc 4 767 0
	stw 31,20(1)
.LBB6203:
	.loc 4 768 0
	addi 30,30,15
.LBE6203:
	.loc 4 767 0
	stw 28,8(1)
.LBB6204:
	.loc 4 768 0
	rlwinm 30,30,0,0,27
.LVL1584:
.LBE6204:
	.loc 4 767 0
	mr 31,4
	.cfi_offset 28, -16
	.cfi_offset 31, -4
.LBB6205:
.LBB6164:
.LBB6165:
.LBB6166:
	.loc 4 387 0
	lwz 9,0(4)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LBE6166:
.LBE6165:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1621
.LBB6167:
	.loc 4 777 0
	lwz 28,8(4)
.LVL1585:
.LBB6168:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1622
	.loc 2 2282 0 discriminator 1
	lwz 0,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,0,0
	blt- 7,.L1622
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL1586:
	cmpwi 7,4,0
	beq- 7,.L1622
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 0,0,9
	cmpw 7,30,0
	bgt- 7,.L1622
.LVL1587:
.LBB6169:
.LBB6170:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL1588:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1589:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB6171:
.LBB6172:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6172:
.LBE6171:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE6170:
.LBE6169:
.LBB6173:
.LBB6174:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE6174:
.LBE6173:
.LBB6177:
.LBB6178:
	srawi 11,9,31
.LBE6178:
.LBE6177:
.LBB6180:
.LBB6181:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE6181:
.LBE6180:
.LBB6183:
.LBB6179:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE6179:
.LBE6183:
.LBB6184:
.LBB6175:
	srawi 11,0,31
	xor 0,11,0
.LBE6175:
.LBE6184:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB6185:
.LBB6176:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE6176:
.LBE6185:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL1590:
.LBB6186:
.LBB6182:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1623
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL1591:
.L1623:
	stw 0,0(31)
.LBE6182:
.LBE6186:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1624
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL1592:
.L1621:
.LBE6168:
.LBE6167:
.LBE6164:
	.loc 4 804 0
	subf 9,30,9
.LVL1593:
	cmpwi 7,9,1039
	ble- 7,.L1625
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB6195:
.LBB6196:
	.loc 4 388 0
	stwx 9,31,4
.LBE6196:
.LBE6195:
	.loc 4 810 0
	add 4,31,4
.LVL1594:
	.loc 4 816 0
	lwz 9,8(31)
.LVL1595:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1626
	.loc 4 819 0
	stw 4,4(9)
.L1627:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL1596:
.LBB6197:
.LBB6198:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1632
.LVL1597:
.L1628:
	stw 30,0(31)
.LBE6198:
.LBE6197:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1598:
.L1625:
.LBE6205:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1599:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI171:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1600:
.L1622:
.LCFI172:
	.cfi_restore_state
.LBB6206:
.LBB6200:
.LBB6193:
.LBB6191:
.LBB6187:
	.loc 4 794 0
	mr 3,29
.LVL1601:
	mr 4,5
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi
.LVL1602:
	.loc 4 795 0
	mr. 28,3
.LVL1603:
	beq- 0,.L1633
.LVL1604:
.LBB6188:
.LBB6189:
	.loc 4 387 0
	lwz 5,0(31)
.LBE6189:
.LBE6188:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL1605:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL1606:
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1607:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1621
.LVL1608:
.L1632:
.LBE6187:
.LBE6191:
.LBE6193:
.LBE6200:
.LBB6201:
.LBB6199:
	.loc 4 388 0
	neg 30,30
.LVL1609:
	b .L1628
.LVL1610:
.L1626:
.LBE6199:
.LBE6201:
	.loc 4 821 0
	stw 4,4(29)
	b .L1627
.LVL1611:
.L1624:
.LBB6202:
.LBB6194:
.LBB6192:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1621
.LVL1612:
.L1633:
.LBB6190:
	.loc 4 796 0
	li 31,0
.LVL1613:
	b .L1625
.LBE6190:
.LBE6192:
.LBE6194:
.LBE6202:
.LBE6206:
	.cfi_endproc
.LFE3044:
	.size	_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, .-_ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.section	".text"
	.align 2
	.globl _Z18R_CreateSilIndexesP14srfTriangles_s
	.type	_Z18R_CreateSilIndexesP14srfTriangles_s, @function
_Z18R_CreateSilIndexesP14srfTriangles_s:
.LFB2591:
	.loc 2 774 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2591
.LVL1614:
	mflr 0
	stwu 1,-104(1)
.LCFI173:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stw 31,100(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,108(1)
	stw 21,60(1)
	stw 22,64(1)
	stw 23,68(1)
	stw 24,72(1)
	stw 25,76(1)
	stw 26,80(1)
	stw 27,84(1)
	stw 28,88(1)
	stw 29,92(1)
	stw 30,96(1)
.LBB6252:
	.loc 2 778 0
	lwz 4,52(3)
	cmpwi 7,4,0
	beq- 7,.L1635
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
	.cfi_offset 65, 4
	.loc 2 779 0
	lis 3,.LANCHOR0@ha
.LVL1615:
	la 3,.LANCHOR0@l(3)
	addi 3,3,320
.LEHB0:
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
	.loc 2 780 0
	li 0,0
	stw 0,52(31)
.L1635:
.LBB6253:
.LBB6254:
	.loc 2 728 0
	lwz 3,36(31)
.LBE6254:
.LBE6253:
	.loc 2 2282 0
	addi 25,31,36
	addi 22,31,40
.LBB6303:
.LBB6297:
	.loc 2 728 0
	slwi 3,3,2
	bl _Z20R_ClearedStaticAlloci
.LBE6297:
	.loc 2 730 0
	lis 9,r_useSilRemap+44@ha
.LBB6298:
.LBB6255:
.LBB6256:
	.file 10 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/CVarSystem.h"
	.loc 10 142 0
	lwz 9,r_useSilRemap+44@l(9)
.LBE6256:
.LBE6255:
	.loc 2 728 0
	mr 27,3
.LVL1616:
	.loc 2 730 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1636
.LVL1617:
	.loc 2 731 0
	lwz 0,36(31)
	cmpwi 7,0,0
	ble- 7,.L1637
	.loc 2 774 0
	addi 11,3,-4
.LBE6298:
.LBE6303:
.LBE6252:
	li 9,0
.LVL1618:
.L1638:
.LBB6311:
.LBB6304:
.LBB6299:
	.loc 2 732 0
	stwu 9,4(11)
	.loc 2 731 0
	addi 9,9,1
.LVL1619:
	lwz 0,0(25)
	cmpw 7,9,0
	blt+ 7,.L1638
.LVL1620:
.L1637:
.LBE6299:
.LBE6304:
	.loc 2 786 0
	lwz 28,44(31)
.LVL1621:
.LBB6305:
.LBB6306:
	.loc 4 586 0
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
	.loc 4 589 0
	li 30,0
	.loc 4 588 0
	cmpwi 7,28,0
	.loc 4 586 0
	lwz 9,376(29)
	addi 0,9,1
	stw 0,376(29)
	.loc 4 588 0
	ble- 7,.L1647
	.loc 2 786 0
	addi 26,29,320
	.loc 4 592 0
	mr 4,28
	mr 3,26
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE13AllocInternalEi
.LVL1622:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1647
	.loc 4 596 0
	mr 3,26
.LVL1623:
	mr 5,28
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
.LVL1624:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1647
	.loc 4 605 0
	lwz 11,360(29)
.LBE6306:
	.loc 4 608 0
	addi 30,3,16
.LBB6309:
	.loc 4 606 0
	lwz 9,364(29)
	.loc 4 605 0
	addi 0,11,1
	stw 0,360(29)
.LBB6307:
.LBB6308:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6308:
.LBE6307:
	.loc 4 606 0
	add 0,9,0
	stw 0,364(29)
.LVL1625:
.L1647:
.LBE6309:
.LBE6305:
	.loc 2 787 0
	lwz 0,44(31)
	.loc 2 786 0
	stw 30,52(31)
.LVL1626:
	.loc 2 787 0
	cmpwi 7,0,0
	ble- 7,.L1651
	li 9,0
	b .L1652
.LVL1627:
.L1665:
	lwz 30,52(31)
.LVL1628:
.L1652:
	.loc 2 788 0 discriminator 2
	lwz 11,48(31)
	.loc 2 774 0 discriminator 2
	slwi 0,9,2
	.loc 2 787 0 discriminator 2
	addi 9,9,1
.LVL1629:
	.loc 2 788 0 discriminator 2
	lwzx 11,11,0
	slwi 11,11,2
	lwzx 11,27,11
	stwx 11,30,0
	.loc 2 787 0 discriminator 2
	lwz 0,44(31)
	cmpw 7,0,9
	bgt+ 7,.L1665
.LVL1630:
.L1651:
	.loc 2 791 0
	mr 3,27
	bl _Z12R_StaticFreePv
.LBE6311:
	.loc 2 792 0
	lwz 0,108(1)
	lwz 21,60(1)
	mtlr 0
	lwz 22,64(1)
	lwz 23,68(1)
	lwz 24,72(1)
	lwz 25,76(1)
	lwz 26,80(1)
	lwz 27,84(1)
.LVL1631:
	lwz 28,88(1)
.LVL1632:
	lwz 29,92(1)
	lwz 30,96(1)
	lwz 31,100(1)
.LVL1633:
	addi 1,1,104
	.cfi_remember_state
.LCFI174:
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
	blr
.LVL1634:
.L1636:
.LCFI175:
	.cfi_restore_state
.LBB6312:
.LBB6310:
.LBB6300:
.LBB6257:
.LBB6258:
	.loc 3 121 0
	lwz 5,36(31)
	addi 3,1,8
.LVL1635:
	li 4,1024
	bl _ZN11idHashIndex4InitEii
.LVL1636:
.LBE6258:
.LBE6257:
	.loc 2 741 0
	lwz 0,36(31)
	cmpwi 7,0,0
	ble- 7,.L1639
.LBB6259:
.LBB6260:
	.loc 3 197 0
	lis 21,_ZN11idHashIndex13INVALID_INDEXE@ha
.LBE6260:
.LBE6259:
	.loc 2 741 0
	li 28,0
	li 30,1
	li 29,0
.LBB6266:
.LBB6261:
	.loc 3 197 0
	la 21,_ZN11idHashIndex13INVALID_INDEXE@l(21)
	b .L1646
.LVL1637:
.L1666:
.LBE6261:
.LBE6266:
	.loc 2 748 0
	lfs 0,4(9)
	fcmpu 7,12,0
	bne- 7,.L1641
.LVL1638:
	lfs 0,8(9)
	fcmpu 7,11,0
	bne- 7,.L1641
	.loc 2 752 0
	stwx 0,27,28
	mr 26,30
.LVL1639:
.LBB6267:
.LBB6262:
	.loc 3 205 0
	addi 29,29,60
.LVL1640:
	addi 30,30,1
.LVL1641:
.LBE6262:
.LBE6267:
	.loc 2 741 0
	lwz 0,0(25)
.LVL1642:
.LBB6268:
.LBB6263:
	.loc 3 205 0
	addi 28,28,4
.LVL1643:
.LBE6263:
.LBE6268:
	.loc 2 741 0
	cmpw 7,0,26
	ble- 7,.L1639
.LVL1644:
.L1646:
	.loc 2 742 0
	lwz 11,0(22)
	.loc 2 774 0
	addi 23,30,-1
.LBB6269:
.LBB6270:
.LBB6271:
.LBB6272:
	.loc 7 402 0
	lfsx 13,11,29
.LBE6272:
.LBE6271:
.LBE6270:
.LBE6269:
	.loc 2 742 0
	add 9,11,29
.LVL1645:
.LBB6280:
.LBB6277:
.LBB6273:
.LBB6274:
	.loc 7 402 0
	lfs 12,4(9)
.LBE6274:
.LBE6273:
.LBB6275:
.LBB6276:
	lfs 11,8(9)
.LBE6276:
.LBE6275:
	.loc 3 393 0
	fctiwz 9,13
	fctiwz 10,12
	addi 9,1,40
	fctiwz 0,11
	stfiwx 9,0,9
	addi 9,1,44
	stfiwx 10,0,9
	addi 9,1,48
	stfiwx 0,0,9
	lwz 10,44(1)
	lwz 24,40(1)
	lwz 9,48(1)
.LBE6277:
.LBE6280:
.LBE6300:
	.loc 2 745 0
	lwz 0,28(1)
.LVL1646:
.LBB6301:
.LBB6281:
.LBB6278:
	.loc 3 393 0
	add 24,24,10
.LBE6278:
.LBE6281:
.LBB6282:
.LBB6283:
	.loc 3 239 0
	lwz 10,32(1)
.LBE6283:
.LBE6282:
.LBB6285:
.LBB6279:
	.loc 3 393 0
	add 24,24,9
	and 24,24,0
.LVL1647:
.LBE6279:
.LBE6285:
.LBB6286:
.LBB6284:
	.loc 3 239 0
	lwz 9,12(1)
	and 0,10,0
	and 0,0,24
	slwi 0,0,2
	lwzx 0,9,0
.LVL1648:
.LBE6284:
.LBE6286:
	.loc 2 746 0
	cmpwi 7,0,0
	blt- 7,.L1640
.LBE6301:
	lwz 8,20(1)
.L1653:
.LBB6302:
	.loc 2 747 0
	mulli 9,0,60
	.loc 2 748 0
	lfsx 0,11,9
	.loc 2 747 0
	add 9,11,9
.LVL1649:
	.loc 2 748 0
	fcmpu 7,13,0
	beq- 7,.L1666
.L1641:
.LVL1650:
.LBB6287:
.LBB6288:
	.loc 3 249 0
	and 0,0,10
.LVL1651:
	slwi 0,0,2
	lwzx 0,8,0
.LVL1652:
.LBE6288:
.LBE6287:
	.loc 2 746 0
	cmpwi 7,0,0
	bge+ 7,.L1653
.LVL1653:
.L1640:
	.loc 2 758 0
	stwx 23,27,28
.LVL1654:
.LBB6289:
.LBB6264:
	.loc 3 197 0
	lwz 9,12(1)
	cmpw 7,9,21
	beq- 7,.L1667
	.loc 3 200 0
	lwz 0,16(1)
.LVL1655:
	mr 26,30
	cmpw 7,0,23
	ble- 7,.L1668
.LVL1656:
.L1644:
	.loc 3 203 0
	lwz 0,28(1)
	.loc 3 205 0
	addi 29,29,60
	addi 30,30,1
	.loc 3 203 0
	and 0,24,0
	.loc 3 204 0
	slwi 0,0,2
	lwzx 11,9,0
	lwz 9,20(1)
	stwx 11,9,28
	.loc 3 205 0
	addi 28,28,4
	lwz 9,12(1)
	stwx 23,9,0
.LBE6264:
.LBE6289:
	.loc 2 741 0
	lwz 0,0(25)
	cmpw 7,0,26
	bgt+ 7,.L1646
.LVL1657:
.L1639:
.LBB6290:
.LBB6291:
.LBB6292:
	.loc 3 130 0
	addi 3,1,8
	bl _ZN11idHashIndex4FreeEv
.LEHE0:
	b .L1637
.LVL1658:
.L1668:
.LBE6292:
.LBE6291:
.LBE6290:
.LBB6293:
.LBB6265:
	.loc 3 201 0
	addi 3,1,8
	mr 4,30
	mr 26,30
.LEHB1:
	bl _ZN11idHashIndex11ResizeIndexEi
.LVL1659:
	lwz 9,12(1)
	b .L1644
.LVL1660:
.L1667:
	.loc 3 198 0
	lwz 5,16(1)
	lwz 4,8(1)
	cmpw 7,5,23
	bgt- 7,.L1643
	mr 5,30
.L1643:
	addi 3,1,8
	bl _ZN11idHashIndex8AllocateEii
.LEHE1:
.LVL1661:
	mr 26,30
	lwz 9,12(1)
	b .L1644
.L1659:
	mr 31,3
.LVL1662:
.LBE6265:
.LBE6293:
.LBB6294:
.LBB6295:
.LBB6296:
	.loc 3 130 0
	addi 3,1,8
	bl _ZN11idHashIndex4FreeEv
	mr 3,31
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
.LBE6296:
.LBE6295:
.LBE6294:
.LBE6302:
.LBE6310:
.LBE6312:
	.cfi_endproc
.LFE2591:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2591:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2591-.LLSDACSB2591
.LLSDACSB2591:
	.uleb128 .LEHB0-.LFB2591
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2591
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L1659-.LFB2591
	.uleb128 0
	.uleb128 .LEHB2-.LFB2591
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2591:
	.section	".text"
	.size	_Z18R_CreateSilIndexesP14srfTriangles_s, .-_Z18R_CreateSilIndexesP14srfTriangles_s
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE:
.LFB3000:
	.loc 4 833 0
	.cfi_startproc
.LVL1663:
	mflr 0
	stwu 1,-24(1)
.LCFI176:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB6346:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1664:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1670
.LVL1665:
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1670
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL1666:
	cmpwi 7,4,0
	beq- 7,.L1670
.LVL1667:
.LBB6347:
.LBB6348:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL1668:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1669:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6349:
.LBB6350:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6350:
.LBE6349:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE6348:
.LBE6347:
.LBB6351:
.LBB6352:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE6352:
.LBE6351:
.LBB6354:
.LBB6355:
	srawi 10,0,31
.LBE6355:
.LBE6354:
.LBB6357:
.LBB6358:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6358:
.LBE6357:
.LBB6361:
.LBB6356:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6356:
.LBE6361:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB6362:
.LBB6353:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6353:
.LBE6362:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL1670:
.LBB6363:
.LBB6359:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1683
.LVL1671:
.L1671:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE6359:
.LBE6363:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1672
	.loc 4 848 0
	stw 30,4(9)
.LVL1672:
.L1670:
	.loc 4 855 0
	lwz 29,4(30)
.LVL1673:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1674
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1674
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1674
.LVL1674:
.LBB6364:
.LBB6365:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1675:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6366:
.LBB6367:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6367:
.LBE6366:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE6365:
.LBE6364:
.LBB6368:
.LBB6369:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE6369:
.LBE6368:
.LBB6371:
.LBB6372:
	srawi 10,0,31
.LBE6372:
.LBE6371:
.LBB6374:
.LBB6375:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6375:
.LBE6374:
.LBB6378:
.LBB6373:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6373:
.LBE6378:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB6379:
.LBB6370:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6370:
.LBE6379:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL1676:
.LBB6380:
.LBB6376:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1684
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE6376:
.LBE6380:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL1677:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1676
.LVL1678:
.L1685:
	.loc 4 861 0
	stw 29,4(9)
.L1677:
.LVL1679:
.LBB6381:
.LBB6382:
.LBB6383:
.LBB6384:
	.loc 4 387 0
	lwz 5,0(29)
.LBE6384:
.LBE6383:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6385:
.LBB6386:
	.loc 4 387 0
	lwz 0,0(29)
.LBE6386:
.LBE6385:
.LBE6382:
.LBE6381:
.LBB6387:
.LBB6388:
.LBB6389:
.LBB6390:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6390:
.LBE6389:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6388:
.LBE6387:
.LBE6346:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1680:
	lwz 30,16(1)
.LVL1681:
	lwz 31,20(1)
.LVL1682:
	addi 1,1,24
	.cfi_remember_state
.LCFI177:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1683:
.L1674:
.LCFI178:
	.cfi_restore_state
.LBB6397:
.LBB6394:
.LBB6393:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6392:
.LBB6391:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6391:
.LBE6392:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6393:
.LBE6394:
.LBE6397:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1684:
	lwz 30,16(1)
.LVL1685:
	lwz 31,20(1)
.LVL1686:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI179:
	.cfi_def_cfa_offset 0
	blr
.LVL1687:
.L1684:
.LCFI180:
	.cfi_restore_state
.LBB6398:
.LBB6395:
.LBB6377:
	.loc 4 388 0
	neg 0,0
.LVL1688:
	stw 0,0(29)
.LBE6377:
.LBE6395:
	.loc 4 859 0
	lwz 0,8(30)
.LVL1689:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1685
	b .L1676
.LVL1690:
.L1683:
.LBB6396:
.LBB6360:
	.loc 4 388 0
	neg 0,0
.LVL1691:
	b .L1671
.LVL1692:
.L1676:
.LBE6360:
.LBE6396:
	.loc 4 863 0
	stw 29,4(31)
	b .L1677
.LVL1693:
.L1672:
	.loc 4 850 0
	stw 30,4(31)
	b .L1670
.LBE6398:
	.cfi_endproc
.LFE3000:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv:
.LFB2836:
	.loc 4 474 0
	.cfi_startproc
.LVL1694:
	mflr 0
	stwu 1,-24(1)
.LCFI181:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6399:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1695:
	cmpwi 7,30,0
	beq- 7,.L1687
.LVL1696:
.L1693:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1696
.L1688:
	.loc 4 477 0
	lwz 30,8(30)
.LVL1697:
	cmpwi 7,30,0
	bne+ 7,.L1693
	.loc 4 483 0
	lwz 30,0(31)
.LVL1698:
	cmpwi 7,30,0
	beq- 7,.L1687
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1692
.LVL1699:
.L1690:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1700:
	cmpwi 7,30,0
	beq- 7,.L1687
.LVL1701:
.L1692:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1690
.LBB6400:
.LBB6401:
	.loc 4 387 0
	lwz 5,0(30)
.LBE6401:
.LBE6400:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB6404:
.LBB6402:
	.loc 4 387 0
	srawi 0,5,31
.LBE6402:
.LBE6404:
	.loc 4 487 0
	lwz 9,0(3)
.LBB6405:
.LBB6403:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE6403:
.LBE6405:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1702:
	cmpwi 7,30,0
	bne+ 7,.L1692
.LVL1703:
.L1687:
.LBB6406:
.LBB6407:
.LBB6408:
.LBB6409:
	.loc 4 245 0
	li 0,0
.LBE6409:
.LBE6408:
.LBE6407:
.LBE6406:
.LBB6413:
.LBB6414:
	.loc 4 707 0
	li 9,1
.LBE6414:
.LBE6413:
.LBB6416:
.LBB6412:
.LBB6411:
.LBB6410:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE6410:
.LBE6411:
	.loc 5 110 0
	stw 0,8(31)
.LVL1704:
.LBE6412:
.LBE6416:
.LBB6417:
.LBB6415:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE6415:
.LBE6417:
.LBE6399:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1705:
	lwz 31,20(1)
.LVL1706:
	addi 1,1,24
	.cfi_remember_state
.LCFI182:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1707:
.L1696:
.LCFI183:
	.cfi_restore_state
.LBB6418:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	b .L1688
.LBE6418:
	.cfi_endproc
.LFE2836:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi:
.LFB2885:
	.loc 4 644 0
	.cfi_startproc
.LVL1708:
	mflr 0
.LBB6419:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE6419:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI184:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB6422:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1697
.LVL1709:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB6420:
.LBB6421:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL1710:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6421:
.LBE6420:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1711:
.L1697:
.LBE6422:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI185:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2885:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi:
.LFB3035:
	.loc 4 767 0
	.cfi_startproc
.LVL1712:
	mflr 0
	stwu 1,-24(1)
.LCFI186:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
.LBB6454:
	.loc 4 768 0
	slwi 30,5,2
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE6454:
	.loc 4 767 0
	stw 31,20(1)
.LBB6494:
	.loc 4 768 0
	addi 30,30,15
.LBE6494:
	.loc 4 767 0
	stw 28,8(1)
.LBB6495:
	.loc 4 768 0
	rlwinm 30,30,0,0,27
.LVL1713:
.LBE6495:
	.loc 4 767 0
	mr 31,4
	.cfi_offset 28, -16
	.cfi_offset 31, -4
.LBB6496:
.LBB6455:
.LBB6456:
.LBB6457:
	.loc 4 387 0
	lwz 9,0(4)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LBE6457:
.LBE6456:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1700
.LBB6458:
	.loc 4 777 0
	lwz 28,8(4)
.LVL1714:
.LBB6459:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1701
	.loc 2 2282 0 discriminator 1
	lwz 0,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,0,0
	blt- 7,.L1701
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL1715:
	cmpwi 7,4,0
	beq- 7,.L1701
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 0,0,9
	cmpw 7,30,0
	bgt- 7,.L1701
.LVL1716:
.LBB6460:
.LBB6461:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL1717:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1718:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB6462:
.LBB6463:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6463:
.LBE6462:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE6461:
.LBE6460:
.LBB6464:
.LBB6465:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE6465:
.LBE6464:
.LBB6468:
.LBB6469:
	srawi 11,9,31
.LBE6469:
.LBE6468:
.LBB6471:
.LBB6472:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE6472:
.LBE6471:
.LBB6474:
.LBB6470:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE6470:
.LBE6474:
.LBB6475:
.LBB6466:
	srawi 11,0,31
	xor 0,11,0
.LBE6466:
.LBE6475:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB6476:
.LBB6467:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE6467:
.LBE6476:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL1719:
.LBB6477:
.LBB6473:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1702
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL1720:
.L1702:
	stw 0,0(31)
.LBE6473:
.LBE6477:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1703
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL1721:
.L1700:
.LBE6459:
.LBE6458:
.LBE6455:
	.loc 4 804 0
	subf 9,30,9
.LVL1722:
	cmpwi 7,9,1039
	ble- 7,.L1704
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB6486:
.LBB6487:
	.loc 4 388 0
	stwx 9,31,4
.LBE6487:
.LBE6486:
	.loc 4 810 0
	add 4,31,4
.LVL1723:
	.loc 4 816 0
	lwz 9,8(31)
.LVL1724:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1705
	.loc 4 819 0
	stw 4,4(9)
.L1706:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL1725:
.LBB6488:
.LBB6489:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1711
.LVL1726:
.L1707:
	stw 30,0(31)
.LBE6489:
.LBE6488:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1727:
.L1704:
.LBE6496:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1728:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI187:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1729:
.L1701:
.LCFI188:
	.cfi_restore_state
.LBB6497:
.LBB6491:
.LBB6484:
.LBB6482:
.LBB6478:
	.loc 4 794 0
	mr 3,29
.LVL1730:
	mr 4,5
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi
.LVL1731:
	.loc 4 795 0
	mr. 28,3
.LVL1732:
	beq- 0,.L1712
.LVL1733:
.LBB6479:
.LBB6480:
	.loc 4 387 0
	lwz 5,0(31)
.LBE6480:
.LBE6479:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL1734:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL1735:
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1736:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1700
.LVL1737:
.L1711:
.LBE6478:
.LBE6482:
.LBE6484:
.LBE6491:
.LBB6492:
.LBB6490:
	.loc 4 388 0
	neg 30,30
.LVL1738:
	b .L1707
.LVL1739:
.L1705:
.LBE6490:
.LBE6492:
	.loc 4 821 0
	stw 4,4(29)
	b .L1706
.LVL1740:
.L1703:
.LBB6493:
.LBB6485:
.LBB6483:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1700
.LVL1741:
.L1712:
.LBB6481:
	.loc 4 796 0
	li 31,0
.LVL1742:
	b .L1704
.LBE6481:
.LBE6483:
.LBE6485:
.LBE6493:
.LBE6497:
	.cfi_endproc
.LFE3035:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.section	.text._ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi
	.type	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi, @function
_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi:
.LFB2901:
	.loc 4 583 0
	.cfi_startproc
.LVL1743:
	mflr 0
	stwu 1,-24(1)
.LCFI189:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB6498:
	.loc 4 588 0
	mr. 29,4
	.cfi_offset 29, -12
.LBE6498:
	.loc 4 583 0
	stw 0,28(1)
	stw 30,16(1)
.LBB6501:
	.loc 4 589 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE6501:
	.loc 4 583 0
	stw 31,20(1)
	.loc 4 583 0
	mr 31,3
	.cfi_offset 31, -4
.LBB6502:
	.loc 4 586 0
	lwz 9,56(3)
	addi 0,9,1
	stw 0,56(3)
	.loc 4 588 0
	ble- 0,.L1714
	.loc 4 592 0
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE13AllocInternalEi
.LVL1744:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1714
	.loc 4 596 0
	mr 3,31
.LVL1745:
	mr 5,29
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
.LVL1746:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1714
	.loc 4 605 0
	lwz 11,40(31)
	.loc 4 608 0
	addi 30,3,16
	.loc 4 606 0
	lwz 9,44(31)
	.loc 4 605 0
	addi 0,11,1
	stw 0,40(31)
.LBB6499:
.LBB6500:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6500:
.LBE6499:
	.loc 4 606 0
	add 0,9,0
	stw 0,44(31)
.LVL1747:
.L1714:
.LBE6502:
	.loc 4 609 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
.LVL1748:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1749:
	addi 1,1,24
.LCFI190:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2901:
	.size	_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi, .-_ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi
	.section	".text"
	.align 2
	.globl _Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
	.type	_Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si, @function
_Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si:
.LFB2579:
	.loc 2 574 0
	.cfi_startproc
.LVL1750:
	stwu 1,-16(1)
.LCFI191:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 576 0
	lis 3,.LANCHOR0@ha
.LVL1751:
	.loc 2 574 0
	stw 0,20(1)
	.loc 2 576 0
	la 3,.LANCHOR0@l(3)
	addi 3,3,116
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi
.LVL1752:
	stw 3,48(31)
	.loc 2 577 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1753:
	mtlr 0
	addi 1,1,16
.LCFI192:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2579:
	.size	_Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si, .-_Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
	.align 2
	.globl _Z18R_MergeSurfaceListPPK14srfTriangles_si
	.type	_Z18R_MergeSurfaceListPPK14srfTriangles_si, @function
_Z18R_MergeSurfaceListPPK14srfTriangles_si:
.LFB2612:
	.loc 2 2015 0
	.cfi_startproc
.LVL1754:
	stwu 1,-40(1)
.LCFI193:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 25,12(1)
.LBB6503:
	.loc 2 2024 0
	mr. 25,4
	.cfi_offset 25, -28
	.cfi_register 65, 0
.LBE6503:
	.loc 2 2015 0
	stw 0,44(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
.LBB6504:
	.loc 2 2024 0
	ble- 0,.L1720
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 2 2015 0
	addi 26,3,-4
.LBE6504:
	.loc 2 2024 0
	mtctr 25
	.loc 2 2015 0
	mr 11,26
	.loc 2 2023 0
	li 30,0
	.loc 2 2022 0
	li 31,0
.LVL1755:
.L1721:
.LBB6505:
	.loc 2 2025 0 discriminator 2
	lwzu 9,4(11)
	lwz 10,36(9)
	.loc 2 2026 0 discriminator 2
	lwz 0,44(9)
	.loc 2 2025 0 discriminator 2
	add 31,31,10
.LVL1756:
	.loc 2 2026 0 discriminator 2
	add 30,30,0
.LVL1757:
	.loc 2 2024 0 discriminator 2
	bdnz .L1721
	.loc 2 2029 0
	bl _Z20R_AllocStaticTriSurfv
.LVL1758:
	.loc 2 2032 0
	mr 4,31
	.loc 2 2031 0
	stw 30,44(3)
	.loc 2 2029 0
	mr 29,3
.LVL1759:
	.loc 2 2030 0
	stw 31,36(3)
	.loc 2 2036 0
	li 27,0
	.loc 2 2035 0
	li 30,0
.LVL1760:
	.loc 2 2037 0
	li 28,0
	.loc 2 2032 0
	bl _Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
.LVL1761:
	.loc 2 2033 0
	lwz 4,44(29)
	mr 3,29
	bl _Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
.LVL1762:
.L1724:
	.loc 2 2038 0
	lwzu 31,4(26)
.LVL1763:
	.loc 2 2039 0
	mulli 0,30,60
	lwz 3,40(29)
	lwz 5,36(31)
	lwz 4,40(31)
	add 3,3,0
	mulli 5,5,60
	bl memcpy
.LVL1764:
	.loc 2 2040 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L1722
	slwi 11,27,2
	li 9,0
.LVL1765:
.L1723:
	.loc 2 2041 0 discriminator 2
	lwz 10,48(31)
	slwi 0,9,2
	.loc 2 2040 0 discriminator 2
	addi 9,9,1
.LVL1766:
	.loc 2 2041 0 discriminator 2
	lwzx 0,10,0
	lwz 10,48(29)
	add 0,0,30
	stwx 0,10,11
	.loc 2 2040 0 discriminator 2
	addi 11,11,4
	lwz 0,44(31)
	cmpw 7,0,9
	bgt+ 7,.L1723
.LVL1767:
.L1722:
	.loc 2 2037 0
	addi 28,28,1
	.loc 2 2043 0
	lwz 9,36(31)
	.loc 2 2037 0
	cmpw 7,28,25
	.loc 2 2044 0
	add 27,27,0
	.loc 2 2043 0
	add 30,30,9
.LVL1768:
	.loc 2 2037 0
	bne+ 7,.L1724
.LBE6505:
	.loc 2 2048 0
	lwz 0,44(1)
	mr 3,29
	lwz 25,12(1)
.LVL1769:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1770:
	lwz 28,24(1)
.LVL1771:
	lwz 29,28(1)
.LVL1772:
	lwz 30,32(1)
.LVL1773:
	lwz 31,36(1)
.LVL1774:
	addi 1,1,40
	.cfi_remember_state
.LCFI194:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1775:
.L1720:
.LCFI195:
	.cfi_restore_state
.LBB6506:
	.loc 2 2029 0
	bl _Z20R_AllocStaticTriSurfv
.LVL1776:
	.loc 2 2030 0
	li 0,0
	stw 0,36(3)
	.loc 2 2029 0
	mr 29,3
.LVL1777:
	.loc 2 2031 0
	stw 0,44(3)
	.loc 2 2032 0
	li 4,0
	bl _Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
.LVL1778:
	.loc 2 2033 0
	lwz 4,44(29)
	mr 3,29
	bl _Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
.LBE6506:
	.loc 2 2048 0
	lwz 0,44(1)
	mr 3,29
	lwz 25,12(1)
.LVL1779:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1780:
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI196:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2612:
	.size	_Z18R_MergeSurfaceListPPK14srfTriangles_si, .-_Z18R_MergeSurfaceListPPK14srfTriangles_si
	.align 2
	.globl _Z16R_MergeTrianglesPK14srfTriangles_sS1_
	.type	_Z16R_MergeTrianglesPK14srfTriangles_sS1_, @function
_Z16R_MergeTrianglesPK14srfTriangles_sS1_:
.LFB2613:
	.loc 2 2058 0
	.cfi_startproc
.LVL1781:
	stwu 1,-24(1)
.LCFI197:
	.cfi_def_cfa_offset 24
	mflr 0
.LBB6507:
	.loc 2 2061 0
	stw 3,8(1)
	.loc 2 2064 0
	addi 3,1,8
.LVL1782:
	.loc 2 2062 0
	stw 4,12(1)
	.loc 2 2064 0
	li 4,2
.LVL1783:
.LBE6507:
	.loc 2 2058 0
	stw 0,28(1)
.LBB6508:
	.loc 2 2064 0
	.cfi_offset 65, 4
	bl _Z18R_MergeSurfaceListPPK14srfTriangles_si
.LVL1784:
.LBE6508:
	.loc 2 2065 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI198:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2613:
	.size	_Z16R_MergeTrianglesPK14srfTriangles_sS1_, .-_Z16R_MergeTrianglesPK14srfTriangles_sS1_
	.align 2
	.globl _Z19R_CopyStaticTriSurfPK14srfTriangles_s
	.type	_Z19R_CopyStaticTriSurfPK14srfTriangles_s, @function
_Z19R_CopyStaticTriSurfPK14srfTriangles_s:
.LFB2577:
	.loc 2 545 0
	.cfi_startproc
.LVL1785:
	stwu 1,-16(1)
.LCFI199:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	stw 30,8(1)
.LBB6509:
	.loc 2 548 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _Z20R_AllocStaticTriSurfv
.LVL1786:
	.loc 2 549 0
	lwz 4,36(31)
	.loc 2 548 0
	mr 30,3
.LVL1787:
	.loc 2 549 0
	bl _Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
.LVL1788:
	.loc 2 550 0
	lwz 4,44(31)
	mr 3,30
	bl _Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
	.loc 2 551 0
	lwz 0,36(31)
	.loc 2 553 0
	lwz 3,40(30)
	.loc 2 551 0
	stw 0,36(30)
	.loc 2 552 0
	lwz 0,44(31)
	stw 0,44(30)
	.loc 2 553 0
	lwz 5,36(31)
	lwz 4,40(31)
	mulli 5,5,60
	bl memcpy
	.loc 2 554 0
	lwz 5,44(31)
	lwz 3,48(30)
	lwz 4,48(31)
	slwi 5,5,2
	bl memcpy
.LBE6509:
	.loc 2 557 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
.LVL1789:
	mtlr 0
	lwz 30,8(1)
.LVL1790:
	addi 1,1,16
.LCFI200:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2577:
	.size	_Z19R_CopyStaticTriSurfPK14srfTriangles_s, .-_Z19R_CopyStaticTriSurfPK14srfTriangles_s
	.align 2
	.globl _Z28R_ResizeStaticTriSurfIndexesP14srfTriangles_si
	.type	_Z28R_ResizeStaticTriSurfIndexesP14srfTriangles_si, @function
_Z28R_ResizeStaticTriSurfIndexesP14srfTriangles_si:
.LFB2583:
	.loc 2 619 0
	.cfi_startproc
.LVL1791:
	mflr 0
	stwu 1,-16(1)
.LCFI201:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 5,4
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
.LBB6510:
.LBB6511:
	.loc 4 614 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	la 31,.LANCHOR0@l(31)
.LBE6511:
.LBE6510:
	.loc 2 621 0
	lwz 9,48(3)
.LVL1792:
.LBB6523:
.LBB6520:
	.loc 4 614 0
	lwz 11,176(31)
	.loc 4 616 0
	cmpwi 7,9,0
	.loc 4 614 0
	addi 0,11,1
	stw 0,176(31)
	.loc 4 616 0
	beq- 7,.L1736
	.loc 4 620 0
	cmpwi 7,4,0
	ble- 7,.L1737
.LVL1793:
.LBB6512:
.LBB6513:
	.loc 4 387 0
	lwz 0,-16(9)
.LBE6513:
.LBE6512:
	.loc 4 629 0
	addi 3,31,116
.LVL1794:
	.loc 4 627 0
	lwz 11,160(31)
	.loc 4 629 0
	addi 4,9,-16
.LVL1795:
.LBB6515:
.LBB6514:
	.loc 4 387 0
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6514:
.LBE6515:
	.loc 4 627 0
	subf 0,0,11
	stw 0,160(31)
	.loc 4 629 0
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
.LVL1796:
	.loc 4 631 0
	li 0,0
	.loc 4 630 0
	cmpwi 0,3,0
	beq- 0,.L1733
.LBB6516:
.LBB6517:
	.loc 4 387 0
	lwz 0,0(3)
.LBE6517:
.LBE6516:
	.loc 4 638 0
	lwz 9,160(31)
.LBB6519:
.LBB6518:
	.loc 4 387 0
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6518:
.LBE6519:
	.loc 4 638 0
	add 0,9,0
	stw 0,160(31)
.LVL1797:
.LBE6520:
	.loc 4 640 0
	addi 0,3,16
.LVL1798:
.L1733:
.LBE6523:
	.loc 2 621 0
	stw 0,48(30)
	.loc 2 625 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL1799:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI202:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1800:
.L1737:
.LCFI203:
	.cfi_restore_state
.LBB6524:
.LBB6521:
	.loc 4 621 0
	addi 3,31,116
.LVL1801:
	mr 4,9
.LVL1802:
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi
.LVL1803:
	.loc 4 622 0
	li 0,0
.LBE6521:
.LBE6524:
	.loc 2 621 0
	stw 0,48(30)
	.loc 2 625 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL1804:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI204:
	.cfi_def_cfa_offset 0
	blr
.LVL1805:
.L1736:
.LCFI205:
	.cfi_restore_state
.LBB6525:
.LBB6522:
	.loc 4 617 0
	addi 3,31,116
.LVL1806:
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE5AllocEi
.LVL1807:
	mr 0,3
	b .L1733
.LBE6522:
.LBE6525:
	.cfi_endproc
.LFE2583:
	.size	_Z28R_ResizeStaticTriSurfIndexesP14srfTriangles_si, .-_Z28R_ResizeStaticTriSurfIndexesP14srfTriangles_si
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE:
.LFB3016:
	.loc 4 833 0
	.cfi_startproc
.LVL1808:
	mflr 0
	stwu 1,-24(1)
.LCFI206:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB6559:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1809:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1739
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1739
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL1810:
	cmpwi 7,4,0
	beq- 7,.L1739
.LVL1811:
.LBB6560:
.LBB6561:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL1812:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1813:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6562:
.LBB6563:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6563:
.LBE6562:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE6561:
.LBE6560:
.LBB6564:
.LBB6565:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE6565:
.LBE6564:
.LBB6567:
.LBB6568:
	srawi 10,0,31
.LBE6568:
.LBE6567:
.LBB6570:
.LBB6571:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6571:
.LBE6570:
.LBB6574:
.LBB6569:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6569:
.LBE6574:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB6575:
.LBB6566:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6566:
.LBE6575:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL1814:
.LBB6576:
.LBB6572:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1752
.LVL1815:
.L1740:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE6572:
.LBE6576:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1741
	.loc 4 848 0
	stw 30,4(9)
.LVL1816:
.L1739:
	.loc 4 855 0
	lwz 29,4(30)
.LVL1817:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1743
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1743
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1743
.LVL1818:
.LBB6577:
.LBB6578:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1819:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6579:
.LBB6580:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6580:
.LBE6579:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE6578:
.LBE6577:
.LBB6581:
.LBB6582:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE6582:
.LBE6581:
.LBB6584:
.LBB6585:
	srawi 10,0,31
.LBE6585:
.LBE6584:
.LBB6587:
.LBB6588:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6588:
.LBE6587:
.LBB6591:
.LBB6586:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6586:
.LBE6591:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB6592:
.LBB6583:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6583:
.LBE6592:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL1820:
.LBB6593:
.LBB6589:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1753
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE6589:
.LBE6593:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL1821:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1745
.LVL1822:
.L1754:
	.loc 4 861 0
	stw 29,4(9)
.L1746:
.LVL1823:
.LBB6594:
.LBB6595:
.LBB6596:
.LBB6597:
	.loc 4 387 0
	lwz 5,0(29)
.LBE6597:
.LBE6596:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6598:
.LBB6599:
	.loc 4 387 0
	lwz 0,0(29)
.LBE6599:
.LBE6598:
.LBE6595:
.LBE6594:
.LBB6600:
.LBB6601:
.LBB6602:
.LBB6603:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6603:
.LBE6602:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6601:
.LBE6600:
.LBE6559:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1824:
	lwz 30,16(1)
.LVL1825:
	lwz 31,20(1)
.LVL1826:
	addi 1,1,24
	.cfi_remember_state
.LCFI207:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1827:
.L1743:
.LCFI208:
	.cfi_restore_state
.LBB6610:
.LBB6607:
.LBB6606:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE3AddEPS1_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6605:
.LBB6604:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6604:
.LBE6605:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6606:
.LBE6607:
.LBE6610:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1828:
	lwz 30,16(1)
.LVL1829:
	lwz 31,20(1)
.LVL1830:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI209:
	.cfi_def_cfa_offset 0
	blr
.LVL1831:
.L1753:
.LCFI210:
	.cfi_restore_state
.LBB6611:
.LBB6608:
.LBB6590:
	.loc 4 388 0
	neg 0,0
.LVL1832:
	stw 0,0(29)
.LBE6590:
.LBE6608:
	.loc 4 859 0
	lwz 0,8(30)
.LVL1833:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1754
	b .L1745
.LVL1834:
.L1752:
.LBB6609:
.LBB6573:
	.loc 4 388 0
	neg 0,0
.LVL1835:
	b .L1740
.LVL1836:
.L1745:
.LBE6573:
.LBE6609:
	.loc 4 863 0
	stw 29,4(31)
	b .L1746
.LVL1837:
.L1741:
	.loc 4 850 0
	stw 30,4(31)
	b .L1739
.LBE6611:
	.cfi_endproc
.LFE3016:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv:
.LFB2842:
	.loc 4 474 0
	.cfi_startproc
.LVL1838:
	mflr 0
	stwu 1,-24(1)
.LCFI211:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6612:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1839:
	cmpwi 7,30,0
	beq- 7,.L1756
.LVL1840:
.L1762:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1765
.L1757:
	.loc 4 477 0
	lwz 30,8(30)
.LVL1841:
	cmpwi 7,30,0
	bne+ 7,.L1762
	.loc 4 483 0
	lwz 30,0(31)
.LVL1842:
	cmpwi 7,30,0
	beq- 7,.L1756
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1761
.LVL1843:
.L1759:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1844:
	cmpwi 7,30,0
	beq- 7,.L1756
.LVL1845:
.L1761:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1759
.LBB6613:
.LBB6614:
	.loc 4 387 0
	lwz 5,0(30)
.LBE6614:
.LBE6613:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB6617:
.LBB6615:
	.loc 4 387 0
	srawi 0,5,31
.LBE6615:
.LBE6617:
	.loc 4 487 0
	lwz 9,0(3)
.LBB6618:
.LBB6616:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE6616:
.LBE6618:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL1846:
	cmpwi 7,30,0
	bne+ 7,.L1761
.LVL1847:
.L1756:
.LBB6619:
.LBB6620:
.LBB6621:
.LBB6622:
	.loc 4 245 0
	li 0,0
.LBE6622:
.LBE6621:
.LBE6620:
.LBE6619:
.LBB6626:
.LBB6627:
	.loc 4 707 0
	li 9,1
.LBE6627:
.LBE6626:
.LBB6629:
.LBB6625:
.LBB6624:
.LBB6623:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE6623:
.LBE6624:
	.loc 5 110 0
	stw 0,8(31)
.LVL1848:
.LBE6625:
.LBE6629:
.LBB6630:
.LBB6628:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE6628:
.LBE6630:
.LBE6612:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1849:
	lwz 31,20(1)
.LVL1850:
	addi 1,1,24
	.cfi_remember_state
.LCFI212:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1851:
.L1765:
.LCFI213:
	.cfi_restore_state
.LBB6631:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
	b .L1757
.LBE6631:
	.cfi_endproc
.LFE2842:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi:
.LFB2889:
	.loc 4 644 0
	.cfi_startproc
.LVL1852:
	mflr 0
.LBB6632:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE6632:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI214:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB6635:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1766
.LVL1853:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB6633:
.LBB6634:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL1854:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6634:
.LBE6633:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1855:
.L1766:
.LBE6635:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI215:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2889:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi:
.LFB3046:
	.loc 4 767 0
	.cfi_startproc
.LVL1856:
	mflr 0
	stwu 1,-24(1)
.LCFI216:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
.LBB6667:
	.loc 4 768 0
	slwi 30,5,2
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE6667:
	.loc 4 767 0
	stw 31,20(1)
.LBB6707:
	.loc 4 768 0
	addi 30,30,15
.LBE6707:
	.loc 4 767 0
	stw 28,8(1)
.LBB6708:
	.loc 4 768 0
	rlwinm 30,30,0,0,27
.LVL1857:
.LBE6708:
	.loc 4 767 0
	mr 31,4
	.cfi_offset 28, -16
	.cfi_offset 31, -4
.LBB6709:
.LBB6668:
.LBB6669:
.LBB6670:
	.loc 4 387 0
	lwz 9,0(4)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LBE6670:
.LBE6669:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1769
.LBB6671:
	.loc 4 777 0
	lwz 28,8(4)
.LVL1858:
.LBB6672:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1770
	.loc 2 2282 0 discriminator 1
	lwz 0,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,0,0
	blt- 7,.L1770
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL1859:
	cmpwi 7,4,0
	beq- 7,.L1770
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 0,0,9
	cmpw 7,30,0
	bgt- 7,.L1770
.LVL1860:
.LBB6673:
.LBB6674:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL1861:
	bl _ZN7idBTreeI14idDynamicBlockIiEiLi4EE6RemoveEP11idBTreeNodeIS1_iE
.LVL1862:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB6675:
.LBB6676:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6676:
.LBE6675:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE6674:
.LBE6673:
.LBB6677:
.LBB6678:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE6678:
.LBE6677:
.LBB6681:
.LBB6682:
	srawi 11,9,31
.LBE6682:
.LBE6681:
.LBB6684:
.LBB6685:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE6685:
.LBE6684:
.LBB6687:
.LBB6683:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE6683:
.LBE6687:
.LBB6688:
.LBB6679:
	srawi 11,0,31
	xor 0,11,0
.LBE6679:
.LBE6688:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB6689:
.LBB6680:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE6680:
.LBE6689:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL1863:
.LBB6690:
.LBB6686:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1771
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL1864:
.L1771:
	stw 0,0(31)
.LBE6686:
.LBE6690:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1772
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL1865:
.L1769:
.LBE6672:
.LBE6671:
.LBE6668:
	.loc 4 804 0
	subf 9,30,9
.LVL1866:
	cmpwi 7,9,1039
	ble- 7,.L1773
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB6699:
.LBB6700:
	.loc 4 388 0
	stwx 9,31,4
.LBE6700:
.LBE6699:
	.loc 4 810 0
	add 4,31,4
.LVL1867:
	.loc 4 816 0
	lwz 9,8(31)
.LVL1868:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1774
	.loc 4 819 0
	stw 4,4(9)
.L1775:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL1869:
.LBB6701:
.LBB6702:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1780
.LVL1870:
.L1776:
	stw 30,0(31)
.LBE6702:
.LBE6701:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1871:
.L1773:
.LBE6709:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1872:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI217:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1873:
.L1770:
.LCFI218:
	.cfi_restore_state
.LBB6710:
.LBB6704:
.LBB6697:
.LBB6695:
.LBB6691:
	.loc 4 794 0
	mr 3,29
.LVL1874:
	mr 4,5
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi
.LVL1875:
	.loc 4 795 0
	mr. 28,3
.LVL1876:
	beq- 0,.L1781
.LVL1877:
.LBB6692:
.LBB6693:
	.loc 4 387 0
	lwz 5,0(31)
.LBE6693:
.LBE6692:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL1878:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL1879:
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIiE
.LVL1880:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1769
.LVL1881:
.L1780:
.LBE6691:
.LBE6695:
.LBE6697:
.LBE6704:
.LBB6705:
.LBB6703:
	.loc 4 388 0
	neg 30,30
.LVL1882:
	b .L1776
.LVL1883:
.L1774:
.LBE6703:
.LBE6705:
	.loc 4 821 0
	stw 4,4(29)
	b .L1775
.LVL1884:
.L1772:
.LBB6706:
.LBB6698:
.LBB6696:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1769
.LVL1885:
.L1781:
.LBB6694:
	.loc 4 796 0
	li 31,0
.LVL1886:
	b .L1773
.LBE6694:
.LBE6696:
.LBE6698:
.LBE6706:
.LBE6710:
	.cfi_endproc
.LFE3046:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi:
.LFB2908:
	.loc 4 583 0
	.cfi_startproc
.LVL1887:
	mflr 0
	stwu 1,-24(1)
.LCFI219:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB6711:
	.loc 4 588 0
	mr. 29,4
	.cfi_offset 29, -12
.LBE6711:
	.loc 4 583 0
	stw 0,28(1)
	stw 30,16(1)
.LBB6714:
	.loc 4 589 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE6714:
	.loc 4 583 0
	stw 31,20(1)
	.loc 4 583 0
	mr 31,3
	.cfi_offset 31, -4
.LBB6715:
	.loc 4 586 0
	lwz 9,56(3)
	addi 0,9,1
	stw 0,56(3)
	.loc 4 588 0
	ble- 0,.L1783
	.loc 4 592 0
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE13AllocInternalEi
.LVL1888:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1783
	.loc 4 596 0
	mr 3,31
.LVL1889:
	mr 5,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIiEi
.LVL1890:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1783
	.loc 4 605 0
	lwz 11,40(31)
	.loc 4 608 0
	addi 30,3,16
	.loc 4 606 0
	lwz 9,44(31)
	.loc 4 605 0
	addi 0,11,1
	stw 0,40(31)
.LBB6712:
.LBB6713:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6713:
.LBE6712:
	.loc 4 606 0
	add 0,9,0
	stw 0,44(31)
.LVL1891:
.L1783:
.LBE6715:
	.loc 4 609 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
.LVL1892:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1893:
	addi 1,1,24
.LCFI220:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2908:
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi
	.section	".text"
	.align 2
	.type	_ZL27R_DuplicateMirroredVertexesP14srfTriangles_s, @function
_ZL27R_DuplicateMirroredVertexesP14srfTriangles_s:
.LFB2600:
	.loc 2 1277 0
	.cfi_startproc
.LVL1894:
	mflr 0
	stwu 1,-48(1)
.LCFI221:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
.LBB6716:
	.loc 2 1284 0
	li 4,0
.LBE6716:
	.loc 2 1277 0
	stw 27,28(1)
	stw 0,52(1)
	stw 30,40(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 31,44(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI222:
	.cfi_def_cfa_register 31
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 28,32(1)
	stw 29,36(1)
.LBB6736:
	.loc 2 1283 0
	lwz 9,0(1)
	lwz 5,36(3)
	slwi 5,5,3
	addi 0,5,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	addi 27,1,23
	rlwinm 27,27,0,0,27
.LVL1895:
	.loc 2 1284 0
	mr 3,27
.LVL1896:
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	bl memset
.LVL1897:
.LBB6717:
	.loc 2 1289 0
	lwz 0,44(30)
	cmpwi 7,0,0
	ble- 7,.L1788
	li 28,0
.LBB6718:
	.loc 2 1294 0
	li 26,1
.LVL1898:
.L1791:
.LBE6718:
	.loc 2 2282 0
	lwz 29,48(30)
.LBB6719:
	.loc 2 1292 0
	mr 5,28
	lwz 3,40(30)
	mr 4,29
	bl _ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1
.LVL1899:
	li 9,0
	slwi 10,28,2
	.loc 2 1293 0
	cmpwi 7,9,8
	.loc 2 1294 0
	add 0,10,9
	.loc 2 1293 0
	addi 9,9,4
	.loc 2 1294 0
	lwzx 11,29,0
	slwi 11,11,3
	add 11,27,11
	stbx 26,11,3
.LVL1900:
	.loc 2 1293 0
	beq- 7,.L1789
.L1808:
	lwz 29,48(30)
	.loc 2 1294 0
	add 0,10,9
	.loc 2 1293 0
	cmpwi 7,9,8
	addi 9,9,4
	.loc 2 1294 0
	lwzx 11,29,0
	slwi 11,11,3
	add 11,27,11
	stbx 26,11,3
	.loc 2 1293 0
	bne+ 7,.L1808
.L1789:
.LBE6719:
	.loc 2 1289 0
	lwz 0,44(30)
	addi 28,28,3
.LVL1901:
	cmpw 7,0,28
	bgt+ 7,.L1791
.LVL1902:
.L1788:
.LBE6717:
	.loc 2 1299 0
	lwz 0,36(30)
	.loc 2 1300 0
	cmpwi 7,0,0
	.loc 2 1299 0
	mr 24,0
.LVL1903:
	.loc 2 1300 0
	ble- 7,.L1792
	mr 9,27
	li 11,0
.LVL1904:
.L1794:
	.loc 2 1302 0
	lbz 10,0(9)
	.loc 2 1300 0
	addi 11,11,1
	.loc 2 1302 0
	cmpwi 7,10,0
	beq- 7,.L1793
	.loc 2 1302 0 is_stmt 0 discriminator 1
	lbz 10,1(9)
	cmpwi 7,10,0
	beq- 7,.L1793
	lwz 0,36(30)
	.loc 2 1303 0 is_stmt 1
	stw 24,4(9)
	.loc 2 1304 0
	addi 24,24,1
.LVL1905:
.L1793:
	.loc 2 1300 0
	cmpw 7,0,11
	addi 9,9,8
	bgt+ 7,.L1794
	.loc 2 1311 0
	cmpw 7,0,24
	.loc 2 1308 0
	subf 4,0,24
	stw 4,56(30)
	.loc 2 1311 0
	beq- 7,.L1803
	.loc 2 1316 0
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
	addi 3,29,524
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi
.LVL1906:
	.loc 2 1319 0
	lwz 4,40(30)
	.loc 2 1316 0
	stw 3,60(30)
	.loc 2 1319 0
	mr 5,24
	addi 3,29,48
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE6ResizeEPS0_i
	.loc 2 1329 0
	lwz 0,36(30)
	.loc 2 1319 0
	stw 3,40(30)
.LVL1907:
	.loc 2 1329 0
	cmpwi 7,0,0
	ble- 7,.L1797
	li 8,0
	li 7,0
	li 10,0
.LVL1908:
.L1799:
	.loc 2 1277 0
	slwi 9,10,3
	.loc 2 1333 0
	slwi 5,7,2
	.loc 2 1277 0
	add 9,27,9
	.loc 2 1330 0
	lwz 11,4(9)
.LVL1909:
	.loc 2 1331 0
	cmpwi 7,11,0
	.loc 2 1332 0
	mulli 6,11,60
	.loc 2 1331 0
	beq- 7,.L1798
	.loc 2 1332 0
	lwz 9,40(30)
.LVL1910:
	.loc 2 1334 0
	addi 7,7,1
.LBB6720:
.LBB6721:
.LBB6722:
.LBB6723:
	.loc 7 424 0
	lwzx 0,9,8
.LBE6723:
.LBE6722:
.LBE6721:
.LBE6720:
	.loc 2 1332 0
	add 11,9,8
.LVL1911:
.LBB6734:
.LBB6732:
.LBB6726:
.LBB6724:
	.loc 7 424 0
	stwx 0,9,6
.LBE6724:
.LBE6726:
.LBE6732:
.LBE6734:
	.loc 2 1332 0
	add 9,9,6
.LVL1912:
.LBB6735:
.LBB6733:
.LBB6727:
.LBB6725:
	.loc 7 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 7 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE6725:
.LBE6727:
	.loc 8 40 0
	lwz 28,12(11)
	lwz 29,16(11)
	stw 28,12(9)
	stw 29,16(9)
.LVL1913:
.LBB6728:
.LBB6729:
	.loc 7 424 0
	lwz 0,20(11)
	stw 0,20(9)
	.loc 7 425 0
	lwz 0,24(11)
	stw 0,24(9)
	.loc 7 426 0
	lwz 0,28(11)
	stw 0,28(9)
.LVL1914:
.LBE6729:
.LBE6728:
.LBB6730:
.LBB6731:
	.loc 7 424 0
	lwz 0,32(11)
	stw 0,32(9)
	.loc 7 425 0
	lwz 0,36(11)
	stw 0,36(9)
	.loc 7 426 0
	lwz 0,40(11)
	stw 0,40(9)
.LVL1915:
	.loc 7 424 0
	lwz 0,44(11)
	stw 0,44(9)
	.loc 7 425 0
	lwz 0,48(11)
	stw 0,48(9)
	.loc 7 426 0
	lwz 0,52(11)
	stw 0,52(9)
.LBE6731:
.LBE6730:
	.loc 8 40 0
	lwz 0,56(11)
	stw 0,56(9)
.LBE6733:
.LBE6735:
	.loc 2 1333 0
	lwz 9,60(30)
	stwx 10,9,5
	lwz 0,36(30)
.LVL1916:
.L1798:
	.loc 2 1329 0
	addi 10,10,1
.LVL1917:
	addi 8,8,60
	cmpw 7,0,10
	bgt+ 7,.L1799
.LVL1918:
.L1797:
	.loc 2 1340 0
	lwz 23,44(30)
	.loc 2 1338 0
	stw 24,36(30)
.LVL1919:
	.loc 2 1340 0
	cmpwi 7,23,0
	ble- 7,.L1800
	.loc 2 1342 0
	lis 22,0x5555
	.loc 2 1340 0
	li 29,0
	.loc 2 1342 0
	ori 22,22,21846
.LVL1920:
.L1802:
	.loc 2 1341 0
	lwz 28,48(30)
	.loc 2 1277 0
	slwi 26,29,2
	.loc 2 1342 0
	srawi 0,29,31
	.loc 2 1341 0
	lwzx 9,28,26
	.loc 2 1342 0
	mr 4,28
	.loc 2 1341 0
	slwi 9,9,3
	add 9,27,9
	lwz 25,4(9)
	cmpwi 7,25,0
	beq- 7,.L1801
	.loc 2 1342 0 discriminator 1
	mulhw 9,29,22
	lwz 3,40(30)
	subf 0,0,9
	mulli 5,0,3
	bl _ZL22R_FaceNegativePolarityPK14srfTriangles_si.isra.1
	.loc 2 1341 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1801
	.loc 2 1343 0 discriminator 4
	stwx 25,28,26
	lwz 23,44(30)
.L1801:
	.loc 2 1340 0
	addi 29,29,1
.LVL1921:
	cmpw 7,23,29
	bgt+ 7,.L1802
.LVL1922:
.L1800:
	.loc 2 1347 0
	stw 24,36(30)
.LBE6736:
	.loc 2 1348 0
	addi 11,31,48
	lwz 0,4(11)
	lwz 22,-40(11)
	mtlr 0
	lwz 23,-36(11)
	lwz 24,-32(11)
.LVL1923:
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL1924:
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
.LVL1925:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI223:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI224:
	.cfi_def_cfa_register 1
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
.LVL1926:
	blr
.LVL1927:
.L1792:
.LCFI225:
	.cfi_restore_state
.LBB6737:
	.loc 2 1308 0
	li 0,0
.LVL1928:
	stw 0,56(30)
.LVL1929:
.L1803:
	.loc 2 1312 0
	li 0,0
.LBE6737:
	.loc 2 1348 0
	addi 11,31,48
.LBB6738:
	.loc 2 1312 0
	stw 0,60(30)
.LBE6738:
	.loc 2 1348 0
	lwz 0,4(11)
	lwz 22,-40(11)
	mtlr 0
	lwz 23,-36(11)
	lwz 24,-32(11)
.LVL1930:
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL1931:
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
.LVL1932:
	lwz 31,-4(11)
.LCFI226:
	.cfi_def_cfa 11, 0
	mr 1,11
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
.LCFI227:
	.cfi_def_cfa_register 1
.LVL1933:
	blr
	.cfi_endproc
.LFE2600:
	.size	_ZL27R_DuplicateMirroredVertexesP14srfTriangles_s, .-_ZL27R_DuplicateMirroredVertexesP14srfTriangles_s
	.align 2
	.globl _Z16R_CreateDupVertsP14srfTriangles_s
	.type	_Z16R_CreateDupVertsP14srfTriangles_s, @function
_Z16R_CreateDupVertsP14srfTriangles_s:
.LFB2592:
	.loc 2 799 0
	.cfi_startproc
.LVL1934:
	mflr 0
	stwu 1,-24(1)
.LCFI228:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI229:
	.cfi_def_cfa_register 31
	stw 0,28(1)
	stw 29,12(1)
.LBB6739:
	.loc 2 802 0
	lwz 11,0(1)
	lwz 0,36(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	slwi 9,0,2
	.loc 2 805 0
	cmpwi 7,0,0
	.loc 2 802 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 11,1,9
	addi 11,1,23
	rlwinm 11,11,0,0,27
.LVL1935:
	.loc 2 805 0
	ble- 7,.L1810
	addi 10,11,-4
.LBE6739:
	li 9,0
.LVL1936:
.L1811:
.LBB6740:
	.loc 2 805 0 is_stmt 0 discriminator 2
	lwz 0,36(30)
	.loc 2 806 0 is_stmt 1 discriminator 2
	stwu 9,4(10)
	.loc 2 805 0 discriminator 2
	addi 9,9,1
.LVL1937:
	cmpw 7,0,9
	bgt+ 7,.L1811
.LVL1938:
.L1810:
	.loc 2 810 0 discriminator 1
	lwz 9,44(30)
	cmpwi 7,9,0
	ble- 7,.L1812
	.loc 2 810 0 is_stmt 0
	li 9,0
.LVL1939:
.L1813:
	.loc 2 810 0 discriminator 2
	lwz 7,44(30)
	.loc 2 799 0 is_stmt 1 discriminator 2
	slwi 0,9,2
	.loc 2 811 0 discriminator 2
	lwz 10,48(30)
	.loc 2 810 0 discriminator 2
	addi 9,9,1
.LVL1940:
	.loc 2 811 0 discriminator 2
	lwz 8,52(30)
	.loc 2 810 0 discriminator 2
	cmpw 7,7,9
	.loc 2 811 0 discriminator 2
	lwzx 10,10,0
	lwzx 0,8,0
	slwi 10,10,2
	stwx 0,11,10
	.loc 2 810 0 discriminator 2
	bgt+ 7,.L1813
	lwz 0,36(30)
.LVL1941:
.L1812:
	.loc 2 815 0
	slwi 9,0,3
	lwz 10,0(1)
	addi 9,9,45
	.loc 2 817 0
	cmpwi 7,0,0
	.loc 2 815 0
	rlwinm 9,9,0,0,27
	.loc 2 817 0
	li 4,0
	.loc 2 815 0
	neg 9,9
	stwux 10,1,9
	.loc 2 816 0
	li 9,0
	stw 9,64(30)
	.loc 2 815 0
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL1942:
	.loc 2 817 0
	ble- 7,.L1814
	addi 11,11,-4
.LVL1943:
.L1816:
	.loc 2 818 0
	lwzu 10,4(11)
	.loc 2 819 0
	slwi 8,4,3
	.loc 2 818 0
	cmpw 7,10,9
	beq- 7,.L1815
	.loc 2 819 0
	stwx 9,29,8
	.loc 2 820 0
	lwz 10,64(30)
	lwz 0,0(11)
	.loc 2 821 0
	mr 4,10
	.loc 2 820 0
	slwi 10,10,3
	add 10,29,10
	.loc 2 821 0
	addi 4,4,1
	.loc 2 820 0
	stw 0,4(10)
	.loc 2 821 0
	stw 4,64(30)
	lwz 0,36(30)
.L1815:
	.loc 2 817 0
	addi 9,9,1
.LVL1944:
	cmpw 7,0,9
	bgt+ 7,.L1816
	slwi 4,4,1
.LVL1945:
.L1814:
	.loc 2 825 0
	lis 3,.LANCHOR0@ha
.LVL1946:
	la 3,.LANCHOR0@l(3)
	addi 3,3,592
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE5AllocEi
	.loc 2 826 0
	lwz 5,64(30)
	.loc 2 825 0
	stw 3,68(30)
	.loc 2 826 0
	mr 4,29
	slwi 5,5,3
	bl memcpy
.LBE6740:
	.loc 2 827 0
	addi 11,31,24
	lwz 0,4(11)
	lwz 29,-12(11)
.LVL1947:
	mtlr 0
	lwz 30,-8(11)
.LVL1948:
	lwz 31,-4(11)
.LCFI230:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI231:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
.LVL1949:
	blr
	.cfi_endproc
.LFE2592:
	.size	_Z16R_CreateDupVertsP14srfTriangles_s, .-_Z16R_CreateDupVertsP14srfTriangles_s
	.section	.text._ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i
	.type	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i, @function
_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i:
.LFB3138:
	.loc 5 114 0
	.cfi_startproc
.LVL1950:
	mflr 0
	stwu 1,-40(1)
.LCFI232:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB6768:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L1854
.LVL1951:
.L1822:
.LBB6769:
.LBB6770:
.LBB6771:
.LBB6772:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE6772:
.LBE6771:
.LBE6770:
.LBE6769:
.LBB6778:
.LBB6779:
	.loc 5 418 0
	li 26,0
.LBE6779:
.LBE6778:
.LBB6786:
.LBB6777:
.LBB6775:
.LBB6773:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE6773:
.LBE6775:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB6776:
.LBB6774:
	.loc 4 216 0
	mr 27,3
.LVL1952:
.LBE6774:
.LBE6776:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE6777:
.LBE6786:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL1953:
.L1853:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L1855
.L1845:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1851
	.loc 5 135 0
	stw 29,0(11)
.LVL1954:
	.loc 5 139 0
	b .L1851
.L1831:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1830
	mr 30,9
.LVL1955:
.L1851:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L1831
.L1830:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L1856
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL1956:
	cmpwi 7,0,3
	ble+ 7,.L1853
.LVL1957:
.LBB6787:
.LBB6784:
.LBB6780:
.LBB6781:
.LBB6782:
.LBB6783:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1958:
.LBE6783:
.LBE6782:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE6781:
.LBE6780:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL1959:
	.loc 5 404 0
	stw 10,8(9)
.LVL1960:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L1841
	li 11,3
.LVL1961:
.L1842:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1962:
	.loc 5 405 0
	addi 11,11,2
.LVL1963:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L1842
.LVL1964:
.L1841:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL1965:
	cmpwi 7,9,0
	beq- 7,.L1843
	.loc 5 425 0
	stw 10,12(9)
.L1844:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE6784:
.LBE6787:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1853
	mr 11,30
.LVL1966:
	.loc 5 132 0
	lwz 30,24(11)
.LVL1967:
	cmpwi 7,30,0
	bne+ 7,.L1845
.LVL1968:
.L1855:
	.loc 5 189 0
	lwz 0,0(31)
.LBE6768:
	.loc 5 200 0
	mr 3,25
.LBB6817:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL1969:
	addi 0,11,1
	stw 0,20(9)
.LBE6817:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1970:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1971:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1972:
	addi 1,1,40
	.cfi_remember_state
.LCFI233:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1973:
.L1843:
.LCFI234:
	.cfi_restore_state
.LBB6818:
.LBB6788:
.LBB6785:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L1844
.LVL1974:
.L1856:
.LBE6785:
.LBE6788:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1857
	.loc 5 159 0
	beq- 7,.L1837
	.loc 5 160 0
	stw 25,16(9)
.L1838:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L1836:
	.loc 5 169 0
	stw 11,12(27)
.LBE6818:
	.loc 5 200 0
	mr 3,25
.LBB6819:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE6819:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL1975:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1976:
	lwz 30,32(1)
.LVL1977:
	lwz 31,36(1)
.LVL1978:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI235:
	.cfi_def_cfa_offset 0
	blr
.LVL1979:
.L1857:
.LCFI236:
	.cfi_restore_state
.LBB6820:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1834
	.loc 5 150 0
	stw 25,12(9)
.L1835:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L1836
.LVL1980:
.L1854:
.LBB6789:
.LBB6790:
.LBB6791:
.LBB6792:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE6792:
.LBE6791:
	.loc 5 377 0
	li 27,0
.LBB6795:
.LBB6793:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1981:
.LBE6793:
.LBE6795:
	.loc 5 377 0
	stw 27,4(3)
.LBB6796:
.LBB6794:
	.loc 4 216 0
	mr 9,3
.LVL1982:
.LBE6794:
.LBE6796:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE6790:
.LBE6789:
.LBB6797:
.LBB6798:
.LBB6799:
.LBB6800:
.LBB6801:
.LBB6802:
	.loc 4 216 0
	li 3,36
.LVL1983:
.LBE6802:
.LBE6801:
.LBE6800:
.LBE6799:
.LBE6798:
.LBE6797:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL1984:
	stw 26,8(9)
.LBB6814:
.LBB6811:
.LBB6809:
.LBB6807:
.LBB6805:
.LBB6803:
	.loc 4 215 0
	lwz 9,16(31)
.LBE6803:
.LBE6805:
.LBE6807:
.LBE6809:
.LBE6811:
.LBE6814:
	.loc 5 124 0
	lwz 28,0(31)
.LVL1985:
.LBB6815:
.LBB6812:
.LBB6810:
.LBB6808:
.LBB6806:
.LBB6804:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL1986:
.LBE6804:
.LBE6806:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE6808:
.LBE6810:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL1987:
	.loc 5 404 0
	stw 10,8(9)
.LVL1988:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L1823
	li 11,3
.LVL1989:
.L1824:
	.loc 5 406 0
	lwz 9,12(9)
.LVL1990:
	.loc 5 405 0
	addi 11,11,2
.LVL1991:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L1824
.LVL1992:
.L1823:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL1993:
	cmpwi 7,9,0
	beq- 7,.L1825
	.loc 5 425 0
	stw 10,12(9)
.L1826:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LVL1994:
.LBE6812:
.LBE6815:
	.loc 5 125 0
	stw 26,0(31)
	b .L1822
.L1825:
.LBB6816:
.LBB6813:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L1826
.LVL1995:
.L1834:
.LBE6813:
.LBE6816:
	.loc 5 152 0
	stw 25,24(11)
	b .L1835
.L1837:
	.loc 5 162 0
	stw 25,28(11)
	b .L1838
.LBE6820:
	.cfi_endproc
.LFE3138:
	.size	_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i, .-_ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E:
.LFB3003:
	.loc 4 833 0
	.cfi_startproc
.LVL1996:
	mflr 0
	stwu 1,-24(1)
.LCFI237:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB6854:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1997:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1859
.LVL1998:
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1859
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL1999:
	cmpwi 7,4,0
	beq- 7,.L1859
.LVL2000:
.LBB6855:
.LBB6856:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL2001:
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2002:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6857:
.LBB6858:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6858:
.LBE6857:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE6856:
.LBE6855:
.LBB6859:
.LBB6860:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE6860:
.LBE6859:
.LBB6862:
.LBB6863:
	srawi 10,0,31
.LBE6863:
.LBE6862:
.LBB6865:
.LBB6866:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6866:
.LBE6865:
.LBB6869:
.LBB6864:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6864:
.LBE6869:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB6870:
.LBB6861:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6861:
.LBE6870:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL2003:
.LBB6871:
.LBB6867:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1872
.LVL2004:
.L1860:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE6867:
.LBE6871:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1861
	.loc 4 848 0
	stw 30,4(9)
.LVL2005:
.L1859:
	.loc 4 855 0
	lwz 29,4(30)
.LVL2006:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1863
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1863
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1863
.LVL2007:
.LBB6872:
.LBB6873:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2008:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB6874:
.LBB6875:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6875:
.LBE6874:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE6873:
.LBE6872:
.LBB6876:
.LBB6877:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE6877:
.LBE6876:
.LBB6879:
.LBB6880:
	srawi 10,0,31
.LBE6880:
.LBE6879:
.LBB6882:
.LBB6883:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE6883:
.LBE6882:
.LBB6886:
.LBB6881:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE6881:
.LBE6886:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB6887:
.LBB6878:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE6878:
.LBE6887:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL2009:
.LBB6888:
.LBB6884:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1873
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE6884:
.LBE6888:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL2010:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1865
.LVL2011:
.L1874:
	.loc 4 861 0
	stw 29,4(9)
.L1866:
.LVL2012:
.LBB6889:
.LBB6890:
.LBB6891:
.LBB6892:
	.loc 4 387 0
	lwz 5,0(29)
.LBE6892:
.LBE6891:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6893:
.LBB6894:
	.loc 4 387 0
	lwz 0,0(29)
.LBE6894:
.LBE6893:
.LBE6890:
.LBE6889:
.LBB6895:
.LBB6896:
.LBB6897:
.LBB6898:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6898:
.LBE6897:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6896:
.LBE6895:
.LBE6854:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2013:
	lwz 30,16(1)
.LVL2014:
	lwz 31,20(1)
.LVL2015:
	addi 1,1,24
	.cfi_remember_state
.LCFI238:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2016:
.L1863:
.LCFI239:
	.cfi_restore_state
.LBB6905:
.LBB6902:
.LBB6901:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE3AddEPS2_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB6900:
.LBB6899:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6899:
.LBE6900:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE6901:
.LBE6902:
.LBE6905:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2017:
	lwz 30,16(1)
.LVL2018:
	lwz 31,20(1)
.LVL2019:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI240:
	.cfi_def_cfa_offset 0
	blr
.LVL2020:
.L1873:
.LCFI241:
	.cfi_restore_state
.LBB6906:
.LBB6903:
.LBB6885:
	.loc 4 388 0
	neg 0,0
.LVL2021:
	stw 0,0(29)
.LBE6885:
.LBE6903:
	.loc 4 859 0
	lwz 0,8(30)
.LVL2022:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1874
	b .L1865
.LVL2023:
.L1872:
.LBB6904:
.LBB6868:
	.loc 4 388 0
	neg 0,0
.LVL2024:
	b .L1860
.LVL2025:
.L1865:
.LBE6868:
.LBE6904:
	.loc 4 863 0
	stw 29,4(31)
	b .L1866
.LVL2026:
.L1861:
	.loc 4 850 0
	stw 30,4(31)
	b .L1859
.LBE6906:
	.cfi_endproc
.LFE3003:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv:
.LFB2837:
	.loc 4 474 0
	.cfi_startproc
.LVL2027:
	mflr 0
	stwu 1,-24(1)
.LCFI242:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6907:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2028:
	cmpwi 7,30,0
	beq- 7,.L1876
.LVL2029:
.L1882:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1885
.L1877:
	.loc 4 477 0
	lwz 30,8(30)
.LVL2030:
	cmpwi 7,30,0
	bne+ 7,.L1882
	.loc 4 483 0
	lwz 30,0(31)
.LVL2031:
	cmpwi 7,30,0
	beq- 7,.L1876
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1881
.LVL2032:
.L1879:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2033:
	cmpwi 7,30,0
	beq- 7,.L1876
.LVL2034:
.L1881:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1879
.LBB6908:
.LBB6909:
	.loc 4 387 0
	lwz 5,0(30)
.LBE6909:
.LBE6908:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB6912:
.LBB6910:
	.loc 4 387 0
	srawi 0,5,31
.LBE6910:
.LBE6912:
	.loc 4 487 0
	lwz 9,0(3)
.LBB6913:
.LBB6911:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE6911:
.LBE6913:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2035:
	cmpwi 7,30,0
	bne+ 7,.L1881
.LVL2036:
.L1876:
.LBB6914:
.LBB6915:
.LBB6916:
.LBB6917:
	.loc 4 245 0
	li 0,0
.LBE6917:
.LBE6916:
.LBE6915:
.LBE6914:
.LBB6921:
.LBB6922:
	.loc 4 707 0
	li 9,1
.LBE6922:
.LBE6921:
.LBB6924:
.LBB6920:
.LBB6919:
.LBB6918:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE6918:
.LBE6919:
	.loc 5 110 0
	stw 0,8(31)
.LVL2037:
.LBE6920:
.LBE6924:
.LBB6925:
.LBB6923:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE6923:
.LBE6925:
.LBE6907:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2038:
	lwz 31,20(1)
.LVL2039:
	addi 1,1,24
	.cfi_remember_state
.LCFI243:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2040:
.L1885:
.LCFI244:
	.cfi_restore_state
.LBB6926:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	b .L1877
.LBE6926:
	.cfi_endproc
.LFE2837:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_:
.LFB2891:
	.loc 4 644 0
	.cfi_startproc
.LVL2041:
	mflr 0
.LBB6927:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE6927:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI245:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB6930:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1886
.LVL2042:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB6928:
.LBB6929:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL2043:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE6929:
.LBE6928:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2044:
.L1886:
.LBE6930:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI246:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2891:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei:
.LFB3038:
	.loc 4 767 0
	.cfi_startproc
.LVL2045:
	mflr 0
	stwu 1,-24(1)
.LCFI247:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB6962:
	.loc 4 768 0
	slwi 30,5,4
	.cfi_offset 30, -8
.LVL2046:
.LBE6962:
	.loc 4 767 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
.LBB7002:
.LBB6963:
.LBB6964:
.LBB6965:
	.loc 4 387 0
	lwz 0,0(4)
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	srawi 11,0,31
	xor 9,11,0
	subf 9,11,9
.LBE6965:
.LBE6964:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1889
.LBB6966:
	.loc 4 777 0
	lwz 28,8(4)
.LVL2047:
.LBB6967:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1890
	.loc 2 2282 0 discriminator 1
	lwz 11,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,11,0
	blt- 7,.L1890
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL2048:
	cmpwi 7,4,0
	beq- 7,.L1890
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 11,11,9
	cmpw 7,30,11
	bgt- 7,.L1890
.LVL2049:
.LBB6968:
.LBB6969:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL2050:
	bl _ZN7idBTreeI14idDynamicBlockI13shadowCache_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2051:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB6970:
.LBB6971:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE6971:
.LBE6970:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE6969:
.LBE6968:
.LBB6972:
.LBB6973:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE6973:
.LBE6972:
.LBB6976:
.LBB6977:
	srawi 11,9,31
.LBE6977:
.LBE6976:
.LBB6979:
.LBB6980:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE6980:
.LBE6979:
.LBB6982:
.LBB6978:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE6978:
.LBE6982:
.LBB6983:
.LBB6974:
	srawi 11,0,31
	xor 0,11,0
.LBE6974:
.LBE6983:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB6984:
.LBB6975:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE6975:
.LBE6984:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL2052:
.LBB6985:
.LBB6981:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1891
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL2053:
.L1891:
	stw 0,0(31)
.LBE6981:
.LBE6985:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1892
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL2054:
.L1889:
.LBE6967:
.LBE6966:
.LBE6963:
	.loc 4 804 0
	subf 9,30,9
.LVL2055:
	cmpwi 7,9,1039
	ble- 7,.L1893
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB6994:
.LBB6995:
	.loc 4 388 0
	stwx 9,31,4
.LBE6995:
.LBE6994:
	.loc 4 810 0
	add 4,31,4
.LVL2056:
	.loc 4 816 0
	lwz 9,8(31)
.LVL2057:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1894
	.loc 4 819 0
	stw 4,4(9)
.L1895:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL2058:
.LBB6996:
.LBB6997:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1900
.LVL2059:
.L1896:
	stw 30,0(31)
.LBE6997:
.LBE6996:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2060:
.L1893:
.LBE7002:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2061:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI248:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2062:
.L1890:
.LCFI249:
	.cfi_restore_state
.LBB7003:
.LBB6999:
.LBB6992:
.LBB6990:
.LBB6986:
	.loc 4 794 0
	mr 3,29
.LVL2063:
	mr 4,5
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi
.LVL2064:
	.loc 4 795 0
	mr. 28,3
.LVL2065:
	beq- 0,.L1901
.LVL2066:
.LBB6987:
.LBB6988:
	.loc 4 387 0
	lwz 5,0(31)
.LBE6988:
.LBE6987:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL2067:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL2068:
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2069:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1889
.LVL2070:
.L1900:
.LBE6986:
.LBE6990:
.LBE6992:
.LBE6999:
.LBB7000:
.LBB6998:
	.loc 4 388 0
	neg 30,30
.LVL2071:
	b .L1896
.LVL2072:
.L1894:
.LBE6998:
.LBE7000:
	.loc 4 821 0
	stw 4,4(29)
	b .L1895
.LVL2073:
.L1892:
.LBB7001:
.LBB6993:
.LBB6991:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1889
.LVL2074:
.L1901:
.LBB6989:
	.loc 4 796 0
	li 31,0
.LVL2075:
	b .L1893
.LBE6989:
.LBE6991:
.LBE6993:
.LBE7001:
.LBE7003:
	.cfi_endproc
.LFE3038:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.section	.text._ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi,"axG",@progbits,_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi
	.type	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi, @function
_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi:
.LFB2902:
	.loc 4 583 0
	.cfi_startproc
.LVL2076:
	mflr 0
	stwu 1,-24(1)
.LCFI250:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB7004:
	.loc 4 588 0
	mr. 29,4
	.cfi_offset 29, -12
.LBE7004:
	.loc 4 583 0
	stw 0,28(1)
	stw 30,16(1)
.LBB7007:
	.loc 4 589 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE7007:
	.loc 4 583 0
	stw 31,20(1)
	.loc 4 583 0
	mr 31,3
	.cfi_offset 31, -4
.LBB7008:
	.loc 4 586 0
	lwz 9,56(3)
	addi 0,9,1
	stw 0,56(3)
	.loc 4 588 0
	ble- 0,.L1903
	.loc 4 592 0
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE13AllocInternalEi
.LVL2077:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1903
	.loc 4 596 0
	mr 3,31
.LVL2078:
	mr 5,29
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL2079:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1903
	.loc 4 605 0
	lwz 11,40(31)
	.loc 4 608 0
	addi 30,3,16
	.loc 4 606 0
	lwz 9,44(31)
	.loc 4 605 0
	addi 0,11,1
	stw 0,40(31)
.LBB7005:
.LBB7006:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7006:
.LBE7005:
	.loc 4 606 0
	add 0,9,0
	stw 0,44(31)
.LVL2080:
.L1903:
.LBE7008:
	.loc 4 609 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
.LVL2081:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2082:
	addi 1,1,24
.LCFI251:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2902:
	.size	_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi, .-_ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi
	.section	".text"
	.align 2
	.globl _Z31R_AllocStaticTriSurfShadowVertsP14srfTriangles_si
	.type	_Z31R_AllocStaticTriSurfShadowVertsP14srfTriangles_si, @function
_Z31R_AllocStaticTriSurfShadowVertsP14srfTriangles_si:
.LFB2580:
	.loc 2 584 0
	.cfi_startproc
.LVL2083:
	stwu 1,-16(1)
.LCFI252:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 586 0
	lis 3,.LANCHOR0@ha
.LVL2084:
	.loc 2 584 0
	stw 0,20(1)
	.loc 2 586 0
	la 3,.LANCHOR0@l(3)
	addi 3,3,184
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi
.LVL2085:
	stw 3,100(31)
	.loc 2 587 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2086:
	mtlr 0
	addi 1,1,16
.LCFI253:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2580:
	.size	_Z31R_AllocStaticTriSurfShadowVertsP14srfTriangles_si, .-_Z31R_AllocStaticTriSurfShadowVertsP14srfTriangles_si
	.align 2
	.globl _Z32R_ResizeStaticTriSurfShadowVertsP14srfTriangles_si
	.type	_Z32R_ResizeStaticTriSurfShadowVertsP14srfTriangles_si, @function
_Z32R_ResizeStaticTriSurfShadowVertsP14srfTriangles_si:
.LFB2584:
	.loc 2 632 0
	.cfi_startproc
.LVL2087:
	mflr 0
	stwu 1,-16(1)
.LCFI254:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 5,4
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
.LBB7009:
.LBB7010:
	.loc 4 614 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	la 31,.LANCHOR0@l(31)
.LBE7010:
.LBE7009:
	.loc 2 634 0
	lwz 9,100(3)
.LVL2088:
.LBB7022:
.LBB7019:
	.loc 4 614 0
	lwz 11,244(31)
	.loc 4 616 0
	cmpwi 7,9,0
	.loc 4 614 0
	addi 0,11,1
	stw 0,244(31)
	.loc 4 616 0
	beq- 7,.L1913
.LVL2089:
	.loc 4 620 0
	cmpwi 7,4,0
	ble- 7,.L1914
.LVL2090:
.LBB7011:
.LBB7012:
	.loc 4 387 0
	lwz 0,-16(9)
.LBE7012:
.LBE7011:
	.loc 4 629 0
	addi 3,31,184
.LVL2091:
	.loc 4 627 0
	lwz 11,228(31)
	.loc 4 629 0
	addi 4,9,-16
.LVL2092:
.LBB7014:
.LBB7013:
	.loc 4 387 0
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7013:
.LBE7014:
	.loc 4 627 0
	subf 0,0,11
	stw 0,228(31)
	.loc 4 629 0
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL2093:
	.loc 4 631 0
	li 0,0
	.loc 4 630 0
	cmpwi 0,3,0
	beq- 0,.L1910
.LBB7015:
.LBB7016:
	.loc 4 387 0
	lwz 0,0(3)
.LBE7016:
.LBE7015:
	.loc 4 638 0
	lwz 9,228(31)
.LBB7018:
.LBB7017:
	.loc 4 387 0
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7017:
.LBE7018:
	.loc 4 638 0
	add 0,9,0
	stw 0,228(31)
.LVL2094:
.LBE7019:
	.loc 4 640 0
	addi 0,3,16
.LVL2095:
.L1910:
.LBE7022:
	.loc 2 634 0
	stw 0,100(30)
	.loc 2 638 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL2096:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI255:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2097:
.L1914:
.LCFI256:
	.cfi_restore_state
.LBB7023:
.LBB7020:
	.loc 4 621 0
	addi 3,31,184
.LVL2098:
	mr 4,9
.LVL2099:
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_
.LVL2100:
	.loc 4 622 0
	li 0,0
.LBE7020:
.LBE7023:
	.loc 2 634 0
	stw 0,100(30)
	.loc 2 638 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL2101:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI257:
	.cfi_def_cfa_offset 0
	blr
.LVL2102:
.L1913:
.LCFI258:
	.cfi_restore_state
.LBB7024:
.LBB7021:
	.loc 4 617 0
	addi 3,31,184
.LVL2103:
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE5AllocEi
.LVL2104:
	mr 0,3
	b .L1910
.LBE7021:
.LBE7024:
	.cfi_endproc
.LFE2584:
	.size	_Z32R_ResizeStaticTriSurfShadowVertsP14srfTriangles_si, .-_Z32R_ResizeStaticTriSurfShadowVertsP14srfTriangles_si
	.section	.text._ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i
	.type	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i, @function
_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i:
.LFB3139:
	.loc 5 114 0
	.cfi_startproc
.LVL2105:
	mflr 0
	stwu 1,-40(1)
.LCFI259:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB7052:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L1948
.LVL2106:
.L1916:
.LBB7053:
.LBB7054:
.LBB7055:
.LBB7056:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE7056:
.LBE7055:
.LBE7054:
.LBE7053:
.LBB7062:
.LBB7063:
	.loc 5 418 0
	li 26,0
.LBE7063:
.LBE7062:
.LBB7070:
.LBB7061:
.LBB7059:
.LBB7057:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE7057:
.LBE7059:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB7060:
.LBB7058:
	.loc 4 216 0
	mr 27,3
.LVL2107:
.LBE7058:
.LBE7060:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE7061:
.LBE7070:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL2108:
.L1947:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L1949
.L1939:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1945
	.loc 5 135 0
	stw 29,0(11)
.LVL2109:
	.loc 5 139 0
	b .L1945
.L1925:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1924
	mr 30,9
.LVL2110:
.L1945:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L1925
.L1924:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L1950
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL2111:
	cmpwi 7,0,3
	ble+ 7,.L1947
.LVL2112:
.LBB7071:
.LBB7068:
.LBB7064:
.LBB7065:
.LBB7066:
.LBB7067:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2113:
.LBE7067:
.LBE7066:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE7065:
.LBE7064:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL2114:
	.loc 5 404 0
	stw 10,8(9)
.LVL2115:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L1935
	li 11,3
.LVL2116:
.L1936:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2117:
	.loc 5 405 0
	addi 11,11,2
.LVL2118:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L1936
.LVL2119:
.L1935:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL2120:
	cmpwi 7,9,0
	beq- 7,.L1937
	.loc 5 425 0
	stw 10,12(9)
.L1938:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE7068:
.LBE7071:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L1947
	mr 11,30
.LVL2121:
	.loc 5 132 0
	lwz 30,24(11)
.LVL2122:
	cmpwi 7,30,0
	bne+ 7,.L1939
.LVL2123:
.L1949:
	.loc 5 189 0
	lwz 0,0(31)
.LBE7052:
	.loc 5 200 0
	mr 3,25
.LBB7101:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL2124:
	addi 0,11,1
	stw 0,20(9)
.LBE7101:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL2125:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2126:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2127:
	addi 1,1,40
	.cfi_remember_state
.LCFI260:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2128:
.L1937:
.LCFI261:
	.cfi_restore_state
.LBB7102:
.LBB7072:
.LBB7069:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L1938
.LVL2129:
.L1950:
.LBE7069:
.LBE7072:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L1951
	.loc 5 159 0
	beq- 7,.L1931
	.loc 5 160 0
	stw 25,16(9)
.L1932:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L1930:
	.loc 5 169 0
	stw 11,12(27)
.LBE7102:
	.loc 5 200 0
	mr 3,25
.LBB7103:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE7103:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL2130:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2131:
	lwz 30,32(1)
.LVL2132:
	lwz 31,36(1)
.LVL2133:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI262:
	.cfi_def_cfa_offset 0
	blr
.LVL2134:
.L1951:
.LCFI263:
	.cfi_restore_state
.LBB7104:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L1928
	.loc 5 150 0
	stw 25,12(9)
.L1929:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L1930
.LVL2135:
.L1948:
.LBB7073:
.LBB7074:
.LBB7075:
.LBB7076:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE7076:
.LBE7075:
	.loc 5 377 0
	li 27,0
.LBB7079:
.LBB7077:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2136:
.LBE7077:
.LBE7079:
	.loc 5 377 0
	stw 27,4(3)
.LBB7080:
.LBB7078:
	.loc 4 216 0
	mr 9,3
.LVL2137:
.LBE7078:
.LBE7080:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7074:
.LBE7073:
.LBB7081:
.LBB7082:
.LBB7083:
.LBB7084:
.LBB7085:
.LBB7086:
	.loc 4 216 0
	li 3,36
.LVL2138:
.LBE7086:
.LBE7085:
.LBE7084:
.LBE7083:
.LBE7082:
.LBE7081:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL2139:
	stw 26,8(9)
.LBB7098:
.LBB7095:
.LBB7093:
.LBB7091:
.LBB7089:
.LBB7087:
	.loc 4 215 0
	lwz 9,16(31)
.LBE7087:
.LBE7089:
.LBE7091:
.LBE7093:
.LBE7095:
.LBE7098:
	.loc 5 124 0
	lwz 28,0(31)
.LVL2140:
.LBB7099:
.LBB7096:
.LBB7094:
.LBB7092:
.LBB7090:
.LBB7088:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2141:
.LBE7088:
.LBE7090:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7092:
.LBE7094:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL2142:
	.loc 5 404 0
	stw 10,8(9)
.LVL2143:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L1917
	li 11,3
.LVL2144:
.L1918:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2145:
	.loc 5 405 0
	addi 11,11,2
.LVL2146:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L1918
.LVL2147:
.L1917:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL2148:
	cmpwi 7,9,0
	beq- 7,.L1919
	.loc 5 425 0
	stw 10,12(9)
.L1920:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LVL2149:
.LBE7096:
.LBE7099:
	.loc 5 125 0
	stw 26,0(31)
	b .L1916
.L1919:
.LBB7100:
.LBB7097:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L1920
.LVL2150:
.L1928:
.LBE7097:
.LBE7100:
	.loc 5 152 0
	stw 25,24(11)
	b .L1929
.L1931:
	.loc 5 162 0
	stw 25,28(11)
	b .L1932
.LBE7104:
	.cfi_endproc
.LFE3139:
	.size	_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i, .-_ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E:
.LFB3006:
	.loc 4 833 0
	.cfi_startproc
.LVL2151:
	mflr 0
	stwu 1,-24(1)
.LCFI264:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB7138:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2152:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L1953
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L1953
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL2153:
	cmpwi 7,4,0
	beq- 7,.L1953
.LVL2154:
.LBB7139:
.LBB7140:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL2155:
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2156:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7141:
.LBB7142:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7142:
.LBE7141:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE7140:
.LBE7139:
.LBB7143:
.LBB7144:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE7144:
.LBE7143:
.LBB7146:
.LBB7147:
	srawi 10,0,31
.LBE7147:
.LBE7146:
.LBB7149:
.LBB7150:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7150:
.LBE7149:
.LBB7153:
.LBB7148:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7148:
.LBE7153:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB7154:
.LBB7145:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7145:
.LBE7154:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL2157:
.LBB7155:
.LBB7151:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1966
.LVL2158:
.L1954:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE7151:
.LBE7155:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L1955
	.loc 4 848 0
	stw 30,4(9)
.LVL2159:
.L1953:
	.loc 4 855 0
	lwz 29,4(30)
.LVL2160:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L1957
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L1957
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L1957
.LVL2161:
.LBB7156:
.LBB7157:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2162:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7158:
.LBB7159:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7159:
.LBE7158:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE7157:
.LBE7156:
.LBB7160:
.LBB7161:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE7161:
.LBE7160:
.LBB7163:
.LBB7164:
	srawi 10,0,31
.LBE7164:
.LBE7163:
.LBB7166:
.LBB7167:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7167:
.LBE7166:
.LBB7170:
.LBB7165:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7165:
.LBE7170:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB7171:
.LBB7162:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7162:
.LBE7171:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL2163:
.LBB7172:
.LBB7168:
	.loc 4 388 0 discriminator 5
	blt- 7,.L1967
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE7168:
.LBE7172:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL2164:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L1959
.LVL2165:
.L1968:
	.loc 4 861 0
	stw 29,4(9)
.L1960:
.LVL2166:
.LBB7173:
.LBB7174:
.LBB7175:
.LBB7176:
	.loc 4 387 0
	lwz 5,0(29)
.LBE7176:
.LBE7175:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7177:
.LBB7178:
	.loc 4 387 0
	lwz 0,0(29)
.LBE7178:
.LBE7177:
.LBE7174:
.LBE7173:
.LBB7179:
.LBB7180:
.LBB7181:
.LBB7182:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7182:
.LBE7181:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7180:
.LBE7179:
.LBE7138:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2167:
	lwz 30,16(1)
.LVL2168:
	lwz 31,20(1)
.LVL2169:
	addi 1,1,24
	.cfi_remember_state
.LCFI265:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2170:
.L1957:
.LCFI266:
	.cfi_restore_state
.LBB7189:
.LBB7186:
.LBB7185:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE3AddEPS2_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7184:
.LBB7183:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7183:
.LBE7184:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7185:
.LBE7186:
.LBE7189:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2171:
	lwz 30,16(1)
.LVL2172:
	lwz 31,20(1)
.LVL2173:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI267:
	.cfi_def_cfa_offset 0
	blr
.LVL2174:
.L1967:
.LCFI268:
	.cfi_restore_state
.LBB7190:
.LBB7187:
.LBB7169:
	.loc 4 388 0
	neg 0,0
.LVL2175:
	stw 0,0(29)
.LBE7169:
.LBE7187:
	.loc 4 859 0
	lwz 0,8(30)
.LVL2176:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L1968
	b .L1959
.LVL2177:
.L1966:
.LBB7188:
.LBB7152:
	.loc 4 388 0
	neg 0,0
.LVL2178:
	b .L1954
.LVL2179:
.L1959:
.LBE7152:
.LBE7188:
	.loc 4 863 0
	stw 29,4(31)
	b .L1960
.LVL2180:
.L1955:
	.loc 4 850 0
	stw 30,4(31)
	b .L1953
.LBE7190:
	.cfi_endproc
.LFE3006:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv:
.LFB2838:
	.loc 4 474 0
	.cfi_startproc
.LVL2181:
	mflr 0
	stwu 1,-24(1)
.LCFI269:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB7191:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2182:
	cmpwi 7,30,0
	beq- 7,.L1970
.LVL2183:
.L1976:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L1979
.L1971:
	.loc 4 477 0
	lwz 30,8(30)
.LVL2184:
	cmpwi 7,30,0
	bne+ 7,.L1976
	.loc 4 483 0
	lwz 30,0(31)
.LVL2185:
	cmpwi 7,30,0
	beq- 7,.L1970
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L1975
.LVL2186:
.L1973:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2187:
	cmpwi 7,30,0
	beq- 7,.L1970
.LVL2188:
.L1975:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L1973
.LBB7192:
.LBB7193:
	.loc 4 387 0
	lwz 5,0(30)
.LBE7193:
.LBE7192:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB7196:
.LBB7194:
	.loc 4 387 0
	srawi 0,5,31
.LBE7194:
.LBE7196:
	.loc 4 487 0
	lwz 9,0(3)
.LBB7197:
.LBB7195:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE7195:
.LBE7197:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2189:
	cmpwi 7,30,0
	bne+ 7,.L1975
.LVL2190:
.L1970:
.LBB7198:
.LBB7199:
.LBB7200:
.LBB7201:
	.loc 4 245 0
	li 0,0
.LBE7201:
.LBE7200:
.LBE7199:
.LBE7198:
.LBB7205:
.LBB7206:
	.loc 4 707 0
	li 9,1
.LBE7206:
.LBE7205:
.LBB7208:
.LBB7204:
.LBB7203:
.LBB7202:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE7202:
.LBE7203:
	.loc 5 110 0
	stw 0,8(31)
.LVL2191:
.LBE7204:
.LBE7208:
.LBB7209:
.LBB7207:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE7207:
.LBE7209:
.LBE7191:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2192:
	lwz 31,20(1)
.LVL2193:
	addi 1,1,24
	.cfi_remember_state
.LCFI270:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2194:
.L1979:
.LCFI271:
	.cfi_restore_state
.LBB7210:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	b .L1971
.LBE7210:
	.cfi_endproc
.LFE2838:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_:
.LFB2890:
	.loc 4 644 0
	.cfi_startproc
.LVL2195:
	mflr 0
.LBB7211:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE7211:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI272:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB7214:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L1980
.LVL2196:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB7212:
.LBB7213:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL2197:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7213:
.LBE7212:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2198:
.L1980:
.LBE7214:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI273:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2890:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_
	.section	.text._ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,"axG",@progbits,_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.type	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, @function
_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei:
.LFB3041:
	.loc 4 767 0
	.cfi_startproc
.LVL2199:
	mflr 0
	stwu 1,-24(1)
.LCFI274:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB7246:
	.loc 4 768 0
	slwi 30,5,4
	.cfi_offset 30, -8
.LVL2200:
.LBE7246:
	.loc 4 767 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
.LBB7286:
.LBB7247:
.LBB7248:
.LBB7249:
	.loc 4 387 0
	lwz 0,0(4)
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	srawi 11,0,31
	xor 9,11,0
	subf 9,11,9
.LBE7249:
.LBE7248:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L1983
.LBB7250:
	.loc 4 777 0
	lwz 28,8(4)
.LVL2201:
.LBB7251:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L1984
	.loc 2 2282 0 discriminator 1
	lwz 11,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,11,0
	blt- 7,.L1984
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL2202:
	cmpwi 7,4,0
	beq- 7,.L1984
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 11,11,9
	cmpw 7,30,11
	bgt- 7,.L1984
.LVL2203:
.LBB7252:
.LBB7253:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL2204:
	bl _ZN7idBTreeI14idDynamicBlockI7idPlaneEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2205:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB7254:
.LBB7255:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7255:
.LBE7254:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE7253:
.LBE7252:
.LBB7256:
.LBB7257:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE7257:
.LBE7256:
.LBB7260:
.LBB7261:
	srawi 11,9,31
.LBE7261:
.LBE7260:
.LBB7263:
.LBB7264:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE7264:
.LBE7263:
.LBB7266:
.LBB7262:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE7262:
.LBE7266:
.LBB7267:
.LBB7258:
	srawi 11,0,31
	xor 0,11,0
.LBE7258:
.LBE7267:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB7268:
.LBB7259:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE7259:
.LBE7268:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL2206:
.LBB7269:
.LBB7265:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L1985
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL2207:
.L1985:
	stw 0,0(31)
.LBE7265:
.LBE7269:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L1986
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL2208:
.L1983:
.LBE7251:
.LBE7250:
.LBE7247:
	.loc 4 804 0
	subf 9,30,9
.LVL2209:
	cmpwi 7,9,1039
	ble- 7,.L1987
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB7278:
.LBB7279:
	.loc 4 388 0
	stwx 9,31,4
.LBE7279:
.LBE7278:
	.loc 4 810 0
	add 4,31,4
.LVL2210:
	.loc 4 816 0
	lwz 9,8(31)
.LVL2211:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L1988
	.loc 4 819 0
	stw 4,4(9)
.L1989:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL2212:
.LBB7280:
.LBB7281:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L1994
.LVL2213:
.L1990:
	stw 30,0(31)
.LBE7281:
.LBE7280:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2214:
.L1987:
.LBE7286:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2215:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI275:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2216:
.L1984:
.LCFI276:
	.cfi_restore_state
.LBB7287:
.LBB7283:
.LBB7276:
.LBB7274:
.LBB7270:
	.loc 4 794 0
	mr 3,29
.LVL2217:
	mr 4,5
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi
.LVL2218:
	.loc 4 795 0
	mr. 28,3
.LVL2219:
	beq- 0,.L1995
.LVL2220:
.LBB7271:
.LBB7272:
	.loc 4 387 0
	lwz 5,0(31)
.LBE7272:
.LBE7271:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL2221:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL2222:
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2223:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1983
.LVL2224:
.L1994:
.LBE7270:
.LBE7274:
.LBE7276:
.LBE7283:
.LBB7284:
.LBB7282:
	.loc 4 388 0
	neg 30,30
.LVL2225:
	b .L1990
.LVL2226:
.L1988:
.LBE7282:
.LBE7284:
	.loc 4 821 0
	stw 4,4(29)
	b .L1989
.LVL2227:
.L1986:
.LBB7285:
.LBB7277:
.LBB7275:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L1983
.LVL2228:
.L1995:
.LBB7273:
	.loc 4 796 0
	li 31,0
.LVL2229:
	b .L1987
.LBE7273:
.LBE7275:
.LBE7277:
.LBE7285:
.LBE7287:
	.cfi_endproc
.LFE3041:
	.size	_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, .-_ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.section	".text"
	.align 2
	.globl _Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si
	.type	_Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si, @function
_Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si:
.LFB2581:
	.loc 2 594 0
	.cfi_startproc
.LVL2230:
	mflr 0
	stwu 1,-32(1)
.LCFI277:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,28(1)
	.loc 2 596 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 2 594 0
	stw 0,36(1)
	.loc 2 596 0
	la 31,.LANCHOR0@l(31)
	.loc 2 594 0
	stw 27,12(1)
	stw 28,16(1)
	.loc 2 595 0
	lwz 0,80(3)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1997
	.loc 2 596 0
	addi 3,31,252
.LVL2231:
	mr 4,0
.LVL2232:
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_
.L1997:
.LVL2233:
	.loc 2 598 0
	lis 28,0x5555
.LBB7288:
.LBB7289:
	.loc 4 586 0
	lwz 9,308(31)
.LBE7289:
.LBE7288:
	.loc 2 598 0
	ori 28,28,21846
	mulhw 28,29,28
	srawi 29,29,31
.LVL2234:
.LBB7294:
.LBB7292:
	.loc 4 586 0
	addi 0,9,1
	stw 0,308(31)
	.loc 4 588 0
	subf. 28,29,28
.LVL2235:
	.loc 4 589 0
	li 29,0
	.loc 4 588 0
	ble- 0,.L1998
	.loc 2 598 0
	addi 27,31,252
	.loc 4 592 0
	mr 4,28
	mr 3,27
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE13AllocInternalEi
.LVL2236:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L1998
	.loc 4 596 0
	mr 3,27
.LVL2237:
	mr 5,28
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL2238:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L1998
	.loc 4 605 0
	lwz 11,292(31)
.LBE7292:
	.loc 4 608 0
	addi 29,3,16
.LBB7293:
	.loc 4 606 0
	lwz 9,296(31)
	.loc 4 605 0
	addi 0,11,1
	stw 0,292(31)
.LBB7290:
.LBB7291:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7291:
.LBE7290:
	.loc 4 606 0
	add 0,9,0
	stw 0,296(31)
.LVL2239:
.L1998:
.LBE7293:
.LBE7294:
	.loc 2 598 0
	stw 29,80(30)
	.loc 2 599 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL2240:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL2241:
	lwz 31,28(1)
	addi 1,1,32
.LCFI278:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2581:
	.size	_Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si, .-_Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si
	.align 2
	.globl _Z16R_DeriveTangentsP14srfTriangles_sb
	.type	_Z16R_DeriveTangentsP14srfTriangles_sb, @function
_Z16R_DeriveTangentsP14srfTriangles_sb:
.LFB2607:
	.loc 2 1656 0
	.cfi_startproc
.LVL2242:
	mflr 0
	stwu 1,-24(1)
.LCFI279:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI280:
	.cfi_def_cfa_register 31
	stw 0,28(1)
	stw 29,12(1)
.LBB7295:
	.loc 2 1660 0
	lwz 0,84(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L2005
	.loc 2 1661 0
	bl _Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s
.LVL2243:
.L2004:
.LBE7295:
	.loc 2 1839 0
	addi 11,31,24
	lwz 0,4(11)
	lwz 29,-12(11)
	mtlr 0
	lwz 30,-8(11)
.LVL2244:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI281:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI282:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2245:
.L2005:
.LCFI283:
	.cfi_restore_state
.LBB7302:
	.loc 2 1665 0
	lbz 0,29(3)
	cmpwi 7,0,0
	bne- 7,.L2004
	.loc 2 1669 0
	lis 9,tr@ha
	lwz 0,44(3)
	la 9,tr@l(9)
	lwz 11,332(9)
	add 0,11,0
	stw 0,332(9)
	.loc 2 1671 0
	lwz 0,80(3)
	cmpwi 7,0,0
	beq- 7,.L2018
.LVL2246:
.L2019:
	lwz 8,44(30)
.L2007:
.LVL2247:
	.loc 2 1682 0
	lis 29,SIMDProcessor@ha
	mr 4,0
	lwz 3,SIMDProcessor@l(29)
	lwz 5,40(30)
	lwz 9,0(3)
	lwz 6,36(30)
	lwz 0,276(9)
.LVL2248:
	lwz 7,48(30)
	mtctr 0
	bctrl
.LVL2249:
	.loc 2 1782 0
	lwz 0,64(30)
	.loc 2 1778 0
	lwz 11,68(30)
.LVL2250:
	.loc 2 1782 0
	cmpwi 7,0,0
	.loc 2 1779 0
	lwz 4,40(30)
.LVL2251:
	.loc 2 1782 0
	ble- 7,.L2009
	mr 10,11
	li 7,0
.LVL2252:
.L2010:
	.loc 2 1783 0 discriminator 2
	lwz 9,0(10)
	.loc 2 1782 0 discriminator 2
	addi 7,7,1
	.loc 2 1783 0 discriminator 2
	lwz 8,4(10)
	.loc 2 1782 0 discriminator 2
	addi 10,10,8
	.loc 2 1783 0 discriminator 2
	mulli 9,9,60
	mulli 8,8,60
	add 9,4,9
	add 8,4,8
.LVL2253:
.LBB7296:
.LBB7297:
	.loc 7 456 0 discriminator 2
	lfs 13,20(9)
	lfs 0,20(8)
	.loc 7 457 0 discriminator 2
	lfs 12,24(9)
	.loc 7 456 0 discriminator 2
	fadds 0,13,0
	.loc 7 458 0 discriminator 2
	lfs 13,28(9)
	.loc 7 456 0 discriminator 2
	stfs 0,20(9)
	.loc 7 457 0 discriminator 2
	lfs 0,24(8)
	fadds 0,12,0
	stfs 0,24(9)
	.loc 7 458 0 discriminator 2
	lfs 0,28(8)
	fadds 0,13,0
	stfs 0,28(9)
.LBE7297:
.LBE7296:
	.loc 2 1782 0 discriminator 2
	lwz 0,64(30)
	cmpw 7,0,7
	bgt+ 7,.L2010
.LVL2254:
	.loc 2 1787 0 discriminator 1
	cmpwi 7,0,0
	li 8,0
.LVL2255:
	ble- 7,.L2020
.LVL2256:
.L2015:
	.loc 2 1788 0 discriminator 2
	lwz 10,0(11)
	.loc 2 1787 0 discriminator 2
	addi 8,8,1
	.loc 2 1788 0 discriminator 2
	lwz 9,4(11)
	.loc 2 1787 0 discriminator 2
	addi 11,11,8
	.loc 2 1788 0 discriminator 2
	mulli 10,10,60
	mulli 9,9,60
	add 10,4,10
.LBB7298:
.LBB7299:
	.loc 7 424 0 discriminator 2
	lwz 0,20(10)
.LBE7299:
.LBE7298:
	.loc 2 1788 0 discriminator 2
	add 9,4,9
.LVL2257:
.LBB7301:
.LBB7300:
	.loc 7 424 0 discriminator 2
	stw 0,20(9)
	.loc 7 425 0 discriminator 2
	lwz 0,24(10)
	stw 0,24(9)
	.loc 7 426 0 discriminator 2
	lwz 0,28(10)
	stw 0,28(9)
.LBE7300:
.LBE7301:
	.loc 2 1787 0 discriminator 2
	lwz 0,64(30)
	cmpw 7,0,8
	bgt+ 7,.L2015
.LVL2258:
.L2020:
	.loc 2 1787 0 is_stmt 0
	lwz 4,40(30)
.L2009:
	.loc 2 1816 0 is_stmt 1
	lwz 3,SIMDProcessor@l(29)
	lwz 5,36(30)
	lwz 9,0(3)
	lwz 0,284(9)
	mtctr 0
	bctrl
.LVL2259:
	.loc 2 1837 0
	li 0,1
	stb 0,29(30)
.LBE7302:
	.loc 2 1839 0
	addi 11,31,24
.LBB7303:
	.loc 2 1838 0
	stb 0,30(30)
.LBE7303:
	.loc 2 1839 0
	lwz 0,4(11)
	lwz 29,-12(11)
	mtlr 0
	lwz 30,-8(11)
.LVL2260:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI284:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI285:
	.cfi_def_cfa_register 1
	blr
.LVL2261:
.L2018:
.LCFI286:
	.cfi_restore_state
.LBB7304:
	.loc 2 1671 0 discriminator 1
	cmpwi 7,4,0
	bne- 7,.L2021
.LVL2262:
.L2008:
	.loc 2 1679 0
	lwz 8,44(30)
	lis 11,0x5555
	ori 11,11,21846
	lwz 9,0(1)
	mulhw 11,8,11
	srawi 0,8,31
	subf 0,0,11
	slwi 0,0,4
	subfic 0,0,-32
	stwux 9,1,0
	addi 0,1,23
	rlwinm 0,0,0,0,27
.LVL2263:
	b .L2007
.LVL2264:
.L2021:
	.loc 2 1672 0
	lwz 4,44(3)
.LVL2265:
	bl _Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si
	.loc 2 1674 0
	lwz 0,80(30)
.LVL2266:
	.loc 2 1678 0
	cmpwi 7,0,0
	bne+ 7,.L2019
	b .L2008
.LBE7304:
	.cfi_endproc
.LFE2607:
	.size	_Z16R_DeriveTangentsP14srfTriangles_sb, .-_Z16R_DeriveTangentsP14srfTriangles_sb
	.align 2
	.globl _Z18R_DeriveFacePlanesP14srfTriangles_s
	.type	_Z18R_DeriveFacePlanesP14srfTriangles_s, @function
_Z18R_DeriveFacePlanesP14srfTriangles_s:
.LFB2593:
	.loc 2 836 0
	.cfi_startproc
.LVL2267:
	mflr 0
	stwu 1,-16(1)
.LCFI287:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB7305:
	.loc 2 839 0
	lwz 4,80(3)
	cmpwi 7,4,0
	beq- 7,.L2024
	.cfi_offset 65, 4
.LVL2268:
.L2023:
	.loc 2 846 0
	lis 9,SIMDProcessor@ha
	lwz 5,40(31)
	lwz 3,SIMDProcessor@l(9)
	lwz 6,36(31)
	lwz 9,0(3)
	lwz 7,48(31)
	lwz 0,272(9)
	lwz 8,44(31)
	mtctr 0
	bctrl
.LVL2269:
	.loc 2 889 0
	li 0,1
	stb 0,30(31)
.LBE7305:
	.loc 2 890 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2270:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI288:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2271:
.L2024:
.LCFI289:
	.cfi_restore_state
.LBB7306:
	.loc 2 840 0
	lwz 4,44(3)
	bl _Z26R_AllocStaticTriSurfPlanesP14srfTriangles_si
.LVL2272:
	lwz 4,80(31)
	b .L2023
.LBE7306:
	.cfi_endproc
.LFE2593:
	.size	_Z18R_DeriveFacePlanesP14srfTriangles_s, .-_Z18R_DeriveFacePlanesP14srfTriangles_s
	.align 2
	.globl _Z21R_CreateVertexNormalsP14srfTriangles_s
	.type	_Z21R_CreateVertexNormalsP14srfTriangles_s, @function
_Z21R_CreateVertexNormalsP14srfTriangles_s:
.LFB2594:
	.loc 2 900 0
	.cfi_startproc
.LVL2273:
	mflr 0
	stwu 1,-24(1)
.LCFI290:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
.LBB7323:
	.loc 2 904 0
	lwz 0,36(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L2026
	li 10,0
	li 11,0
.LBB7324:
.LBB7325:
	.loc 7 416 0
	li 0,0
.LVL2274:
.L2027:
.LBE7325:
.LBE7324:
	.loc 2 905 0 discriminator 2
	lwz 9,40(31)
	.loc 2 904 0 discriminator 2
	addi 11,11,1
	.loc 2 905 0 discriminator 2
	add 9,9,10
.LVL2275:
	.loc 2 904 0 discriminator 2
	addi 10,10,60
.LBB7327:
.LBB7326:
	.loc 7 416 0 discriminator 2
	stw 0,28(9)
	stw 0,24(9)
	stw 0,20(9)
.LBE7326:
.LBE7327:
	.loc 2 904 0 discriminator 2
	lwz 9,36(31)
.LVL2276:
	cmpw 7,9,11
	bgt+ 7,.L2027
.LVL2277:
.L2026:
	.loc 2 908 0
	lwz 0,80(31)
	cmpwi 7,0,0
	beq- 7,.L2028
	.loc 2 908 0 is_stmt 0 discriminator 1
	lbz 0,30(31)
	cmpwi 7,0,0
	beq- 7,.L2028
.LVL2278:
.L2029:
	.loc 2 911 0 is_stmt 1
	lwz 0,52(31)
	cmpwi 7,0,0
	beq- 7,.L2041
.L2030:
.LBB7328:
	.loc 2 915 0
	lwz 0,44(31)
	li 8,0
.LBE7328:
	.loc 2 914 0
	lwz 10,80(31)
.LVL2279:
.LBB7337:
	.loc 2 915 0
	cmpwi 7,0,0
	ble- 7,.L2025
.LVL2280:
.L2036:
.LBE7337:
	.loc 2 904 0
	li 11,0
	slwi 7,8,2
.LVL2281:
.L2033:
.LBB7338:
.LBB7329:
.LBB7330:
	.loc 2 917 0 discriminator 2
	lwz 9,52(31)
	add 0,7,11
.LBB7331:
.LBB7332:
	.loc 7 456 0 discriminator 2
	lfs 0,0(10)
.LBE7332:
.LBE7331:
.LBE7330:
	.loc 2 916 0 discriminator 2
	cmpwi 7,11,8
.LBB7335:
	.loc 2 918 0 discriminator 2
	lwzx 9,9,0
.LBE7335:
	.loc 2 916 0 discriminator 2
	addi 11,11,4
.LBB7336:
	.loc 2 918 0 discriminator 2
	lwz 0,40(31)
	mulli 9,9,60
	add 9,0,9
.LVL2282:
.LBB7334:
.LBB7333:
	.loc 7 456 0 discriminator 2
	lfs 13,20(9)
	.loc 7 457 0 discriminator 2
	lfs 12,24(9)
	.loc 7 456 0 discriminator 2
	fadds 0,13,0
	.loc 7 458 0 discriminator 2
	lfs 13,28(9)
	.loc 7 456 0 discriminator 2
	stfs 0,20(9)
	.loc 7 457 0 discriminator 2
	lfs 0,4(10)
	fadds 0,12,0
	stfs 0,24(9)
	.loc 7 458 0 discriminator 2
	lfs 0,8(10)
	fadds 0,13,0
	stfs 0,28(9)
.LBE7333:
.LBE7334:
.LBE7336:
	.loc 2 916 0 discriminator 2
	bne+ 7,.L2033
.LVL2283:
.LBE7329:
	.loc 2 915 0
	lwz 0,44(31)
	addi 8,8,3
.LVL2284:
	addi 10,10,16
.LVL2285:
	cmpw 7,0,8
	bgt+ 7,.L2036
.LVL2286:
.LBE7338:
	.loc 2 923 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L2025
	lis 9,.LC20@ha
.LVL2287:
	lis 6,_ZN6idMath5iSqrtE@ha
.LBB7339:
.LBB7340:
.LBB7341:
.LBB7342:
	.loc 6 275 0
	lfs 6,.LC20@l(9)
	.loc 6 278 0
	lis 9,.LC22@ha
	lfs 7,.LC22@l(9)
.LBE7342:
.LBE7341:
.LBE7340:
.LBE7339:
	.loc 2 923 0
	li 11,0
	la 6,_ZN6idMath5iSqrtE@l(6)
.LVL2288:
.L2034:
	.loc 2 924 0 discriminator 2
	lwz 10,52(31)
	.loc 2 900 0 discriminator 2
	slwi 0,11,2
	.loc 2 924 0 discriminator 2
	lwz 9,48(31)
	.loc 2 923 0 discriminator 2
	addi 11,11,1
	.loc 2 924 0 discriminator 2
	lwzx 10,10,0
	lwz 8,40(31)
	lwzx 9,9,0
	mulli 10,10,60
	mulli 9,9,60
	add 10,8,10
.LBB7346:
.LBB7347:
	.loc 7 424 0 discriminator 2
	lwz 7,20(10)
.LBE7347:
.LBE7346:
	.loc 2 924 0 discriminator 2
	add 9,8,9
.LVL2289:
.LBB7349:
.LBB7348:
	.loc 7 424 0 discriminator 2
	stw 7,20(9)
	.loc 7 425 0 discriminator 2
	lwz 8,24(10)
	stw 8,24(9)
	.loc 7 426 0 discriminator 2
	lwz 10,28(10)
.LVL2290:
	stw 10,28(9)
.LBE7348:
.LBE7349:
	.loc 2 925 0 discriminator 2
	lwz 9,48(31)
.LVL2291:
	lwz 10,40(31)
	lwzx 9,9,0
	mulli 9,9,60
	add 9,10,9
.LVL2292:
.LBB7350:
.LBB7345:
	.loc 7 649 0 discriminator 2
	lfs 12,24(9)
	lfs 11,20(9)
	fmuls 0,12,12
	lfs 13,28(9)
	fmadds 0,11,11,0
	fmadds 0,13,13,0
	stfs 0,8(1)
.LVL2293:
.LBB7344:
.LBB7343:
	.loc 6 275 0 discriminator 2
	fmuls 8,0,6
	.loc 6 270 0 discriminator 2
	lwz 0,8(1)
.LVL2294:
	.loc 2 900 0 discriminator 2
	fneg 8,8
	.loc 6 276 0 discriminator 2
	rlwinm 8,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 10,6,0
	subfic 0,8,380
	rlwinm 0,0,22,0,8
	or 0,0,10
	.loc 6 277 0 discriminator 2
	stw 0,12(1)
	lfs 0,12(1)
.LVL2295:
	fmr 9,0
.LVL2296:
	.loc 6 278 0 discriminator 2
	fmul 10,9,9
	fmadd 10,8,10,7
	fmul 10,9,10
.LVL2297:
	.loc 6 279 0 discriminator 2
	fmul 0,10,10
	fmadd 0,8,0,7
.LVL2298:
	fmul 0,10,0
.LVL2299:
	.loc 6 280 0 discriminator 2
	frsp 0,0
.LVL2300:
.LBE7343:
.LBE7344:
	.loc 7 651 0 discriminator 2
	fmuls 11,11,0
	.loc 7 652 0 discriminator 2
	fmuls 12,12,0
	.loc 7 653 0 discriminator 2
	fmuls 0,13,0
	.loc 7 651 0 discriminator 2
	stfs 11,20(9)
	.loc 7 652 0 discriminator 2
	stfs 12,24(9)
	.loc 7 653 0 discriminator 2
	stfs 0,28(9)
.LBE7345:
.LBE7350:
	.loc 2 923 0 discriminator 2
	lwz 0,44(31)
	cmpw 7,0,11
	bgt+ 7,.L2034
.LVL2301:
.L2025:
.LBE7323:
	.loc 2 927 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL2302:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI291:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2303:
.L2028:
.LCFI292:
	.cfi_restore_state
.LBB7351:
	.loc 2 909 0
	mr 3,31
.LVL2304:
	bl _Z18R_DeriveFacePlanesP14srfTriangles_s
	b .L2029
.L2041:
	.loc 2 912 0
	mr 3,31
	bl _Z18R_CreateSilIndexesP14srfTriangles_s
	b .L2030
.LBE7351:
	.cfi_endproc
.LFE2594:
	.size	_Z21R_CreateVertexNormalsP14srfTriangles_s, .-_Z21R_CreateVertexNormalsP14srfTriangles_s
	.section	.text._ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i
	.type	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i, @function
_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i:
.LFB3140:
	.loc 5 114 0
	.cfi_startproc
.LVL2305:
	mflr 0
	stwu 1,-40(1)
.LCFI293:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB7379:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L2075
.LVL2306:
.L2043:
.LBB7380:
.LBB7381:
.LBB7382:
.LBB7383:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE7383:
.LBE7382:
.LBE7381:
.LBE7380:
.LBB7389:
.LBB7390:
	.loc 5 418 0
	li 26,0
.LBE7390:
.LBE7389:
.LBB7397:
.LBB7388:
.LBB7386:
.LBB7384:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE7384:
.LBE7386:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB7387:
.LBB7385:
	.loc 4 216 0
	mr 27,3
.LVL2307:
.LBE7385:
.LBE7387:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE7388:
.LBE7397:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL2308:
.L2074:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L2076
.L2066:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L2072
	.loc 5 135 0
	stw 29,0(11)
.LVL2309:
	.loc 5 139 0
	b .L2072
.L2052:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L2051
	mr 30,9
.LVL2310:
.L2072:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L2052
.L2051:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L2077
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL2311:
	cmpwi 7,0,3
	ble+ 7,.L2074
.LVL2312:
.LBB7398:
.LBB7395:
.LBB7391:
.LBB7392:
.LBB7393:
.LBB7394:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2313:
.LBE7394:
.LBE7393:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE7392:
.LBE7391:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL2314:
	.loc 5 404 0
	stw 10,8(9)
.LVL2315:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L2062
	li 11,3
.LVL2316:
.L2063:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2317:
	.loc 5 405 0
	addi 11,11,2
.LVL2318:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L2063
.LVL2319:
.L2062:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL2320:
	cmpwi 7,9,0
	beq- 7,.L2064
	.loc 5 425 0
	stw 10,12(9)
.L2065:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE7395:
.LBE7398:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L2074
	mr 11,30
.LVL2321:
	.loc 5 132 0
	lwz 30,24(11)
.LVL2322:
	cmpwi 7,30,0
	bne+ 7,.L2066
.LVL2323:
.L2076:
	.loc 5 189 0
	lwz 0,0(31)
.LBE7379:
	.loc 5 200 0
	mr 3,25
.LBB7428:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL2324:
	addi 0,11,1
	stw 0,20(9)
.LBE7428:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL2325:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2326:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2327:
	addi 1,1,40
	.cfi_remember_state
.LCFI294:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2328:
.L2064:
.LCFI295:
	.cfi_restore_state
.LBB7429:
.LBB7399:
.LBB7396:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L2065
.LVL2329:
.L2077:
.LBE7396:
.LBE7399:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L2078
	.loc 5 159 0
	beq- 7,.L2058
	.loc 5 160 0
	stw 25,16(9)
.L2059:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L2057:
	.loc 5 169 0
	stw 11,12(27)
.LBE7429:
	.loc 5 200 0
	mr 3,25
.LBB7430:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE7430:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL2330:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2331:
	lwz 30,32(1)
.LVL2332:
	lwz 31,36(1)
.LVL2333:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI296:
	.cfi_def_cfa_offset 0
	blr
.LVL2334:
.L2078:
.LCFI297:
	.cfi_restore_state
.LBB7431:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L2055
	.loc 5 150 0
	stw 25,12(9)
.L2056:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L2057
.LVL2335:
.L2075:
.LBB7400:
.LBB7401:
.LBB7402:
.LBB7403:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE7403:
.LBE7402:
	.loc 5 377 0
	li 27,0
.LBB7406:
.LBB7404:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2336:
.LBE7404:
.LBE7406:
	.loc 5 377 0
	stw 27,4(3)
.LBB7407:
.LBB7405:
	.loc 4 216 0
	mr 9,3
.LVL2337:
.LBE7405:
.LBE7407:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7401:
.LBE7400:
.LBB7408:
.LBB7409:
.LBB7410:
.LBB7411:
.LBB7412:
.LBB7413:
	.loc 4 216 0
	li 3,36
.LVL2338:
.LBE7413:
.LBE7412:
.LBE7411:
.LBE7410:
.LBE7409:
.LBE7408:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL2339:
	stw 26,8(9)
.LBB7425:
.LBB7422:
.LBB7420:
.LBB7418:
.LBB7416:
.LBB7414:
	.loc 4 215 0
	lwz 9,16(31)
.LBE7414:
.LBE7416:
.LBE7418:
.LBE7420:
.LBE7422:
.LBE7425:
	.loc 5 124 0
	lwz 28,0(31)
.LVL2340:
.LBB7426:
.LBB7423:
.LBB7421:
.LBB7419:
.LBB7417:
.LBB7415:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2341:
.LBE7415:
.LBE7417:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7419:
.LBE7421:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL2342:
	.loc 5 404 0
	stw 10,8(9)
.LVL2343:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L2044
	li 11,3
.LVL2344:
.L2045:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2345:
	.loc 5 405 0
	addi 11,11,2
.LVL2346:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L2045
.LVL2347:
.L2044:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL2348:
	cmpwi 7,9,0
	beq- 7,.L2046
	.loc 5 425 0
	stw 10,12(9)
.L2047:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LVL2349:
.LBE7423:
.LBE7426:
	.loc 5 125 0
	stw 26,0(31)
	b .L2043
.L2046:
.LBB7427:
.LBB7424:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L2047
.LVL2350:
.L2055:
.LBE7424:
.LBE7427:
	.loc 5 152 0
	stw 25,24(11)
	b .L2056
.L2058:
	.loc 5 162 0
	stw 25,28(11)
	b .L2059
.LBE7431:
	.cfi_endproc
.LFE3140:
	.size	_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i, .-_ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E:
.LFB3010:
	.loc 4 833 0
	.cfi_startproc
.LVL2351:
	mflr 0
	stwu 1,-24(1)
.LCFI298:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB7465:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2352:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L2080
.LVL2353:
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L2080
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL2354:
	cmpwi 7,4,0
	beq- 7,.L2080
.LVL2355:
.LBB7466:
.LBB7467:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL2356:
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2357:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7468:
.LBB7469:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7469:
.LBE7468:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE7467:
.LBE7466:
.LBB7470:
.LBB7471:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE7471:
.LBE7470:
.LBB7473:
.LBB7474:
	srawi 10,0,31
.LBE7474:
.LBE7473:
.LBB7476:
.LBB7477:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7477:
.LBE7476:
.LBB7480:
.LBB7475:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7475:
.LBE7480:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB7481:
.LBB7472:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7472:
.LBE7481:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL2358:
.LBB7482:
.LBB7478:
	.loc 4 388 0 discriminator 5
	blt- 7,.L2093
.LVL2359:
.L2081:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE7478:
.LBE7482:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L2082
	.loc 4 848 0
	stw 30,4(9)
.LVL2360:
.L2080:
	.loc 4 855 0
	lwz 29,4(30)
.LVL2361:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L2084
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L2084
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L2084
.LVL2362:
.LBB7483:
.LBB7484:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2363:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7485:
.LBB7486:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7486:
.LBE7485:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE7484:
.LBE7483:
.LBB7487:
.LBB7488:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE7488:
.LBE7487:
.LBB7490:
.LBB7491:
	srawi 10,0,31
.LBE7491:
.LBE7490:
.LBB7493:
.LBB7494:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7494:
.LBE7493:
.LBB7497:
.LBB7492:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7492:
.LBE7497:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB7498:
.LBB7489:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7489:
.LBE7498:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL2364:
.LBB7499:
.LBB7495:
	.loc 4 388 0 discriminator 5
	blt- 7,.L2094
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE7495:
.LBE7499:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL2365:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L2086
.LVL2366:
.L2095:
	.loc 4 861 0
	stw 29,4(9)
.L2087:
.LVL2367:
.LBB7500:
.LBB7501:
.LBB7502:
.LBB7503:
	.loc 4 387 0
	lwz 5,0(29)
.LBE7503:
.LBE7502:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7504:
.LBB7505:
	.loc 4 387 0
	lwz 0,0(29)
.LBE7505:
.LBE7504:
.LBE7501:
.LBE7500:
.LBB7506:
.LBB7507:
.LBB7508:
.LBB7509:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7509:
.LBE7508:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7507:
.LBE7506:
.LBE7465:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2368:
	lwz 30,16(1)
.LVL2369:
	lwz 31,20(1)
.LVL2370:
	addi 1,1,24
	.cfi_remember_state
.LCFI299:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2371:
.L2084:
.LCFI300:
	.cfi_restore_state
.LBB7516:
.LBB7513:
.LBB7512:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE3AddEPS2_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7511:
.LBB7510:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7510:
.LBE7511:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7512:
.LBE7513:
.LBE7516:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2372:
	lwz 30,16(1)
.LVL2373:
	lwz 31,20(1)
.LVL2374:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI301:
	.cfi_def_cfa_offset 0
	blr
.LVL2375:
.L2094:
.LCFI302:
	.cfi_restore_state
.LBB7517:
.LBB7514:
.LBB7496:
	.loc 4 388 0
	neg 0,0
.LVL2376:
	stw 0,0(29)
.LBE7496:
.LBE7514:
	.loc 4 859 0
	lwz 0,8(30)
.LVL2377:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L2095
	b .L2086
.LVL2378:
.L2093:
.LBB7515:
.LBB7479:
	.loc 4 388 0
	neg 0,0
.LVL2379:
	b .L2081
.LVL2380:
.L2086:
.LBE7479:
.LBE7515:
	.loc 4 863 0
	stw 29,4(31)
	b .L2087
.LVL2381:
.L2082:
	.loc 4 850 0
	stw 30,4(31)
	b .L2080
.LBE7517:
	.cfi_endproc
.LFE3010:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv:
.LFB2840:
	.loc 4 474 0
	.cfi_startproc
.LVL2382:
	mflr 0
	stwu 1,-24(1)
.LCFI303:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB7518:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2383:
	cmpwi 7,30,0
	beq- 7,.L2097
.LVL2384:
.L2103:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L2106
.L2098:
	.loc 4 477 0
	lwz 30,8(30)
.LVL2385:
	cmpwi 7,30,0
	bne+ 7,.L2103
	.loc 4 483 0
	lwz 30,0(31)
.LVL2386:
	cmpwi 7,30,0
	beq- 7,.L2097
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L2102
.LVL2387:
.L2100:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2388:
	cmpwi 7,30,0
	beq- 7,.L2097
.LVL2389:
.L2102:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L2100
.LBB7519:
.LBB7520:
	.loc 4 387 0
	lwz 5,0(30)
.LBE7520:
.LBE7519:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB7523:
.LBB7521:
	.loc 4 387 0
	srawi 0,5,31
.LBE7521:
.LBE7523:
	.loc 4 487 0
	lwz 9,0(3)
.LBB7524:
.LBB7522:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE7522:
.LBE7524:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2390:
	cmpwi 7,30,0
	bne+ 7,.L2102
.LVL2391:
.L2097:
.LBB7525:
.LBB7526:
.LBB7527:
.LBB7528:
	.loc 4 245 0
	li 0,0
.LBE7528:
.LBE7527:
.LBE7526:
.LBE7525:
.LBB7532:
.LBB7533:
	.loc 4 707 0
	li 9,1
.LBE7533:
.LBE7532:
.LBB7535:
.LBB7531:
.LBB7530:
.LBB7529:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE7529:
.LBE7530:
	.loc 5 110 0
	stw 0,8(31)
.LVL2392:
.LBE7531:
.LBE7535:
.LBB7536:
.LBB7534:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE7534:
.LBE7536:
.LBE7518:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2393:
	lwz 31,20(1)
.LVL2394:
	addi 1,1,24
	.cfi_remember_state
.LCFI304:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2395:
.L2106:
.LCFI305:
	.cfi_restore_state
.LBB7537:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	b .L2098
.LBE7537:
	.cfi_endproc
.LFE2840:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_:
.LFB2887:
	.loc 4 644 0
	.cfi_startproc
.LVL2396:
	mflr 0
.LBB7538:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE7538:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI306:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB7541:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L2107
.LVL2397:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB7539:
.LBB7540:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL2398:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7540:
.LBE7539:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2399:
.L2107:
.LBE7541:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI307:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2887:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_
	.section	.text._ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,"axG",@progbits,_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.type	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, @function
_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei:
.LFB3048:
	.loc 4 767 0
	.cfi_startproc
.LVL2400:
	mflr 0
	stwu 1,-24(1)
.LCFI308:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB7573:
	.loc 4 768 0
	slwi 30,5,4
	.cfi_offset 30, -8
.LVL2401:
.LBE7573:
	.loc 4 767 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
.LBB7613:
.LBB7574:
.LBB7575:
.LBB7576:
	.loc 4 387 0
	lwz 0,0(4)
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	srawi 11,0,31
	xor 9,11,0
	subf 9,11,9
.LBE7576:
.LBE7575:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L2110
.LBB7577:
	.loc 4 777 0
	lwz 28,8(4)
.LVL2402:
.LBB7578:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L2111
	.loc 2 2282 0 discriminator 1
	lwz 11,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,11,0
	blt- 7,.L2111
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL2403:
	cmpwi 7,4,0
	beq- 7,.L2111
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 11,11,9
	cmpw 7,30,11
	bgt- 7,.L2111
.LVL2404:
.LBB7579:
.LBB7580:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL2405:
	bl _ZN7idBTreeI14idDynamicBlockI9silEdge_tEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2406:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB7581:
.LBB7582:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7582:
.LBE7581:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE7580:
.LBE7579:
.LBB7583:
.LBB7584:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE7584:
.LBE7583:
.LBB7587:
.LBB7588:
	srawi 11,9,31
.LBE7588:
.LBE7587:
.LBB7590:
.LBB7591:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE7591:
.LBE7590:
.LBB7593:
.LBB7589:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE7589:
.LBE7593:
.LBB7594:
.LBB7585:
	srawi 11,0,31
	xor 0,11,0
.LBE7585:
.LBE7594:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB7595:
.LBB7586:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE7586:
.LBE7595:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL2407:
.LBB7596:
.LBB7592:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L2112
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL2408:
.L2112:
	stw 0,0(31)
.LBE7592:
.LBE7596:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L2113
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL2409:
.L2110:
.LBE7578:
.LBE7577:
.LBE7574:
	.loc 4 804 0
	subf 9,30,9
.LVL2410:
	cmpwi 7,9,1039
	ble- 7,.L2114
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB7605:
.LBB7606:
	.loc 4 388 0
	stwx 9,31,4
.LBE7606:
.LBE7605:
	.loc 4 810 0
	add 4,31,4
.LVL2411:
	.loc 4 816 0
	lwz 9,8(31)
.LVL2412:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L2115
	.loc 4 819 0
	stw 4,4(9)
.L2116:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL2413:
.LBB7607:
.LBB7608:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L2121
.LVL2414:
.L2117:
	stw 30,0(31)
.LBE7608:
.LBE7607:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2415:
.L2114:
.LBE7613:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2416:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI309:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2417:
.L2111:
.LCFI310:
	.cfi_restore_state
.LBB7614:
.LBB7610:
.LBB7603:
.LBB7601:
.LBB7597:
	.loc 4 794 0
	mr 3,29
.LVL2418:
	mr 4,5
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi
.LVL2419:
	.loc 4 795 0
	mr. 28,3
.LVL2420:
	beq- 0,.L2122
.LVL2421:
.LBB7598:
.LBB7599:
	.loc 4 387 0
	lwz 5,0(31)
.LBE7599:
.LBE7598:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL2422:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL2423:
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2424:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L2110
.LVL2425:
.L2121:
.LBE7597:
.LBE7601:
.LBE7603:
.LBE7610:
.LBB7611:
.LBB7609:
	.loc 4 388 0
	neg 30,30
.LVL2426:
	b .L2117
.LVL2427:
.L2115:
.LBE7609:
.LBE7611:
	.loc 4 821 0
	stw 4,4(29)
	b .L2116
.LVL2428:
.L2113:
.LBB7612:
.LBB7604:
.LBB7602:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L2110
.LVL2429:
.L2122:
.LBB7600:
	.loc 4 796 0
	li 31,0
.LVL2430:
	b .L2114
.LBE7600:
.LBE7602:
.LBE7604:
.LBE7612:
.LBE7614:
	.cfi_endproc
.LFE3048:
	.size	_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, .-_ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.section	".text"
	.align 2
	.globl _Z18R_IdentifySilEdgesP14srfTriangles_sb
	.type	_Z18R_IdentifySilEdgesP14srfTriangles_sb, @function
_Z18R_IdentifySilEdgesP14srfTriangles_sb:
.LFB2597:
	.loc 2 1012 0
	.cfi_startproc
.LVL2431:
	mflr 0
	stwu 1,-40(1)
.LCFI311:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB7615:
	.loc 2 1021 0
	lis 9,.LANCHOR0@ha
.LBB7616:
.LBB7617:
	.loc 3 330 0
	lis 11,_ZN11idHashIndex13INVALID_INDEXE@ha
.LBE7617:
.LBE7616:
.LBE7615:
	.loc 2 1012 0
	stw 24,8(1)
.LBB7643:
	.loc 2 1019 0
	lis 24,0x5555
	.cfi_offset 24, -32
.LBE7643:
	.loc 2 1012 0
	stw 30,32(1)
.LBB7644:
	.loc 2 1019 0
	ori 24,24,21846
.LBE7644:
	.loc 2 1012 0
	stw 31,36(1)
.LBB7645:
	.loc 2 1021 0
	la 31,.LANCHOR0@l(9)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LBE7645:
	.loc 2 1012 0
	stw 0,44(1)
	mr 30,3
	stw 25,12(1)
.LBB7646:
.LBB7621:
.LBB7618:
	.loc 3 330 0
	la 11,_ZN11idHashIndex13INVALID_INDEXE@l(11)
.LBE7618:
.LBE7621:
.LBE7646:
	.loc 2 1012 0
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
.LBB7647:
	.loc 2 1022 0
	lwz 5,.LANCHOR0@l(9)
	.loc 2 1019 0
	lwz 0,44(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.loc 2 1022 0
	lwz 3,4(31)
.LVL2432:
	.loc 2 1019 0
	mulhw 24,0,24
	srawi 0,0,31
.LBB7622:
.LBB7619:
	.loc 3 330 0
	cmpw 7,3,11
.LBE7619:
.LBE7622:
	.loc 2 1019 0
	subf 24,0,24
.LVL2433:
	.loc 2 1021 0
	li 0,0
	stw 0,44(31)
.LBB7623:
.LBB7620:
	.loc 3 330 0
	beq- 7,.L2124
	.loc 3 331 0
	li 4,255
	slwi 5,5,2
	bl memset
.L2124:
.LBE7620:
.LBE7623:
.LBB7624:
	.loc 2 1028 0
	cmpwi 7,24,0
.LBE7624:
	.loc 2 1025 0
	li 0,0
	.loc 2 1023 0
	stw 24,32(31)
	.loc 2 1025 0
	stw 0,36(31)
	.loc 2 1026 0
	stw 0,40(31)
.LVL2434:
.LBB7628:
	.loc 2 1028 0
	ble- 7,.L2125
	li 25,0
	li 29,0
.LVL2435:
.L2126:
.LBB7625:
	.loc 2 1031 0 discriminator 2
	lwz 9,52(30)
	.loc 2 1036 0 discriminator 2
	mr 5,29
	.loc 2 1031 0 discriminator 2
	lwzux 28,9,25
.LVL2436:
.LBE7625:
	.loc 2 1028 0 discriminator 2
	addi 25,25,12
.LVL2437:
.LBB7626:
	.loc 2 1032 0 discriminator 2
	lwz 26,4(9)
.LVL2438:
	.loc 2 1036 0 discriminator 2
	mr 3,28
	.loc 2 1033 0 discriminator 2
	lwz 27,8(9)
.LVL2439:
	.loc 2 1036 0 discriminator 2
	mr 4,26
	bl _ZL12R_DefineEdgeiii
.LVL2440:
	.loc 2 1037 0 discriminator 2
	mr 5,29
	mr 3,26
	mr 4,27
	bl _ZL12R_DefineEdgeiii
	.loc 2 1038 0 discriminator 2
	mr 5,29
	mr 3,27
	mr 4,28
.LBE7626:
	.loc 2 1028 0 discriminator 2
	addi 29,29,1
.LBB7627:
	.loc 2 1038 0 discriminator 2
	bl _ZL12R_DefineEdgeiii
.LVL2441:
.LBE7627:
	.loc 2 1028 0 discriminator 2
	cmpw 7,29,24
	bne+ 7,.L2126
	.loc 2 1028 0 is_stmt 0
	lwz 5,36(31)
	lwz 6,40(31)
.LBE7628:
	.loc 2 1041 0 is_stmt 1
	cmpwi 7,5,0
	bne- 7,.L2127
	.loc 2 1041 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	beq- 7,.L2125
.L2127:
	.loc 2 1042 0 is_stmt 1
	lis 9,common@ha
	lis 4,.LC28@ha
	lwz 3,common@l(9)
	la 4,.LC28@l(4)
	lwz 9,0(3)
	lwz 0,84(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL2442:
.L2125:
	.loc 2 1098 0
	lis 9,c_totalSilEdges@ha
	lwz 4,44(31)
	lwz 0,c_totalSilEdges@l(9)
	.loc 2 1101 0
	lis 6,_ZL11SilEdgeSortPKvS0_@ha
	lwz 3,28(31)
	li 5,16
	.loc 2 1098 0
	add 0,0,4
	.loc 2 1101 0
	la 6,_ZL11SilEdgeSortPKvS0_@l(6)
	.loc 2 1098 0
	stw 0,c_totalSilEdges@l(9)
	.loc 2 1101 0
	bl qsort
.LVL2443:
	.loc 2 1109 0
	lwz 29,44(31)
	cmpwi 7,29,0
	ble- 7,.L2128
	lwz 8,28(31)
	mtctr 29
	lwz 10,32(31)
	.loc 2 1108 0
	li 0,0
	.loc 2 1109 0
	li 9,0
.LVL2444:
.L2130:
	.loc 2 1012 0
	slwi 11,9,4
	.loc 2 1109 0
	addi 9,9,1
	.loc 2 1012 0
	add 11,8,11
	.loc 2 1110 0
	lwz 11,4(11)
	.loc 2 1111 0
	xor 7,11,10
	subfic 7,7,0
	addze 7,0
	mr 0,7
.LVL2445:
	.loc 2 1109 0
	bdnz .L2130
	.loc 2 1012 0
	cntlzw 0,7
	.loc 2 1123 0
	stw 29,72(30)
.LVL2446:
	.loc 2 1012 0
	srwi 0,0,5
.LBB7629:
.LBB7630:
	.loc 2 1124 0
	addi 28,31,388
.LBE7630:
.LBE7629:
	.loc 2 1012 0
	stb 0,31(30)
.LBB7640:
.LBB7635:
	.loc 4 592 0
	mr 4,29
	mr 3,28
	.loc 4 586 0
	lwz 9,444(31)
.LVL2447:
	addi 0,9,1
	stw 0,444(31)
	.loc 4 592 0
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE13AllocInternalEi
.LVL2448:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L2136
	.loc 4 596 0
	mr 3,28
.LVL2449:
	mr 5,29
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL2450:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L2137
	.loc 4 605 0
	lwz 11,428(31)
	.loc 4 606 0
	lwz 9,432(31)
	.loc 4 605 0
	addi 0,11,1
.LBE7635:
	.loc 4 608 0
	lwz 29,44(31)
.LVL2451:
.LBB7636:
	.loc 4 605 0
	stw 0,428(31)
.LBB7631:
.LBB7632:
	.loc 4 387 0
	lwz 0,0(3)
.LBE7632:
.LBE7631:
.LBE7636:
	.loc 4 608 0
	addi 3,3,16
.LVL2452:
.LBB7637:
.LBB7634:
.LBB7633:
	.loc 4 387 0
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7633:
.LBE7634:
	.loc 4 606 0
	add 0,9,0
	stw 0,432(31)
.LVL2453:
.L2132:
.LBE7637:
.LBE7640:
	.loc 2 1124 0
	stw 3,76(30)
	.loc 2 1125 0
	slwi 5,29,4
	lwz 4,28(31)
	bl memcpy
.LBE7647:
	.loc 2 1126 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL2454:
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL2455:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI312:
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
.LVL2456:
.L2137:
.LCFI313:
	.cfi_restore_state
.LBB7648:
.LBB7641:
.LBB7638:
	.loc 4 597 0
	lwz 29,44(31)
.LVL2457:
	.loc 4 598 0
	li 3,0
.LVL2458:
	b .L2132
.LVL2459:
.L2136:
	.loc 4 593 0
	lwz 29,44(31)
.LVL2460:
.LBE7638:
.LBE7641:
	.loc 2 1124 0
	stw 3,76(30)
	.loc 2 1125 0
	lwz 4,28(31)
	slwi 5,29,4
	bl memcpy
.LVL2461:
.LBE7648:
	.loc 2 1126 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL2462:
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL2463:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI314:
	.cfi_def_cfa_offset 0
	blr
.LVL2464:
.L2128:
.LCFI315:
	.cfi_restore_state
	li 0,1
.LBB7649:
	.loc 2 1123 0
	stw 29,72(30)
.LVL2465:
.LBE7649:
	.loc 2 1126 0
	stb 0,31(30)
.LBB7650:
.LBB7642:
.LBB7639:
	.loc 4 589 0
	li 3,0
	.loc 4 586 0
	lwz 9,444(31)
	addi 0,9,1
	stw 0,444(31)
	b .L2132
.LBE7639:
.LBE7642:
.LBE7650:
	.cfi_endproc
.LFE2597:
	.size	_Z18R_IdentifySilEdgesP14srfTriangles_sb, .-_Z18R_IdentifySilEdgesP14srfTriangles_sb
	.section	.text._ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i,"axG",@progbits,_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i,comdat
	.align 2
	.weak	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i
	.type	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i, @function
_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i:
.LFB3141:
	.loc 5 114 0
	.cfi_startproc
.LVL2466:
	mflr 0
	stwu 1,-40(1)
.LCFI316:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB7678:
	.loc 5 117 0
	lwz 9,0(3)
	lwz 0,20(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,3
	bgt- 7,.L2171
.LVL2467:
.L2139:
.LBB7679:
.LBB7680:
.LBB7681:
.LBB7682:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
.LBE7682:
.LBE7681:
.LBE7680:
.LBE7679:
.LBB7688:
.LBB7689:
	.loc 5 418 0
	li 26,0
.LBE7689:
.LBE7688:
.LBB7696:
.LBB7687:
.LBB7685:
.LBB7683:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LBE7683:
.LBE7685:
	.loc 5 378 0
	li 0,0
	stw 0,12(3)
.LBB7686:
.LBB7684:
	.loc 4 216 0
	mr 27,3
.LVL2468:
.LBE7684:
.LBE7686:
	.loc 5 379 0
	stw 0,16(3)
	.loc 5 128 0
	addi 25,3,4
	.loc 5 380 0
	stw 0,20(3)
	.loc 5 381 0
	stw 0,24(3)
	.loc 5 382 0
	stw 0,28(3)
	.loc 5 383 0
	stw 0,32(3)
.LBE7687:
.LBE7696:
	.loc 5 129 0
	stw 29,4(3)
	.loc 5 130 0
	stw 30,8(3)
	.loc 5 132 0
	lwz 11,0(31)
.LVL2469:
.L2170:
	.loc 5 132 0 is_stmt 0 discriminator 1
	lwz 30,24(11)
	cmpwi 7,30,0
	beq- 7,.L2172
.L2162:
	.loc 5 134 0 is_stmt 1
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L2168
	.loc 5 135 0
	stw 29,0(11)
.LVL2470:
	.loc 5 139 0
	b .L2168
.L2148:
	.loc 5 140 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L2147
	mr 30,9
.LVL2471:
.L2168:
	.loc 5 139 0 discriminator 1
	lwz 9,12(30)
	cmpwi 7,9,0
	bne+ 7,.L2148
.L2147:
	.loc 5 145 0
	lwz 28,4(30)
	cmpwi 6,28,0
	bne- 6,.L2173
	.loc 5 180 0
	lwz 0,20(30)
	mr 11,30
.LVL2472:
	cmpwi 7,0,3
	ble+ 7,.L2170
.LVL2473:
.LBB7697:
.LBB7694:
.LBB7690:
.LBB7691:
.LBB7692:
.LBB7693:
	.loc 4 215 0
	lwz 9,16(31)
	.loc 4 216 0
	li 3,36
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2474:
.LBE7693:
.LBE7692:
	.loc 5 378 0
	stw 28,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 28,4(3)
	.loc 5 379 0
	stw 28,16(3)
	.loc 5 380 0
	stw 28,20(3)
	.loc 5 381 0
	stw 28,24(3)
	.loc 5 382 0
	stw 28,28(3)
	.loc 5 383 0
	stw 28,32(3)
	.loc 5 384 0
	stw 28,8(3)
.LBE7691:
.LBE7690:
	.loc 5 400 0
	lwz 0,8(30)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(30)
.LVL2475:
	.loc 5 404 0
	stw 10,8(9)
.LVL2476:
	.loc 5 405 0
	lwz 0,20(30)
	cmpwi 7,0,3
	ble- 7,.L2158
	li 11,3
.LVL2477:
.L2159:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2478:
	.loc 5 405 0
	addi 11,11,2
.LVL2479:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(30)
	cmpw 7,11,0
	blt+ 7,.L2159
.LVL2480:
.L2158:
	.loc 5 410 0
	lwz 0,0(9)
	stw 0,4(3)
	.loc 5 411 0
	lwz 0,20(30)
	srawi 0,0,1
	addze 0,0
	stw 0,24(3)
	.loc 5 412 0
	lwz 11,24(30)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 11,28(3)
	.loc 5 415 0
	lwz 11,20(30)
	subf 0,0,11
	stw 0,20(30)
	.loc 5 416 0
	lwz 0,12(9)
	stw 0,24(30)
	.loc 5 418 0
	lwz 11,12(9)
	stw 26,16(11)
	.loc 5 419 0
	stw 26,12(9)
	.loc 5 424 0
	lwz 9,16(30)
.LVL2481:
	cmpwi 7,9,0
	beq- 7,.L2160
	.loc 5 425 0
	stw 10,12(9)
.L2161:
	.loc 5 429 0
	lwz 0,16(30)
	.loc 5 430 0
	stw 30,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(30)
	.loc 5 433 0
	lwz 9,8(30)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE7694:
.LBE7697:
	.loc 5 182 0
	lwz 11,16(30)
	lwz 0,0(11)
	cmpw 7,29,0
	ble- 7,.L2170
	mr 11,30
.LVL2482:
	.loc 5 132 0
	lwz 30,24(11)
.LVL2483:
	cmpwi 7,30,0
	bne+ 7,.L2162
.LVL2484:
.L2172:
	.loc 5 189 0
	lwz 0,0(31)
.LBE7678:
	.loc 5 200 0
	mr 3,25
.LBB7727:
	.loc 5 189 0
	stw 0,12(27)
	.loc 5 190 0
	lwz 9,0(31)
	stw 29,0(9)
	.loc 5 191 0
	lwz 9,0(31)
	stw 25,24(9)
	.loc 5 192 0
	lwz 9,0(31)
	stw 25,28(9)
	.loc 5 193 0
	lwz 9,0(31)
	lwz 11,20(9)
.LVL2485:
	addi 0,11,1
	stw 0,20(9)
.LBE7727:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL2486:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2487:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2488:
	addi 1,1,40
	.cfi_remember_state
.LCFI317:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2489:
.L2160:
.LCFI318:
	.cfi_restore_state
.LBB7728:
.LBB7698:
.LBB7695:
	.loc 5 427 0
	lwz 9,8(30)
	stw 10,24(9)
	b .L2161
.LVL2490:
.L2173:
.LBE7695:
.LBE7698:
	.loc 5 147 0
	lwz 0,0(30)
	cmpw 6,29,0
	ble- 6,.L2174
	.loc 5 159 0
	beq- 7,.L2154
	.loc 5 160 0
	stw 25,16(9)
.L2155:
	.loc 5 164 0
	stw 30,20(27)
	.loc 5 165 0
	lwz 0,12(30)
	stw 0,16(27)
	.loc 5 166 0
	stw 25,12(30)
.L2153:
	.loc 5 169 0
	stw 11,12(27)
.LBE7728:
	.loc 5 200 0
	mr 3,25
.LBB7729:
	.loc 5 170 0
	lwz 9,20(11)
	addi 0,9,1
	stw 0,20(11)
.LBE7729:
	.loc 5 200 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL2491:
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL2492:
	lwz 30,32(1)
.LVL2493:
	lwz 31,36(1)
.LVL2494:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI319:
	.cfi_def_cfa_offset 0
	blr
.LVL2495:
.L2174:
.LCFI320:
	.cfi_restore_state
.LBB7730:
	.loc 5 149 0
	lwz 9,16(30)
	cmpwi 7,9,0
	beq- 7,.L2151
	.loc 5 150 0
	stw 25,12(9)
.L2152:
	.loc 5 154 0
	lwz 0,16(30)
	.loc 5 155 0
	stw 30,16(27)
	.loc 5 154 0
	stw 0,20(27)
	.loc 5 156 0
	stw 25,16(30)
	b .L2153
.LVL2496:
.L2171:
.LBB7699:
.LBB7700:
.LBB7701:
.LBB7702:
	.loc 4 215 0
	lwz 9,16(3)
	.loc 4 216 0
	li 3,36
.LBE7702:
.LBE7701:
	.loc 5 377 0
	li 27,0
.LBB7705:
.LBB7703:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2497:
.LBE7703:
.LBE7705:
	.loc 5 377 0
	stw 27,4(3)
.LBB7706:
.LBB7704:
	.loc 4 216 0
	mr 9,3
.LVL2498:
.LBE7704:
.LBE7706:
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 118 0
	addi 26,3,4
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7700:
.LBE7699:
.LBB7707:
.LBB7708:
.LBB7709:
.LBB7710:
.LBB7711:
.LBB7712:
	.loc 4 216 0
	li 3,36
.LVL2499:
.LBE7712:
.LBE7711:
.LBE7710:
.LBE7709:
.LBE7708:
.LBE7707:
	.loc 5 119 0
	lwz 11,0(31)
	lwz 0,0(11)
	.loc 5 122 0
	li 11,1
	.loc 5 119 0
	stw 0,4(9)
	.loc 5 120 0
	lwz 0,0(31)
	stw 0,28(9)
	.loc 5 121 0
	lwz 0,0(31)
	.loc 5 122 0
	stw 11,24(9)
	.loc 5 121 0
	stw 0,32(9)
	.loc 5 123 0
	lwz 9,0(31)
.LVL2500:
	stw 26,8(9)
.LBB7724:
.LBB7721:
.LBB7719:
.LBB7717:
.LBB7715:
.LBB7713:
	.loc 4 215 0
	lwz 9,16(31)
.LBE7713:
.LBE7715:
.LBE7717:
.LBE7719:
.LBE7721:
.LBE7724:
	.loc 5 124 0
	lwz 28,0(31)
.LVL2501:
.LBB7725:
.LBB7722:
.LBB7720:
.LBB7718:
.LBB7716:
.LBB7714:
	.loc 4 215 0
	addi 0,9,1
	stw 0,16(31)
	.loc 4 216 0
	bl _Znwj
.LVL2502:
.LBE7714:
.LBE7716:
	.loc 5 378 0
	stw 27,12(3)
	.loc 5 399 0
	addi 10,3,4
	.loc 5 377 0
	stw 27,4(3)
	.loc 5 379 0
	stw 27,16(3)
	.loc 5 380 0
	stw 27,20(3)
	.loc 5 381 0
	stw 27,24(3)
	.loc 5 382 0
	stw 27,28(3)
	.loc 5 383 0
	stw 27,32(3)
	.loc 5 384 0
	stw 27,8(3)
.LBE7718:
.LBE7720:
	.loc 5 400 0
	lwz 0,8(28)
	stw 0,12(3)
	.loc 5 403 0
	lwz 9,24(28)
.LVL2503:
	.loc 5 404 0
	stw 10,8(9)
.LVL2504:
	.loc 5 405 0
	lwz 0,20(28)
	cmpwi 7,0,3
	ble- 7,.L2140
	li 11,3
.LVL2505:
.L2141:
	.loc 5 406 0
	lwz 9,12(9)
.LVL2506:
	.loc 5 405 0
	addi 11,11,2
.LVL2507:
	.loc 5 407 0
	stw 10,8(9)
	.loc 5 405 0
	lwz 0,20(28)
	cmpw 7,11,0
	blt+ 7,.L2141
.LVL2508:
.L2140:
	.loc 5 410 0
	lwz 11,0(9)
	.loc 5 418 0
	li 0,0
	.loc 5 410 0
	stw 11,4(3)
	.loc 5 411 0
	lwz 11,20(28)
	srawi 11,11,1
	addze 11,11
	stw 11,24(3)
	.loc 5 412 0
	lwz 8,24(28)
	.loc 5 413 0
	stw 9,32(3)
	.loc 5 412 0
	stw 8,28(3)
	.loc 5 415 0
	lwz 8,20(28)
	subf 11,11,8
	stw 11,20(28)
	.loc 5 416 0
	lwz 11,12(9)
	stw 11,24(28)
	.loc 5 418 0
	lwz 11,12(9)
	stw 0,16(11)
	.loc 5 419 0
	stw 0,12(9)
	.loc 5 424 0
	lwz 9,16(28)
.LVL2509:
	cmpwi 7,9,0
	beq- 7,.L2142
	.loc 5 425 0
	stw 10,12(9)
.L2143:
	.loc 5 429 0
	lwz 0,16(28)
	.loc 5 430 0
	stw 28,16(3)
	.loc 5 429 0
	stw 0,20(3)
	.loc 5 431 0
	stw 10,16(28)
	.loc 5 433 0
	lwz 9,8(28)
	lwz 11,20(9)
	addi 0,11,1
	stw 0,20(9)
.LBE7722:
.LBE7725:
	.loc 5 125 0
	stw 26,0(31)
	b .L2139
.L2142:
.LBB7726:
.LBB7723:
	.loc 5 427 0
	lwz 9,8(28)
	stw 10,24(9)
	b .L2143
.LVL2510:
.L2151:
.LBE7723:
.LBE7726:
	.loc 5 152 0
	stw 25,24(11)
	b .L2152
.L2154:
	.loc 5 162 0
	stw 25,28(11)
	b .L2155
.LBE7730:
	.cfi_endproc
.LFE3141:
	.size	_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i, .-_ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E:
.LFB3013:
	.loc 4 833 0
	.cfi_startproc
.LVL2511:
	mflr 0
	stwu 1,-24(1)
.LCFI321:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	addi 28,3,8
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB7764:
	.loc 4 842 0
	lwz 29,8(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2512:
	.loc 4 843 0
	cmpwi 7,29,0
	beq- 7,.L2176
.LVL2513:
	.loc 4 843 0 is_stmt 0 discriminator 1
	lwz 0,0(29)
	cmpwi 7,0,0
	blt- 7,.L2176
	.loc 4 843 0 discriminator 3
	lwz 4,12(29)
.LVL2514:
	cmpwi 7,4,0
	beq- 7,.L2176
.LVL2515:
.LBB7765:
.LBB7766:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
.LVL2516:
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2517:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7767:
.LBB7768:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7768:
.LBE7767:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(30)
.LBE7766:
.LBE7765:
.LBB7769:
.LBB7770:
	.loc 4 387 0 discriminator 5
	lwz 9,0(29)
.LBE7770:
.LBE7769:
.LBB7772:
.LBB7773:
	srawi 10,0,31
.LBE7773:
.LBE7772:
.LBB7775:
.LBB7776:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7776:
.LBE7775:
.LBB7779:
.LBB7774:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7774:
.LBE7779:
	.loc 4 845 0 discriminator 5
	addi 0,11,16
.LBB7780:
.LBB7771:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7771:
.LBE7780:
	.loc 4 845 0 discriminator 5
	add 0,0,9
.LVL2518:
.LBB7781:
.LBB7777:
	.loc 4 388 0 discriminator 5
	blt- 7,.L2189
.LVL2519:
.L2177:
	.loc 4 388 0 is_stmt 0
	stw 0,0(30)
.LBE7777:
.LBE7781:
	.loc 4 846 0 is_stmt 1
	lwz 0,8(29)
	stw 0,8(30)
	.loc 4 847 0
	lwz 9,8(29)
	cmpwi 7,9,0
	beq- 7,.L2178
	.loc 4 848 0
	stw 30,4(9)
.LVL2520:
.L2176:
	.loc 4 855 0
	lwz 29,4(30)
.LVL2521:
	.loc 2 2282 0
	lwz 5,0(30)
	.loc 4 856 0
	cmpwi 7,29,0
	beq- 7,.L2180
	.loc 4 856 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	blt- 7,.L2180
	.loc 4 856 0 discriminator 3
	lwz 4,12(29)
	cmpwi 7,4,0
	beq- 7,.L2180
.LVL2522:
.LBB7782:
.LBB7783:
	.loc 4 880 0 is_stmt 1 discriminator 5
	mr 3,28
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2523:
	.loc 4 881 0 discriminator 5
	li 0,0
	stw 0,12(29)
	.loc 4 882 0 discriminator 5
	lwz 11,48(31)
	.loc 4 883 0 discriminator 5
	lwz 9,52(31)
	.loc 4 882 0 discriminator 5
	addi 0,11,-1
	stw 0,48(31)
.LBB7784:
.LBB7785:
	.loc 4 387 0 discriminator 5
	lwz 0,0(29)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7785:
.LBE7784:
	.loc 4 883 0 discriminator 5
	subf 0,0,9
	stw 0,52(31)
	.loc 2 2282 0 discriminator 5
	lwz 0,0(29)
.LBE7783:
.LBE7782:
.LBB7786:
.LBB7787:
	.loc 4 387 0 discriminator 5
	lwz 9,0(30)
.LBE7787:
.LBE7786:
.LBB7789:
.LBB7790:
	srawi 10,0,31
.LBE7790:
.LBE7789:
.LBB7792:
.LBB7793:
	.loc 4 388 0 discriminator 5
	cmpwi 7,0,0
.LBE7793:
.LBE7792:
.LBB7796:
.LBB7791:
	.loc 4 387 0 discriminator 5
	xor 11,10,0
	subf 11,10,11
.LBE7791:
.LBE7796:
	.loc 4 858 0 discriminator 5
	addi 0,11,16
.LBB7797:
.LBB7788:
	.loc 4 387 0 discriminator 5
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
.LBE7788:
.LBE7797:
	.loc 4 858 0 discriminator 5
	add 0,0,9
.LVL2524:
.LBB7798:
.LBB7794:
	.loc 4 388 0 discriminator 5
	blt- 7,.L2190
	.loc 4 388 0 is_stmt 0
	stw 0,0(29)
.LBE7794:
.LBE7798:
	.loc 4 859 0 is_stmt 1
	lwz 0,8(30)
.LVL2525:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	beq- 7,.L2182
.LVL2526:
.L2191:
	.loc 4 861 0
	stw 29,4(9)
.L2183:
.LVL2527:
.LBB7799:
.LBB7800:
.LBB7801:
.LBB7802:
	.loc 4 387 0
	lwz 5,0(29)
.LBE7802:
.LBE7801:
	.loc 4 873 0
	mr 3,28
	mr 4,29
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i
	stw 3,12(29)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7803:
.LBB7804:
	.loc 4 387 0
	lwz 0,0(29)
.LBE7804:
.LBE7803:
.LBE7800:
.LBE7799:
.LBB7805:
.LBB7806:
.LBB7807:
.LBB7808:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7808:
.LBE7807:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7806:
.LBE7805:
.LBE7764:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2528:
	lwz 30,16(1)
.LVL2529:
	lwz 31,20(1)
.LVL2530:
	addi 1,1,24
	.cfi_remember_state
.LCFI322:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2531:
.L2180:
.LCFI323:
	.cfi_restore_state
.LBB7815:
.LBB7812:
.LBB7811:
	.loc 4 873 0
	srawi 11,5,31
	mr 3,28
	xor 5,11,5
	mr 4,30
	subf 5,11,5
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE3AddEPS2_i
	stw 3,12(30)
	.loc 4 874 0
	lwz 11,48(31)
	.loc 4 875 0
	lwz 9,52(31)
	.loc 4 874 0
	addi 0,11,1
	stw 0,48(31)
.LBB7810:
.LBB7809:
	.loc 4 387 0
	lwz 0,0(30)
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7809:
.LBE7810:
	.loc 4 875 0
	add 0,9,0
	stw 0,52(31)
.LBE7811:
.LBE7812:
.LBE7815:
	.loc 4 869 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2532:
	lwz 30,16(1)
.LVL2533:
	lwz 31,20(1)
.LVL2534:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI324:
	.cfi_def_cfa_offset 0
	blr
.LVL2535:
.L2190:
.LCFI325:
	.cfi_restore_state
.LBB7816:
.LBB7813:
.LBB7795:
	.loc 4 388 0
	neg 0,0
.LVL2536:
	stw 0,0(29)
.LBE7795:
.LBE7813:
	.loc 4 859 0
	lwz 0,8(30)
.LVL2537:
	stw 0,8(29)
	.loc 4 860 0
	lwz 9,8(30)
	cmpwi 7,9,0
	bne+ 7,.L2191
	b .L2182
.LVL2538:
.L2189:
.LBB7814:
.LBB7778:
	.loc 4 388 0
	neg 0,0
.LVL2539:
	b .L2177
.LVL2540:
.L2182:
.LBE7778:
.LBE7814:
	.loc 4 863 0
	stw 29,4(31)
	b .L2183
.LVL2541:
.L2178:
	.loc 4 850 0
	stw 30,4(31)
	b .L2176
.LBE7816:
	.cfi_endproc
.LFE3013:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv:
.LFB2841:
	.loc 4 474 0
	.cfi_startproc
.LVL2542:
	mflr 0
	stwu 1,-24(1)
.LCFI326:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB7817:
	.loc 4 477 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL2543:
	cmpwi 7,30,0
	beq- 7,.L2193
.LVL2544:
.L2199:
	.loc 4 478 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L2202
.L2194:
	.loc 4 477 0
	lwz 30,8(30)
.LVL2545:
	cmpwi 7,30,0
	bne+ 7,.L2199
	.loc 4 483 0
	lwz 30,0(31)
.LVL2546:
	cmpwi 7,30,0
	beq- 7,.L2193
	.loc 4 487 0
	lis 29,_ZN5idLib3sysE@ha
	b .L2198
.LVL2547:
.L2196:
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2548:
	cmpwi 7,30,0
	beq- 7,.L2193
.LVL2549:
.L2198:
	.loc 4 486 0
	lbz 9,29(31)
	.loc 4 484 0
	lwz 0,8(30)
	.loc 4 486 0
	cmpwi 7,9,0
	.loc 4 484 0
	stw 0,0(31)
	.loc 4 486 0
	beq+ 7,.L2196
.LBB7818:
.LBB7819:
	.loc 4 387 0
	lwz 5,0(30)
.LBE7819:
.LBE7818:
	.loc 4 487 0
	mr 4,30
	lwz 3,_ZN5idLib3sysE@l(29)
.LBB7822:
.LBB7820:
	.loc 4 387 0
	srawi 0,5,31
.LBE7820:
.LBE7822:
	.loc 4 487 0
	lwz 9,0(3)
.LBB7823:
.LBB7821:
	.loc 4 387 0
	xor 5,0,5
	subf 5,0,5
.LBE7821:
.LBE7823:
	.loc 4 487 0
	lwz 0,48(9)
	addi 5,5,16
	mtctr 0
	bctrl
	.loc 4 489 0
	mr 3,30
	bl _Z10Mem_Free16Pv
	.loc 4 483 0
	lwz 30,0(31)
.LVL2550:
	cmpwi 7,30,0
	bne+ 7,.L2198
.LVL2551:
.L2193:
.LBB7824:
.LBB7825:
.LBB7826:
.LBB7827:
	.loc 4 245 0
	li 0,0
.LBE7827:
.LBE7826:
.LBE7825:
.LBE7824:
.LBB7831:
.LBB7832:
	.loc 4 707 0
	li 9,1
.LBE7832:
.LBE7831:
.LBB7834:
.LBB7830:
.LBB7829:
.LBB7828:
	.loc 4 245 0
	stw 0,24(31)
	stw 0,20(31)
.LBE7828:
.LBE7829:
	.loc 5 110 0
	stw 0,8(31)
.LVL2552:
.LBE7830:
.LBE7834:
.LBB7835:
.LBB7833:
	.loc 4 706 0
	stw 0,4(31)
	stw 0,0(31)
	.loc 4 707 0
	stb 9,28(31)
	.loc 4 708 0
	stb 0,29(31)
	.loc 4 709 0
	stw 0,32(31)
	.loc 4 710 0
	stw 0,36(31)
	.loc 4 711 0
	stw 0,40(31)
	.loc 4 712 0
	stw 0,44(31)
	.loc 4 713 0
	stw 0,48(31)
	.loc 4 714 0
	stw 0,52(31)
	.loc 4 715 0
	stw 0,56(31)
	.loc 4 716 0
	stw 0,60(31)
	.loc 4 717 0
	stw 0,64(31)
.LBE7833:
.LBE7835:
.LBE7817:
	.loc 4 495 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2553:
	lwz 31,20(1)
.LVL2554:
	addi 1,1,24
	.cfi_remember_state
.LCFI327:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2555:
.L2202:
.LCFI328:
	.cfi_restore_state
.LBB7836:
	.loc 4 479 0
	mr 4,30
	mr 3,31
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
	b .L2194
.LBE7836:
	.cfi_endproc
.LFE2841:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv
	.section	".text"
	.align 2
	.globl _Z21R_ShutdownTriSurfDatav
	.type	_Z21R_ShutdownTriSurfDatav, @function
_Z21R_ShutdownTriSurfDatav:
.LFB2567:
	.loc 2 188 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI329:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.loc 2 189 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 2 188 0
	stw 0,20(1)
	.loc 2 189 0
	la 31,.LANCHOR0@l(31)
	lwz 3,28(31)
	.cfi_offset 65, 4
	bl _Z12R_StaticFreePv
	.loc 2 190 0
	mr 3,31
	bl _ZN11idHashIndex4FreeEv
.LBB7837:
.LBB7838:
	.loc 4 245 0
	li 0,0
	stw 0,672(31)
.LBE7838:
.LBE7837:
	.loc 2 192 0
	addi 3,31,48
.LBB7840:
.LBB7839:
	.loc 4 245 0
	stw 0,668(31)
.LBE7839:
.LBE7840:
	.loc 2 192 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv
	.loc 2 193 0
	addi 3,31,116
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv
	.loc 2 194 0
	addi 3,31,184
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv
	.loc 2 195 0
	addi 3,31,252
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv
	.loc 2 196 0
	addi 3,31,320
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv
	.loc 2 197 0
	addi 3,31,388
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv
	.loc 2 198 0
	addi 3,31,456
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv
	.loc 2 199 0
	addi 3,31,524
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv
	.loc 2 200 0
	addi 3,31,592
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv
	.loc 2 201 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI330:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2567:
	.size	_Z21R_ShutdownTriSurfDatav, .-_Z21R_ShutdownTriSurfDatav
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_:
.LFB2888:
	.loc 4 644 0
	.cfi_startproc
.LVL2556:
	mflr 0
.LBB7841:
	.loc 4 648 0
	cmpwi 0,4,0
	.loc 4 646 0
	lwz 11,64(3)
.LBE7841:
	.loc 4 644 0
	stwu 1,-8(1)
.LCFI331:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB7844:
	.loc 4 646 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,64(3)
	.loc 4 648 0
	beq- 0,.L2204
.LVL2557:
	.loc 4 654 0
	lwz 11,40(3)
	addi 0,11,-1
	.loc 4 655 0
	lwz 11,44(3)
	.loc 4 654 0
	stw 0,40(3)
.LBB7842:
.LBB7843:
	.loc 4 387 0
	lwzu 0,-16(4)
.LVL2558:
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LBE7843:
.LBE7842:
	.loc 4 655 0
	subf 0,0,11
	stw 0,44(3)
	.loc 4 657 0
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2559:
.L2204:
.LBE7844:
	.loc 4 662 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI332:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2888:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_
	.section	".text"
	.align 2
	.globl _Z16R_FreeDeformInfoP12deformInfo_s
	.type	_Z16R_FreeDeformInfoP12deformInfo_s, @function
_Z16R_FreeDeformInfoP12deformInfo_s:
.LFB2620:
	.loc 2 2231 0
	.cfi_startproc
.LVL2560:
	mflr 0
	stwu 1,-16(1)
.LCFI333:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 2232 0
	lwz 4,20(3)
	cmpwi 7,4,0
	beq- 7,.L2207
	.cfi_offset 65, 4
	.loc 2 2233 0
	lis 3,.LANCHOR0@ha
.LVL2561:
	la 3,.LANCHOR0@l(3)
	addi 3,3,116
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi
.L2207:
	.loc 2 2235 0
	lwz 4,24(31)
	cmpwi 7,4,0
	beq- 7,.L2208
	.loc 2 2236 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,320
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
.L2208:
	.loc 2 2238 0
	lwz 4,40(31)
	cmpwi 7,4,0
	beq- 7,.L2209
	.loc 2 2239 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,388
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_
.L2209:
	.loc 2 2241 0
	lwz 4,44(31)
	cmpwi 7,4,0
	beq- 7,.L2210
	.loc 2 2242 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,456
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_
.L2210:
	.loc 2 2244 0
	lwz 4,12(31)
	cmpwi 7,4,0
	beq- 7,.L2211
	.loc 2 2245 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,524
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
.L2211:
	.loc 2 2247 0
	lwz 4,32(31)
	cmpwi 7,4,0
	beq- 7,.L2212
	.loc 2 2248 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,592
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
.L2212:
	.loc 2 2250 0
	mr 3,31
	bl _Z12R_StaticFreePv
	.loc 2 2251 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2562:
	mtlr 0
	addi 1,1,16
.LCFI334:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2620:
	.size	_Z16R_FreeDeformInfoP12deformInfo_s, .-_Z16R_FreeDeformInfoP12deformInfo_s
	.align 2
	.globl _Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s
	.type	_Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s, @function
_Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s:
.LFB2572:
	.loc 2 374 0
	.cfi_startproc
.LVL2563:
	stwu 1,-24(1)
.LCFI335:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	.loc 2 375 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 374 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 2 375 0
	beq- 0,.L2213
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 2 379 0
	bl _Z31R_FreeStaticTriSurfVertexCachesP14srfTriangles_s
.LVL2564:
	.loc 2 381 0
	lwz 4,40(31)
	cmpwi 7,4,0
	beq- 7,.L2229
	.loc 2 383 0
	lwz 9,104(31)
	.loc 2 384 0
	lis 30,.LANCHOR0@ha
	la 30,.LANCHOR0@l(30)
	.loc 2 383 0
	cmpwi 7,9,0
	beq- 7,.L2216
	.loc 2 383 0 is_stmt 0 discriminator 1
	lwz 0,40(9)
	cmpw 7,4,0
	beq- 7,.L2215
.L2216:
	.loc 2 384 0 is_stmt 1
	addi 29,30,48
	mr 3,29
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_
	.loc 2 385 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv
.L2215:
	.loc 2 389 0
	lbz 0,32(31)
	cmpwi 7,0,0
	bne- 7,.L2217
	.loc 2 390 0
	lwz 4,48(31)
	cmpwi 7,4,0
	beq- 7,.L2218
	.loc 2 392 0
	lwz 9,104(31)
	cmpwi 7,9,0
	beq- 7,.L2219
	.loc 2 392 0 is_stmt 0 discriminator 1
	lwz 0,48(9)
	cmpw 7,4,0
	beq- 7,.L2218
.L2219:
	.loc 2 393 0 is_stmt 1
	addi 29,30,116
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE4FreeEPi
	.loc 2 394 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv
.L2218:
	.loc 2 397 0
	lwz 4,52(31)
	cmpwi 7,4,0
	beq- 7,.L2220
	.loc 2 398 0
	addi 29,30,320
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE4FreeEPi
	.loc 2 399 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv
.L2220:
	.loc 2 401 0
	lwz 4,76(31)
	cmpwi 7,4,0
	beq- 7,.L2221
	.loc 2 402 0
	addi 29,30,388
	mr 3,29
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE4FreeEPS0_
	.loc 2 403 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv
.L2221:
	.loc 2 405 0
	lwz 4,84(31)
	cmpwi 7,4,0
	beq- 7,.L2222
	.loc 2 406 0
	addi 29,30,456
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE4FreeEPS0_
	.loc 2 407 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv
.L2222:
	.loc 2 409 0
	lwz 4,60(31)
	cmpwi 7,4,0
	beq- 7,.L2223
	.loc 2 410 0
	addi 29,30,524
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
	.loc 2 411 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
.L2223:
	.loc 2 413 0
	lwz 4,68(31)
	cmpwi 7,4,0
	beq- 7,.L2217
	.loc 2 414 0
	addi 29,30,592
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE4FreeEPi
	.loc 2 415 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
.L2217:
	.loc 2 419 0
	lwz 4,80(31)
	cmpwi 7,4,0
	beq- 7,.L2224
	.loc 2 420 0
	addi 29,30,252
	mr 3,29
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_
	.loc 2 421 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv
.L2224:
	.loc 2 424 0
	lwz 4,100(31)
	cmpwi 7,4,0
	beq- 7,.L2225
	.loc 2 425 0
	addi 29,30,184
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE4FreeEPS0_
	.loc 2 426 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv
.L2225:
.LVL2565:
.LBB7845:
.LBB7846:
	.loc 4 228 0
	addi 3,31,-4
	bl _ZdlPv
	.loc 4 230 0
	lwz 9,672(30)
	addi 0,9,-1
	stw 0,672(30)
.LVL2566:
.L2213:
.LBE7846:
.LBE7845:
	.loc 2 434 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2567:
	addi 1,1,24
	.cfi_remember_state
.LCFI336:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2568:
.L2229:
.LCFI337:
	.cfi_restore_state
	lis 30,.LANCHOR0@ha
	la 30,.LANCHOR0@l(30)
	b .L2215
	.cfi_endproc
.LFE2572:
	.size	_Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s, .-_Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s
	.align 2
	.globl _Z19R_FreeStaticTriSurfP14srfTriangles_s
	.type	_Z19R_FreeStaticTriSurfP14srfTriangles_s, @function
_Z19R_FreeStaticTriSurfP14srfTriangles_s:
.LFB2575:
	.loc 2 498 0
	.cfi_startproc
.LVL2569:
	stwu 1,-16(1)
.LCFI338:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
.LBB7847:
	.loc 2 501 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBE7847:
	.loc 2 498 0
	stw 0,20(1)
.LBB7848:
	.loc 2 501 0
	beq- 0,.L2230
	.cfi_offset 65, 4
	.loc 2 505 0
	lwz 0,108(31)
	cmpwi 7,0,0
	beq- 7,.L2232
	.loc 2 506 0
	lis 9,common@ha
	lis 4,.LC29@ha
	lwz 3,common@l(9)
.LVL2570:
	la 4,.LC29@l(4)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.L2232:
	.loc 2 508 0
	lis 9,frameData@ha
	lwz 9,frameData@l(9)
.LVL2571:
	.loc 2 510 0
	cmpwi 7,9,0
	beq- 7,.L2236
	.loc 2 517 0
	li 0,0
	stw 0,108(31)
	.loc 2 518 0
	lwz 11,12(9)
	cmpwi 7,11,0
	beq- 7,.L2234
	.loc 2 519 0
	stw 31,108(11)
.L2235:
	.loc 2 523 0
	stw 31,12(9)
.LVL2572:
.L2230:
.LBE7848:
	.loc 2 525 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2573:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI339:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2574:
.L2234:
.LCFI340:
	.cfi_restore_state
.LBB7849:
	.loc 2 521 0
	stw 31,8(9)
	b .L2235
.L2236:
.LBE7849:
	.loc 2 525 0
	lwz 0,20(1)
.LBB7850:
	.loc 2 512 0
	mr 3,31
.LBE7850:
	.loc 2 525 0
	lwz 31,12(1)
.LVL2575:
	mtlr 0
	addi 1,1,16
.LCFI341:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
.LBB7851:
	.loc 2 512 0
	b _Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s
.LVL2576:
.LVL2577:
.LBE7851:
	.cfi_endproc
.LFE2575:
	.size	_Z19R_FreeStaticTriSurfP14srfTriangles_s, .-_Z19R_FreeStaticTriSurfP14srfTriangles_s
	.align 2
	.globl _Z22R_FreeDeferredTriSurfsP11frameData_t
	.type	_Z22R_FreeDeferredTriSurfsP11frameData_t, @function
_Z22R_FreeDeferredTriSurfsP11frameData_t:
.LFB2574:
	.loc 2 475 0
	.cfi_startproc
.LVL2578:
	stwu 1,-16(1)
.LCFI342:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
.LBB7852:
	.loc 2 478 0
	mr. 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE7852:
	.loc 2 475 0
	stw 0,20(1)
	stw 31,12(1)
.LBB7853:
	.loc 2 478 0
	beq- 0,.L2237
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 2 482 0
	lwz 3,8(30)
.LVL2579:
	cmpwi 7,3,0
	beq- 7,.L2239
.LVL2580:
.L2242:
	.loc 2 483 0 discriminator 2
	lwz 31,108(3)
.LVL2581:
	.loc 2 484 0 discriminator 2
	bl _Z25R_ReallyFreeStaticTriSurfP14srfTriangles_s
.LVL2582:
	.loc 2 482 0 discriminator 2
	cmpwi 7,31,0
	mr 3,31
	bne+ 7,.L2242
.LVL2583:
.L2239:
	.loc 2 487 0
	li 0,0
	stw 0,8(30)
	.loc 2 488 0
	stw 0,12(30)
.LVL2584:
.L2237:
.LBE7853:
	.loc 2 489 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL2585:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI343:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2574:
	.size	_Z22R_FreeDeferredTriSurfsP11frameData_t, .-_Z22R_FreeDeferredTriSurfsP11frameData_t
	.align 2
	.globl _Z18R_PurgeTriSurfDataP11frameData_t
	.type	_Z18R_PurgeTriSurfDataP11frameData_t, @function
_Z18R_PurgeTriSurfDataP11frameData_t:
.LFB2568:
	.loc 2 208 0
	.cfi_startproc
.LVL2586:
	stwu 1,-16(1)
.LCFI344:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 2 213 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR0@l(31)
	.loc 2 208 0
	stw 0,20(1)
	.loc 2 210 0
	.cfi_offset 65, 4
	bl _Z22R_FreeDeferredTriSurfsP11frameData_t
.LVL2587:
	.loc 2 213 0
	addi 3,31,48
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 214 0
	addi 3,31,116
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 215 0
	addi 3,31,184
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 216 0
	addi 3,31,252
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 217 0
	addi 3,31,320
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 218 0
	addi 3,31,388
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 219 0
	addi 3,31,456
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 220 0
	addi 3,31,524
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 221 0
	addi 3,31,592
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE19FreeEmptyBaseBlocksEv
	.loc 2 222 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI345:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2568:
	.size	_Z18R_PurgeTriSurfDataP11frameData_t, .-_Z18R_PurgeTriSurfDataP11frameData_t
	.section	.text._ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,"axG",@progbits,_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.type	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, @function
_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei:
.LFB3051:
	.loc 4 767 0
	.cfi_startproc
.LVL2588:
	mflr 0
	stwu 1,-24(1)
.LCFI346:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
.LBB7885:
	.loc 4 768 0
	mulli 30,5,20
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE7885:
	.loc 4 767 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 28,8(1)
.LBB7925:
	.loc 4 768 0
	addi 30,30,15
	rlwinm 30,30,0,0,27
.LVL2589:
.LBB7886:
.LBB7887:
.LBB7888:
	.loc 4 387 0
	lwz 9,0(4)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LBE7888:
.LBE7887:
	.loc 4 775 0
	cmpw 7,30,9
	ble- 7,.L2245
	.cfi_offset 28, -16
.LBB7889:
	.loc 4 777 0
	lwz 28,8(4)
.LVL2590:
.LBB7890:
	.loc 4 780 0
	cmpwi 7,28,0
	beq- 7,.L2246
	.loc 2 2282 0 discriminator 1
	lwz 0,0(28)
	.loc 4 780 0 discriminator 1
	cmpwi 7,0,0
	blt- 7,.L2246
	.loc 4 780 0 is_stmt 0 discriminator 3
	lwz 4,12(28)
.LVL2591:
	cmpwi 7,4,0
	beq- 7,.L2246
	.loc 4 780 0 discriminator 4
	addi 9,9,16
	add 0,0,9
	cmpw 7,30,0
	bgt- 7,.L2246
.LVL2592:
.LBB7891:
.LBB7892:
	.loc 4 880 0 is_stmt 1 discriminator 6
	addi 3,3,8
.LVL2593:
	bl _ZN7idBTreeI14idDynamicBlockI13dominantTri_sEiLi4EE6RemoveEP11idBTreeNodeIS2_iE
.LVL2594:
	.loc 4 881 0 discriminator 6
	li 0,0
	stw 0,12(28)
	.loc 4 882 0 discriminator 6
	lwz 11,48(29)
	.loc 4 883 0 discriminator 6
	lwz 9,52(29)
	.loc 4 882 0 discriminator 6
	addi 0,11,-1
	stw 0,48(29)
.LBB7893:
.LBB7894:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7894:
.LBE7893:
	.loc 4 883 0 discriminator 6
	subf 0,0,9
	stw 0,52(29)
	.loc 2 2282 0 discriminator 6
	lwz 9,0(31)
.LBE7892:
.LBE7891:
.LBB7895:
.LBB7896:
	.loc 4 387 0 discriminator 6
	lwz 0,0(28)
.LBE7896:
.LBE7895:
.LBB7899:
.LBB7900:
	srawi 11,9,31
.LBE7900:
.LBE7899:
.LBB7902:
.LBB7903:
	.loc 4 388 0 discriminator 6
	cmpwi 7,9,0
.LBE7903:
.LBE7902:
.LBB7905:
.LBB7901:
	.loc 4 387 0 discriminator 6
	xor 9,11,9
	subf 9,11,9
.LBE7901:
.LBE7905:
.LBB7906:
.LBB7897:
	srawi 11,0,31
	xor 0,11,0
.LBE7897:
.LBE7906:
	.loc 4 784 0 discriminator 6
	addi 9,9,16
.LBB7907:
.LBB7898:
	.loc 4 387 0 discriminator 6
	subf 0,11,0
.LBE7898:
.LBE7907:
	.loc 4 784 0 discriminator 6
	add 0,9,0
.LVL2595:
.LBB7908:
.LBB7904:
	.loc 4 388 0 discriminator 6
	bge+ 7,.L2247
	.loc 4 388 0 is_stmt 0
	neg 0,0
.LVL2596:
.L2247:
	stw 0,0(31)
.LBE7904:
.LBE7908:
	.loc 4 785 0 is_stmt 1
	lwz 0,8(28)
	stw 0,8(31)
	.loc 4 786 0
	lwz 9,8(28)
	cmpwi 7,9,0
	beq- 7,.L2248
	.loc 4 787 0
	stw 31,4(9)
	lwz 9,0(31)
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
.LVL2597:
.L2245:
.LBE7890:
.LBE7889:
.LBE7886:
	.loc 4 804 0
	subf 9,30,9
.LVL2598:
	cmpwi 7,9,1039
	ble- 7,.L2249
	.loc 4 810 0
	addi 4,30,16
	.loc 4 815 0
	addi 9,9,-16
.LBB7917:
.LBB7918:
	.loc 4 388 0
	stwx 9,31,4
.LBE7918:
.LBE7917:
	.loc 4 810 0
	add 4,31,4
.LVL2599:
	.loc 4 816 0
	lwz 9,8(31)
.LVL2600:
	.loc 4 817 0
	stw 31,4(4)
	.loc 4 818 0
	cmpwi 7,9,0
	.loc 4 816 0
	stw 9,8(4)
	.loc 4 818 0
	beq- 7,.L2250
	.loc 4 819 0
	stw 4,4(9)
.L2251:
	.loc 4 823 0
	li 0,0
	stw 0,12(4)
	.loc 4 824 0
	stw 4,8(31)
.LVL2601:
.LBB7919:
.LBB7920:
	.loc 4 388 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L2256
.LVL2602:
.L2252:
	stw 30,0(31)
.LBE7920:
.LBE7919:
	.loc 4 827 0
	mr 3,29
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2603:
.L2249:
.LBE7925:
	.loc 4 830 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2604:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI347:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2605:
.L2246:
.LCFI348:
	.cfi_restore_state
.LBB7926:
.LBB7922:
.LBB7915:
.LBB7913:
.LBB7909:
	.loc 4 794 0
	mr 3,29
.LVL2606:
	mr 4,5
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi
.LVL2607:
	.loc 4 795 0
	mr. 28,3
.LVL2608:
	beq- 0,.L2257
.LVL2609:
.LBB7910:
.LBB7911:
	.loc 4 387 0
	lwz 5,0(31)
.LBE7911:
.LBE7910:
	.loc 4 798 0
	addi 4,31,16
	addi 3,28,16
.LVL2610:
	srawi 0,5,31
	xor 5,0,5
	subf 5,0,5
	bl memcpy
	.loc 4 799 0
	mr 4,31
	mr 3,29
	mr 31,28
.LVL2611:
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE12FreeInternalEP14idDynamicBlockIS0_E
.LVL2612:
	lwz 9,0(28)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L2245
.LVL2613:
.L2256:
.LBE7909:
.LBE7913:
.LBE7915:
.LBE7922:
.LBB7923:
.LBB7921:
	.loc 4 388 0
	neg 30,30
.LVL2614:
	b .L2252
.LVL2615:
.L2250:
.LBE7921:
.LBE7923:
	.loc 4 821 0
	stw 4,4(29)
	b .L2251
.LVL2616:
.L2248:
.LBB7924:
.LBB7916:
.LBB7914:
	.loc 4 789 0
	stw 31,4(29)
	lwz 9,0(31)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	b .L2245
.LVL2617:
.L2257:
.LBB7912:
	.loc 4 796 0
	li 31,0
.LVL2618:
	b .L2249
.LBE7912:
.LBE7914:
.LBE7916:
.LBE7924:
.LBE7926:
	.cfi_endproc
.LFE3051:
	.size	_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei, .-_ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
	.section	".text"
	.align 2
	.globl _Z19R_BuildDominantTrisP14srfTriangles_s
	.type	_Z19R_BuildDominantTrisP14srfTriangles_s, @function
_Z19R_BuildDominantTrisP14srfTriangles_s:
.LFB2605:
	.loc 2 1479 0
	.cfi_startproc
.LVL2619:
	mflr 0
	stwu 1,-112(1)
.LCFI349:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	stw 30,64(1)
	stw 31,68(1)
	mr 31,3
	.cfi_offset 31, -44
	.cfi_offset 30, -48
	stw 0,116(1)
	stfd 27,72(1)
	stfd 28,80(1)
	stfd 29,88(1)
	stfd 30,96(1)
	stfd 31,104(1)
	stw 18,16(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
.LBB7950:
	.loc 2 1482 0
	lwz 3,44(3)
.LVL2620:
	slwi 3,3,3
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 27, -60
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 23, -76
	.cfi_offset 22, -80
	.cfi_offset 21, -84
	.cfi_offset 20, -88
	.cfi_offset 19, -92
	.cfi_offset 18, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 65, 4
	bl _Z13R_StaticAlloci
	.loc 2 1484 0
	lwz 4,44(31)
	.loc 2 1482 0
	mr 30,3
.LVL2621:
	.loc 2 1484 0
	cmpwi 7,4,0
	ble- 7,.L2259
	.loc 2 1486 0
	lis 7,0x5555
	.loc 2 1484 0
	mr 11,3
	li 9,0
	.loc 2 1486 0
	ori 7,7,21846
.LVL2622:
.L2260:
	.loc 2 1486 0 is_stmt 0 discriminator 2
	mulhw 8,9,7
	.loc 2 1485 0 is_stmt 1 discriminator 2
	lwz 10,48(31)
	slwi 0,9,2
	lwzx 10,10,0
	.loc 2 1486 0 discriminator 2
	srawi 0,9,31
	.loc 2 1484 0 discriminator 2
	addi 9,9,1
.LVL2623:
	.loc 2 1486 0 discriminator 2
	subf 0,0,8
	.loc 2 1485 0 discriminator 2
	stw 10,0(11)
	.loc 2 1486 0 discriminator 2
	stw 0,4(11)
	.loc 2 1484 0 discriminator 2
	addi 11,11,8
	lwz 4,44(31)
	cmpw 7,4,9
	bgt+ 7,.L2260
.LVL2624:
.L2259:
	.loc 2 1488 0
	lis 6,_ZL9IndexSortPKvS0_@ha
	mr 3,30
.LVL2625:
	li 5,8
	la 6,_ZL9IndexSortPKvS0_@l(6)
	bl qsort
	.loc 2 1490 0
	lwz 27,36(31)
.LVL2626:
.LBB7951:
.LBB7952:
	.loc 4 586 0
	lis 28,.LANCHOR0@ha
	.loc 4 589 0
	li 29,0
	.loc 4 586 0
	la 28,.LANCHOR0@l(28)
	.loc 4 588 0
	cmpwi 7,27,0
	.loc 4 586 0
	lwz 9,512(28)
	addi 0,9,1
	stw 0,512(28)
	.loc 4 588 0
	ble- 7,.L2261
	.loc 2 1490 0
	addi 26,28,456
	.loc 4 592 0
	mr 4,27
	mr 3,26
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE13AllocInternalEi
.LVL2627:
	.loc 4 593 0
	mr. 4,3
	beq- 0,.L2261
	.loc 4 596 0
	mr 3,26
.LVL2628:
	mr 5,27
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE14ResizeInternalEP14idDynamicBlockIS0_Ei
.LVL2629:
	.loc 4 597 0
	cmpwi 0,3,0
	beq- 0,.L2261
	.loc 4 605 0
	lwz 11,496(28)
.LBE7952:
	.loc 4 608 0
	addi 29,3,16
.LBB7955:
	.loc 4 606 0
	lwz 9,500(28)
	.loc 4 605 0
	addi 0,11,1
	stw 0,496(28)
.LBB7953:
.LBB7954:
	.loc 4 387 0
	lwz 0,0(3)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
.LBE7954:
.LBE7953:
	.loc 4 606 0
	add 0,9,0
	stw 0,500(28)
.LVL2630:
.L2261:
.LBE7955:
.LBE7951:
	.loc 2 1491 0
	lwz 5,36(31)
	mr 3,29
	.loc 2 1490 0
	stw 29,84(31)
	.loc 2 1491 0
	li 4,0
	mulli 5,5,20
	bl memset
.LVL2631:
.LBB7956:
	.loc 2 1493 0
	lwz 8,44(31)
	cmpwi 7,8,0
	ble- 7,.L2263
.LVL2632:
	lis 26,.LC20@ha
	lis 27,.LC22@ha
.LVL2633:
	la 26,.LC20@l(26)
	la 27,.LC22@l(27)
.LBB7957:
.LBB7958:
.LBB7959:
	.loc 2 1494 0
	lis 9,.LC1@ha
	lis 3,_ZN6idMath5iSqrtE@ha
.LBE7959:
.LBE7958:
	.loc 2 1495 0
	lwz 10,0(30)
.LVL2634:
	.loc 2 1493 0
	li 7,0
.LBB8005:
.LBB8002:
	.loc 2 1494 0
	lfs 4,.LC1@l(9)
	la 3,_ZN6idMath5iSqrtE@l(3)
.LBB7960:
.LBB7961:
.LBB7962:
.LBB7963:
.LBB7964:
.LBB7965:
	.loc 6 275 0
	lfs 2,0(26)
.LBE7965:
.LBE7964:
.LBE7963:
.LBE7962:
.LBE7961:
.LBE7960:
	.loc 2 1545 0
	lis 4,.LC31@ha
.LBB7979:
.LBB7976:
.LBB7974:
.LBB7972:
.LBB7969:
.LBB7966:
	.loc 6 278 0
	lfs 3,0(27)
.LBE7966:
.LBE7969:
.LBE7972:
.LBE7974:
.LBE7976:
.LBE7979:
	.loc 2 1560 0
	lis 24,.LC17@ha
	lis 25,.LC18@ha
	.loc 2 1545 0
	lis 12,.LC30@ha
.LVL2635:
.L2272:
	.loc 2 1534 0
	mulli 11,10,20
	.loc 2 1494 0
	lis 9,.LC1@ha
	lfs 8,.LC1@l(9)
	.loc 2 1534 0
	mr 0,7
	add 11,29,11
	.loc 2 1496 0
	li 9,0
.LBE8002:
	.loc 2 1479 0
	slwi 28,7,3
.L2264:
.LBB8003:
	.loc 2 1501 0 discriminator 5
	slwi 0,0,3
	lwz 23,48(31)
	add 6,30,0
	lwz 0,4(6)
	.loc 2 1505 0 discriminator 5
	lwz 6,40(31)
	.loc 2 1501 0 discriminator 5
	mulli 0,0,12
	lwzux 0,23,0
.LVL2636:
	.loc 2 1502 0 discriminator 5
	lwz 5,4(23)
.LVL2637:
	.loc 2 1505 0 discriminator 5
	mulli 18,0,60
	.loc 2 1503 0 discriminator 5
	lwz 20,8(23)
.LVL2638:
	.loc 2 1506 0 discriminator 5
	mulli 19,5,60
	.loc 2 1505 0 discriminator 5
	add 22,6,18
.LVL2639:
	.loc 2 1507 0 discriminator 5
	mulli 23,20,60
.LVL2640:
	.loc 2 1509 0 discriminator 5
	lfsx 10,6,18
	.loc 2 1506 0 discriminator 5
	add 21,6,19
.LVL2641:
	.loc 2 1511 0 discriminator 5
	lfs 13,8(22)
	.loc 2 1515 0 discriminator 5
	lfsx 11,6,23
	.loc 2 1507 0 discriminator 5
	add 23,6,23
.LVL2642:
	.loc 2 1511 0 discriminator 5
	lfs 29,8(21)
	.loc 2 1515 0 discriminator 5
	fsubs 11,11,10
	.loc 2 1510 0 discriminator 5
	lfs 0,4(22)
	.loc 2 1511 0 discriminator 5
	fsubs 29,29,13
	.loc 2 1509 0 discriminator 5
	lfsx 31,6,19
	.loc 2 1517 0 discriminator 5
	lfs 12,8(23)
	.loc 2 1510 0 discriminator 5
	lfs 30,4(21)
	.loc 2 1509 0 discriminator 5
	fsubs 31,31,10
.LVL2643:
	.loc 2 1517 0 discriminator 5
	fsubs 12,12,13
	.loc 2 1516 0 discriminator 5
	lfs 9,4(23)
	.loc 2 1510 0 discriminator 5
	fsubs 30,30,0
.LVL2644:
	.loc 2 1512 0 discriminator 5
	lfs 6,12(22)
	.loc 2 1522 0 discriminator 5
	fmuls 10,29,11
	.loc 2 1513 0 discriminator 5
	lfs 7,16(22)
	.loc 2 1516 0 discriminator 5
	fsubs 9,9,0
	.loc 2 1518 0 discriminator 5
	lfs 5,12(23)
	.loc 2 1521 0 discriminator 5
	fmuls 13,30,12
	.loc 2 1512 0 discriminator 5
	lfs 28,12(21)
.LVL2645:
	.loc 2 1522 0 discriminator 5
	fmsubs 10,31,12,10
	.loc 2 1523 0 discriminator 5
	fmuls 0,31,9
	.loc 2 1521 0 discriminator 5
	fmsubs 13,29,9,13
.LBB7980:
.LBB7977:
	.loc 7 632 0 discriminator 5
	fmuls 10,10,10
.LBE7977:
.LBE7980:
	.loc 2 1523 0 discriminator 5
	fmsubs 0,30,11,0
	.loc 7 632 0 discriminator 5
	fmadds 10,13,13,10
	.loc 2 1513 0 discriminator 5
	lfs 13,16(21)
.LVL2646:
	.loc 7 632 0 discriminator 5
	fmadds 10,0,0,10
	.loc 2 1519 0 discriminator 5
	lfs 0,16(23)
.LVL2647:
	.loc 7 632 0 discriminator 5
	stfs 10,8(1)
.LBB7981:
.LBB7978:
.LBB7975:
.LBB7973:
.LBB7970:
.LBB7967:
	.loc 6 275 0 discriminator 5
	fmuls 27,10,2
	.loc 6 270 0 discriminator 5
	lwz 6,8(1)
.LVL2648:
	.loc 2 1479 0 discriminator 5
	fneg 27,27
	.loc 6 276 0 discriminator 5
	rlwinm 23,6,19,21,29
.LVL2649:
	rlwinm 22,6,9,24,31
.LVL2650:
	lwzx 23,3,23
	subfic 6,22,380
	rlwinm 6,6,22,0,8
	or 6,6,23
	.loc 6 277 0 discriminator 5
	stw 6,12(1)
	lfs 10,12(1)
	fmr 1,10
.LVL2651:
	.loc 6 278 0 discriminator 5
	fmul 10,1,1
.LVL2652:
	fmadd 10,27,10,3
	fmul 10,1,10
.LVL2653:
	.loc 6 279 0 discriminator 5
	fmul 1,10,10
	fmadd 27,27,1,3
.LVL2654:
.LBE7967:
.LBE7970:
	.loc 6 303 0 discriminator 5
	lfs 1,8(1)
.LBB7971:
.LBB7968:
	.loc 6 279 0 discriminator 5
	fmul 10,10,27
.LVL2655:
	.loc 6 280 0 discriminator 5
	frsp 10,10
.LVL2656:
.LBE7968:
.LBE7971:
	.loc 6 303 0 discriminator 5
	fmuls 10,1,10
.LBE7973:
.LBE7975:
.LBE7978:
.LBE7981:
	.loc 2 1528 0 discriminator 5
	fcmpu 7,8,10
	bgt- 7,.L2273
	.loc 2 1533 0
	cmpw 7,0,10
	beq- 7,.L2286
	.loc 2 1536 0
	cmpw 7,5,10
	beq- 7,.L2287
	.loc 2 1540 0
	stw 0,0(11)
	.loc 2 1541 0
	stw 5,4(11)
.L2266:
	.loc 2 1545 0
	lfs 1,.LC31@l(4)
	lfs 8,.LC30@l(12)
	fcmpu 7,10,1
	blt- 7,.L2268
	lfs 8,.LC18@l(25)
	fdivs 8,8,10
.L2268:
	.loc 2 1513 0
	fsubs 13,13,7
	.loc 2 1548 0
	stfs 8,16(11)
	.loc 2 1519 0
	fsubs 0,0,7
.LVL2657:
.LBB7982:
.LBB7983:
.LBB7984:
.LBB7985:
.LBB7986:
.LBB7987:
	.loc 6 275 0
	lfs 8,0(26)
.LBE7987:
.LBE7986:
.LBE7985:
.LBE7984:
.LBE7983:
.LBE7982:
	.loc 2 1518 0
	fsubs 5,5,6
.LVL2658:
	.loc 2 1554 0
	fmuls 9,13,9
.LVL2659:
	.loc 2 1553 0
	fmuls 11,13,11
.LVL2660:
	.loc 2 1555 0
	fmuls 12,13,12
.LVL2661:
	.loc 2 1554 0
	fmsubs 9,30,0,9
	.loc 2 1553 0
	fmsubs 11,31,0,11
	.loc 2 1555 0
	fmsubs 12,29,0,12
.LBB8000:
.LBB7998:
	.loc 7 632 0
	fmuls 7,9,9
.LVL2662:
.LBB7996:
.LBB7994:
.LBB7991:
.LBB7988:
	.loc 6 278 0
	lfs 9,0(27)
.LBE7988:
.LBE7991:
.LBE7994:
.LBE7996:
.LBE7998:
.LBE8000:
	.loc 2 1551 0
	fmuls 13,13,5
	.loc 2 1512 0
	fsubs 6,28,6
.LVL2663:
	.loc 7 632 0
	fmadds 11,11,11,7
	.loc 2 1557 0
	lfs 7,.LC31@l(4)
	.loc 2 1551 0
	fmsubs 0,6,0,13
	.loc 7 632 0
	fmadds 11,12,12,11
	stfs 11,8(1)
.LBB8001:
.LBB7999:
.LBB7997:
.LBB7995:
.LBB7992:
.LBB7989:
	.loc 6 275 0
	fmuls 8,11,8
	.loc 6 270 0
	lwz 0,8(1)
.LVL2664:
	.loc 2 1479 0
	fneg 8,8
	.loc 6 276 0
	rlwinm 8,0,19,21,29
	rlwinm 6,0,9,24,31
.LVL2665:
	lwzx 8,3,8
	subfic 0,6,380
	rlwinm 0,0,22,0,8
	or 0,0,8
	.loc 6 277 0
	stw 0,12(1)
	lfs 1,12(1)
	fmr 11,1
.LVL2666:
	.loc 6 278 0
	fmul 12,11,11
	fmadd 12,8,12,9
	fmul 12,11,12
.LVL2667:
	.loc 6 279 0
	fmul 13,12,12
	fmadd 9,8,13,9
.LVL2668:
.LBE7989:
.LBE7992:
	.loc 6 303 0
	lfs 13,8(1)
.LBB7993:
.LBB7990:
	.loc 6 279 0
	fmul 12,12,9
.LVL2669:
	.loc 6 280 0
	frsp 12,12
.LVL2670:
.LBE7990:
.LBE7993:
	.loc 6 303 0
	fmuls 12,13,12
.LBE7995:
.LBE7997:
.LBE7999:
.LBE8001:
	.loc 2 1557 0
	fcmpu 7,12,7
	bnl- 7,.L2269
	.loc 2 1558 0
	fmr 12,7
.L2269:
.LVL2671:
	.loc 2 1560 0
	fcmpu 7,0,4
	bng- 7,.L2284
	.loc 2 1560 0 is_stmt 0 discriminator 3
	lfs 0,.LC18@l(25)
.LVL2672:
	fdivs 12,0,12
.LVL2673:
	.loc 2 1570 0 is_stmt 1 discriminator 3
	stfs 0,12(1)
	lwz 0,12(1)
	.loc 2 1560 0 discriminator 3
	stfs 12,8(11)
.LVL2674:
.L2275:
	.loc 2 1570 0 discriminator 3
	stw 0,12(11)
	.loc 2 1531 0 discriminator 3
	fmr 8,10
	lwz 8,44(31)
.LVL2675:
.L2273:
.LBE8003:
	.loc 2 1496 0
	addi 9,9,1
.LVL2676:
	.loc 2 1479 0
	add 0,9,7
	.loc 2 1496 0
	cmpw 7,8,0
	bgt- 7,.L2288
.LVL2677:
.L2263:
.LBE8005:
.LBE7957:
.LBE7956:
	.loc 2 1577 0
	mr 3,30
	bl _Z12R_StaticFreePv
.LBE7950:
	.loc 2 1578 0
	lwz 0,116(1)
	lwz 18,16(1)
	mtlr 0
	lwz 19,20(1)
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
.LVL2678:
	lwz 30,64(1)
.LVL2679:
	lwz 31,68(1)
.LVL2680:
	lfd 27,72(1)
	lfd 28,80(1)
	lfd 29,88(1)
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI350:
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
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	blr
.LVL2681:
.L2288:
.LCFI351:
	.cfi_restore_state
.LBB8009:
.LBB8008:
.LBB8007:
.LBB8006:
	.loc 2 1479 0 discriminator 2
	add 5,30,28
.LVL2682:
	slwi 6,9,3
	.loc 2 1496 0 discriminator 2
	lwzx 6,5,6
	cmpw 7,6,10
	beq- 7,.L2264
	.loc 2 1496 0 is_stmt 0
	mr 7,0
	.loc 2 1495 0 is_stmt 1
	mr 10,6
	b .L2272
.LVL2683:
.L2284:
.LBB8004:
	.loc 2 1560 0
	lfs 0,.LC17@l(24)
.LVL2684:
	fdivs 12,0,12
.LVL2685:
	.loc 2 1570 0
	stfs 0,12(1)
	lwz 0,12(1)
	.loc 2 1560 0
	stfs 12,8(11)
.LVL2686:
	b .L2275
.LVL2687:
.L2286:
	.loc 2 1534 0
	stw 5,0(11)
	.loc 2 1535 0
	stw 20,4(11)
	b .L2266
.L2287:
	.loc 2 1537 0
	stw 20,0(11)
	.loc 2 1538 0
	stw 0,4(11)
	b .L2266
.LBE8004:
.LBE8006:
.LBE8007:
.LBE8008:
.LBE8009:
	.cfi_endproc
.LFE2605:
	.size	_Z19R_BuildDominantTrisP14srfTriangles_s, .-_Z19R_BuildDominantTrisP14srfTriangles_s
	.align 2
	.globl _Z17R_BuildDeformInfoiPK10idDrawVertiPKib
	.type	_Z17R_BuildDeformInfoiPK10idDrawVertiPKib, @function
_Z17R_BuildDeformInfoiPK10idDrawVertiPKib:
.LFB2616:
	.loc 2 2156 0
	.cfi_startproc
.LVL2688:
	stwu 1,-160(1)
.LCFI352:
	.cfi_def_cfa_offset 160
	mflr 0
	stw 29,148(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 30,152(1)
.LBB8010:
	.loc 2 2161 0
	li 4,0
.LVL2689:
.LBE8010:
	.loc 2 2156 0
	mr 30,3
	.cfi_offset 30, -8
	stw 31,156(1)
.LBB8011:
	.loc 2 2161 0
	addi 3,1,8
.LVL2690:
.LBE8011:
	.loc 2 2156 0
	mr 31,5
	.cfi_offset 31, -4
.LBB8012:
	.loc 2 2161 0
	li 5,128
.LVL2691:
.LBE8012:
	.loc 2 2156 0
	stw 0,164(1)
	stw 27,140(1)
	mr 27,7
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	stw 28,144(1)
	.loc 2 2156 0
	mr 28,6
	.cfi_offset 28, -16
.LBB8013:
	.loc 2 2161 0
	bl memset
.LVL2692:
	.loc 2 2164 0
	addi 3,1,8
	mr 4,30
	.loc 2 2163 0
	stw 30,44(1)
	.loc 2 2164 0
	bl _Z25R_AllocStaticTriSurfVertsP14srfTriangles_si
	.loc 2 2165 0
	lis 9,SIMDProcessor@ha
	lwz 3,SIMDProcessor@l(9)
	mr 5,29
	lwz 6,44(1)
	lwz 9,0(3)
	lwz 4,48(1)
	mulli 6,6,60
	lwz 0,148(9)
	mtctr 0
	bctrl
	.loc 2 2168 0
	addi 3,1,8
	mr 4,31
	.loc 2 2167 0
	stw 31,52(1)
	.loc 2 2168 0
	bl _Z27R_AllocStaticTriSurfIndexesP14srfTriangles_si
.LVL2693:
	.loc 2 2171 0
	lwz 0,52(1)
	cmpwi 7,0,0
	ble- 7,.L2290
	.loc 2 2156 0
	addi 28,28,-4
.LVL2694:
.LBE8013:
	.loc 2 2171 0
	li 9,0
.LVL2695:
.L2291:
.LBB8014:
	.loc 2 2172 0 discriminator 2
	lwzu 10,4(28)
	slwi 0,9,2
	lwz 11,56(1)
	.loc 2 2171 0 discriminator 2
	addi 9,9,1
.LVL2696:
	.loc 2 2172 0 discriminator 2
	stwx 10,11,0
	.loc 2 2171 0 discriminator 2
	lwz 0,52(1)
	cmpw 7,0,9
	bgt+ 7,.L2291
.LVL2697:
.L2290:
	.loc 2 2175 0
	addi 3,1,8
	bl _Z19R_RangeCheckIndexesPK14srfTriangles_s
	.loc 2 2176 0
	addi 3,1,8
	bl _Z18R_CreateSilIndexesP14srfTriangles_s
	.loc 2 2183 0
	li 4,0
	addi 3,1,8
	bl _Z18R_IdentifySilEdgesP14srfTriangles_sb
	.loc 2 2186 0
	addi 3,1,8
	bl _ZL27R_DuplicateMirroredVertexesP14srfTriangles_s
	.loc 2 2188 0
	addi 3,1,8
	bl _Z16R_CreateDupVertsP14srfTriangles_s
	.loc 2 2190 0
	cmpwi 7,27,0
	bne- 7,.L2296
.L2292:
	.loc 2 2194 0
	li 3,48
	bl _Z20R_ClearedStaticAlloci
	.loc 2 2196 0
	stw 30,0(3)
	.loc 2 2194 0
	mr 29,3
.LVL2698:
	.loc 2 2197 0
	lwz 0,44(1)
	.loc 2 2199 0
	stw 31,16(3)
	.loc 2 2197 0
	stw 0,4(3)
	.loc 2 2200 0
	lwz 0,56(1)
	stw 0,20(3)
	.loc 2 2202 0
	lwz 0,60(1)
	stw 0,24(3)
	.loc 2 2204 0
	lwz 0,80(1)
	stw 0,36(3)
	.loc 2 2205 0
	lwz 0,84(1)
	stw 0,40(3)
	.loc 2 2207 0
	lwz 0,92(1)
	stw 0,44(3)
	.loc 2 2209 0
	lwz 0,64(1)
	stw 0,8(3)
	.loc 2 2210 0
	lwz 0,68(1)
	stw 0,12(3)
	.loc 2 2212 0
	lwz 0,72(1)
	stw 0,28(3)
	.loc 2 2213 0
	lwz 0,76(1)
	stw 0,32(3)
	.loc 2 2215 0
	lwz 4,48(1)
	cmpwi 7,4,0
	beq- 7,.L2293
	.loc 2 2216 0
	lis 3,.LANCHOR0@ha
.LVL2699:
	la 3,.LANCHOR0@l(3)
	addi 3,3,48
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE4FreeEPS0_
.L2293:
	.loc 2 2219 0
	lwz 4,88(1)
	cmpwi 7,4,0
	beq- 7,.L2294
	.loc 2 2220 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,252
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE4FreeEPS0_
.L2294:
.LBE8014:
	.loc 2 2224 0
	lwz 0,164(1)
	mr 3,29
	lwz 27,140(1)
	mtlr 0
	lwz 28,144(1)
	lwz 29,148(1)
.LVL2700:
	lwz 30,152(1)
.LVL2701:
	lwz 31,156(1)
.LVL2702:
	addi 1,1,160
	.cfi_remember_state
.LCFI353:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL2703:
.L2296:
.LCFI354:
	.cfi_restore_state
.LBB8015:
	.loc 2 2191 0
	addi 3,1,8
	bl _Z19R_BuildDominantTrisP14srfTriangles_s
	b .L2292
.LBE8015:
	.cfi_endproc
.LFE2616:
	.size	_Z17R_BuildDeformInfoiPK10idDrawVertiPKib, .-_Z17R_BuildDeformInfoiPK10idDrawVertiPKib
	.align 2
	.globl _Z18R_CleanupTrianglesP14srfTriangles_sbbb
	.type	_Z18R_CleanupTrianglesP14srfTriangles_sbbb, @function
_Z18R_CleanupTrianglesP14srfTriangles_sbbb:
.LFB2615:
	.loc 2 2105 0
	.cfi_startproc
.LVL2704:
	stwu 1,-24(1)
.LCFI355:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,28(1)
	stw 28,8(1)
	mr 28,5
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	.loc 2 2105 0
	mr 30,6
	.cfi_offset 30, -8
	.loc 2 2106 0
	bl _Z19R_RangeCheckIndexesPK14srfTriangles_s
.LVL2705:
	.loc 2 2108 0
	mr 3,31
	bl _Z18R_CreateSilIndexesP14srfTriangles_s
	.loc 2 2112 0
	mr 3,31
	bl _Z27R_RemoveDegenerateTrianglesP14srfTriangles_s
.LVL2706:
	.loc 2 2118 0
	cmpwi 7,28,0
	bne- 7,.L2301
.L2298:
	.loc 2 2123 0
	mr 3,31
	bl _ZL27R_DuplicateMirroredVertexesP14srfTriangles_s
	.loc 2 2128 0
	mr 3,31
	bl _Z16R_CreateDupVertsP14srfTriangles_s
.LVL2707:
.LBB8016:
.LBB8017:
	.loc 2 714 0
	lis 9,SIMDProcessor@ha
	lwz 3,SIMDProcessor@l(9)
.LVL2708:
	mr 4,31
	addi 5,31,12
	lwz 6,40(31)
	lwz 9,0(3)
	lwz 7,36(31)
	lwz 0,128(9)
	mtctr 0
	bctrl
.LBE8017:
.LBE8016:
	.loc 2 2132 0
	cmpwi 7,30,0
	.loc 2 2133 0
	mr 3,31
	.loc 2 2132 0
	bne- 7,.L2302
	.loc 2 2135 0
	cmpwi 7,29,0
	beq- 7,.L2303
	.loc 2 2141 0
	lwz 0,28(1)
	.loc 2 2139 0
	li 4,1
	.loc 2 2141 0
	lwz 28,8(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2709:
	addi 1,1,24
	.cfi_remember_state
.LCFI356:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 2 2139 0
	b _Z16R_DeriveTangentsP14srfTriangles_sb
.LVL2710:
.L2303:
.LCFI357:
	.cfi_restore_state
	.loc 2 2136 0
	bl _Z18R_DeriveFacePlanesP14srfTriangles_s
.LVL2711:
	.loc 2 2141 0
	lwz 0,28(1)
	lwz 28,8(1)
	.loc 2 2137 0
	mr 3,31
	.loc 2 2141 0
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2712:
	addi 1,1,24
	.cfi_remember_state
.LCFI358:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 2 2137 0
	b _Z30R_DeriveTangentsWithoutNormalsP14srfTriangles_s
.LVL2713:
.L2301:
.LCFI359:
	.cfi_restore_state
	.loc 2 2119 0
	mr 3,31
	li 4,1
	bl _Z18R_IdentifySilEdgesP14srfTriangles_sb
	b .L2298
.LVL2714:
.L2302:
	.loc 2 2133 0
	bl _Z19R_BuildDominantTrisP14srfTriangles_s
	.loc 2 2141 0
	lwz 0,28(1)
	lwz 28,8(1)
	.loc 2 2134 0
	mr 3,31
	.loc 2 2141 0
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2715:
	addi 1,1,24
.LCFI360:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 2 2134 0
	b _Z26R_DeriveUnsmoothedTangentsP14srfTriangles_s
.LVL2716:
.LVL2717:
	.cfi_endproc
.LFE2615:
	.size	_Z18R_CleanupTrianglesP14srfTriangles_sbbb, .-_Z18R_CleanupTrianglesP14srfTriangles_sbbb
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EED5Ev,comdat
	.align 2
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev
	.type	_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev, @function
_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev:
.LFB3180:
	.loc 4 464 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3180
.LVL2718:
	mflr 0
	stwu 1,-16(1)
.LCFI361:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LEHB3:
.LBB8018:
	.loc 4 465 0
	.cfi_offset 65, 4
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EE8ShutdownEv
.LEHE3:
.LVL2719:
.LBB8019:
.LBB8020:
.LBB8021:
.LBB8022:
.LBB8023:
.LBB8024:
	.loc 4 245 0
	li 0,0
	stw 0,24(31)
	stw 0,20(31)
.LBE8024:
.LBE8023:
	.loc 5 110 0
	stw 0,8(31)
.LVL2720:
.LBE8022:
.LBE8021:
.LBE8020:
.LBE8019:
.LBE8018:
	.loc 4 466 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2721:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI362:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2722:
.L2311:
.LCFI363:
	.cfi_restore_state
.LBB8031:
.LBB8025:
.LBB8026:
.LBB8027:
.LBB8028:
.LBB8029:
.LBB8030:
	.loc 4 245 0
	li 0,0
	stw 0,24(31)
	stw 0,20(31)
.LBE8030:
.LBE8029:
	.loc 5 110 0
	stw 0,8(31)
.LVL2723:
.LEHB4:
	bl _Unwind_Resume
.LEHE4:
.LBE8028:
.LBE8027:
.LBE8026:
.LBE8025:
.LBE8031:
	.cfi_endproc
.LFE3180:
	.section	.gcc_except_table
.LLSDA3180:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3180-.LLSDACSB3180
.LLSDACSB3180:
	.uleb128 .LEHB3-.LFB3180
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L2311-.LFB3180
	.uleb128 0
	.uleb128 .LEHB4-.LFB3180
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3180:
	.section	.text._ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev,"axG",@progbits,_ZN19idDynamicBlockAllocIiLi65536ELi1024EED5Ev,comdat
	.size	_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev, .-_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev
	.section	".text"
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.114, @function
_Z41__static_initialization_and_destruction_0ii.constprop.114:
.LFB3333:
	.loc 2 2282 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3333
.LVL2724:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-16(1)
.LCFI364:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 2282 0
	beq- 7,.L2371
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 2 138 0
	cmpwi 7,3,0
	bne- 7,.L2312
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
	addi 3,31,592
.LVL2725:
.LEHB5:
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EED1Ev
	.loc 2 137 0
	addi 3,31,524
	bl _ZN19idDynamicBlockAllocIiLi65536ELi1024EED1Ev
.LEHE5:
.LVL2726:
.LBB8032:
.LBB8033:
.LBB8034:
	.loc 4 465 0
	addi 3,31,456
.LEHB6:
	bl _ZN19idDynamicBlockAllocI13dominantTri_sLi65536ELi1024EE8ShutdownEv
.LEHE6:
.LVL2727:
.LBB8035:
.LBB8036:
.LBB8037:
.LBB8038:
.LBB8039:
.LBB8040:
	.loc 4 245 0
	li 0,0
.LBE8040:
.LBE8039:
.LBE8038:
.LBE8037:
.LBE8036:
.LBE8035:
.LBE8034:
.LBE8033:
.LBE8032:
.LBB8057:
.LBB8058:
.LBB8059:
	.loc 4 465 0
	addi 3,31,388
.LBE8059:
.LBE8058:
.LBE8057:
.LBB8084:
.LBB8055:
.LBB8053:
.LBB8046:
.LBB8045:
.LBB8044:
.LBB8043:
.LBB8042:
.LBB8041:
	.loc 4 245 0
	stw 0,480(31)
	stw 0,476(31)
.LBE8041:
.LBE8042:
	.loc 5 110 0
	stw 0,464(31)
.LVL2728:
.LEHB7:
.LBE8043:
.LBE8044:
.LBE8045:
.LBE8046:
.LBE8053:
.LBE8055:
.LBE8084:
.LBB8085:
.LBB8081:
.LBB8078:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocI9silEdge_tLi131072ELi1024EE8ShutdownEv
.LEHE7:
.LVL2729:
.LBB8060:
.LBB8061:
.LBB8062:
.LBB8063:
.LBB8064:
.LBB8065:
	.loc 4 245 0
	li 0,0
.LBE8065:
.LBE8064:
.LBE8063:
.LBE8062:
.LBE8061:
.LBE8060:
.LBE8078:
.LBE8081:
.LBE8085:
.LBB8086:
.LBB8087:
.LBB8088:
	.loc 4 465 0
	addi 3,31,320
.LBE8088:
.LBE8087:
.LBE8086:
.LBB8113:
.LBB8082:
.LBB8079:
.LBB8071:
.LBB8070:
.LBB8069:
.LBB8068:
.LBB8067:
.LBB8066:
	.loc 4 245 0
	stw 0,412(31)
	stw 0,408(31)
.LBE8066:
.LBE8067:
	.loc 5 110 0
	stw 0,396(31)
.LVL2730:
.LEHB8:
.LBE8068:
.LBE8069:
.LBE8070:
.LBE8071:
.LBE8079:
.LBE8082:
.LBE8113:
.LBB8114:
.LBB8110:
.LBB8107:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocIiLi131072ELi1024EE8ShutdownEv
.LEHE8:
.LVL2731:
.LBB8089:
.LBB8090:
.LBB8091:
.LBB8092:
.LBB8093:
.LBB8094:
	.loc 4 245 0
	li 0,0
.LBE8094:
.LBE8093:
.LBE8092:
.LBE8091:
.LBE8090:
.LBE8089:
.LBE8107:
.LBE8110:
.LBE8114:
.LBB8115:
.LBB8116:
.LBB8117:
	.loc 4 465 0
	addi 3,31,252
.LBE8117:
.LBE8116:
.LBE8115:
.LBB8142:
.LBB8111:
.LBB8108:
.LBB8100:
.LBB8099:
.LBB8098:
.LBB8097:
.LBB8096:
.LBB8095:
	.loc 4 245 0
	stw 0,344(31)
	stw 0,340(31)
.LBE8095:
.LBE8096:
	.loc 5 110 0
	stw 0,328(31)
.LVL2732:
.LEHB9:
.LBE8097:
.LBE8098:
.LBE8099:
.LBE8100:
.LBE8108:
.LBE8111:
.LBE8142:
.LBB8143:
.LBB8139:
.LBB8136:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocI7idPlaneLi131072ELi1024EE8ShutdownEv
.LEHE9:
.LVL2733:
.LBB8118:
.LBB8119:
.LBB8120:
.LBB8121:
.LBB8122:
.LBB8123:
	.loc 4 245 0
	li 0,0
.LBE8123:
.LBE8122:
.LBE8121:
.LBE8120:
.LBE8119:
.LBE8118:
.LBE8136:
.LBE8139:
.LBE8143:
.LBB8144:
.LBB8145:
.LBB8146:
	.loc 4 465 0
	addi 3,31,184
.LBE8146:
.LBE8145:
.LBE8144:
.LBB8171:
.LBB8140:
.LBB8137:
.LBB8129:
.LBB8128:
.LBB8127:
.LBB8126:
.LBB8125:
.LBB8124:
	.loc 4 245 0
	stw 0,276(31)
	stw 0,272(31)
.LBE8124:
.LBE8125:
	.loc 5 110 0
	stw 0,260(31)
.LVL2734:
.LEHB10:
.LBE8126:
.LBE8127:
.LBE8128:
.LBE8129:
.LBE8137:
.LBE8140:
.LBE8171:
.LBB8172:
.LBB8168:
.LBB8165:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocI13shadowCache_sLi262144ELi1024EE8ShutdownEv
.LEHE10:
.LVL2735:
.LBB8147:
.LBB8148:
.LBB8149:
.LBB8150:
.LBB8151:
.LBB8152:
	.loc 4 245 0
	li 0,0
.LBE8152:
.LBE8151:
.LBE8150:
.LBE8149:
.LBE8148:
.LBE8147:
.LBE8165:
.LBE8168:
.LBE8172:
.LBB8173:
.LBB8174:
.LBB8175:
	.loc 4 465 0
	addi 3,31,116
.LBE8175:
.LBE8174:
.LBE8173:
.LBB8200:
.LBB8169:
.LBB8166:
.LBB8158:
.LBB8157:
.LBB8156:
.LBB8155:
.LBB8154:
.LBB8153:
	.loc 4 245 0
	stw 0,208(31)
	stw 0,204(31)
.LBE8153:
.LBE8154:
	.loc 5 110 0
	stw 0,192(31)
.LVL2736:
.LEHB11:
.LBE8155:
.LBE8156:
.LBE8157:
.LBE8158:
.LBE8166:
.LBE8169:
.LBE8200:
.LBB8201:
.LBB8197:
.LBB8194:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocIiLi262144ELi1024EE8ShutdownEv
.LEHE11:
.LVL2737:
.LBB8176:
.LBB8177:
.LBB8178:
.LBB8179:
.LBB8180:
.LBB8181:
	.loc 4 245 0
	li 0,0
.LBE8181:
.LBE8180:
.LBE8179:
.LBE8178:
.LBE8177:
.LBE8176:
.LBE8194:
.LBE8197:
.LBE8201:
.LBB8202:
.LBB8203:
.LBB8204:
	.loc 4 465 0
	addi 3,31,48
.LBE8204:
.LBE8203:
.LBE8202:
.LBB8229:
.LBB8198:
.LBB8195:
.LBB8187:
.LBB8186:
.LBB8185:
.LBB8184:
.LBB8183:
.LBB8182:
	.loc 4 245 0
	stw 0,140(31)
	stw 0,136(31)
.LBE8182:
.LBE8183:
	.loc 5 110 0
	stw 0,124(31)
.LVL2738:
.LEHB12:
.LBE8184:
.LBE8185:
.LBE8186:
.LBE8187:
.LBE8195:
.LBE8198:
.LBE8229:
.LBB8230:
.LBB8226:
.LBB8223:
	.loc 4 465 0
	bl _ZN19idDynamicBlockAllocI10idDrawVertLi1048576ELi1024EE8ShutdownEv
.LEHE12:
.LVL2739:
.LBB8205:
.LBB8206:
.LBB8207:
.LBB8208:
.LBB8209:
.LBB8210:
	.loc 4 245 0
	li 0,0
.LBE8210:
.LBE8209:
.LBE8208:
.LBE8207:
.LBE8206:
.LBE8205:
.LBE8223:
.LBE8226:
.LBE8230:
.LBB8231:
.LBB8232:
.LBB8233:
	.loc 3 130 0
	mr 3,31
.LBE8233:
.LBE8232:
.LBE8231:
.LBB8236:
.LBB8227:
.LBB8224:
.LBB8216:
.LBB8215:
.LBB8214:
.LBB8213:
.LBB8212:
.LBB8211:
	.loc 4 245 0
	stw 0,72(31)
	stw 0,68(31)
.LBE8211:
.LBE8212:
	.loc 5 110 0
	stw 0,56(31)
.LVL2740:
.LBE8213:
.LBE8214:
.LBE8215:
.LBE8216:
.LBE8224:
.LBE8227:
.LBE8236:
.LBB8237:
.LBB8238:
.LBB8239:
.LBB8240:
	.loc 4 245 0
	stw 0,672(31)
	stw 0,668(31)
.LVL2741:
.LEHB13:
.LBE8240:
.LBE8239:
.LBE8238:
.LBE8237:
.LBB8241:
.LBB8235:
.LBB8234:
	.loc 3 130 0
	bl _ZN11idHashIndex4FreeEv
.LVL2742:
.L2312:
.LBE8234:
.LBE8235:
.LBE8241:
	.loc 2 2282 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL2743:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI365:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2744:
.L2371:
.LCFI366:
	.cfi_restore_state
.LBB8242:
.LBB8243:
	.loc 2 124 0
	lis 31,.LANCHOR0@ha
	.loc 3 121 0
	li 4,1024
	.loc 2 124 0
	la 31,.LANCHOR0@l(31)
	.loc 3 121 0
	lis 5,0x1
	mr 3,31
.LVL2745:
	bl _ZN11idHashIndex4InitEii
.LVL2746:
.LBE8243:
.LBE8242:
.LBB8244:
.LBB8245:
	.loc 4 187 0
	li 0,0
	stw 0,660(31)
	.loc 4 188 0
	stw 0,664(31)
	.loc 4 189 0
	stw 0,672(31)
	stw 0,668(31)
.LVL2747:
.LBE8245:
.LBE8244:
.LBB8246:
.LBB8247:
.LBB8248:
.LBB8249:
.LBB8250:
	.loc 4 187 0
	stw 0,60(31)
	.loc 4 188 0
	stw 0,64(31)
	.loc 4 189 0
	stw 0,72(31)
	stw 0,68(31)
.LBE8250:
.LBE8249:
	.loc 5 94 0
	stw 0,56(31)
.LVL2748:
.LBE8248:
.LBE8247:
.LBB8251:
.LBB8252:
	.loc 4 706 0
	stw 0,52(31)
	stw 0,48(31)
	.loc 4 707 0
	stb 30,76(31)
	.loc 4 708 0
	stb 0,77(31)
	.loc 4 709 0
	stw 0,80(31)
	.loc 4 710 0
	stw 0,84(31)
	.loc 4 711 0
	stw 0,88(31)
	.loc 4 712 0
	stw 0,92(31)
	.loc 4 713 0
	stw 0,96(31)
	.loc 4 714 0
	stw 0,100(31)
	.loc 4 715 0
	stw 0,104(31)
	.loc 4 716 0
	stw 0,108(31)
	.loc 4 717 0
	stw 0,112(31)
.LVL2749:
.LBE8252:
.LBE8251:
.LBE8246:
.LBB8253:
.LBB8254:
.LBB8255:
.LBB8256:
.LBB8257:
	.loc 4 187 0
	stw 0,128(31)
	.loc 4 188 0
	stw 0,132(31)
	.loc 4 189 0
	stw 0,140(31)
	stw 0,136(31)
.LBE8257:
.LBE8256:
	.loc 5 94 0
	stw 0,124(31)
.LVL2750:
.LBE8255:
.LBE8254:
.LBB8258:
.LBB8259:
	.loc 4 706 0
	stw 0,120(31)
	stw 0,116(31)
	.loc 4 707 0
	stb 30,144(31)
	.loc 4 708 0
	stb 0,145(31)
	.loc 4 709 0
	stw 0,148(31)
	.loc 4 710 0
	stw 0,152(31)
	.loc 4 711 0
	stw 0,156(31)
	.loc 4 712 0
	stw 0,160(31)
	.loc 4 713 0
	stw 0,164(31)
	.loc 4 714 0
	stw 0,168(31)
	.loc 4 715 0
	stw 0,172(31)
	.loc 4 716 0
	stw 0,176(31)
	.loc 4 717 0
	stw 0,180(31)
.LVL2751:
.LBE8259:
.LBE8258:
.LBE8253:
.LBB8260:
.LBB8261:
.LBB8262:
.LBB8263:
.LBB8264:
	.loc 4 187 0
	stw 0,196(31)
	.loc 4 188 0
	stw 0,200(31)
	.loc 4 189 0
	stw 0,208(31)
	stw 0,204(31)
.LBE8264:
.LBE8263:
	.loc 5 94 0
	stw 0,192(31)
.LVL2752:
.LBE8262:
.LBE8261:
.LBB8265:
.LBB8266:
	.loc 4 706 0
	stw 0,188(31)
	stw 0,184(31)
	.loc 4 707 0
	stb 30,212(31)
	.loc 4 708 0
	stb 0,213(31)
	.loc 4 709 0
	stw 0,216(31)
	.loc 4 710 0
	stw 0,220(31)
	.loc 4 711 0
	stw 0,224(31)
	.loc 4 712 0
	stw 0,228(31)
	.loc 4 713 0
	stw 0,232(31)
	.loc 4 714 0
	stw 0,236(31)
	.loc 4 715 0
	stw 0,240(31)
	.loc 4 716 0
	stw 0,244(31)
	.loc 4 717 0
	stw 0,248(31)
.LVL2753:
.LBE8266:
.LBE8265:
.LBE8260:
.LBB8267:
.LBB8268:
.LBB8269:
.LBB8270:
.LBB8271:
	.loc 4 187 0
	stw 0,264(31)
	.loc 4 188 0
	stw 0,268(31)
	.loc 4 189 0
	stw 0,276(31)
	stw 0,272(31)
.LBE8271:
.LBE8270:
	.loc 5 94 0
	stw 0,260(31)
.LVL2754:
.LBE8269:
.LBE8268:
.LBB8272:
.LBB8273:
	.loc 4 706 0
	stw 0,256(31)
	stw 0,252(31)
	.loc 4 707 0
	stb 30,280(31)
	.loc 4 708 0
	stb 0,281(31)
	.loc 4 709 0
	stw 0,284(31)
	.loc 4 710 0
	stw 0,288(31)
	.loc 4 711 0
	stw 0,292(31)
	.loc 4 712 0
	stw 0,296(31)
	.loc 4 713 0
	stw 0,300(31)
	.loc 4 714 0
	stw 0,304(31)
	.loc 4 715 0
	stw 0,308(31)
	.loc 4 716 0
	stw 0,312(31)
	.loc 4 717 0
	stw 0,316(31)
.LVL2755:
.LBE8273:
.LBE8272:
.LBE8267:
.LBB8274:
.LBB8275:
.LBB8276:
.LBB8277:
.LBB8278:
	.loc 4 187 0
	stw 0,332(31)
	.loc 4 188 0
	stw 0,336(31)
	.loc 4 189 0
	stw 0,344(31)
	stw 0,340(31)
.LBE8278:
.LBE8277:
	.loc 5 94 0
	stw 0,328(31)
.LVL2756:
.LBE8276:
.LBE8275:
.LBB8279:
.LBB8280:
	.loc 4 706 0
	stw 0,324(31)
	stw 0,320(31)
	.loc 4 707 0
	stb 30,348(31)
	.loc 4 708 0
	stb 0,349(31)
	.loc 4 709 0
	stw 0,352(31)
	.loc 4 710 0
	stw 0,356(31)
	.loc 4 711 0
	stw 0,360(31)
	.loc 4 712 0
	stw 0,364(31)
	.loc 4 713 0
	stw 0,368(31)
	.loc 4 714 0
	stw 0,372(31)
	.loc 4 715 0
	stw 0,376(31)
	.loc 4 716 0
	stw 0,380(31)
	.loc 4 717 0
	stw 0,384(31)
.LVL2757:
.LBE8280:
.LBE8279:
.LBE8274:
.LBB8281:
.LBB8282:
.LBB8283:
.LBB8284:
.LBB8285:
	.loc 4 187 0
	stw 0,400(31)
	.loc 4 188 0
	stw 0,404(31)
	.loc 4 189 0
	stw 0,412(31)
	stw 0,408(31)
.LBE8285:
.LBE8284:
	.loc 5 94 0
	stw 0,396(31)
.LVL2758:
.LBE8283:
.LBE8282:
.LBB8286:
.LBB8287:
	.loc 4 706 0
	stw 0,392(31)
	stw 0,388(31)
	.loc 4 707 0
	stb 30,416(31)
	.loc 4 708 0
	stb 0,417(31)
	.loc 4 709 0
	stw 0,420(31)
	.loc 4 710 0
	stw 0,424(31)
	.loc 4 711 0
	stw 0,428(31)
	.loc 4 712 0
	stw 0,432(31)
	.loc 4 713 0
	stw 0,436(31)
	.loc 4 714 0
	stw 0,440(31)
	.loc 4 715 0
	stw 0,444(31)
	.loc 4 716 0
	stw 0,448(31)
	.loc 4 717 0
	stw 0,452(31)
.LVL2759:
.LBE8287:
.LBE8286:
.LBE8281:
.LBB8288:
.LBB8289:
.LBB8290:
.LBB8291:
.LBB8292:
	.loc 4 187 0
	stw 0,468(31)
	.loc 4 188 0
	stw 0,472(31)
	.loc 4 189 0
	stw 0,480(31)
	stw 0,476(31)
.LBE8292:
.LBE8291:
	.loc 5 94 0
	stw 0,464(31)
.LVL2760:
.LBE8290:
.LBE8289:
.LBB8293:
.LBB8294:
	.loc 4 706 0
	stw 0,460(31)
	stw 0,456(31)
	.loc 4 707 0
	stb 30,484(31)
	.loc 4 708 0
	stb 0,485(31)
	.loc 4 709 0
	stw 0,488(31)
	.loc 4 710 0
	stw 0,492(31)
	.loc 4 711 0
	stw 0,496(31)
	.loc 4 712 0
	stw 0,500(31)
	.loc 4 713 0
	stw 0,504(31)
	.loc 4 714 0
	stw 0,508(31)
	.loc 4 715 0
	stw 0,512(31)
	.loc 4 716 0
	stw 0,516(31)
	.loc 4 717 0
	stw 0,520(31)
.LVL2761:
.LBE8294:
.LBE8293:
.LBE8288:
.LBB8295:
.LBB8296:
.LBB8297:
.LBB8298:
.LBB8299:
	.loc 4 187 0
	stw 0,536(31)
	.loc 4 188 0
	stw 0,540(31)
	.loc 4 189 0
	stw 0,548(31)
	stw 0,544(31)
.LBE8299:
.LBE8298:
	.loc 5 94 0
	stw 0,532(31)
.LVL2762:
.LBE8297:
.LBE8296:
.LBB8300:
.LBB8301:
	.loc 4 706 0
	stw 0,528(31)
	stw 0,524(31)
	.loc 4 707 0
	stb 30,552(31)
	.loc 4 708 0
	stb 0,553(31)
	.loc 4 709 0
	stw 0,556(31)
	.loc 4 710 0
	stw 0,560(31)
	.loc 4 711 0
	stw 0,564(31)
	.loc 4 712 0
	stw 0,568(31)
	.loc 4 713 0
	stw 0,572(31)
	.loc 4 714 0
	stw 0,576(31)
	.loc 4 715 0
	stw 0,580(31)
	.loc 4 716 0
	stw 0,584(31)
	.loc 4 717 0
	stw 0,588(31)
.LVL2763:
.LBE8301:
.LBE8300:
.LBE8295:
.LBB8302:
.LBB8303:
.LBB8304:
.LBB8305:
.LBB8306:
	.loc 4 187 0
	stw 0,604(31)
	.loc 4 188 0
	stw 0,608(31)
	.loc 4 189 0
	stw 0,616(31)
	stw 0,612(31)
.LBE8306:
.LBE8305:
	.loc 5 94 0
	stw 0,600(31)
.LVL2764:
.LBE8304:
.LBE8303:
.LBB8307:
.LBB8308:
	.loc 4 706 0
	stw 0,596(31)
	stw 0,592(31)
	.loc 4 707 0
	stb 30,620(31)
	.loc 4 708 0
	stb 0,621(31)
	.loc 4 709 0
	stw 0,624(31)
	.loc 4 710 0
	stw 0,628(31)
	.loc 4 711 0
	stw 0,632(31)
	.loc 4 712 0
	stw 0,636(31)
	.loc 4 713 0
	stw 0,640(31)
	.loc 4 714 0
	stw 0,644(31)
	.loc 4 715 0
	stw 0,648(31)
	.loc 4 716 0
	stw 0,652(31)
	.loc 4 717 0
	stw 0,656(31)
	b .L2312
.LVL2765:
.L2358:
.LBE8308:
.LBE8307:
.LBE8302:
.LBB8309:
.LBB8228:
.LBB8225:
.LBB8217:
.LBB8218:
.LBB8219:
.LBB8220:
.LBB8221:
.LBB8222:
	.loc 4 245 0
	li 0,0
	stw 0,72(31)
	stw 0,68(31)
.LBE8222:
.LBE8221:
	.loc 5 110 0
	stw 0,56(31)
.LVL2766:
	bl _Unwind_Resume
.LVL2767:
.L2359:
.LBE8220:
.LBE8219:
.LBE8218:
.LBE8217:
.LBE8225:
.LBE8228:
.LBE8309:
.LBB8310:
.LBB8199:
.LBB8196:
.LBB8188:
.LBB8189:
.LBB8190:
.LBB8191:
.LBB8192:
.LBB8193:
	.loc 4 245 0
	li 0,0
	stw 0,140(31)
	stw 0,136(31)
.LBE8193:
.LBE8192:
	.loc 5 110 0
	stw 0,124(31)
.LVL2768:
	bl _Unwind_Resume
.LVL2769:
.L2360:
.LBE8191:
.LBE8190:
.LBE8189:
.LBE8188:
.LBE8196:
.LBE8199:
.LBE8310:
.LBB8311:
.LBB8170:
.LBB8167:
.LBB8159:
.LBB8160:
.LBB8161:
.LBB8162:
.LBB8163:
.LBB8164:
	.loc 4 245 0
	li 0,0
	stw 0,208(31)
	stw 0,204(31)
.LBE8164:
.LBE8163:
	.loc 5 110 0
	stw 0,192(31)
.LVL2770:
	bl _Unwind_Resume
.LVL2771:
.L2361:
.LBE8162:
.LBE8161:
.LBE8160:
.LBE8159:
.LBE8167:
.LBE8170:
.LBE8311:
.LBB8312:
.LBB8141:
.LBB8138:
.LBB8130:
.LBB8131:
.LBB8132:
.LBB8133:
.LBB8134:
.LBB8135:
	.loc 4 245 0
	li 0,0
	stw 0,276(31)
	stw 0,272(31)
.LBE8135:
.LBE8134:
	.loc 5 110 0
	stw 0,260(31)
.LVL2772:
	bl _Unwind_Resume
.LVL2773:
.L2362:
.LBE8133:
.LBE8132:
.LBE8131:
.LBE8130:
.LBE8138:
.LBE8141:
.LBE8312:
.LBB8313:
.LBB8112:
.LBB8109:
.LBB8101:
.LBB8102:
.LBB8103:
.LBB8104:
.LBB8105:
.LBB8106:
	.loc 4 245 0
	li 0,0
	stw 0,344(31)
	stw 0,340(31)
.LBE8106:
.LBE8105:
	.loc 5 110 0
	stw 0,328(31)
.LVL2774:
	bl _Unwind_Resume
.LVL2775:
.L2363:
.LBE8104:
.LBE8103:
.LBE8102:
.LBE8101:
.LBE8109:
.LBE8112:
.LBE8313:
.LBB8314:
.LBB8083:
.LBB8080:
.LBB8072:
.LBB8073:
.LBB8074:
.LBB8075:
.LBB8076:
.LBB8077:
	.loc 4 245 0
	li 0,0
	stw 0,412(31)
	stw 0,408(31)
.LBE8077:
.LBE8076:
	.loc 5 110 0
	stw 0,396(31)
.LVL2776:
	bl _Unwind_Resume
.LVL2777:
.L2364:
.LBE8075:
.LBE8074:
.LBE8073:
.LBE8072:
.LBE8080:
.LBE8083:
.LBE8314:
.LBB8315:
.LBB8056:
.LBB8054:
.LBB8047:
.LBB8048:
.LBB8049:
.LBB8050:
.LBB8051:
.LBB8052:
	.loc 4 245 0
	li 0,0
	stw 0,480(31)
	stw 0,476(31)
.LBE8052:
.LBE8051:
	.loc 5 110 0
	stw 0,464(31)
.LVL2778:
	bl _Unwind_Resume
.LEHE13:
.LBE8050:
.LBE8049:
.LBE8048:
.LBE8047:
.LBE8054:
.LBE8056:
.LBE8315:
	.cfi_endproc
.LFE3333:
	.section	.gcc_except_table
.LLSDA3333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3333-.LLSDACSB3333
.LLSDACSB3333:
	.uleb128 .LEHB5-.LFB3333
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3333
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L2364-.LFB3333
	.uleb128 0
	.uleb128 .LEHB7-.LFB3333
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L2363-.LFB3333
	.uleb128 0
	.uleb128 .LEHB8-.LFB3333
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L2362-.LFB3333
	.uleb128 0
	.uleb128 .LEHB9-.LFB3333
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L2361-.LFB3333
	.uleb128 0
	.uleb128 .LEHB10-.LFB3333
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L2360-.LFB3333
	.uleb128 0
	.uleb128 .LEHB11-.LFB3333
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L2359-.LFB3333
	.uleb128 0
	.uleb128 .LEHB12-.LFB3333
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L2358-.LFB3333
	.uleb128 0
	.uleb128 .LEHB13-.LFB3333
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3333:
	.section	".text"
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.114, .-_Z41__static_initialization_and_destruction_0ii.constprop.114
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I__Z17R_InitTriSurfDatav, @function
_GLOBAL__sub_I__Z17R_InitTriSurfDatav:
.LFB3217:
	.loc 2 2282 0
	.cfi_startproc
	.loc 2 2282 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.114
	.cfi_endproc
.LFE3217:
	.size	_GLOBAL__sub_I__Z17R_InitTriSurfDatav, .-_GLOBAL__sub_I__Z17R_InitTriSurfDatav
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I__Z17R_InitTriSurfDatav
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D__Z17R_InitTriSurfDatav, @function
_GLOBAL__sub_D__Z17R_InitTriSurfDatav:
.LFB3218:
	.loc 2 2282 0
	.cfi_startproc
	.loc 2 2282 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.114
	.cfi_endproc
.LFE3218:
	.size	_GLOBAL__sub_D__Z17R_InitTriSurfDatav, .-_GLOBAL__sub_D__Z17R_InitTriSurfDatav
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D__Z17R_InitTriSurfDatav
	.weak	_ZTS9idWinding
	.section	.rodata._ZTS9idWinding,"aG",@progbits,_ZTS9idWinding,comdat
	.align 2
	.type	_ZTS9idWinding, @object
	.size	_ZTS9idWinding, 11
_ZTS9idWinding:
	.string	"9idWinding"
	.weak	_ZTI9idWinding
	.section	.sdata._ZTI9idWinding,"awG",@progbits,_ZTI9idWinding,comdat
	.align 2
	.type	_ZTI9idWinding, @object
	.size	_ZTI9idWinding, 8
_ZTI9idWinding:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS9idWinding
	.weak	_ZTS14idFixedWinding
	.section	.rodata._ZTS14idFixedWinding,"aG",@progbits,_ZTS14idFixedWinding,comdat
	.align 2
	.type	_ZTS14idFixedWinding, @object
	.size	_ZTS14idFixedWinding, 17
_ZTS14idFixedWinding:
	.string	"14idFixedWinding"
	.weak	_ZTI14idFixedWinding
	.section	.rodata._ZTI14idFixedWinding,"aG",@progbits,_ZTI14idFixedWinding,comdat
	.align 2
	.type	_ZTI14idFixedWinding, @object
	.size	_ZTI14idFixedWinding, 12
_ZTI14idFixedWinding:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idFixedWinding
	.long	_ZTI9idWinding
	.weak	_ZTV9idWinding
	.section	.rodata._ZTV9idWinding,"aG",@progbits,_ZTV9idWinding,comdat
	.align 3
	.type	_ZTV9idWinding, @object
	.size	_ZTV9idWinding, 24
_ZTV9idWinding:
	.long	0
	.long	_ZTI9idWinding
	.long	_ZN9idWindingD1Ev
	.long	_ZN9idWindingD0Ev
	.long	_ZN9idWinding5ClearEv
	.long	_ZN9idWinding10ReAllocateEib
	.weak	_ZTV14idFixedWinding
	.section	.rodata._ZTV14idFixedWinding,"aG",@progbits,_ZTV14idFixedWinding,comdat
	.align 3
	.type	_ZTV14idFixedWinding, @object
	.size	_ZTV14idFixedWinding, 24
_ZTV14idFixedWinding:
	.long	0
	.long	_ZTI14idFixedWinding
	.long	_ZN14idFixedWindingD1Ev
	.long	_ZN14idFixedWindingD0Ev
	.long	_ZN14idFixedWinding5ClearEv
	.long	_ZN14idFixedWinding10ReAllocateEib
	.globl c_totalSilEdges
	.globl c_coplanarSilEdges
	.weak	_ZN9idWindingD1Ev
	.set	_ZN9idWindingD1Ev,_ZN9idWindingD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.weak	_ZN19idDynamicBlockAllocIiLi65536ELi1024EED1Ev
	.set	_ZN19idDynamicBlockAllocIiLi65536ELi1024EED1Ev,_ZN19idDynamicBlockAllocIiLi65536ELi1024EED2Ev
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	0
.LC17:
	.4byte	-1082130432
.LC18:
	.4byte	1065353216
.LC19:
	.4byte	507307272
.LC20:
	.4byte	1056964608
.LC22:
	.4byte	1069547520
.LC30:
	.4byte	1148846079
.LC31:
	.4byte	981668463
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"MAX_SIL_EDGES"
	.zero	2
.LC2:
	.string	"%6d kB in %d triangle surfaces\n"
.LC3:
	.string	"%6d kB vertex memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	2
.LC4:
	.string	"%6d kB index memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	3
.LC5:
	.string	"%6d kB shadow vert memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	1
.LC6:
	.string	"%6d kB tri plane memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	3
.LC7:
	.string	"%6d kB sil index memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	3
.LC8:
	.string	"%6d kB sil edge memory (%d kB free in %d blocks, %d empty base blocks)\n"
.LC9:
	.string	"%6d kB dominant tri memory (%d kB free in %d blocks, %d empty base blocks)\n"
.LC10:
	.string	"%6d kB mirror vert memory (%d kB free in %d blocks, %d empty base blocks)\n"
	.zero	1
.LC11:
	.string	"%6d kB dup vert memory (%d kB free in %d blocks, %d empty base blocks)\n"
.LC12:
	.string	"%6d kB total triangle memory\n"
	.zero	2
.LC13:
	.string	"R_RangeCheckIndexes: numIndexes < 0"
.LC14:
	.string	"R_RangeCheckIndexes: numVerts < 0"
	.zero	2
.LC15:
	.string	"R_RangeCheckIndexes: numIndexes %% 3"
	.zero	3
.LC16:
	.string	"R_RangeCheckIndexes: index out of range"
.LC23:
	.string	"removed %i duplicated triangles\n"
	.zero	3
.LC24:
	.string	"removed %i degenerate triangles\n"
	.zero	3
.LC25:
	.string	"R_RemoveUnusedVerts: bad index"
	.zero	1
.LC26:
	.string	">>> Alloc size: %d\r\n"
	.zero	3
.LC27:
	.string	">>> ::AllocInternal FAIL FOR ALLOCSIZE %d\r\n"
.LC28:
	.string	"%i duplicated edge directions, %i tripled edges"
.LC29:
	.string	"R_FreeStaticTriSurf: freed a freed triangle"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	c_totalSilEdges, @object
	.size	c_totalSilEdges, 4
c_totalSilEdges:
	.zero	4
	.type	c_coplanarSilEdges, @object
	.size	c_coplanarSilEdges, 4
c_coplanarSilEdges:
	.zero	4
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL11silEdgeHash, @object
	.size	_ZL11silEdgeHash, 28
_ZL11silEdgeHash:
	.zero	28
	.type	_ZL8silEdges, @object
	.size	_ZL8silEdges, 4
_ZL8silEdges:
	.zero	4
	.type	_ZL9numPlanes, @object
	.size	_ZL9numPlanes, 4
_ZL9numPlanes:
	.zero	4
	.type	_ZL17c_duplicatedEdges, @object
	.size	_ZL17c_duplicatedEdges, 4
_ZL17c_duplicatedEdges:
	.zero	4
	.type	_ZL14c_tripledEdges, @object
	.size	_ZL14c_tripledEdges, 4
_ZL14c_tripledEdges:
	.zero	4
	.type	_ZL11numSilEdges, @object
	.size	_ZL11numSilEdges, 4
_ZL11numSilEdges:
	.zero	4
	.type	_ZL18triVertexAllocator, @object
	.size	_ZL18triVertexAllocator, 68
_ZL18triVertexAllocator:
	.zero	68
	.type	_ZL17triIndexAllocator, @object
	.size	_ZL17triIndexAllocator, 68
_ZL17triIndexAllocator:
	.zero	68
	.type	_ZL24triShadowVertexAllocator, @object
	.size	_ZL24triShadowVertexAllocator, 68
_ZL24triShadowVertexAllocator:
	.zero	68
	.type	_ZL17triPlaneAllocator, @object
	.size	_ZL17triPlaneAllocator, 68
_ZL17triPlaneAllocator:
	.zero	68
	.type	_ZL20triSilIndexAllocator, @object
	.size	_ZL20triSilIndexAllocator, 68
_ZL20triSilIndexAllocator:
	.zero	68
	.type	_ZL19triSilEdgeAllocator, @object
	.size	_ZL19triSilEdgeAllocator, 68
_ZL19triSilEdgeAllocator:
	.zero	68
	.type	_ZL24triDominantTrisAllocator, @object
	.size	_ZL24triDominantTrisAllocator, 68
_ZL24triDominantTrisAllocator:
	.zero	68
	.type	_ZL24triMirroredVertAllocator, @object
	.size	_ZL24triMirroredVertAllocator, 68
_ZL24triMirroredVertAllocator:
	.zero	68
	.type	_ZL19triDupVertAllocator, @object
	.size	_ZL19triDupVertAllocator, 68
_ZL19triDupVertAllocator:
	.zero	68
	.type	_ZL21srfTrianglesAllocator, @object
	.size	_ZL21srfTrianglesAllocator, 16
_ZL21srfTrianglesAllocator:
	.zero	16
	.section	".text"
.Letext0:
	.file 11 "<built-in>"
	.file 12 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 13 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 14 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../sys/sys_public.h"
	.file 15 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/Common.h"
	.file 16 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/FileSystem.h"
	.file 17 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/CmdArgs.h"
	.file 18 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Random.h"
	.file 19 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Angles.h"
	.file 20 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Matrix.h"
	.file 21 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Quat.h"
	.file 22 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Rotation.h"
	.file 23 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Plane.h"
	.file 24 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/List.h"
	.file 25 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Ode.h"
	.file 26 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/bv/Sphere.h"
	.file 27 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/bv/Bounds.h"
	.file 28 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/bv/Box.h"
	.file 29 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/bv/Frustum.h"
	.file 30 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/geometry/JointTransform.h"
	.file 31 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/geometry/Surface.h"
	.file 32 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/geometry/TraceModel.h"
	.file 33 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Str.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Token.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Lexer.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/File.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Parser.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/StrList.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/StrPool.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/containers/PlaneSet.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/Dict.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/LangDict.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/BitMsg.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/MapFile.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/CmdSystem.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/UsercmdGen.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/DeclManager.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/DeclParticle.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/RenderWorld.h"
	.file 50 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/Cinematic.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/Material.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/renderer/Image.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/Model.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/renderer/VertexCache.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/RenderSystem.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../sound/sound.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../ui/UserInterface.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../cm/CollisionModel.h"
	.file 60 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../tools/compilers/aas/AASFile.h"
	.file 61 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../game/Game.h"
	.file 62 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/async/NetworkSystem.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../renderer/ModelManager.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/Session.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../ui/ListGUI.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/renderer/tr_local.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/Console.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Curve.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../idlib/math/Simd.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/BuildVersion.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/precompiled.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/EventLoop.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/EditField.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/async/AsyncNetwork.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/renderer/../idlib/../framework/async/AsyncServer.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/renderer/MegaTexture.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/renderer/ModelDecal.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/renderer/ModelOverlay.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/renderer/RenderWorld_local.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x38330
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF6598
	.byte	0x4
	.4byte	.LASF6599
	.4byte	.LASF6600
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x6538
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0xc
	.byte	0xd4
	.4byte	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF271
	.byte	0xc
	.byte	0xb
	.byte	0
	.4byte	0x8e
	.uleb128 0x5
	.string	"gpr"
	.byte	0xb
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"fpr"
	.byte	0xb
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0xb
	.byte	0
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0xb
	.byte	0
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0xb
	.byte	0
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.4byte	0x8e
	.4byte	0xd1
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb
	.uleb128 0xc
	.4byte	0xde
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0xd
	.byte	0x6e
	.4byte	0xf0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0xd
	.byte	0x4
	.byte	0xe
	.byte	0xae
	.4byte	.LASF34
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF21
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF22
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF23
	.sleb128 16
	.uleb128 0xe
	.4byte	.LASF24
	.sleb128 32
	.uleb128 0xe
	.4byte	.LASF25
	.sleb128 64
	.uleb128 0xe
	.4byte	.LASF26
	.sleb128 128
	.uleb128 0xe
	.4byte	.LASF27
	.sleb128 256
	.uleb128 0xe
	.4byte	.LASF28
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF29
	.sleb128 4096
	.uleb128 0xe
	.4byte	.LASF30
	.sleb128 8192
	.uleb128 0xe
	.4byte	.LASF31
	.sleb128 16384
	.uleb128 0xe
	.4byte	.LASF32
	.sleb128 32768
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0xe
	.byte	0xbe
	.4byte	0x117
	.uleb128 0xd
	.byte	0x4
	.byte	0xe
	.byte	0xe0
	.4byte	.LASF35
	.4byte	0x1c5
	.uleb128 0xe
	.4byte	.LASF36
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF37
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF38
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF39
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF40
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF41
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xe
	.byte	0xe7
	.4byte	0x194
	.uleb128 0xf
	.byte	0x18
	.byte	0xe
	.2byte	0x102
	.4byte	.LASF55
	.4byte	0x238
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0xe
	.2byte	0x103
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0xe
	.2byte	0x104
	.4byte	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0xe
	.2byte	0x105
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0xe
	.2byte	0x106
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0xe
	.2byte	0x107
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0xe
	.2byte	0x108
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0xe
	.2byte	0x109
	.4byte	0x1d0
	.uleb128 0x12
	.byte	0x4
	.byte	0xe
	.2byte	0x1bd
	.4byte	.LASF4015
	.4byte	0x26a
	.uleb128 0xe
	.4byte	.LASF50
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF51
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF52
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF53
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0xe
	.2byte	0x1c2
	.4byte	0x244
	.uleb128 0xf
	.byte	0xc
	.byte	0xe
	.2byte	0x1c4
	.4byte	.LASF56
	.4byte	0x2b0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0xe
	.2byte	0x1c5
	.4byte	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ip"
	.byte	0xe
	.2byte	0x1c6
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0xe
	.2byte	0x1c7
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xe
	.2byte	0x1c8
	.4byte	0x276
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x4
	.byte	0xf
	.byte	0x70
	.4byte	0x2bc
	.4byte	0x7c6
	.uleb128 0x15
	.4byte	.LASF120
	.4byte	0x25e23
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF122
	.byte	0xf
	.byte	0x72
	.byte	0x1
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x2ef
	.4byte	0x2fc
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0xf
	.byte	0x77
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x319
	.4byte	0x32f
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x12045
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0xf
	.byte	0x7a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x34c
	.4byte	0x353
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF64
	.byte	0xf
	.byte	0x7d
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x370
	.4byte	0x377
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0xf
	.byte	0x80
	.4byte	.LASF108
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x398
	.4byte	0x39f
	.uleb128 0x17
	.4byte	0x28771
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF66
	.byte	0xf
	.byte	0x83
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x3bc
	.4byte	0x3c3
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF68
	.byte	0xf
	.byte	0x86
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x3e0
	.4byte	0x3f1
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF70
	.byte	0xf
	.byte	0x8a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x40e
	.4byte	0x415
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF72
	.byte	0xf
	.byte	0x90
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x432
	.4byte	0x443
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF74
	.byte	0xf
	.byte	0x93
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x460
	.4byte	0x471
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1768f
	.uleb128 0x19
	.4byte	0x14876
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF76
	.byte	0xf
	.byte	0x96
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x48e
	.4byte	0x49a
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF78
	.byte	0xf
	.byte	0x99
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x4b7
	.4byte	0x4c3
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF80
	.byte	0xf
	.byte	0x9c
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x4e0
	.4byte	0x4f6
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF82
	.byte	0xf
	.byte	0x9f
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x513
	.4byte	0x529
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1761c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF84
	.byte	0xf
	.byte	0xa2
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x546
	.4byte	0x54d
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF86
	.byte	0xf
	.byte	0xa5
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x56a
	.4byte	0x576
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF88
	.byte	0xf
	.byte	0xa8
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x593
	.4byte	0x5a0
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF90
	.byte	0xf
	.byte	0xab
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x5bd
	.4byte	0x5ce
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff09
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF92
	.byte	0xf
	.byte	0xaf
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x5eb
	.4byte	0x5f8
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF94
	.byte	0xf
	.byte	0xb2
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x615
	.4byte	0x622
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF96
	.byte	0xf
	.byte	0xb5
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x63f
	.4byte	0x64c
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF98
	.byte	0xf
	.byte	0xb8
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x669
	.4byte	0x670
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF100
	.byte	0xf
	.byte	0xbb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x68d
	.4byte	0x699
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF102
	.byte	0xf
	.byte	0xbf
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x6b6
	.4byte	0x6c3
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF104
	.byte	0xf
	.byte	0xc3
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x6e0
	.4byte	0x6ed
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF107
	.byte	0xf
	.byte	0xc6
	.4byte	.LASF109
	.4byte	0x150de
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x70e
	.4byte	0x715
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF110
	.byte	0xf
	.byte	0xc9
	.4byte	.LASF111
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x736
	.4byte	0x742
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF112
	.byte	0xf
	.byte	0xcc
	.4byte	.LASF113
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x763
	.4byte	0x76f
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF114
	.byte	0xf
	.byte	0xcf
	.4byte	.LASF115
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x790
	.4byte	0x79c
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF116
	.byte	0xf
	.byte	0xd2
	.4byte	.LASF117
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x7b9
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x4
	.byte	0xa
	.byte	0xd0
	.4byte	0x7cc
	.4byte	0xc2a
	.uleb128 0x15
	.4byte	.LASF121
	.4byte	0x25e23
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF123
	.byte	0xa
	.byte	0xd2
	.byte	0x1
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x7ff
	.4byte	0x80c
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0xa
	.byte	0xd4
	.4byte	.LASF124
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x829
	.4byte	0x830
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0xd5
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x84d
	.4byte	0x854
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0xa
	.byte	0xd6
	.4byte	.LASF126
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x875
	.4byte	0x87c
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF127
	.byte	0xa
	.byte	0xd9
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x899
	.4byte	0x8a5
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x20163
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0xa
	.byte	0xdd
	.4byte	.LASF130
	.4byte	0x20163
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x8c6
	.4byte	0x8d2
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF131
	.byte	0xa
	.byte	0xe0
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x8ef
	.4byte	0x905
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF133
	.byte	0xa
	.byte	0xe1
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x922
	.4byte	0x938
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF135
	.byte	0xa
	.byte	0xe2
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x955
	.4byte	0x96b
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF137
	.byte	0xa
	.byte	0xe3
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x988
	.4byte	0x99e
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF139
	.byte	0xa
	.byte	0xe6
	.4byte	.LASF140
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x9bf
	.4byte	0x9cb
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF141
	.byte	0xa
	.byte	0xe7
	.4byte	.LASF142
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x9ec
	.4byte	0x9f8
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF143
	.byte	0xa
	.byte	0xe8
	.4byte	.LASF144
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa19
	.4byte	0xa25
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF145
	.byte	0xa
	.byte	0xe9
	.4byte	.LASF146
	.4byte	0x109
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa46
	.4byte	0xa52
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF147
	.byte	0xa
	.byte	0xed
	.4byte	.LASF148
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa73
	.4byte	0xa7f
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1595
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF149
	.byte	0xa
	.byte	0xf0
	.4byte	.LASF150
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa9c
	.4byte	0xaa8
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1761c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF151
	.byte	0xa
	.byte	0xf1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xac5
	.4byte	0xad6
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x1761c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF153
	.byte	0xa
	.byte	0xf4
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xaf3
	.4byte	0xaff
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF155
	.byte	0xa
	.byte	0xf5
	.4byte	.LASF156
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb20
	.4byte	0xb27
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF157
	.byte	0xa
	.byte	0xf6
	.4byte	.LASF158
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb44
	.4byte	0xb50
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF159
	.byte	0xa
	.byte	0xf9
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb6d
	.4byte	0xb79
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF161
	.byte	0xa
	.byte	0xfc
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb96
	.4byte	0xba2
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF163
	.byte	0xa
	.byte	0xff
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xbbf
	.4byte	0xbd5
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x105be
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x102
	.4byte	.LASF245
	.4byte	0x14876
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xbf7
	.4byte	0xc03
	.uleb128 0x17
	.4byte	0x2877c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF1327
	.byte	0xa
	.2byte	0x103
	.4byte	.LASF1329
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xc1d
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15d41
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7cc
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x4
	.byte	0x10
	.byte	0x94
	.4byte	0xc30
	.4byte	0x1556
	.uleb128 0x15
	.4byte	.LASF167
	.4byte	0x25e23
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF168
	.byte	0x10
	.byte	0x96
	.byte	0x1
	.4byte	0xc30
	.byte	0x1
	.4byte	0xc63
	.4byte	0xc70
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x10
	.byte	0x98
	.4byte	.LASF169
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xc30
	.byte	0x1
	.4byte	0xc8d
	.4byte	0xc94
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF170
	.byte	0x10
	.byte	0x9a
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xc30
	.byte	0x1
	.4byte	0xcb1
	.4byte	0xcb8
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x10
	.byte	0x9c
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0xc30
	.byte	0x1
	.4byte	0xcd5
	.4byte	0xce1
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x10
	.byte	0x9e
	.4byte	.LASF173
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd02
	.4byte	0xd09
	.uleb128 0x17
	.4byte	0x2874e
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF174
	.byte	0x10
	.byte	0xa0
	.4byte	.LASF175
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd2a
	.4byte	0xd31
	.uleb128 0x17
	.4byte	0x2874e
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF176
	.byte	0x10
	.byte	0xa4
	.4byte	.LASF177
	.4byte	0x28759
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd52
	.4byte	0xd59
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF178
	.byte	0x10
	.byte	0xa6
	.4byte	.LASF179
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd76
	.4byte	0xd82
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28759
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF180
	.byte	0x10
	.byte	0xac
	.4byte	.LASF181
	.4byte	0x2875f
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0xc30
	.byte	0x1
	.4byte	0xda3
	.4byte	0xdc3
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF182
	.byte	0x10
	.byte	0xb1
	.4byte	.LASF183
	.4byte	0x2875f
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0xc30
	.byte	0x1
	.4byte	0xde4
	.4byte	0xdff
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF184
	.byte	0x10
	.byte	0xb3
	.4byte	.LASF185
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe1c
	.4byte	0xe28
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2875f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF186
	.byte	0x10
	.byte	0xb5
	.4byte	.LASF187
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe49
	.4byte	0xe55
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF188
	.byte	0x10
	.byte	0xb7
	.4byte	.LASF189
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe76
	.4byte	0xe87
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF190
	.byte	0x10
	.byte	0xb9
	.4byte	.LASF191
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0xc30
	.byte	0x1
	.4byte	0xea8
	.4byte	0xebe
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF192
	.byte	0x10
	.byte	0xbb
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0xc30
	.byte	0x1
	.4byte	0xedb
	.4byte	0xee7
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF194
	.byte	0x10
	.byte	0xbd
	.4byte	.LASF195
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf08
	.4byte	0xf14
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF196
	.byte	0x10
	.byte	0xc0
	.4byte	.LASF197
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf31
	.4byte	0xf38
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF198
	.byte	0x10
	.byte	0xc2
	.4byte	.LASF199
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf59
	.4byte	0xf60
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF200
	.byte	0x10
	.byte	0xca
	.4byte	.LASF201
	.4byte	0x17774
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf81
	.4byte	0xf9c
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d35
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF202
	.byte	0x10
	.byte	0xcd
	.4byte	.LASF203
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0xc30
	.byte	0x1
	.4byte	0xfb9
	.4byte	0xfcf
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d35
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF204
	.byte	0x10
	.byte	0xd0
	.4byte	.LASF205
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0xc30
	.byte	0x1
	.4byte	0xfec
	.4byte	0xffd
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF206
	.byte	0x10
	.byte	0xd2
	.4byte	.LASF207
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0xc30
	.byte	0x1
	.4byte	0x101a
	.4byte	0x1021
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF208
	.byte	0x10
	.byte	0xd4
	.4byte	.LASF209
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1042
	.4byte	0x1049
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF210
	.byte	0x10
	.byte	0xdc
	.4byte	.LASF211
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0xc30
	.byte	0x1
	.4byte	0x106a
	.4byte	0x1080
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x28765
	.uleb128 0x19
	.4byte	0x2876b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF212
	.byte	0x10
	.byte	0xde
	.4byte	.LASF213
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0xc30
	.byte	0x1
	.4byte	0x109d
	.4byte	0x10a9
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF214
	.byte	0x10
	.byte	0xe1
	.4byte	.LASF215
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0xc30
	.byte	0x1
	.4byte	0x10ca
	.4byte	0x10e5
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x9a92
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF216
	.byte	0x10
	.byte	0xe3
	.4byte	.LASF217
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1102
	.4byte	0x110e
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF218
	.byte	0x10
	.byte	0xe5
	.4byte	.LASF219
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0xc30
	.byte	0x1
	.4byte	0x112f
	.4byte	0x1145
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF220
	.byte	0x10
	.byte	0xe7
	.4byte	.LASF221
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1166
	.4byte	0x1177
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF222
	.byte	0x10
	.byte	0xe9
	.4byte	.LASF223
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1198
	.4byte	0x11ae
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF224
	.byte	0x10
	.byte	0xeb
	.4byte	.LASF225
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1f
	.4byte	0xc30
	.byte	0x1
	.4byte	0x11cf
	.4byte	0x11e0
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x17744
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF226
	.byte	0x10
	.byte	0xed
	.4byte	.LASF227
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1201
	.4byte	0x120d
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF228
	.byte	0x10
	.byte	0xef
	.4byte	.LASF229
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x21
	.4byte	0xc30
	.byte	0x1
	.4byte	0x122e
	.4byte	0x123a
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF230
	.byte	0x10
	.byte	0xf1
	.4byte	.LASF231
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x22
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1257
	.4byte	0x1263
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x105be
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF232
	.byte	0x10
	.byte	0xf3
	.4byte	.LASF233
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x23
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1280
	.4byte	0x128c
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2725f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF234
	.byte	0x10
	.byte	0xf5
	.4byte	.LASF235
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12a9
	.4byte	0x12b0
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF236
	.byte	0x10
	.byte	0xf7
	.4byte	.LASF237
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x25
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12d1
	.4byte	0x12d8
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF238
	.byte	0x10
	.byte	0xf9
	.4byte	.LASF239
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x26
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12f5
	.4byte	0x1301
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF240
	.byte	0x10
	.byte	0xfb
	.4byte	.LASF241
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x27
	.4byte	0xc30
	.byte	0x1
	.4byte	0x131e
	.4byte	0x1334
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF242
	.byte	0x10
	.byte	0xff
	.4byte	.LASF243
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1351
	.4byte	0x1358
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF244
	.byte	0x10
	.2byte	0x102
	.4byte	.LASF246
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x29
	.4byte	0xc30
	.byte	0x1
	.4byte	0x137a
	.4byte	0x1381
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF247
	.byte	0x10
	.2byte	0x104
	.4byte	.LASF248
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2a
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13a3
	.4byte	0x13aa
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF249
	.byte	0x10
	.2byte	0x107
	.4byte	.LASF263
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2b
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13c8
	.4byte	0x13d9
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF250
	.byte	0x10
	.2byte	0x10a
	.4byte	.LASF251
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13fb
	.4byte	0x1411
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF252
	.byte	0x10
	.2byte	0x10c
	.4byte	.LASF253
	.4byte	0x105be
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2d
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1433
	.4byte	0x143a
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF254
	.byte	0x10
	.2byte	0x10f
	.4byte	.LASF255
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2e
	.4byte	0xc30
	.byte	0x1
	.4byte	0x145c
	.4byte	0x1468
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF256
	.byte	0x10
	.2byte	0x113
	.4byte	.LASF257
	.4byte	0x177f8
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2f
	.4byte	0xc30
	.byte	0x1
	.4byte	0x148a
	.4byte	0x149b
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF258
	.byte	0x10
	.2byte	0x117
	.4byte	.LASF259
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.4byte	0xc30
	.byte	0x1
	.4byte	0x14bd
	.4byte	0x14c4
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF260
	.byte	0x10
	.2byte	0x118
	.4byte	.LASF261
	.4byte	0x14876
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x31
	.4byte	0xc30
	.byte	0x1
	.4byte	0x14e6
	.4byte	0x14f2
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF262
	.byte	0x10
	.2byte	0x119
	.4byte	.LASF264
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x32
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1510
	.4byte	0x1526
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF265
	.byte	0x10
	.2byte	0x11c
	.4byte	.LASF266
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x33
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1544
	.uleb128 0x17
	.4byte	0x2874e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc30
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x9
	.byte	0x4b
	.4byte	0x8e
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x9
	.byte	0x4d
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x9
	.byte	0x51
	.4byte	0xac
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x158e
	.uleb128 0x21
	.4byte	0x34
	.2byte	0x3ff
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF270
	.uleb128 0x22
	.byte	0x4
	.4byte	0x159b
	.uleb128 0xc
	.4byte	0x15a0
	.uleb128 0x23
	.4byte	.LASF272
	.2byte	0x904
	.byte	0x11
	.byte	0x28
	.4byte	0x174e
	.uleb128 0x24
	.4byte	.LASF273
	.byte	0x11
	.byte	0x41
	.4byte	0x21ad
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x40
	.uleb128 0x25
	.4byte	.LASF274
	.byte	0x11
	.byte	0x42
	.4byte	0x21ad
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.2byte	0x800
	.uleb128 0x26
	.4byte	.LASF275
	.byte	0x11
	.byte	0x44
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF276
	.byte	0x11
	.byte	0x45
	.4byte	0x1200d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF277
	.byte	0x11
	.byte	0x46
	.4byte	0x1201d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF272
	.byte	0x11
	.byte	0x2a
	.byte	0x1
	.4byte	0x160b
	.4byte	0x1612
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF272
	.byte	0x11
	.byte	0x2b
	.byte	0x1
	.4byte	0x1623
	.4byte	0x1634
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x11
	.byte	0x2d
	.4byte	.LASF286
	.byte	0x1
	.4byte	0x1649
	.4byte	0x1655
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12034
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF278
	.byte	0x11
	.byte	0x30
	.4byte	.LASF280
	.4byte	0xac
	.byte	0x1
	.4byte	0x166e
	.4byte	0x1675
	.uleb128 0x17
	.4byte	0x1203f
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF279
	.byte	0x11
	.byte	0x32
	.4byte	.LASF281
	.4byte	0xe5
	.byte	0x1
	.4byte	0x168e
	.4byte	0x169a
	.uleb128 0x17
	.4byte	0x1203f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF282
	.byte	0x11
	.byte	0x35
	.4byte	.LASF283
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16b3
	.4byte	0x16c9
	.uleb128 0x17
	.4byte	0x1203f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF285
	.byte	0x11
	.byte	0x3a
	.4byte	.LASF287
	.byte	0x1
	.4byte	0x16de
	.4byte	0x16ef
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF288
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF289
	.byte	0x1
	.4byte	0x1704
	.4byte	0x1710
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF291
	.byte	0x1
	.4byte	0x1725
	.4byte	0x172c
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF292
	.byte	0x11
	.byte	0x3e
	.4byte	.LASF293
	.4byte	0x12045
	.byte	0x1
	.4byte	0x1741
	.uleb128 0x17
	.4byte	0x1202e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF447
	.byte	0x1
	.byte	0x6
	.byte	0x6c
	.4byte	0x207b
	.uleb128 0x2c
	.byte	0x4
	.byte	0x6
	.byte	0xde
	.byte	0x3
	.4byte	0x1791
	.uleb128 0xe
	.4byte	.LASF294
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF295
	.sleb128 23
	.uleb128 0xe
	.4byte	.LASF296
	.sleb128 127
	.uleb128 0xe
	.4byte	.LASF297
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF298
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF299
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF300
	.sleb128 511
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF6601
	.byte	0x4
	.byte	0x6
	.byte	0xe8
	.byte	0x3
	.4byte	0x17b1
	.uleb128 0x2e
	.string	"i"
	.byte	0x6
	.byte	0xe9
	.4byte	0x1567
	.uleb128 0x2e
	.string	"f"
	.byte	0x6
	.byte	0xea
	.4byte	0x109
	.byte	0
	.uleb128 0x2f
	.string	"PI"
	.byte	0x6
	.byte	0xcd
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF301
	.byte	0x6
	.byte	0xce
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF302
	.byte	0x6
	.byte	0xcf
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF303
	.byte	0x6
	.byte	0xd0
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"E"
	.byte	0x6
	.byte	0xd1
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF304
	.byte	0x6
	.byte	0xd2
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF305
	.byte	0x6
	.byte	0xd3
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF306
	.byte	0x6
	.byte	0xd4
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF307
	.byte	0x6
	.byte	0xd5
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF308
	.byte	0x6
	.byte	0xd6
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF309
	.byte	0x6
	.byte	0xd7
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF310
	.byte	0x6
	.byte	0xd8
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF311
	.byte	0x6
	.byte	0xd9
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF312
	.byte	0x6
	.byte	0xda
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF313
	.byte	0x6
	.byte	0xdb
	.4byte	0x207b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF314
	.byte	0x6
	.byte	0xed
	.4byte	0x2080
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF315
	.byte	0x6
	.byte	0xee
	.4byte	0x158e
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF60
	.byte	0x6
	.byte	0x6f
	.4byte	.LASF2640
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF316
	.byte	0x6
	.byte	0x71
	.4byte	.LASF317
	.4byte	0x109
	.byte	0x1
	.4byte	0x18b5
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF318
	.byte	0x6
	.byte	0x73
	.4byte	.LASF319
	.4byte	0x109
	.byte	0x1
	.4byte	0x18d0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF320
	.byte	0x6
	.byte	0x74
	.4byte	.LASF321
	.4byte	0x109
	.byte	0x1
	.4byte	0x18eb
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF322
	.byte	0x6
	.byte	0x75
	.4byte	.LASF323
	.4byte	0x102
	.byte	0x1
	.4byte	0x1906
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF324
	.byte	0x6
	.byte	0x77
	.4byte	.LASF325
	.4byte	0x109
	.byte	0x1
	.4byte	0x1921
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF326
	.byte	0x6
	.byte	0x78
	.4byte	.LASF327
	.4byte	0x109
	.byte	0x1
	.4byte	0x193c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF328
	.byte	0x6
	.byte	0x79
	.4byte	.LASF329
	.4byte	0x102
	.byte	0x1
	.4byte	0x1957
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Sin"
	.byte	0x6
	.byte	0x7b
	.4byte	.LASF334
	.4byte	0x109
	.byte	0x1
	.4byte	0x1972
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF330
	.byte	0x6
	.byte	0x7c
	.4byte	.LASF331
	.4byte	0x109
	.byte	0x1
	.4byte	0x198d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF332
	.byte	0x6
	.byte	0x7d
	.4byte	.LASF333
	.4byte	0x102
	.byte	0x1
	.4byte	0x19a8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Cos"
	.byte	0x6
	.byte	0x7f
	.4byte	.LASF335
	.4byte	0x109
	.byte	0x1
	.4byte	0x19c3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF336
	.byte	0x6
	.byte	0x80
	.4byte	.LASF337
	.4byte	0x109
	.byte	0x1
	.4byte	0x19de
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF338
	.byte	0x6
	.byte	0x81
	.4byte	.LASF339
	.4byte	0x102
	.byte	0x1
	.4byte	0x19f9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF340
	.byte	0x6
	.byte	0x83
	.4byte	.LASF342
	.byte	0x1
	.4byte	0x1a1a
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF341
	.byte	0x6
	.byte	0x84
	.4byte	.LASF343
	.byte	0x1
	.4byte	0x1a3b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF344
	.byte	0x6
	.byte	0x85
	.4byte	.LASF345
	.byte	0x1
	.4byte	0x1a5c
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x2097
	.uleb128 0x19
	.4byte	0x2097
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Tan"
	.byte	0x6
	.byte	0x87
	.4byte	.LASF346
	.4byte	0x109
	.byte	0x1
	.4byte	0x1a77
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF347
	.byte	0x6
	.byte	0x88
	.4byte	.LASF348
	.4byte	0x109
	.byte	0x1
	.4byte	0x1a92
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF349
	.byte	0x6
	.byte	0x89
	.4byte	.LASF350
	.4byte	0x102
	.byte	0x1
	.4byte	0x1aad
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF351
	.byte	0x6
	.byte	0x8b
	.4byte	.LASF352
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ac8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF353
	.byte	0x6
	.byte	0x8c
	.4byte	.LASF354
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ae3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF355
	.byte	0x6
	.byte	0x8d
	.4byte	.LASF356
	.4byte	0x102
	.byte	0x1
	.4byte	0x1afe
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF357
	.byte	0x6
	.byte	0x8f
	.4byte	.LASF358
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b19
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF359
	.byte	0x6
	.byte	0x90
	.4byte	.LASF360
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b34
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF361
	.byte	0x6
	.byte	0x91
	.4byte	.LASF362
	.4byte	0x102
	.byte	0x1
	.4byte	0x1b4f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF363
	.byte	0x6
	.byte	0x93
	.4byte	.LASF364
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b6a
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF365
	.byte	0x6
	.byte	0x94
	.4byte	.LASF366
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b85
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF367
	.byte	0x6
	.byte	0x95
	.4byte	.LASF368
	.4byte	0x102
	.byte	0x1
	.4byte	0x1ba0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF363
	.byte	0x6
	.byte	0x97
	.4byte	.LASF369
	.4byte	0x109
	.byte	0x1
	.4byte	0x1bc0
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF365
	.byte	0x6
	.byte	0x98
	.4byte	.LASF370
	.4byte	0x109
	.byte	0x1
	.4byte	0x1be0
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF367
	.byte	0x6
	.byte	0x99
	.4byte	.LASF371
	.4byte	0x102
	.byte	0x1
	.4byte	0x1c00
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Pow"
	.byte	0x6
	.byte	0x9b
	.4byte	.LASF372
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c20
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF373
	.byte	0x6
	.byte	0x9c
	.4byte	.LASF374
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c40
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF375
	.byte	0x6
	.byte	0x9d
	.4byte	.LASF376
	.4byte	0x102
	.byte	0x1
	.4byte	0x1c60
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Exp"
	.byte	0x6
	.byte	0x9f
	.4byte	.LASF377
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c7b
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF378
	.byte	0x6
	.byte	0xa0
	.4byte	.LASF379
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c96
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF380
	.byte	0x6
	.byte	0xa1
	.4byte	.LASF381
	.4byte	0x102
	.byte	0x1
	.4byte	0x1cb1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Log"
	.byte	0x6
	.byte	0xa3
	.4byte	.LASF382
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ccc
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF383
	.byte	0x6
	.byte	0xa4
	.4byte	.LASF384
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ce7
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF385
	.byte	0x6
	.byte	0xa5
	.4byte	.LASF386
	.4byte	0x102
	.byte	0x1
	.4byte	0x1d02
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF387
	.byte	0x6
	.byte	0xa7
	.4byte	.LASF388
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d22
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF389
	.byte	0x6
	.byte	0xa8
	.4byte	.LASF390
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d3d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF389
	.byte	0x6
	.byte	0xa9
	.4byte	.LASF391
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d58
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF392
	.byte	0x6
	.byte	0xab
	.4byte	.LASF393
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d73
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF394
	.byte	0x6
	.byte	0xac
	.4byte	.LASF395
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d8e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF396
	.byte	0x6
	.byte	0xad
	.4byte	.LASF397
	.4byte	0xac
	.byte	0x1
	.4byte	0x1da9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF398
	.byte	0x6
	.byte	0xae
	.4byte	.LASF399
	.4byte	0xac
	.byte	0x1
	.4byte	0x1dc4
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF400
	.byte	0x6
	.byte	0xaf
	.4byte	.LASF401
	.4byte	0xac
	.byte	0x1
	.4byte	0x1ddf
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF402
	.byte	0x6
	.byte	0xb0
	.4byte	.LASF403
	.4byte	0xac
	.byte	0x1
	.4byte	0x1dfa
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF404
	.byte	0x6
	.byte	0xb1
	.4byte	.LASF405
	.4byte	0x158e
	.byte	0x1
	.4byte	0x1e15
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF406
	.byte	0x6
	.byte	0xb2
	.4byte	.LASF407
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e30
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF408
	.byte	0x6
	.byte	0xb3
	.4byte	.LASF409
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e4b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Abs"
	.byte	0x6
	.byte	0xb5
	.4byte	.LASF410
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e66
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF411
	.byte	0x6
	.byte	0xb6
	.4byte	.LASF412
	.4byte	0x109
	.byte	0x1
	.4byte	0x1e81
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF413
	.byte	0x6
	.byte	0xb7
	.4byte	.LASF414
	.4byte	0x109
	.byte	0x1
	.4byte	0x1e9c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF415
	.byte	0x6
	.byte	0xb8
	.4byte	.LASF416
	.4byte	0x109
	.byte	0x1
	.4byte	0x1eb7
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF417
	.byte	0x6
	.byte	0xb9
	.4byte	.LASF418
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ed2
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF419
	.byte	0x6
	.byte	0xba
	.4byte	.LASF420
	.4byte	0xac
	.byte	0x1
	.4byte	0x1eed
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF421
	.byte	0x6
	.byte	0xbb
	.4byte	.LASF422
	.4byte	0xac
	.byte	0x1
	.4byte	0x1f08
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF423
	.byte	0x6
	.byte	0xbc
	.4byte	.LASF424
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1f23
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF425
	.byte	0x6
	.byte	0xbd
	.4byte	.LASF426
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1f3e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF427
	.byte	0x6
	.byte	0xbf
	.4byte	.LASF428
	.4byte	0x9e
	.byte	0x1
	.4byte	0x1f59
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF429
	.byte	0x6
	.byte	0xc0
	.4byte	.LASF430
	.4byte	0xa5
	.byte	0x1
	.4byte	0x1f74
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF431
	.byte	0x6
	.byte	0xc1
	.4byte	.LASF432
	.4byte	0xac
	.byte	0x1
	.4byte	0x1f99
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF433
	.byte	0x6
	.byte	0xc2
	.4byte	.LASF434
	.4byte	0x109
	.byte	0x1
	.4byte	0x1fbe
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF435
	.byte	0x6
	.byte	0xc4
	.4byte	.LASF436
	.4byte	0x109
	.byte	0x1
	.4byte	0x1fd9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF437
	.byte	0x6
	.byte	0xc5
	.4byte	.LASF438
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ff4
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF439
	.byte	0x6
	.byte	0xc6
	.4byte	.LASF440
	.4byte	0x109
	.byte	0x1
	.4byte	0x2014
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF441
	.byte	0x6
	.byte	0xc8
	.4byte	.LASF442
	.4byte	0xac
	.byte	0x1
	.4byte	0x2039
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF443
	.byte	0x6
	.byte	0xc9
	.4byte	.LASF444
	.4byte	0x109
	.byte	0x1
	.4byte	0x205e
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF445
	.byte	0x6
	.byte	0xcb
	.4byte	.LASF446
	.4byte	0xac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x209d
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x34
	.4byte	0x2091
	.uleb128 0x21
	.4byte	0x34
	.2byte	0x1ff
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x109
	.uleb128 0x22
	.byte	0x4
	.4byte	0x102
	.uleb128 0xb
	.byte	0x4
	.4byte	0x207b
	.uleb128 0x2b
	.4byte	.LASF448
	.byte	0x4
	.byte	0x12
	.byte	0x28
	.4byte	0x21ad
	.uleb128 0x37
	.4byte	.LASF449
	.byte	0x12
	.byte	0x34
	.4byte	0x21ad
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x26
	.4byte	.LASF450
	.byte	0x12
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF448
	.byte	0x12
	.byte	0x2a
	.byte	0x1
	.4byte	0x20de
	.4byte	0x20ea
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF451
	.byte	0x12
	.byte	0x2c
	.4byte	.LASF452
	.byte	0x1
	.4byte	0x20ff
	.4byte	0x210b
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF453
	.byte	0x12
	.byte	0x2d
	.4byte	.LASF454
	.4byte	0xac
	.byte	0x1
	.4byte	0x2124
	.4byte	0x212b
	.uleb128 0x17
	.4byte	0x21b8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF455
	.byte	0x12
	.byte	0x2f
	.4byte	.LASF456
	.4byte	0xac
	.byte	0x1
	.4byte	0x2144
	.4byte	0x214b
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF455
	.byte	0x12
	.byte	0x30
	.4byte	.LASF457
	.4byte	0xac
	.byte	0x1
	.4byte	0x2164
	.4byte	0x2170
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF458
	.byte	0x12
	.byte	0x31
	.4byte	.LASF459
	.4byte	0x109
	.byte	0x1
	.4byte	0x2189
	.4byte	0x2190
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF460
	.byte	0x12
	.byte	0x32
	.4byte	.LASF461
	.4byte	0x109
	.byte	0x1
	.4byte	0x21a5
	.uleb128 0x17
	.4byte	0x21b2
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20a3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21be
	.uleb128 0xc
	.4byte	0x20a3
	.uleb128 0xc
	.4byte	0xd1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x109
	.uleb128 0x2b
	.4byte	.LASF462
	.byte	0x8
	.byte	0x7
	.byte	0x34
	.4byte	0x26b4
	.uleb128 0x5
	.string	"x"
	.byte	0x7
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x7
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF462
	.byte	0x7
	.byte	0x39
	.byte	0x1
	.4byte	0x2203
	.4byte	0x220a
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF462
	.byte	0x7
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x221c
	.4byte	0x222d
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Set"
	.byte	0x7
	.byte	0x3c
	.4byte	.LASF463
	.byte	0x1
	.4byte	0x2242
	.4byte	0x2253
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.byte	0x3d
	.4byte	.LASF465
	.byte	0x1
	.4byte	0x2268
	.4byte	0x226f
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.byte	0x3f
	.4byte	.LASF467
	.4byte	0x109
	.byte	0x1
	.4byte	0x2288
	.4byte	0x2294
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.byte	0x40
	.4byte	.LASF468
	.4byte	0x2091
	.byte	0x1
	.4byte	0x22ad
	.4byte	0x22b9
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.byte	0x41
	.4byte	.LASF470
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x22d2
	.4byte	0x22d9
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.byte	0x42
	.4byte	.LASF472
	.4byte	0x109
	.byte	0x1
	.4byte	0x22f2
	.4byte	0x22fe
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.byte	0x43
	.4byte	.LASF473
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x2317
	.4byte	0x2323
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF474
	.byte	0x7
	.byte	0x44
	.4byte	.LASF475
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x233c
	.4byte	0x2348
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x7
	.byte	0x45
	.4byte	.LASF477
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x2361
	.4byte	0x236d
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.byte	0x46
	.4byte	.LASF478
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x2386
	.4byte	0x2392
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x7
	.byte	0x47
	.4byte	.LASF480
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x23ab
	.4byte	0x23b7
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x7
	.byte	0x48
	.4byte	.LASF482
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x23d0
	.4byte	0x23dc
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.byte	0x49
	.4byte	.LASF484
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x23f5
	.4byte	0x2401
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.byte	0x4a
	.4byte	.LASF485
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x241a
	.4byte	0x2426
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x7
	.byte	0x4b
	.4byte	.LASF487
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x243f
	.4byte	0x244b
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.byte	0x4f
	.4byte	.LASF489
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2464
	.4byte	0x2470
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.byte	0x50
	.4byte	.LASF490
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2489
	.4byte	0x249a
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x7
	.byte	0x51
	.4byte	.LASF492
	.4byte	0x158e
	.byte	0x1
	.4byte	0x24b3
	.4byte	0x24bf
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x7
	.byte	0x52
	.4byte	.LASF494
	.4byte	0x158e
	.byte	0x1
	.4byte	0x24d8
	.4byte	0x24e4
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF495
	.byte	0x7
	.byte	0x54
	.4byte	.LASF496
	.4byte	0x109
	.byte	0x1
	.4byte	0x24fd
	.4byte	0x2504
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF497
	.byte	0x7
	.byte	0x55
	.4byte	.LASF498
	.4byte	0x109
	.byte	0x1
	.4byte	0x251d
	.4byte	0x2524
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF499
	.byte	0x7
	.byte	0x56
	.4byte	.LASF500
	.4byte	0x109
	.byte	0x1
	.4byte	0x253d
	.4byte	0x2544
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF501
	.byte	0x7
	.byte	0x57
	.4byte	.LASF502
	.4byte	0x109
	.byte	0x1
	.4byte	0x255d
	.4byte	0x2564
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF503
	.byte	0x7
	.byte	0x58
	.4byte	.LASF504
	.4byte	0x109
	.byte	0x1
	.4byte	0x257d
	.4byte	0x2584
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF505
	.byte	0x7
	.byte	0x59
	.4byte	.LASF506
	.4byte	0x26d0
	.byte	0x1
	.4byte	0x259d
	.4byte	0x25a9
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF507
	.byte	0x7
	.byte	0x5a
	.4byte	.LASF508
	.byte	0x1
	.4byte	0x25be
	.4byte	0x25cf
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.uleb128 0x19
	.4byte	0x26c5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF509
	.byte	0x7
	.byte	0x5b
	.4byte	.LASF510
	.byte	0x1
	.4byte	0x25e4
	.4byte	0x25eb
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF511
	.byte	0x7
	.byte	0x5c
	.4byte	.LASF512
	.byte	0x1
	.4byte	0x2600
	.4byte	0x2607
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.byte	0x5e
	.4byte	.LASF514
	.4byte	0xac
	.byte	0x1
	.4byte	0x2620
	.4byte	0x2627
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.byte	0x60
	.4byte	.LASF516
	.4byte	0x209d
	.byte	0x1
	.4byte	0x2640
	.4byte	0x2647
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.byte	0x61
	.4byte	.LASF517
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x2660
	.4byte	0x2667
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.byte	0x62
	.4byte	.LASF519
	.4byte	0xe5
	.byte	0x1
	.4byte	0x2680
	.4byte	0x268c
	.uleb128 0x17
	.4byte	0x26ba
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF520
	.byte	0x7
	.byte	0x64
	.4byte	.LASF521
	.byte	0x1
	.4byte	0x269d
	.uleb128 0x17
	.4byte	0x26b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26c5
	.uleb128 0x19
	.4byte	0x26c5
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21ce
	.uleb128 0xb
	.byte	0x4
	.4byte	0x26c0
	.uleb128 0xc
	.4byte	0x21ce
	.uleb128 0x22
	.byte	0x4
	.4byte	0x26cb
	.uleb128 0xc
	.4byte	0x21ce
	.uleb128 0x22
	.byte	0x4
	.4byte	0x21ce
	.uleb128 0x3b
	.4byte	.LASF522
	.byte	0xc
	.byte	0x7
	.2byte	0x13c
	.4byte	0x2e8c
	.uleb128 0x13
	.string	"x"
	.byte	0x7
	.2byte	0x13e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x7
	.2byte	0x13f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x7
	.2byte	0x140
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF522
	.byte	0x7
	.2byte	0x142
	.byte	0x1
	.4byte	0x271c
	.4byte	0x2723
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF522
	.byte	0x7
	.2byte	0x143
	.byte	0x1
	.byte	0x1
	.4byte	0x2736
	.4byte	0x274c
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x7
	.2byte	0x145
	.4byte	.LASF633
	.byte	0x1
	.4byte	0x2762
	.4byte	0x2778
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.2byte	0x146
	.4byte	.LASF554
	.byte	0x1
	.4byte	0x278e
	.4byte	0x2795
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x148
	.4byte	.LASF523
	.4byte	0x109
	.byte	0x1
	.4byte	0x27af
	.4byte	0x27bb
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x149
	.4byte	.LASF524
	.4byte	0x2091
	.byte	0x1
	.4byte	0x27d5
	.4byte	0x27e1
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x14a
	.4byte	.LASF525
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x27fb
	.4byte	0x2802
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x7
	.2byte	0x14b
	.4byte	.LASF526
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x281c
	.4byte	0x2828
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x14c
	.4byte	.LASF527
	.4byte	0x109
	.byte	0x1
	.4byte	0x2842
	.4byte	0x284e
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x14d
	.4byte	.LASF528
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x2868
	.4byte	0x2874
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF474
	.byte	0x7
	.2byte	0x14e
	.4byte	.LASF529
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x288e
	.4byte	0x289a
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x7
	.2byte	0x14f
	.4byte	.LASF530
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x28b4
	.4byte	0x28c0
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x150
	.4byte	.LASF531
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x28da
	.4byte	0x28e6
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x7
	.2byte	0x151
	.4byte	.LASF532
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2900
	.4byte	0x290c
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x7
	.2byte	0x152
	.4byte	.LASF533
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2926
	.4byte	0x2932
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x153
	.4byte	.LASF534
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x294c
	.4byte	0x2958
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x154
	.4byte	.LASF535
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2972
	.4byte	0x297e
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x7
	.2byte	0x155
	.4byte	.LASF536
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2998
	.4byte	0x29a4
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x159
	.4byte	.LASF537
	.4byte	0x158e
	.byte	0x1
	.4byte	0x29be
	.4byte	0x29ca
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x15a
	.4byte	.LASF538
	.4byte	0x158e
	.byte	0x1
	.4byte	0x29e4
	.4byte	0x29f5
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x7
	.2byte	0x15b
	.4byte	.LASF539
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2a0f
	.4byte	0x2a1b
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x7
	.2byte	0x15c
	.4byte	.LASF540
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2a35
	.4byte	0x2a41
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF541
	.byte	0x7
	.2byte	0x15e
	.4byte	.LASF542
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2a5b
	.4byte	0x2a62
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF543
	.byte	0x7
	.2byte	0x15f
	.4byte	.LASF544
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2a7c
	.4byte	0x2a83
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF545
	.byte	0x7
	.2byte	0x161
	.4byte	.LASF546
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x2a9d
	.4byte	0x2aa9
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF545
	.byte	0x7
	.2byte	0x162
	.4byte	.LASF547
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2ac3
	.4byte	0x2ad4
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF495
	.byte	0x7
	.2byte	0x163
	.4byte	.LASF548
	.4byte	0x109
	.byte	0x1
	.4byte	0x2aee
	.4byte	0x2af5
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF499
	.byte	0x7
	.2byte	0x164
	.4byte	.LASF549
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b0f
	.4byte	0x2b16
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF497
	.byte	0x7
	.2byte	0x165
	.4byte	.LASF550
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b30
	.4byte	0x2b37
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF501
	.byte	0x7
	.2byte	0x166
	.4byte	.LASF551
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b51
	.4byte	0x2b58
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF503
	.byte	0x7
	.2byte	0x167
	.4byte	.LASF552
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b72
	.4byte	0x2b79
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF505
	.byte	0x7
	.2byte	0x168
	.4byte	.LASF553
	.4byte	0x2e9d
	.byte	0x1
	.4byte	0x2b93
	.4byte	0x2b9f
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF507
	.byte	0x7
	.2byte	0x169
	.4byte	.LASF555
	.byte	0x1
	.4byte	0x2bb5
	.4byte	0x2bc6
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x2ea3
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF509
	.byte	0x7
	.2byte	0x16a
	.4byte	.LASF556
	.byte	0x1
	.4byte	0x2bdc
	.4byte	0x2be3
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF511
	.byte	0x7
	.2byte	0x16b
	.4byte	.LASF557
	.byte	0x1
	.4byte	0x2bf9
	.4byte	0x2c00
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.2byte	0x16d
	.4byte	.LASF558
	.4byte	0xac
	.byte	0x1
	.4byte	0x2c1a
	.4byte	0x2c21
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF559
	.byte	0x7
	.2byte	0x16f
	.4byte	.LASF560
	.4byte	0x109
	.byte	0x1
	.4byte	0x2c3b
	.4byte	0x2c42
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF561
	.byte	0x7
	.2byte	0x170
	.4byte	.LASF562
	.4byte	0x109
	.byte	0x1
	.4byte	0x2c5c
	.4byte	0x2c63
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF563
	.byte	0x7
	.2byte	0x171
	.4byte	.LASF564
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x2c7d
	.4byte	0x2c84
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF565
	.byte	0x7
	.2byte	0x172
	.4byte	.LASF566
	.4byte	0x33af
	.byte	0x1
	.4byte	0x2c9e
	.4byte	0x2ca5
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF567
	.byte	0x7
	.2byte	0x173
	.4byte	.LASF568
	.4byte	0x3508
	.byte	0x1
	.4byte	0x2cbf
	.4byte	0x2cc6
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF569
	.byte	0x7
	.2byte	0x174
	.4byte	.LASF570
	.4byte	0x3cf2
	.byte	0x1
	.4byte	0x2ce0
	.4byte	0x2ce7
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF569
	.byte	0x7
	.2byte	0x175
	.4byte	.LASF571
	.4byte	0x3cf8
	.byte	0x1
	.4byte	0x2d01
	.4byte	0x2d08
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x176
	.4byte	.LASF572
	.4byte	0x209d
	.byte	0x1
	.4byte	0x2d22
	.4byte	0x2d29
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x177
	.4byte	.LASF573
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x2d43
	.4byte	0x2d4a
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.2byte	0x178
	.4byte	.LASF574
	.4byte	0xe5
	.byte	0x1
	.4byte	0x2d64
	.4byte	0x2d70
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF575
	.byte	0x7
	.2byte	0x17a
	.4byte	.LASF576
	.byte	0x1
	.4byte	0x2d86
	.4byte	0x2d97
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e9d
	.uleb128 0x19
	.4byte	0x2e9d
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF577
	.byte	0x7
	.2byte	0x17b
	.4byte	.LASF578
	.byte	0x1
	.4byte	0x2dad
	.4byte	0x2dbe
	.uleb128 0x17
	.4byte	0x2e92
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e9d
	.uleb128 0x19
	.4byte	0x2e9d
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF579
	.byte	0x7
	.2byte	0x17d
	.4byte	.LASF580
	.byte	0x1
	.4byte	0x2dd4
	.4byte	0x2de5
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF581
	.byte	0x7
	.2byte	0x17e
	.4byte	.LASF582
	.4byte	0x158e
	.byte	0x1
	.4byte	0x2dff
	.4byte	0x2e15
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF583
	.byte	0x7
	.2byte	0x17f
	.4byte	.LASF584
	.byte	0x1
	.4byte	0x2e2b
	.4byte	0x2e37
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF520
	.byte	0x7
	.2byte	0x181
	.4byte	.LASF585
	.byte	0x1
	.4byte	0x2e4d
	.4byte	0x2e63
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF586
	.byte	0x7
	.2byte	0x182
	.4byte	.LASF749
	.byte	0x1
	.4byte	0x2e75
	.uleb128 0x17
	.4byte	0x2e8c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x2ea3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x26d6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2e98
	.uleb128 0xc
	.4byte	0x26d6
	.uleb128 0x22
	.byte	0x4
	.4byte	0x26d6
	.uleb128 0x22
	.byte	0x4
	.4byte	0x2ea9
	.uleb128 0xc
	.4byte	0x26d6
	.uleb128 0x4
	.4byte	.LASF587
	.byte	0xc
	.byte	0x13
	.byte	0x33
	.4byte	0x33af
	.uleb128 0x6
	.4byte	.LASF588
	.byte	0x13
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"yaw"
	.byte	0x13
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x13
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF587
	.byte	0x13
	.byte	0x39
	.byte	0x1
	.4byte	0x2ef5
	.4byte	0x2efc
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF587
	.byte	0x13
	.byte	0x3a
	.byte	0x1
	.4byte	0x2f0d
	.4byte	0x2f23
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF587
	.byte	0x13
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x2f35
	.4byte	0x2f41
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Set"
	.byte	0x13
	.byte	0x3d
	.4byte	.LASF590
	.byte	0x1
	.4byte	0x2f56
	.4byte	0x2f6c
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF464
	.byte	0x13
	.byte	0x3e
	.4byte	.LASF591
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x2f85
	.4byte	0x2f8c
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x13
	.byte	0x40
	.4byte	.LASF592
	.4byte	0x109
	.byte	0x1
	.4byte	0x2fa5
	.4byte	0x2fb1
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x13
	.byte	0x41
	.4byte	.LASF593
	.4byte	0x2091
	.byte	0x1
	.4byte	0x2fca
	.4byte	0x2fd6
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x13
	.byte	0x42
	.4byte	.LASF594
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x2fef
	.4byte	0x2ff6
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x13
	.byte	0x43
	.4byte	.LASF595
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x300f
	.4byte	0x301b
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x13
	.byte	0x44
	.4byte	.LASF596
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x3034
	.4byte	0x3040
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x13
	.byte	0x45
	.4byte	.LASF597
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x3059
	.4byte	0x3065
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x13
	.byte	0x46
	.4byte	.LASF598
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x307e
	.4byte	0x308a
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x13
	.byte	0x47
	.4byte	.LASF599
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x30a3
	.4byte	0x30af
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x13
	.byte	0x48
	.4byte	.LASF600
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x30c8
	.4byte	0x30d4
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x13
	.byte	0x49
	.4byte	.LASF601
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x30ed
	.4byte	0x30f9
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF474
	.byte	0x13
	.byte	0x4a
	.4byte	.LASF602
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x3112
	.4byte	0x311e
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF483
	.byte	0x13
	.byte	0x4b
	.4byte	.LASF603
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x3137
	.4byte	0x3143
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x13
	.byte	0x4f
	.4byte	.LASF604
	.4byte	0x158e
	.byte	0x1
	.4byte	0x315c
	.4byte	0x3168
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x13
	.byte	0x50
	.4byte	.LASF605
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3181
	.4byte	0x3192
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x13
	.byte	0x51
	.4byte	.LASF606
	.4byte	0x158e
	.byte	0x1
	.4byte	0x31ab
	.4byte	0x31b7
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x13
	.byte	0x52
	.4byte	.LASF607
	.4byte	0x158e
	.byte	0x1
	.4byte	0x31d0
	.4byte	0x31dc
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF608
	.byte	0x13
	.byte	0x54
	.4byte	.LASF609
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x31f5
	.4byte	0x31fc
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF610
	.byte	0x13
	.byte	0x55
	.4byte	.LASF611
	.4byte	0x8d47
	.byte	0x1
	.4byte	0x3215
	.4byte	0x321c
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF507
	.byte	0x13
	.byte	0x57
	.4byte	.LASF612
	.byte	0x1
	.4byte	0x3231
	.4byte	0x3242
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d58
	.uleb128 0x19
	.4byte	0x8d58
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x13
	.byte	0x59
	.4byte	.LASF613
	.4byte	0xac
	.byte	0x1
	.4byte	0x325b
	.4byte	0x3262
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF614
	.byte	0x13
	.byte	0x5b
	.4byte	.LASF615
	.byte	0x1
	.4byte	0x3277
	.4byte	0x328d
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.uleb128 0x19
	.4byte	0x2e8c
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF616
	.byte	0x13
	.byte	0x5c
	.4byte	.LASF617
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x32a6
	.4byte	0x32ad
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF618
	.byte	0x13
	.byte	0x5d
	.4byte	.LASF619
	.4byte	0x5628
	.byte	0x1
	.4byte	0x32c6
	.4byte	0x32cd
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF620
	.byte	0x13
	.byte	0x5e
	.4byte	.LASF621
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x32e6
	.4byte	0x32ed
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF567
	.byte	0x13
	.byte	0x5f
	.4byte	.LASF622
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3306
	.4byte	0x330d
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF623
	.byte	0x13
	.byte	0x60
	.4byte	.LASF624
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x3326
	.4byte	0x332d
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF625
	.byte	0x13
	.byte	0x61
	.4byte	.LASF626
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x3346
	.4byte	0x334d
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x13
	.byte	0x62
	.4byte	.LASF627
	.4byte	0x209d
	.byte	0x1
	.4byte	0x3366
	.4byte	0x336d
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x13
	.byte	0x63
	.4byte	.LASF628
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x3386
	.4byte	0x338d
	.uleb128 0x17
	.4byte	0x8d41
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF518
	.byte	0x13
	.byte	0x64
	.4byte	.LASF629
	.4byte	0xe5
	.byte	0x1
	.4byte	0x33a2
	.uleb128 0x17
	.4byte	0x8d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF630
	.byte	0xc
	.byte	0x7
	.2byte	0x785
	.4byte	0x3508
	.uleb128 0x10
	.4byte	.LASF631
	.byte	0x7
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF632
	.byte	0x7
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"phi"
	.byte	0x7
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF630
	.byte	0x7
	.2byte	0x789
	.byte	0x1
	.4byte	0x33fb
	.4byte	0x3402
	.uleb128 0x17
	.4byte	0x505c
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF630
	.byte	0x7
	.2byte	0x78a
	.byte	0x1
	.byte	0x1
	.4byte	0x3415
	.4byte	0x342b
	.uleb128 0x17
	.4byte	0x505c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x7
	.2byte	0x78c
	.4byte	.LASF634
	.byte	0x1
	.4byte	0x3441
	.4byte	0x3457
	.uleb128 0x17
	.4byte	0x505c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x78e
	.4byte	.LASF635
	.4byte	0x109
	.byte	0x1
	.4byte	0x3471
	.4byte	0x347d
	.uleb128 0x17
	.4byte	0x5062
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x78f
	.4byte	.LASF636
	.4byte	0x2091
	.byte	0x1
	.4byte	0x3497
	.4byte	0x34a3
	.uleb128 0x17
	.4byte	0x505c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x790
	.4byte	.LASF637
	.4byte	0x33af
	.byte	0x1
	.4byte	0x34bd
	.4byte	0x34c4
	.uleb128 0x17
	.4byte	0x5062
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x7
	.2byte	0x791
	.4byte	.LASF638
	.4byte	0x506d
	.byte	0x1
	.4byte	0x34de
	.4byte	0x34ea
	.uleb128 0x17
	.4byte	0x505c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5073
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF639
	.byte	0x7
	.2byte	0x793
	.4byte	.LASF640
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x3500
	.uleb128 0x17
	.4byte	0x5062
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF641
	.byte	0x24
	.byte	0x14
	.2byte	0x14d
	.4byte	0x3cf2
	.uleb128 0x44
	.string	"mat"
	.byte	0x14
	.2byte	0x198
	.4byte	0x55e0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF641
	.byte	0x14
	.2byte	0x14f
	.byte	0x1
	.4byte	0x3537
	.4byte	0x353e
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF641
	.byte	0x14
	.2byte	0x150
	.byte	0x1
	.byte	0x1
	.4byte	0x3551
	.4byte	0x3567
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF641
	.byte	0x14
	.2byte	0x151
	.byte	0x1
	.byte	0x1
	.4byte	0x357a
	.4byte	0x35ae
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF641
	.byte	0x14
	.2byte	0x152
	.byte	0x1
	.byte	0x1
	.4byte	0x35c1
	.4byte	0x35cd
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55f6
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x154
	.4byte	.LASF642
	.4byte	0x4236
	.byte	0x1
	.4byte	0x35e7
	.4byte	0x35f3
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x155
	.4byte	.LASF643
	.4byte	0x423c
	.byte	0x1
	.4byte	0x360d
	.4byte	0x3619
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x156
	.4byte	.LASF644
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3633
	.4byte	0x363a
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x157
	.4byte	.LASF645
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3654
	.4byte	0x3660
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x158
	.4byte	.LASF646
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x367a
	.4byte	0x3686
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x159
	.4byte	.LASF647
	.4byte	0x3508
	.byte	0x1
	.4byte	0x36a0
	.4byte	0x36ac
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.2byte	0x15a
	.4byte	.LASF648
	.4byte	0x3508
	.byte	0x1
	.4byte	0x36c6
	.4byte	0x36d2
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x15b
	.4byte	.LASF649
	.4byte	0x3508
	.byte	0x1
	.4byte	0x36ec
	.4byte	0x36f8
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x15c
	.4byte	.LASF650
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3712
	.4byte	0x371e
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x15d
	.4byte	.LASF651
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3738
	.4byte	0x3744
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.2byte	0x15e
	.4byte	.LASF652
	.4byte	0x5622
	.byte	0x1
	.4byte	0x375e
	.4byte	0x376a
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.2byte	0x15f
	.4byte	.LASF653
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3784
	.4byte	0x3790
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x165
	.4byte	.LASF654
	.4byte	0x158e
	.byte	0x1
	.4byte	0x37aa
	.4byte	0x37b6
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x166
	.4byte	.LASF655
	.4byte	0x158e
	.byte	0x1
	.4byte	0x37d0
	.4byte	0x37e1
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.2byte	0x167
	.4byte	.LASF656
	.4byte	0x158e
	.byte	0x1
	.4byte	0x37fb
	.4byte	0x3807
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.2byte	0x168
	.4byte	.LASF657
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3821
	.4byte	0x382d
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x16a
	.4byte	.LASF658
	.byte	0x1
	.4byte	0x3843
	.4byte	0x384a
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x16b
	.4byte	.LASF660
	.byte	0x1
	.4byte	0x3860
	.4byte	0x3867
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.2byte	0x16c
	.4byte	.LASF662
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3881
	.4byte	0x388d
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.2byte	0x16d
	.4byte	.LASF664
	.4byte	0x158e
	.byte	0x1
	.4byte	0x38a7
	.4byte	0x38b3
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.2byte	0x16e
	.4byte	.LASF666
	.4byte	0x158e
	.byte	0x1
	.4byte	0x38cd
	.4byte	0x38d9
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF667
	.byte	0x14
	.2byte	0x16f
	.4byte	.LASF668
	.4byte	0x158e
	.byte	0x1
	.4byte	0x38f3
	.4byte	0x38fa
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF669
	.byte	0x14
	.2byte	0x171
	.4byte	.LASF670
	.byte	0x1
	.4byte	0x3910
	.4byte	0x3921
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x423c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF671
	.byte	0x14
	.2byte	0x172
	.4byte	.LASF672
	.byte	0x1
	.4byte	0x3937
	.4byte	0x3948
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x423c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF673
	.byte	0x14
	.2byte	0x174
	.4byte	.LASF674
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3962
	.4byte	0x3969
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF543
	.byte	0x14
	.2byte	0x175
	.4byte	.LASF675
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3983
	.4byte	0x398a
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.2byte	0x177
	.4byte	.LASF677
	.4byte	0x109
	.byte	0x1
	.4byte	0x39a4
	.4byte	0x39ab
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.2byte	0x178
	.4byte	.LASF679
	.4byte	0x109
	.byte	0x1
	.4byte	0x39c5
	.4byte	0x39cc
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF680
	.byte	0x14
	.2byte	0x179
	.4byte	.LASF681
	.4byte	0x3508
	.byte	0x1
	.4byte	0x39e6
	.4byte	0x39ed
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF682
	.byte	0x14
	.2byte	0x17a
	.4byte	.LASF683
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3a07
	.4byte	0x3a0e
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.2byte	0x17b
	.4byte	.LASF685
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3a28
	.4byte	0x3a2f
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.2byte	0x17c
	.4byte	.LASF687
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3a49
	.4byte	0x3a50
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.2byte	0x17d
	.4byte	.LASF689
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3a6a
	.4byte	0x3a71
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.2byte	0x17e
	.4byte	.LASF691
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3a8b
	.4byte	0x3a92
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.2byte	0x17f
	.4byte	.LASF693
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3aac
	.4byte	0x3ab3
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.2byte	0x180
	.4byte	.LASF695
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3acd
	.4byte	0x3ad4
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x181
	.4byte	.LASF697
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3aee
	.4byte	0x3afa
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF698
	.byte	0x14
	.2byte	0x183
	.4byte	.LASF699
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3b14
	.4byte	0x3b2a
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF700
	.byte	0x14
	.2byte	0x184
	.4byte	.LASF701
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3b44
	.4byte	0x3b5a
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF702
	.byte	0x14
	.2byte	0x185
	.4byte	.LASF703
	.4byte	0x3508
	.byte	0x1
	.4byte	0x3b74
	.4byte	0x3b80
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF704
	.byte	0x14
	.2byte	0x186
	.4byte	.LASF705
	.4byte	0x5622
	.byte	0x1
	.4byte	0x3b9a
	.4byte	0x3ba6
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5617
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.2byte	0x188
	.4byte	.LASF706
	.4byte	0xac
	.byte	0x1
	.4byte	0x3bc0
	.4byte	0x3bc7
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF563
	.byte	0x14
	.2byte	0x18a
	.4byte	.LASF707
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x3be1
	.4byte	0x3be8
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF618
	.byte	0x14
	.2byte	0x18b
	.4byte	.LASF708
	.4byte	0x5628
	.byte	0x1
	.4byte	0x3c02
	.4byte	0x3c09
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF709
	.byte	0x14
	.2byte	0x18c
	.4byte	.LASF710
	.4byte	0x5b3e
	.byte	0x1
	.4byte	0x3c23
	.4byte	0x3c2a
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF620
	.byte	0x14
	.2byte	0x18d
	.4byte	.LASF711
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x3c44
	.4byte	0x3c4b
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF623
	.byte	0x14
	.2byte	0x18e
	.4byte	.LASF712
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x3c65
	.4byte	0x3c6c
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF625
	.byte	0x14
	.2byte	0x18f
	.4byte	.LASF713
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x3c86
	.4byte	0x3c8d
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x190
	.4byte	.LASF714
	.4byte	0x209d
	.byte	0x1
	.4byte	0x3ca7
	.4byte	0x3cae
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x191
	.4byte	.LASF715
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x3cc8
	.4byte	0x3ccf
	.uleb128 0x17
	.4byte	0x55f0
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x192
	.4byte	.LASF716
	.4byte	0xe5
	.byte	0x1
	.4byte	0x3ce5
	.uleb128 0x17
	.4byte	0x560c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x26c0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x21ce
	.uleb128 0x3b
	.4byte	.LASF717
	.byte	0x10
	.byte	0x7
	.2byte	0x328
	.4byte	0x4214
	.uleb128 0x13
	.string	"x"
	.byte	0x7
	.2byte	0x32a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x7
	.2byte	0x32b
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x7
	.2byte	0x32c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"w"
	.byte	0x7
	.2byte	0x32d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF717
	.byte	0x7
	.2byte	0x32f
	.byte	0x1
	.4byte	0x3d51
	.4byte	0x3d58
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF717
	.byte	0x7
	.2byte	0x330
	.byte	0x1
	.byte	0x1
	.4byte	0x3d6b
	.4byte	0x3d86
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x7
	.2byte	0x332
	.4byte	.LASF718
	.byte	0x1
	.4byte	0x3d9c
	.4byte	0x3db7
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.2byte	0x333
	.4byte	.LASF719
	.byte	0x1
	.4byte	0x3dcd
	.4byte	0x3dd4
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x335
	.4byte	.LASF720
	.4byte	0x109
	.byte	0x1
	.4byte	0x3dee
	.4byte	0x3dfa
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x336
	.4byte	.LASF721
	.4byte	0x2091
	.byte	0x1
	.4byte	0x3e14
	.4byte	0x3e20
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x337
	.4byte	.LASF722
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x3e3a
	.4byte	0x3e41
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x338
	.4byte	.LASF723
	.4byte	0x109
	.byte	0x1
	.4byte	0x3e5b
	.4byte	0x3e67
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x339
	.4byte	.LASF724
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x3e81
	.4byte	0x3e8d
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF474
	.byte	0x7
	.2byte	0x33a
	.4byte	.LASF725
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x3ea7
	.4byte	0x3eb3
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x7
	.2byte	0x33b
	.4byte	.LASF726
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x3ecd
	.4byte	0x3ed9
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x33c
	.4byte	.LASF727
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x3ef3
	.4byte	0x3eff
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x7
	.2byte	0x33d
	.4byte	.LASF728
	.4byte	0x4230
	.byte	0x1
	.4byte	0x3f19
	.4byte	0x3f25
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x7
	.2byte	0x33e
	.4byte	.LASF729
	.4byte	0x4230
	.byte	0x1
	.4byte	0x3f3f
	.4byte	0x3f4b
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x33f
	.4byte	.LASF730
	.4byte	0x4230
	.byte	0x1
	.4byte	0x3f65
	.4byte	0x3f71
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x340
	.4byte	.LASF731
	.4byte	0x4230
	.byte	0x1
	.4byte	0x3f8b
	.4byte	0x3f97
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x7
	.2byte	0x341
	.4byte	.LASF732
	.4byte	0x4230
	.byte	0x1
	.4byte	0x3fb1
	.4byte	0x3fbd
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x345
	.4byte	.LASF733
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3fd7
	.4byte	0x3fe3
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x346
	.4byte	.LASF734
	.4byte	0x158e
	.byte	0x1
	.4byte	0x3ffd
	.4byte	0x400e
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x7
	.2byte	0x347
	.4byte	.LASF735
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4028
	.4byte	0x4034
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x7
	.2byte	0x348
	.4byte	.LASF736
	.4byte	0x158e
	.byte	0x1
	.4byte	0x404e
	.4byte	0x405a
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF495
	.byte	0x7
	.2byte	0x34a
	.4byte	.LASF737
	.4byte	0x109
	.byte	0x1
	.4byte	0x4074
	.4byte	0x407b
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF499
	.byte	0x7
	.2byte	0x34b
	.4byte	.LASF738
	.4byte	0x109
	.byte	0x1
	.4byte	0x4095
	.4byte	0x409c
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF501
	.byte	0x7
	.2byte	0x34c
	.4byte	.LASF739
	.4byte	0x109
	.byte	0x1
	.4byte	0x40b6
	.4byte	0x40bd
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF503
	.byte	0x7
	.2byte	0x34d
	.4byte	.LASF740
	.4byte	0x109
	.byte	0x1
	.4byte	0x40d7
	.4byte	0x40de
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.2byte	0x34f
	.4byte	.LASF741
	.4byte	0xac
	.byte	0x1
	.4byte	0x40f8
	.4byte	0x40ff
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF569
	.byte	0x7
	.2byte	0x351
	.4byte	.LASF742
	.4byte	0x3cf2
	.byte	0x1
	.4byte	0x4119
	.4byte	0x4120
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF569
	.byte	0x7
	.2byte	0x352
	.4byte	.LASF743
	.4byte	0x3cf8
	.byte	0x1
	.4byte	0x413a
	.4byte	0x4141
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF639
	.byte	0x7
	.2byte	0x353
	.4byte	.LASF744
	.4byte	0x4236
	.byte	0x1
	.4byte	0x415b
	.4byte	0x4162
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF639
	.byte	0x7
	.2byte	0x354
	.4byte	.LASF745
	.4byte	0x423c
	.byte	0x1
	.4byte	0x417c
	.4byte	0x4183
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x355
	.4byte	.LASF746
	.4byte	0x209d
	.byte	0x1
	.4byte	0x419d
	.4byte	0x41a4
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x356
	.4byte	.LASF747
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x41be
	.4byte	0x41c5
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.2byte	0x357
	.4byte	.LASF748
	.4byte	0xe5
	.byte	0x1
	.4byte	0x41df
	.4byte	0x41eb
	.uleb128 0x17
	.4byte	0x421a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF520
	.byte	0x7
	.2byte	0x359
	.4byte	.LASF750
	.byte	0x1
	.4byte	0x41fd
	.uleb128 0x17
	.4byte	0x4214
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4225
	.uleb128 0x19
	.4byte	0x4225
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3cfe
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4220
	.uleb128 0xc
	.4byte	0x3cfe
	.uleb128 0x22
	.byte	0x4
	.4byte	0x422b
	.uleb128 0xc
	.4byte	0x3cfe
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3cfe
	.uleb128 0x22
	.byte	0x4
	.4byte	0x2e98
	.uleb128 0x22
	.byte	0x4
	.4byte	0x26d6
	.uleb128 0x3b
	.4byte	.LASF751
	.byte	0x14
	.byte	0x7
	.2byte	0x42a
	.4byte	0x4466
	.uleb128 0x13
	.string	"x"
	.byte	0x7
	.2byte	0x42c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x7
	.2byte	0x42d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x7
	.2byte	0x42e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"s"
	.byte	0x7
	.2byte	0x42f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"t"
	.byte	0x7
	.2byte	0x430
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF751
	.byte	0x7
	.2byte	0x432
	.byte	0x1
	.4byte	0x42a2
	.4byte	0x42a9
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF751
	.byte	0x7
	.2byte	0x433
	.byte	0x1
	.byte	0x1
	.4byte	0x42bc
	.4byte	0x42cd
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x3cf2
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF751
	.byte	0x7
	.2byte	0x434
	.byte	0x1
	.byte	0x1
	.4byte	0x42e0
	.4byte	0x4300
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x436
	.4byte	.LASF752
	.4byte	0x109
	.byte	0x1
	.4byte	0x431a
	.4byte	0x4326
	.uleb128 0x17
	.4byte	0x446c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x437
	.4byte	.LASF753
	.4byte	0x2091
	.byte	0x1
	.4byte	0x4340
	.4byte	0x434c
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x7
	.2byte	0x438
	.4byte	.LASF754
	.4byte	0x4477
	.byte	0x1
	.4byte	0x4366
	.4byte	0x4372
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.2byte	0x43a
	.4byte	.LASF755
	.4byte	0xac
	.byte	0x1
	.4byte	0x438c
	.4byte	0x4393
	.uleb128 0x17
	.4byte	0x446c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF639
	.byte	0x7
	.2byte	0x43c
	.4byte	.LASF756
	.4byte	0x4236
	.byte	0x1
	.4byte	0x43ad
	.4byte	0x43b4
	.uleb128 0x17
	.4byte	0x446c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF639
	.byte	0x7
	.2byte	0x43d
	.4byte	.LASF757
	.4byte	0x423c
	.byte	0x1
	.4byte	0x43ce
	.4byte	0x43d5
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x43e
	.4byte	.LASF758
	.4byte	0x209d
	.byte	0x1
	.4byte	0x43ef
	.4byte	0x43f6
	.uleb128 0x17
	.4byte	0x446c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x43f
	.4byte	.LASF759
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x4410
	.4byte	0x4417
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.2byte	0x440
	.4byte	.LASF760
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4431
	.4byte	0x443d
	.uleb128 0x17
	.4byte	0x446c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF520
	.byte	0x7
	.2byte	0x442
	.4byte	.LASF761
	.byte	0x1
	.4byte	0x444f
	.uleb128 0x17
	.4byte	0x4466
	.byte	0x1
	.uleb128 0x19
	.4byte	0x447d
	.uleb128 0x19
	.4byte	0x447d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4242
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4472
	.uleb128 0xc
	.4byte	0x4242
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4242
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4483
	.uleb128 0xc
	.4byte	0x4242
	.uleb128 0x3b
	.4byte	.LASF762
	.byte	0x18
	.byte	0x7
	.2byte	0x486
	.4byte	0x4921
	.uleb128 0x44
	.string	"p"
	.byte	0x7
	.2byte	0x4b1
	.4byte	0x4921
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF762
	.byte	0x7
	.2byte	0x488
	.byte	0x1
	.4byte	0x44b5
	.4byte	0x44bc
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF762
	.byte	0x7
	.2byte	0x489
	.byte	0x1
	.byte	0x1
	.4byte	0x44cf
	.4byte	0x44db
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x209d
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF762
	.byte	0x7
	.2byte	0x48a
	.byte	0x1
	.byte	0x1
	.4byte	0x44ee
	.4byte	0x4513
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x7
	.2byte	0x48c
	.4byte	.LASF763
	.byte	0x1
	.4byte	0x4529
	.4byte	0x454e
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.2byte	0x48d
	.4byte	.LASF764
	.byte	0x1
	.4byte	0x4564
	.4byte	0x456b
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x48f
	.4byte	.LASF765
	.4byte	0x109
	.byte	0x1
	.4byte	0x4585
	.4byte	0x4591
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x490
	.4byte	.LASF766
	.4byte	0x2091
	.byte	0x1
	.4byte	0x45ab
	.4byte	0x45b7
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x491
	.4byte	.LASF767
	.4byte	0x4488
	.byte	0x1
	.4byte	0x45d1
	.4byte	0x45d8
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x492
	.4byte	.LASF768
	.4byte	0x4488
	.byte	0x1
	.4byte	0x45f2
	.4byte	0x45fe
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF474
	.byte	0x7
	.2byte	0x493
	.4byte	.LASF769
	.4byte	0x4488
	.byte	0x1
	.4byte	0x4618
	.4byte	0x4624
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x494
	.4byte	.LASF770
	.4byte	0x109
	.byte	0x1
	.4byte	0x463e
	.4byte	0x464a
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x495
	.4byte	.LASF771
	.4byte	0x4488
	.byte	0x1
	.4byte	0x4664
	.4byte	0x4670
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x7
	.2byte	0x496
	.4byte	.LASF772
	.4byte	0x4488
	.byte	0x1
	.4byte	0x468a
	.4byte	0x4696
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x7
	.2byte	0x497
	.4byte	.LASF773
	.4byte	0x494d
	.byte	0x1
	.4byte	0x46b0
	.4byte	0x46bc
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x498
	.4byte	.LASF774
	.4byte	0x494d
	.byte	0x1
	.4byte	0x46d6
	.4byte	0x46e2
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x7
	.2byte	0x499
	.4byte	.LASF775
	.4byte	0x494d
	.byte	0x1
	.4byte	0x46fc
	.4byte	0x4708
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x7
	.2byte	0x49a
	.4byte	.LASF776
	.4byte	0x494d
	.byte	0x1
	.4byte	0x4722
	.4byte	0x472e
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x49e
	.4byte	.LASF777
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4748
	.4byte	0x4754
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x49f
	.4byte	.LASF778
	.4byte	0x158e
	.byte	0x1
	.4byte	0x476e
	.4byte	0x477f
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x7
	.2byte	0x4a0
	.4byte	.LASF779
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4799
	.4byte	0x47a5
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x7
	.2byte	0x4a1
	.4byte	.LASF780
	.4byte	0x158e
	.byte	0x1
	.4byte	0x47bf
	.4byte	0x47cb
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4942
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF495
	.byte	0x7
	.2byte	0x4a3
	.4byte	.LASF781
	.4byte	0x109
	.byte	0x1
	.4byte	0x47e5
	.4byte	0x47ec
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF499
	.byte	0x7
	.2byte	0x4a4
	.4byte	.LASF782
	.4byte	0x109
	.byte	0x1
	.4byte	0x4806
	.4byte	0x480d
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF501
	.byte	0x7
	.2byte	0x4a5
	.4byte	.LASF783
	.4byte	0x109
	.byte	0x1
	.4byte	0x4827
	.4byte	0x482e
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF503
	.byte	0x7
	.2byte	0x4a6
	.4byte	.LASF784
	.4byte	0x109
	.byte	0x1
	.4byte	0x4848
	.4byte	0x484f
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.2byte	0x4a8
	.4byte	.LASF785
	.4byte	0xac
	.byte	0x1
	.4byte	0x4869
	.4byte	0x4870
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF786
	.byte	0x7
	.2byte	0x4aa
	.4byte	.LASF787
	.4byte	0x4236
	.byte	0x1
	.4byte	0x488a
	.4byte	0x4896
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF786
	.byte	0x7
	.2byte	0x4ab
	.4byte	.LASF788
	.4byte	0x423c
	.byte	0x1
	.4byte	0x48b0
	.4byte	0x48bc
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x4ac
	.4byte	.LASF789
	.4byte	0x209d
	.byte	0x1
	.4byte	0x48d6
	.4byte	0x48dd
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x4ad
	.4byte	.LASF790
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x48f7
	.4byte	0x48fe
	.uleb128 0x17
	.4byte	0x4931
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.2byte	0x4ae
	.4byte	.LASF791
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4914
	.uleb128 0x17
	.4byte	0x4937
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x4931
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4488
	.uleb128 0xb
	.byte	0x4
	.4byte	0x493d
	.uleb128 0xc
	.4byte	0x4488
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4948
	.uleb128 0xc
	.4byte	0x4488
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4488
	.uleb128 0x3b
	.4byte	.LASF792
	.byte	0xc
	.byte	0x7
	.2byte	0x59b
	.4byte	0x501d
	.uleb128 0x45
	.4byte	.LASF793
	.byte	0x7
	.2byte	0x5d5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF794
	.byte	0x7
	.2byte	0x5d6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x44
	.string	"p"
	.byte	0x7
	.2byte	0x5d7
	.4byte	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x46
	.4byte	.LASF795
	.byte	0x7
	.2byte	0x5d9
	.4byte	0x501d
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF796
	.byte	0x7
	.2byte	0x5da
	.4byte	0x21c8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF797
	.byte	0x7
	.2byte	0x5db
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF792
	.byte	0x7
	.2byte	0x59f
	.byte	0x1
	.4byte	0x49cd
	.4byte	0x49d4
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF792
	.byte	0x7
	.2byte	0x5a0
	.byte	0x1
	.byte	0x1
	.4byte	0x49e7
	.4byte	0x49f3
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF792
	.byte	0x7
	.2byte	0x5a1
	.byte	0x1
	.byte	0x1
	.4byte	0x4a06
	.4byte	0x4a17
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF798
	.byte	0x7
	.2byte	0x5a2
	.byte	0x1
	.4byte	0x4a29
	.4byte	0x4a36
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x5a4
	.4byte	.LASF799
	.4byte	0x109
	.byte	0x1
	.4byte	0x4a50
	.4byte	0x4a5c
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x7
	.2byte	0x5a5
	.4byte	.LASF800
	.4byte	0x2091
	.byte	0x1
	.4byte	0x4a76
	.4byte	0x4a82
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x5a6
	.4byte	.LASF801
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4a9c
	.4byte	0x4aa3
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x7
	.2byte	0x5a7
	.4byte	.LASF802
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4abd
	.4byte	0x4ac9
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x5a8
	.4byte	.LASF803
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4ae3
	.4byte	0x4aef
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF474
	.byte	0x7
	.2byte	0x5a9
	.4byte	.LASF804
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4b09
	.4byte	0x4b15
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x7
	.2byte	0x5aa
	.4byte	.LASF805
	.4byte	0x109
	.byte	0x1
	.4byte	0x4b2f
	.4byte	0x4b3b
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x7
	.2byte	0x5ab
	.4byte	.LASF806
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4b55
	.4byte	0x4b61
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x7
	.2byte	0x5ac
	.4byte	.LASF807
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4b7b
	.4byte	0x4b87
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x7
	.2byte	0x5ad
	.4byte	.LASF808
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4ba1
	.4byte	0x4bad
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF483
	.byte	0x7
	.2byte	0x5ae
	.4byte	.LASF809
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4bc7
	.4byte	0x4bd3
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x7
	.2byte	0x5af
	.4byte	.LASF810
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4bed
	.4byte	0x4bf9
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x7
	.2byte	0x5b0
	.4byte	.LASF811
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4c13
	.4byte	0x4c1f
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x5b4
	.4byte	.LASF812
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4c39
	.4byte	0x4c45
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x7
	.2byte	0x5b5
	.4byte	.LASF813
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4c5f
	.4byte	0x4c70
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x7
	.2byte	0x5b6
	.4byte	.LASF814
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4c8a
	.4byte	0x4c96
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x7
	.2byte	0x5b7
	.4byte	.LASF815
	.4byte	0x158e
	.byte	0x1
	.4byte	0x4cb0
	.4byte	0x4cbc
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5045
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF816
	.byte	0x7
	.2byte	0x5b9
	.4byte	.LASF817
	.byte	0x1
	.4byte	0x4cd2
	.4byte	0x4cde
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF818
	.byte	0x7
	.2byte	0x5ba
	.4byte	.LASF819
	.byte	0x1
	.4byte	0x4cf4
	.4byte	0x4d05
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF820
	.byte	0x7
	.2byte	0x5bb
	.4byte	.LASF821
	.4byte	0xac
	.byte	0x1
	.4byte	0x4d1f
	.4byte	0x4d26
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF822
	.byte	0x7
	.2byte	0x5bc
	.4byte	.LASF823
	.byte	0x1
	.4byte	0x4d3c
	.4byte	0x4d4d
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.2byte	0x5bd
	.4byte	.LASF824
	.byte	0x1
	.4byte	0x4d63
	.4byte	0x4d6a
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x7
	.2byte	0x5be
	.4byte	.LASF825
	.byte	0x1
	.4byte	0x4d80
	.4byte	0x4d8c
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF826
	.byte	0x7
	.2byte	0x5bf
	.4byte	.LASF827
	.byte	0x1
	.4byte	0x4da2
	.4byte	0x4db8
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF826
	.byte	0x7
	.2byte	0x5c0
	.4byte	.LASF828
	.byte	0x1
	.4byte	0x4dce
	.4byte	0x4de9
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF829
	.byte	0x7
	.2byte	0x5c1
	.4byte	.LASF830
	.byte	0x1
	.4byte	0x4dff
	.4byte	0x4e06
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF507
	.byte	0x7
	.2byte	0x5c2
	.4byte	.LASF831
	.byte	0x1
	.4byte	0x4e1c
	.4byte	0x4e2d
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF832
	.byte	0x7
	.2byte	0x5c3
	.4byte	.LASF833
	.4byte	0x503f
	.byte	0x1
	.4byte	0x4e47
	.4byte	0x4e58
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF495
	.byte	0x7
	.2byte	0x5c5
	.4byte	.LASF834
	.4byte	0x109
	.byte	0x1
	.4byte	0x4e72
	.4byte	0x4e79
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF499
	.byte	0x7
	.2byte	0x5c6
	.4byte	.LASF835
	.4byte	0x109
	.byte	0x1
	.4byte	0x4e93
	.4byte	0x4e9a
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF501
	.byte	0x7
	.2byte	0x5c7
	.4byte	.LASF836
	.4byte	0x4953
	.byte	0x1
	.4byte	0x4eb4
	.4byte	0x4ebb
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF837
	.byte	0x7
	.2byte	0x5c8
	.4byte	.LASF838
	.4byte	0x109
	.byte	0x1
	.4byte	0x4ed5
	.4byte	0x4edc
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x7
	.2byte	0x5ca
	.4byte	.LASF839
	.4byte	0xac
	.byte	0x1
	.4byte	0x4ef6
	.4byte	0x4efd
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF786
	.byte	0x7
	.2byte	0x5cc
	.4byte	.LASF840
	.4byte	0x4236
	.byte	0x1
	.4byte	0x4f17
	.4byte	0x4f23
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF786
	.byte	0x7
	.2byte	0x5cd
	.4byte	.LASF841
	.4byte	0x423c
	.byte	0x1
	.4byte	0x4f3d
	.4byte	0x4f49
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF842
	.byte	0x7
	.2byte	0x5ce
	.4byte	.LASF843
	.4byte	0x5050
	.byte	0x1
	.4byte	0x4f63
	.4byte	0x4f6f
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF842
	.byte	0x7
	.2byte	0x5cf
	.4byte	.LASF844
	.4byte	0x5056
	.byte	0x1
	.4byte	0x4f89
	.4byte	0x4f95
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x5d0
	.4byte	.LASF845
	.4byte	0x209d
	.byte	0x1
	.4byte	0x4faf
	.4byte	0x4fb6
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x7
	.2byte	0x5d1
	.4byte	.LASF846
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x4fd0
	.4byte	0x4fd7
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF518
	.byte	0x7
	.2byte	0x5d2
	.4byte	.LASF847
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4ff1
	.4byte	0x4ffd
	.uleb128 0x17
	.4byte	0x5034
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF848
	.byte	0x7
	.2byte	0x5de
	.4byte	.LASF849
	.byte	0x3
	.byte	0x1
	.4byte	0x5010
	.uleb128 0x17
	.4byte	0x502e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x502e
	.uleb128 0x21
	.4byte	0x34
	.2byte	0x403
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4953
	.uleb128 0xb
	.byte	0x4
	.4byte	0x503a
	.uleb128 0xc
	.4byte	0x4953
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4953
	.uleb128 0x22
	.byte	0x4
	.4byte	0x504b
	.uleb128 0xc
	.4byte	0x4953
	.uleb128 0x22
	.byte	0x4
	.4byte	0x493d
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4488
	.uleb128 0xb
	.byte	0x4
	.4byte	0x33af
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5068
	.uleb128 0xc
	.4byte	0x33af
	.uleb128 0x22
	.byte	0x4
	.4byte	0x33af
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5079
	.uleb128 0xc
	.4byte	0x33af
	.uleb128 0x2b
	.4byte	.LASF850
	.byte	0x10
	.byte	0x14
	.byte	0x37
	.4byte	0x5598
	.uleb128 0x48
	.string	"mat"
	.byte	0x14
	.byte	0x6a
	.4byte	0x5598
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF850
	.byte	0x14
	.byte	0x39
	.byte	0x1
	.4byte	0x50aa
	.4byte	0x50b1
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF850
	.byte	0x14
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x50c3
	.4byte	0x50d4
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3cf2
	.uleb128 0x19
	.4byte	0x3cf2
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF850
	.byte	0x14
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x50e6
	.4byte	0x5101
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF850
	.byte	0x14
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.4byte	0x5113
	.4byte	0x511f
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55ae
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.byte	0x3e
	.4byte	.LASF851
	.4byte	0x3cf2
	.byte	0x1
	.4byte	0x5138
	.4byte	0x5144
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.byte	0x3f
	.4byte	.LASF852
	.4byte	0x3cf8
	.byte	0x1
	.4byte	0x515d
	.4byte	0x5169
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.byte	0x40
	.4byte	.LASF853
	.4byte	0x507e
	.byte	0x1
	.4byte	0x5182
	.4byte	0x5189
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.byte	0x41
	.4byte	.LASF854
	.4byte	0x507e
	.byte	0x1
	.4byte	0x51a2
	.4byte	0x51ae
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.byte	0x42
	.4byte	.LASF855
	.4byte	0x21ce
	.byte	0x1
	.4byte	0x51c7
	.4byte	0x51d3
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3cf2
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.byte	0x43
	.4byte	.LASF856
	.4byte	0x507e
	.byte	0x1
	.4byte	0x51ec
	.4byte	0x51f8
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.byte	0x44
	.4byte	.LASF857
	.4byte	0x507e
	.byte	0x1
	.4byte	0x5211
	.4byte	0x521d
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.byte	0x45
	.4byte	.LASF858
	.4byte	0x507e
	.byte	0x1
	.4byte	0x5236
	.4byte	0x5242
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.byte	0x46
	.4byte	.LASF859
	.4byte	0x55da
	.byte	0x1
	.4byte	0x525b
	.4byte	0x5267
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.byte	0x47
	.4byte	.LASF860
	.4byte	0x55da
	.byte	0x1
	.4byte	0x5280
	.4byte	0x528c
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.byte	0x48
	.4byte	.LASF861
	.4byte	0x55da
	.byte	0x1
	.4byte	0x52a5
	.4byte	0x52b1
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.byte	0x49
	.4byte	.LASF862
	.4byte	0x55da
	.byte	0x1
	.4byte	0x52ca
	.4byte	0x52d6
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.byte	0x4f
	.4byte	.LASF863
	.4byte	0x158e
	.byte	0x1
	.4byte	0x52ef
	.4byte	0x52fb
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.byte	0x50
	.4byte	.LASF864
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5314
	.4byte	0x5325
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.byte	0x51
	.4byte	.LASF865
	.4byte	0x158e
	.byte	0x1
	.4byte	0x533e
	.4byte	0x534a
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.byte	0x52
	.4byte	.LASF866
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5363
	.4byte	0x536f
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x55cf
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.byte	0x54
	.4byte	.LASF867
	.byte	0x1
	.4byte	0x5384
	.4byte	0x538b
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.byte	0x55
	.4byte	.LASF868
	.byte	0x1
	.4byte	0x53a0
	.4byte	0x53a7
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.byte	0x56
	.4byte	.LASF869
	.4byte	0x158e
	.byte	0x1
	.4byte	0x53c0
	.4byte	0x53cc
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.byte	0x57
	.4byte	.LASF870
	.4byte	0x158e
	.byte	0x1
	.4byte	0x53e5
	.4byte	0x53f1
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.byte	0x58
	.4byte	.LASF871
	.4byte	0x158e
	.byte	0x1
	.4byte	0x540a
	.4byte	0x5416
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.byte	0x5a
	.4byte	.LASF872
	.4byte	0x109
	.byte	0x1
	.4byte	0x542f
	.4byte	0x5436
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.byte	0x5b
	.4byte	.LASF873
	.4byte	0x109
	.byte	0x1
	.4byte	0x544f
	.4byte	0x5456
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.byte	0x5c
	.4byte	.LASF874
	.4byte	0x507e
	.byte	0x1
	.4byte	0x546f
	.4byte	0x5476
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.byte	0x5d
	.4byte	.LASF875
	.4byte	0x55da
	.byte	0x1
	.4byte	0x548f
	.4byte	0x5496
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.byte	0x5e
	.4byte	.LASF876
	.4byte	0x507e
	.byte	0x1
	.4byte	0x54af
	.4byte	0x54b6
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.byte	0x5f
	.4byte	.LASF877
	.4byte	0x158e
	.byte	0x1
	.4byte	0x54cf
	.4byte	0x54d6
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.byte	0x60
	.4byte	.LASF878
	.4byte	0x507e
	.byte	0x1
	.4byte	0x54ef
	.4byte	0x54f6
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.byte	0x61
	.4byte	.LASF879
	.4byte	0x158e
	.byte	0x1
	.4byte	0x550f
	.4byte	0x5516
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.byte	0x63
	.4byte	.LASF880
	.4byte	0xac
	.byte	0x1
	.4byte	0x552f
	.4byte	0x5536
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.byte	0x65
	.4byte	.LASF881
	.4byte	0x209d
	.byte	0x1
	.4byte	0x554f
	.4byte	0x5556
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.byte	0x66
	.4byte	.LASF882
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x556f
	.4byte	0x5576
	.uleb128 0x17
	.4byte	0x55a8
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.byte	0x67
	.4byte	.LASF883
	.4byte	0xe5
	.byte	0x1
	.4byte	0x558b
	.uleb128 0x17
	.4byte	0x55c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x21ce
	.4byte	0x55a8
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x507e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x55b4
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x55c4
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x55ca
	.uleb128 0xc
	.4byte	0x507e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x55d5
	.uleb128 0xc
	.4byte	0x507e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x507e
	.uleb128 0x9
	.4byte	0x26d6
	.4byte	0x55f0
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3508
	.uleb128 0xb
	.byte	0x4
	.4byte	0x55fc
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x560c
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5612
	.uleb128 0xc
	.4byte	0x3508
	.uleb128 0x22
	.byte	0x4
	.4byte	0x561d
	.uleb128 0xc
	.4byte	0x3508
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3508
	.uleb128 0x4
	.4byte	.LASF884
	.byte	0x10
	.byte	0x15
	.byte	0x30
	.4byte	0x5b3e
	.uleb128 0x5
	.string	"x"
	.byte	0x15
	.byte	0x32
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x15
	.byte	0x33
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"z"
	.byte	0x15
	.byte	0x34
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"w"
	.byte	0x15
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF884
	.byte	0x15
	.byte	0x37
	.byte	0x1
	.4byte	0x5675
	.4byte	0x567c
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF884
	.byte	0x15
	.byte	0x38
	.byte	0x1
	.4byte	0x568d
	.4byte	0x56a8
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Set"
	.byte	0x15
	.byte	0x3a
	.4byte	.LASF885
	.byte	0x1
	.4byte	0x56bd
	.4byte	0x56d8
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x15
	.byte	0x3c
	.4byte	.LASF886
	.4byte	0x109
	.byte	0x1
	.4byte	0x56f1
	.4byte	0x56fd
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x15
	.byte	0x3d
	.4byte	.LASF887
	.4byte	0x2091
	.byte	0x1
	.4byte	0x5716
	.4byte	0x5722
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x15
	.byte	0x3e
	.4byte	.LASF888
	.4byte	0x5628
	.byte	0x1
	.4byte	0x573b
	.4byte	0x5742
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x15
	.byte	0x3f
	.4byte	.LASF889
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x575b
	.4byte	0x5767
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x15
	.byte	0x40
	.4byte	.LASF890
	.4byte	0x5628
	.byte	0x1
	.4byte	0x5780
	.4byte	0x578c
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x15
	.byte	0x41
	.4byte	.LASF891
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x57a5
	.4byte	0x57b1
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x15
	.byte	0x42
	.4byte	.LASF892
	.4byte	0x5628
	.byte	0x1
	.4byte	0x57ca
	.4byte	0x57d6
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x15
	.byte	0x43
	.4byte	.LASF893
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x57ef
	.4byte	0x57fb
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x15
	.byte	0x44
	.4byte	.LASF894
	.4byte	0x5628
	.byte	0x1
	.4byte	0x5814
	.4byte	0x5820
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x15
	.byte	0x45
	.4byte	.LASF895
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x5839
	.4byte	0x5845
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x15
	.byte	0x46
	.4byte	.LASF896
	.4byte	0x5628
	.byte	0x1
	.4byte	0x585e
	.4byte	0x586a
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x15
	.byte	0x47
	.4byte	.LASF897
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x5883
	.4byte	0x588f
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x15
	.byte	0x48
	.4byte	.LASF898
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x58a8
	.4byte	0x58b4
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x15
	.byte	0x4d
	.4byte	.LASF899
	.4byte	0x158e
	.byte	0x1
	.4byte	0x58cd
	.4byte	0x58d9
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x15
	.byte	0x4e
	.4byte	.LASF900
	.4byte	0x158e
	.byte	0x1
	.4byte	0x58f2
	.4byte	0x5903
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x15
	.byte	0x4f
	.4byte	.LASF901
	.4byte	0x158e
	.byte	0x1
	.4byte	0x591c
	.4byte	0x5928
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x15
	.byte	0x50
	.4byte	.LASF902
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5941
	.4byte	0x594d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF688
	.byte	0x15
	.byte	0x52
	.4byte	.LASF903
	.4byte	0x5628
	.byte	0x1
	.4byte	0x5966
	.4byte	0x596d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF495
	.byte	0x15
	.byte	0x53
	.4byte	.LASF904
	.4byte	0x109
	.byte	0x1
	.4byte	0x5986
	.4byte	0x598d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF501
	.byte	0x15
	.byte	0x54
	.4byte	.LASF905
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x59a6
	.4byte	0x59ad
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF906
	.byte	0x15
	.byte	0x56
	.4byte	.LASF907
	.4byte	0x109
	.byte	0x1
	.4byte	0x59c6
	.4byte	0x59cd
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x15
	.byte	0x57
	.4byte	.LASF908
	.4byte	0xac
	.byte	0x1
	.4byte	0x59e6
	.4byte	0x59ed
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF563
	.byte	0x15
	.byte	0x59
	.4byte	.LASF909
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x5a06
	.4byte	0x5a0d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF620
	.byte	0x15
	.byte	0x5a
	.4byte	.LASF910
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x5a26
	.4byte	0x5a2d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF567
	.byte	0x15
	.byte	0x5b
	.4byte	.LASF911
	.4byte	0x3508
	.byte	0x1
	.4byte	0x5a46
	.4byte	0x5a4d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF623
	.byte	0x15
	.byte	0x5c
	.4byte	.LASF912
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x5a66
	.4byte	0x5a6d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF709
	.byte	0x15
	.byte	0x5d
	.4byte	.LASF913
	.4byte	0x5b3e
	.byte	0x1
	.4byte	0x5a86
	.4byte	0x5a8d
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF625
	.byte	0x15
	.byte	0x5e
	.4byte	.LASF914
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x5aa6
	.4byte	0x5aad
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x15
	.byte	0x5f
	.4byte	.LASF915
	.4byte	0x209d
	.byte	0x1
	.4byte	0x5ac6
	.4byte	0x5acd
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x15
	.byte	0x60
	.4byte	.LASF916
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x5ae6
	.4byte	0x5aed
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF518
	.byte	0x15
	.byte	0x61
	.4byte	.LASF917
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5b06
	.4byte	0x5b12
	.uleb128 0x17
	.4byte	0x8d69
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF918
	.byte	0x15
	.byte	0x63
	.4byte	.LASF919
	.4byte	0x8d74
	.byte	0x1
	.4byte	0x5b27
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7a
	.uleb128 0x19
	.4byte	0x8d7a
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF920
	.byte	0xc
	.byte	0x15
	.2byte	0x132
	.4byte	0x5df3
	.uleb128 0x13
	.string	"x"
	.byte	0x15
	.2byte	0x134
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x15
	.2byte	0x135
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x15
	.2byte	0x136
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF920
	.byte	0x15
	.2byte	0x138
	.byte	0x1
	.4byte	0x5b84
	.4byte	0x5b8b
	.uleb128 0x17
	.4byte	0x8d85
	.byte	0x1
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF920
	.byte	0x15
	.2byte	0x139
	.byte	0x1
	.4byte	0x5b9d
	.4byte	0x5bb3
	.uleb128 0x17
	.4byte	0x8d85
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x15
	.2byte	0x13b
	.4byte	.LASF921
	.byte	0x1
	.4byte	0x5bc9
	.4byte	0x5bdf
	.uleb128 0x17
	.4byte	0x8d85
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x15
	.2byte	0x13d
	.4byte	.LASF922
	.4byte	0x109
	.byte	0x1
	.4byte	0x5bf9
	.4byte	0x5c05
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x15
	.2byte	0x13e
	.4byte	.LASF923
	.4byte	0x2091
	.byte	0x1
	.4byte	0x5c1f
	.4byte	0x5c2b
	.uleb128 0x17
	.4byte	0x8d85
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x15
	.2byte	0x140
	.4byte	.LASF924
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5c45
	.4byte	0x5c51
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d96
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x15
	.2byte	0x141
	.4byte	.LASF925
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5c6b
	.4byte	0x5c7c
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d96
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x15
	.2byte	0x142
	.4byte	.LASF926
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5c96
	.4byte	0x5ca2
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d96
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x15
	.2byte	0x143
	.4byte	.LASF927
	.4byte	0x158e
	.byte	0x1
	.4byte	0x5cbc
	.4byte	0x5cc8
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d96
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x15
	.2byte	0x145
	.4byte	.LASF928
	.4byte	0xac
	.byte	0x1
	.4byte	0x5ce2
	.4byte	0x5ce9
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF563
	.byte	0x15
	.2byte	0x147
	.4byte	.LASF929
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x5d03
	.4byte	0x5d0a
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF620
	.byte	0x15
	.2byte	0x148
	.4byte	.LASF930
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x5d24
	.4byte	0x5d2b
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF567
	.byte	0x15
	.2byte	0x149
	.4byte	.LASF931
	.4byte	0x3508
	.byte	0x1
	.4byte	0x5d45
	.4byte	0x5d4c
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF623
	.byte	0x15
	.2byte	0x14a
	.4byte	.LASF932
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x5d66
	.4byte	0x5d6d
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF618
	.byte	0x15
	.2byte	0x14b
	.4byte	.LASF933
	.4byte	0x5628
	.byte	0x1
	.4byte	0x5d87
	.4byte	0x5d8e
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x15
	.2byte	0x14c
	.4byte	.LASF934
	.4byte	0x209d
	.byte	0x1
	.4byte	0x5da8
	.4byte	0x5daf
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x15
	.2byte	0x14d
	.4byte	.LASF935
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x5dc9
	.4byte	0x5dd0
	.uleb128 0x17
	.4byte	0x8d85
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x15
	.2byte	0x14e
	.4byte	.LASF936
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5de6
	.uleb128 0x17
	.4byte	0x8d8b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF937
	.byte	0x44
	.byte	0x16
	.byte	0x2e
	.4byte	0x61ae
	.uleb128 0x26
	.4byte	.LASF938
	.byte	0x16
	.byte	0x5a
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.string	"vec"
	.byte	0x16
	.byte	0x5b
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF939
	.byte	0x16
	.byte	0x5c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF940
	.byte	0x16
	.byte	0x5d
	.4byte	0x3508
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF941
	.byte	0x16
	.byte	0x5e
	.4byte	0x158e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF937
	.byte	0x16
	.byte	0x35
	.byte	0x1
	.4byte	0x5e5b
	.4byte	0x5e62
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF937
	.byte	0x16
	.byte	0x36
	.byte	0x1
	.4byte	0x5e73
	.4byte	0x5e89
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Set"
	.byte	0x16
	.byte	0x38
	.4byte	.LASF942
	.byte	0x1
	.4byte	0x5e9e
	.4byte	0x5eb4
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF943
	.byte	0x16
	.byte	0x39
	.4byte	.LASF944
	.byte	0x1
	.4byte	0x5ec9
	.4byte	0x5ed5
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF945
	.byte	0x16
	.byte	0x3a
	.4byte	.LASF946
	.byte	0x1
	.4byte	0x5eea
	.4byte	0x5ef6
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF945
	.byte	0x16
	.byte	0x3b
	.4byte	.LASF947
	.byte	0x1
	.4byte	0x5f0b
	.4byte	0x5f21
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF948
	.byte	0x16
	.byte	0x3c
	.4byte	.LASF949
	.byte	0x1
	.4byte	0x5f36
	.4byte	0x5f42
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF950
	.byte	0x16
	.byte	0x3d
	.4byte	.LASF951
	.byte	0x1
	.4byte	0x5f57
	.4byte	0x5f63
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF952
	.byte	0x16
	.byte	0x3e
	.4byte	.LASF953
	.byte	0x1
	.4byte	0x5f78
	.4byte	0x5f7f
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF954
	.byte	0x16
	.byte	0x3f
	.4byte	.LASF955
	.4byte	0x4236
	.byte	0x1
	.4byte	0x5f98
	.4byte	0x5f9f
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF956
	.byte	0x16
	.byte	0x40
	.4byte	.LASF957
	.4byte	0x4236
	.byte	0x1
	.4byte	0x5fb8
	.4byte	0x5fbf
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF958
	.byte	0x16
	.byte	0x41
	.4byte	.LASF959
	.4byte	0x109
	.byte	0x1
	.4byte	0x5fd8
	.4byte	0x5fdf
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x16
	.byte	0x43
	.4byte	.LASF960
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x5ff8
	.4byte	0x5fff
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x16
	.byte	0x44
	.4byte	.LASF961
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x6018
	.4byte	0x6024
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF474
	.byte	0x16
	.byte	0x45
	.4byte	.LASF962
	.4byte	0x5df3
	.byte	0x1
	.4byte	0x603d
	.4byte	0x6049
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x16
	.byte	0x46
	.4byte	.LASF963
	.4byte	0x8db2
	.byte	0x1
	.4byte	0x6062
	.4byte	0x606e
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.byte	0x47
	.4byte	.LASF964
	.4byte	0x8db2
	.byte	0x1
	.4byte	0x6087
	.4byte	0x6093
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x16
	.byte	0x48
	.4byte	.LASF965
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x60ac
	.4byte	0x60b8
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF563
	.byte	0x16
	.byte	0x4e
	.4byte	.LASF966
	.4byte	0x2eae
	.byte	0x1
	.4byte	0x60d1
	.4byte	0x60d8
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF618
	.byte	0x16
	.byte	0x4f
	.4byte	.LASF967
	.4byte	0x5628
	.byte	0x1
	.4byte	0x60f1
	.4byte	0x60f8
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF567
	.byte	0x16
	.byte	0x50
	.4byte	.LASF968
	.4byte	0x680f
	.byte	0x1
	.4byte	0x6111
	.4byte	0x6118
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF623
	.byte	0x16
	.byte	0x51
	.4byte	.LASF969
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x6131
	.4byte	0x6138
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF625
	.byte	0x16
	.byte	0x52
	.4byte	.LASF970
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x6151
	.4byte	0x6158
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF971
	.byte	0x16
	.byte	0x54
	.4byte	.LASF972
	.byte	0x1
	.4byte	0x616d
	.4byte	0x6179
	.uleb128 0x17
	.4byte	0x8da7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x423c
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF610
	.byte	0x16
	.byte	0x56
	.4byte	.LASF973
	.byte	0x1
	.4byte	0x618e
	.4byte	0x6195
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF608
	.byte	0x16
	.byte	0x57
	.4byte	.LASF974
	.byte	0x1
	.4byte	0x61a6
	.uleb128 0x17
	.4byte	0x8da1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF975
	.byte	0x40
	.byte	0x14
	.2byte	0x2fc
	.4byte	0x67f3
	.uleb128 0x44
	.string	"mat"
	.byte	0x14
	.2byte	0x33a
	.4byte	0x67f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF975
	.byte	0x14
	.2byte	0x2fe
	.byte	0x1
	.4byte	0x61dd
	.4byte	0x61e4
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF975
	.byte	0x14
	.2byte	0x2ff
	.byte	0x1
	.byte	0x1
	.4byte	0x61f7
	.4byte	0x6212
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF975
	.byte	0x14
	.2byte	0x300
	.byte	0x1
	.byte	0x1
	.4byte	0x6225
	.4byte	0x627c
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF975
	.byte	0x14
	.2byte	0x304
	.byte	0x1
	.byte	0x1
	.4byte	0x628f
	.4byte	0x62a0
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF975
	.byte	0x14
	.2byte	0x305
	.byte	0x1
	.byte	0x1
	.4byte	0x62b3
	.4byte	0x62bf
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6815
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x307
	.4byte	.LASF976
	.4byte	0x6809
	.byte	0x1
	.4byte	0x62d9
	.4byte	0x62e5
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x308
	.4byte	.LASF977
	.4byte	0x6836
	.byte	0x1
	.4byte	0x62ff
	.4byte	0x630b
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x309
	.4byte	.LASF978
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x6325
	.4byte	0x6331
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x30a
	.4byte	.LASF979
	.4byte	0x3cfe
	.byte	0x1
	.4byte	0x634b
	.4byte	0x6357
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x30b
	.4byte	.LASF980
	.4byte	0x26d6
	.byte	0x1
	.4byte	0x6371
	.4byte	0x637d
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x30c
	.4byte	.LASF981
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x6397
	.4byte	0x63a3
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.2byte	0x30d
	.4byte	.LASF982
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x63bd
	.4byte	0x63c9
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x30e
	.4byte	.LASF983
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x63e3
	.4byte	0x63ef
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x30f
	.4byte	.LASF984
	.4byte	0x6847
	.byte	0x1
	.4byte	0x6409
	.4byte	0x6415
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x310
	.4byte	.LASF985
	.4byte	0x6847
	.byte	0x1
	.4byte	0x642f
	.4byte	0x643b
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.2byte	0x311
	.4byte	.LASF986
	.4byte	0x6847
	.byte	0x1
	.4byte	0x6455
	.4byte	0x6461
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.2byte	0x312
	.4byte	.LASF987
	.4byte	0x6847
	.byte	0x1
	.4byte	0x647b
	.4byte	0x6487
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x31a
	.4byte	.LASF988
	.4byte	0x158e
	.byte	0x1
	.4byte	0x64a1
	.4byte	0x64ad
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x31b
	.4byte	.LASF989
	.4byte	0x158e
	.byte	0x1
	.4byte	0x64c7
	.4byte	0x64d8
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.2byte	0x31c
	.4byte	.LASF990
	.4byte	0x158e
	.byte	0x1
	.4byte	0x64f2
	.4byte	0x64fe
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.2byte	0x31d
	.4byte	.LASF991
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6518
	.4byte	0x6524
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x31f
	.4byte	.LASF992
	.byte	0x1
	.4byte	0x653a
	.4byte	0x6541
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x320
	.4byte	.LASF993
	.byte	0x1
	.4byte	0x6557
	.4byte	0x655e
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.2byte	0x321
	.4byte	.LASF994
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6578
	.4byte	0x6584
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.2byte	0x322
	.4byte	.LASF995
	.4byte	0x158e
	.byte	0x1
	.4byte	0x659e
	.4byte	0x65aa
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.2byte	0x323
	.4byte	.LASF996
	.4byte	0x158e
	.byte	0x1
	.4byte	0x65c4
	.4byte	0x65d0
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF667
	.byte	0x14
	.2byte	0x324
	.4byte	.LASF997
	.4byte	0x158e
	.byte	0x1
	.4byte	0x65ea
	.4byte	0x65f1
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF669
	.byte	0x14
	.2byte	0x326
	.4byte	.LASF998
	.byte	0x1
	.4byte	0x6607
	.4byte	0x6618
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0x6836
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF671
	.byte	0x14
	.2byte	0x327
	.4byte	.LASF999
	.byte	0x1
	.4byte	0x662e
	.4byte	0x663f
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0x6836
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.2byte	0x329
	.4byte	.LASF1000
	.4byte	0x109
	.byte	0x1
	.4byte	0x6659
	.4byte	0x6660
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.2byte	0x32a
	.4byte	.LASF1001
	.4byte	0x109
	.byte	0x1
	.4byte	0x667a
	.4byte	0x6681
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.2byte	0x32b
	.4byte	.LASF1002
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x669b
	.4byte	0x66a2
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.2byte	0x32c
	.4byte	.LASF1003
	.4byte	0x6847
	.byte	0x1
	.4byte	0x66bc
	.4byte	0x66c3
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.2byte	0x32d
	.4byte	.LASF1004
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x66dd
	.4byte	0x66e4
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.2byte	0x32e
	.4byte	.LASF1005
	.4byte	0x158e
	.byte	0x1
	.4byte	0x66fe
	.4byte	0x6705
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.2byte	0x32f
	.4byte	.LASF1006
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x671f
	.4byte	0x6726
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.2byte	0x330
	.4byte	.LASF1007
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6740
	.4byte	0x6747
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x331
	.4byte	.LASF1008
	.4byte	0x61ae
	.byte	0x1
	.4byte	0x6761
	.4byte	0x676d
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x683c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.2byte	0x333
	.4byte	.LASF1009
	.4byte	0xac
	.byte	0x1
	.4byte	0x6787
	.4byte	0x678e
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x335
	.4byte	.LASF1010
	.4byte	0x209d
	.byte	0x1
	.4byte	0x67a8
	.4byte	0x67af
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x336
	.4byte	.LASF1011
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x67c9
	.4byte	0x67d0
	.uleb128 0x17
	.4byte	0x6803
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x337
	.4byte	.LASF1012
	.4byte	0xe5
	.byte	0x1
	.4byte	0x67e6
	.uleb128 0x17
	.4byte	0x682b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3cfe
	.4byte	0x6803
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x61ae
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4220
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5612
	.uleb128 0xb
	.byte	0x4
	.4byte	0x681b
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x682b
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6831
	.uleb128 0xc
	.4byte	0x61ae
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3cfe
	.uleb128 0x22
	.byte	0x4
	.4byte	0x6842
	.uleb128 0xc
	.4byte	0x61ae
	.uleb128 0x22
	.byte	0x4
	.4byte	0x61ae
	.uleb128 0x3b
	.4byte	.LASF1013
	.byte	0x64
	.byte	0x14
	.2byte	0x480
	.4byte	0x6d4e
	.uleb128 0x44
	.string	"mat"
	.byte	0x14
	.2byte	0x4b1
	.4byte	0x6d4e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF1013
	.byte	0x14
	.2byte	0x482
	.byte	0x1
	.4byte	0x687c
	.4byte	0x6883
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1013
	.byte	0x14
	.2byte	0x483
	.byte	0x1
	.byte	0x1
	.4byte	0x6896
	.4byte	0x68b6
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d64
	.uleb128 0x19
	.4byte	0x6d64
	.uleb128 0x19
	.4byte	0x6d64
	.uleb128 0x19
	.4byte	0x6d64
	.uleb128 0x19
	.4byte	0x6d64
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1013
	.byte	0x14
	.2byte	0x484
	.byte	0x1
	.byte	0x1
	.4byte	0x68c9
	.4byte	0x68d5
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d6a
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x486
	.4byte	.LASF1014
	.4byte	0x6d64
	.byte	0x1
	.4byte	0x68ef
	.4byte	0x68fb
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x487
	.4byte	.LASF1015
	.4byte	0x6d8b
	.byte	0x1
	.4byte	0x6915
	.4byte	0x6921
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x488
	.4byte	.LASF1016
	.4byte	0x684d
	.byte	0x1
	.4byte	0x693b
	.4byte	0x6947
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x489
	.4byte	.LASF1017
	.4byte	0x4242
	.byte	0x1
	.4byte	0x6961
	.4byte	0x696d
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d64
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x48a
	.4byte	.LASF1018
	.4byte	0x684d
	.byte	0x1
	.4byte	0x6987
	.4byte	0x6993
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.2byte	0x48b
	.4byte	.LASF1019
	.4byte	0x684d
	.byte	0x1
	.4byte	0x69ad
	.4byte	0x69b9
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x48c
	.4byte	.LASF1020
	.4byte	0x684d
	.byte	0x1
	.4byte	0x69d3
	.4byte	0x69df
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x48d
	.4byte	.LASF1021
	.4byte	0x6d9c
	.byte	0x1
	.4byte	0x69f9
	.4byte	0x6a05
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x48e
	.4byte	.LASF1022
	.4byte	0x6d9c
	.byte	0x1
	.4byte	0x6a1f
	.4byte	0x6a2b
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.2byte	0x48f
	.4byte	.LASF1023
	.4byte	0x6d9c
	.byte	0x1
	.4byte	0x6a45
	.4byte	0x6a51
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.2byte	0x490
	.4byte	.LASF1024
	.4byte	0x6d9c
	.byte	0x1
	.4byte	0x6a6b
	.4byte	0x6a77
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x496
	.4byte	.LASF1025
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6a91
	.4byte	0x6a9d
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x497
	.4byte	.LASF1026
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6ab7
	.4byte	0x6ac8
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.2byte	0x498
	.4byte	.LASF1027
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6ae2
	.4byte	0x6aee
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.2byte	0x499
	.4byte	.LASF1028
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6b08
	.4byte	0x6b14
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d91
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x49b
	.4byte	.LASF1029
	.byte	0x1
	.4byte	0x6b2a
	.4byte	0x6b31
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x49c
	.4byte	.LASF1030
	.byte	0x1
	.4byte	0x6b47
	.4byte	0x6b4e
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.2byte	0x49d
	.4byte	.LASF1031
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6b68
	.4byte	0x6b74
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.2byte	0x49e
	.4byte	.LASF1032
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6b8e
	.4byte	0x6b9a
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.2byte	0x49f
	.4byte	.LASF1033
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6bb4
	.4byte	0x6bc0
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.2byte	0x4a1
	.4byte	.LASF1034
	.4byte	0x109
	.byte	0x1
	.4byte	0x6bda
	.4byte	0x6be1
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.2byte	0x4a2
	.4byte	.LASF1035
	.4byte	0x109
	.byte	0x1
	.4byte	0x6bfb
	.4byte	0x6c02
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.2byte	0x4a3
	.4byte	.LASF1036
	.4byte	0x684d
	.byte	0x1
	.4byte	0x6c1c
	.4byte	0x6c23
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.2byte	0x4a4
	.4byte	.LASF1037
	.4byte	0x6d9c
	.byte	0x1
	.4byte	0x6c3d
	.4byte	0x6c44
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.2byte	0x4a5
	.4byte	.LASF1038
	.4byte	0x684d
	.byte	0x1
	.4byte	0x6c5e
	.4byte	0x6c65
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.2byte	0x4a6
	.4byte	.LASF1039
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6c7f
	.4byte	0x6c86
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.2byte	0x4a7
	.4byte	.LASF1040
	.4byte	0x684d
	.byte	0x1
	.4byte	0x6ca0
	.4byte	0x6ca7
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.2byte	0x4a8
	.4byte	.LASF1041
	.4byte	0x158e
	.byte	0x1
	.4byte	0x6cc1
	.4byte	0x6cc8
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.2byte	0x4aa
	.4byte	.LASF1042
	.4byte	0xac
	.byte	0x1
	.4byte	0x6ce2
	.4byte	0x6ce9
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x4ac
	.4byte	.LASF1043
	.4byte	0x209d
	.byte	0x1
	.4byte	0x6d03
	.4byte	0x6d0a
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x4ad
	.4byte	.LASF1044
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x6d24
	.4byte	0x6d2b
	.uleb128 0x17
	.4byte	0x6d5e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x4ae
	.4byte	.LASF1045
	.4byte	0xe5
	.byte	0x1
	.4byte	0x6d41
	.uleb128 0x17
	.4byte	0x6d80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4242
	.4byte	0x6d5e
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x684d
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4472
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6d70
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x6d80
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6d86
	.uleb128 0xc
	.4byte	0x684d
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4242
	.uleb128 0x22
	.byte	0x4
	.4byte	0x6d97
	.uleb128 0xc
	.4byte	0x684d
	.uleb128 0x22
	.byte	0x4
	.4byte	0x684d
	.uleb128 0x3b
	.4byte	.LASF1046
	.byte	0x90
	.byte	0x14
	.2byte	0x5a9
	.4byte	0x72fc
	.uleb128 0x44
	.string	"mat"
	.byte	0x14
	.2byte	0x5dc
	.4byte	0x72fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF1046
	.byte	0x14
	.2byte	0x5ab
	.byte	0x1
	.4byte	0x6dd1
	.4byte	0x6dd8
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1046
	.byte	0x14
	.2byte	0x5ac
	.byte	0x1
	.byte	0x1
	.4byte	0x6deb
	.4byte	0x6e10
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5050
	.uleb128 0x19
	.4byte	0x5050
	.uleb128 0x19
	.4byte	0x5050
	.uleb128 0x19
	.4byte	0x5050
	.uleb128 0x19
	.4byte	0x5050
	.uleb128 0x19
	.4byte	0x5050
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1046
	.byte	0x14
	.2byte	0x5ad
	.byte	0x1
	.byte	0x1
	.4byte	0x6e23
	.4byte	0x6e3e
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1046
	.byte	0x14
	.2byte	0x5ae
	.byte	0x1
	.byte	0x1
	.4byte	0x6e51
	.4byte	0x6e5d
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7312
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x5b0
	.4byte	.LASF1047
	.4byte	0x5050
	.byte	0x1
	.4byte	0x6e77
	.4byte	0x6e83
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x5b1
	.4byte	.LASF1048
	.4byte	0x5056
	.byte	0x1
	.4byte	0x6e9d
	.4byte	0x6ea9
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x5b2
	.4byte	.LASF1049
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x6ec3
	.4byte	0x6ecf
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x5b3
	.4byte	.LASF1050
	.4byte	0x4488
	.byte	0x1
	.4byte	0x6ee9
	.4byte	0x6ef5
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5050
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x5b4
	.4byte	.LASF1051
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x6f0f
	.4byte	0x6f1b
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.2byte	0x5b5
	.4byte	.LASF1052
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x6f35
	.4byte	0x6f41
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x5b6
	.4byte	.LASF1053
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x6f5b
	.4byte	0x6f67
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x5b7
	.4byte	.LASF1054
	.4byte	0x732e
	.byte	0x1
	.4byte	0x6f81
	.4byte	0x6f8d
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x5b8
	.4byte	.LASF1055
	.4byte	0x732e
	.byte	0x1
	.4byte	0x6fa7
	.4byte	0x6fb3
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.2byte	0x5b9
	.4byte	.LASF1056
	.4byte	0x732e
	.byte	0x1
	.4byte	0x6fcd
	.4byte	0x6fd9
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.2byte	0x5ba
	.4byte	.LASF1057
	.4byte	0x732e
	.byte	0x1
	.4byte	0x6ff3
	.4byte	0x6fff
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x5c0
	.4byte	.LASF1058
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7019
	.4byte	0x7025
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x5c1
	.4byte	.LASF1059
	.4byte	0x158e
	.byte	0x1
	.4byte	0x703f
	.4byte	0x7050
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.2byte	0x5c2
	.4byte	.LASF1060
	.4byte	0x158e
	.byte	0x1
	.4byte	0x706a
	.4byte	0x7076
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.2byte	0x5c3
	.4byte	.LASF1061
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7090
	.4byte	0x709c
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7323
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x5c5
	.4byte	.LASF1062
	.byte	0x1
	.4byte	0x70b2
	.4byte	0x70b9
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x5c6
	.4byte	.LASF1063
	.byte	0x1
	.4byte	0x70cf
	.4byte	0x70d6
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.2byte	0x5c7
	.4byte	.LASF1064
	.4byte	0x158e
	.byte	0x1
	.4byte	0x70f0
	.4byte	0x70fc
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.2byte	0x5c8
	.4byte	.LASF1065
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7116
	.4byte	0x7122
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.2byte	0x5c9
	.4byte	.LASF1066
	.4byte	0x158e
	.byte	0x1
	.4byte	0x713c
	.4byte	0x7148
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1067
	.byte	0x14
	.2byte	0x5cb
	.4byte	.LASF1068
	.4byte	0x3508
	.byte	0x1
	.4byte	0x7162
	.4byte	0x716e
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.2byte	0x5cc
	.4byte	.LASF1069
	.4byte	0x109
	.byte	0x1
	.4byte	0x7188
	.4byte	0x718f
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.2byte	0x5cd
	.4byte	.LASF1070
	.4byte	0x109
	.byte	0x1
	.4byte	0x71a9
	.4byte	0x71b0
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.2byte	0x5ce
	.4byte	.LASF1071
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x71ca
	.4byte	0x71d1
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.2byte	0x5cf
	.4byte	.LASF1072
	.4byte	0x732e
	.byte	0x1
	.4byte	0x71eb
	.4byte	0x71f2
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.2byte	0x5d0
	.4byte	.LASF1073
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x720c
	.4byte	0x7213
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.2byte	0x5d1
	.4byte	.LASF1074
	.4byte	0x158e
	.byte	0x1
	.4byte	0x722d
	.4byte	0x7234
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.2byte	0x5d2
	.4byte	.LASF1075
	.4byte	0x6da2
	.byte	0x1
	.4byte	0x724e
	.4byte	0x7255
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.2byte	0x5d3
	.4byte	.LASF1076
	.4byte	0x158e
	.byte	0x1
	.4byte	0x726f
	.4byte	0x7276
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.2byte	0x5d5
	.4byte	.LASF1077
	.4byte	0xac
	.byte	0x1
	.4byte	0x7290
	.4byte	0x7297
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x5d7
	.4byte	.LASF1078
	.4byte	0x209d
	.byte	0x1
	.4byte	0x72b1
	.4byte	0x72b8
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x5d8
	.4byte	.LASF1079
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x72d2
	.4byte	0x72d9
	.uleb128 0x17
	.4byte	0x730c
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x5d9
	.4byte	.LASF1080
	.4byte	0xe5
	.byte	0x1
	.4byte	0x72ef
	.uleb128 0x17
	.4byte	0x7318
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4488
	.4byte	0x730c
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6da2
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4921
	.uleb128 0xb
	.byte	0x4
	.4byte	0x731e
	.uleb128 0xc
	.4byte	0x6da2
	.uleb128 0x22
	.byte	0x4
	.4byte	0x7329
	.uleb128 0xc
	.4byte	0x6da2
	.uleb128 0x22
	.byte	0x4
	.4byte	0x6da2
	.uleb128 0x3b
	.4byte	.LASF1081
	.byte	0x10
	.byte	0x14
	.2byte	0x6fa
	.4byte	0x8d07
	.uleb128 0x45
	.4byte	.LASF1082
	.byte	0x14
	.2byte	0x7b2
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF1083
	.byte	0x14
	.2byte	0x7b3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF794
	.byte	0x14
	.2byte	0x7b4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x44
	.string	"mat"
	.byte	0x14
	.2byte	0x7b5
	.4byte	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x46
	.4byte	.LASF795
	.byte	0x14
	.2byte	0x7b7
	.4byte	0x501d
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF796
	.byte	0x14
	.2byte	0x7b8
	.4byte	0x21c8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF797
	.byte	0x14
	.2byte	0x7b9
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF1081
	.byte	0x14
	.2byte	0x6fc
	.byte	0x1
	.4byte	0x73c0
	.4byte	0x73c7
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1081
	.byte	0x14
	.2byte	0x6fd
	.byte	0x1
	.byte	0x1
	.4byte	0x73da
	.4byte	0x73eb
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1081
	.byte	0x14
	.2byte	0x6fe
	.byte	0x1
	.byte	0x1
	.4byte	0x73fe
	.4byte	0x7414
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF1084
	.byte	0x14
	.2byte	0x6ff
	.byte	0x1
	.4byte	0x7426
	.4byte	0x7433
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x14
	.2byte	0x701
	.4byte	.LASF1085
	.byte	0x1
	.4byte	0x7449
	.4byte	0x745f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x209d
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x14
	.2byte	0x702
	.4byte	.LASF1086
	.byte	0x1
	.4byte	0x7475
	.4byte	0x7486
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"Set"
	.byte	0x14
	.2byte	0x703
	.4byte	.LASF1087
	.byte	0x1
	.4byte	0x749c
	.4byte	0x74b7
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x705
	.4byte	.LASF1088
	.4byte	0x209d
	.byte	0x1
	.4byte	0x74d1
	.4byte	0x74dd
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x14
	.2byte	0x706
	.4byte	.LASF1089
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x74f7
	.4byte	0x7503
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x14
	.2byte	0x707
	.4byte	.LASF1090
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x751d
	.4byte	0x7529
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x708
	.4byte	.LASF1091
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7543
	.4byte	0x754f
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x709
	.4byte	.LASF1092
	.4byte	0x4953
	.byte	0x1
	.4byte	0x7569
	.4byte	0x7575
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF471
	.byte	0x14
	.2byte	0x70a
	.4byte	.LASF1093
	.4byte	0x7334
	.byte	0x1
	.4byte	0x758f
	.4byte	0x759b
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF476
	.byte	0x14
	.2byte	0x70b
	.4byte	.LASF1094
	.4byte	0x7334
	.byte	0x1
	.4byte	0x75b5
	.4byte	0x75c1
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF469
	.byte	0x14
	.2byte	0x70c
	.4byte	.LASF1095
	.4byte	0x7334
	.byte	0x1
	.4byte	0x75db
	.4byte	0x75e7
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x70d
	.4byte	.LASF1096
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7601
	.4byte	0x760d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF486
	.byte	0x14
	.2byte	0x70e
	.4byte	.LASF1097
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7627
	.4byte	0x7633
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF479
	.byte	0x14
	.2byte	0x70f
	.4byte	.LASF1098
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x764d
	.4byte	0x7659
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF481
	.byte	0x14
	.2byte	0x710
	.4byte	.LASF1099
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7673
	.4byte	0x767f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x716
	.4byte	.LASF1100
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7699
	.4byte	0x76a5
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF488
	.byte	0x14
	.2byte	0x717
	.4byte	.LASF1101
	.4byte	0x158e
	.byte	0x1
	.4byte	0x76bf
	.4byte	0x76d0
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF491
	.byte	0x14
	.2byte	0x718
	.4byte	.LASF1102
	.4byte	0x158e
	.byte	0x1
	.4byte	0x76ea
	.4byte	0x76f6
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF493
	.byte	0x14
	.2byte	0x719
	.4byte	.LASF1103
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7710
	.4byte	0x771c
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF816
	.byte	0x14
	.2byte	0x71b
	.4byte	.LASF1104
	.byte	0x1
	.4byte	0x7732
	.4byte	0x7743
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF818
	.byte	0x14
	.2byte	0x71c
	.4byte	.LASF1105
	.byte	0x1
	.4byte	0x7759
	.4byte	0x776f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1106
	.byte	0x14
	.2byte	0x71d
	.4byte	.LASF1107
	.4byte	0xac
	.byte	0x1
	.4byte	0x7789
	.4byte	0x7790
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1108
	.byte	0x14
	.2byte	0x71e
	.4byte	.LASF1109
	.4byte	0xac
	.byte	0x1
	.4byte	0x77aa
	.4byte	0x77b1
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF822
	.byte	0x14
	.2byte	0x71f
	.4byte	.LASF1110
	.byte	0x1
	.4byte	0x77c7
	.4byte	0x77dd
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x720
	.4byte	.LASF1111
	.byte	0x1
	.4byte	0x77f3
	.4byte	0x77fa
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF464
	.byte	0x14
	.2byte	0x721
	.4byte	.LASF1112
	.byte	0x1
	.4byte	0x7810
	.4byte	0x7821
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x722
	.4byte	.LASF1113
	.byte	0x1
	.4byte	0x7837
	.4byte	0x783e
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF659
	.byte	0x14
	.2byte	0x723
	.4byte	.LASF1114
	.byte	0x1
	.4byte	0x7854
	.4byte	0x7865
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1115
	.byte	0x14
	.2byte	0x724
	.4byte	.LASF1116
	.byte	0x1
	.4byte	0x787b
	.4byte	0x7887
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF826
	.byte	0x14
	.2byte	0x725
	.4byte	.LASF1117
	.byte	0x1
	.4byte	0x789d
	.4byte	0x78b3
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF826
	.byte	0x14
	.2byte	0x726
	.4byte	.LASF1118
	.byte	0x1
	.4byte	0x78c9
	.4byte	0x78e9
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF829
	.byte	0x14
	.2byte	0x727
	.4byte	.LASF1119
	.byte	0x1
	.4byte	0x78ff
	.4byte	0x7906
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF507
	.byte	0x14
	.2byte	0x728
	.4byte	.LASF1120
	.byte	0x1
	.4byte	0x791c
	.4byte	0x792d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1121
	.byte	0x14
	.2byte	0x729
	.4byte	.LASF1122
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7947
	.4byte	0x7958
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1123
	.byte	0x14
	.2byte	0x72a
	.4byte	.LASF1124
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7972
	.4byte	0x7983
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1125
	.byte	0x14
	.2byte	0x72b
	.4byte	.LASF1126
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x799d
	.4byte	0x79ae
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1127
	.byte	0x14
	.2byte	0x72c
	.4byte	.LASF1128
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x79c8
	.4byte	0x79d4
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1129
	.byte	0x14
	.2byte	0x72d
	.4byte	.LASF1130
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x79ee
	.4byte	0x79fa
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1131
	.byte	0x14
	.2byte	0x72e
	.4byte	.LASF1132
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7a14
	.4byte	0x7a20
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1133
	.byte	0x14
	.2byte	0x72f
	.4byte	.LASF1134
	.byte	0x1
	.4byte	0x7a36
	.4byte	0x7a3d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1135
	.byte	0x14
	.2byte	0x730
	.4byte	.LASF1136
	.byte	0x1
	.4byte	0x7a53
	.4byte	0x7a5a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1137
	.byte	0x14
	.2byte	0x731
	.4byte	.LASF1138
	.byte	0x1
	.4byte	0x7a70
	.4byte	0x7a81
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1139
	.byte	0x14
	.2byte	0x732
	.4byte	.LASF1140
	.4byte	0x109
	.byte	0x1
	.4byte	0x7a9b
	.4byte	0x7aa7
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1141
	.byte	0x14
	.2byte	0x734
	.4byte	.LASF1142
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7ac1
	.4byte	0x7ac8
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1143
	.byte	0x14
	.2byte	0x735
	.4byte	.LASF1144
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7ae2
	.4byte	0x7aee
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF661
	.byte	0x14
	.2byte	0x736
	.4byte	.LASF1145
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7b08
	.4byte	0x7b14
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF665
	.byte	0x14
	.2byte	0x737
	.4byte	.LASF1146
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7b2e
	.4byte	0x7b3a
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1147
	.byte	0x14
	.2byte	0x738
	.4byte	.LASF1148
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7b54
	.4byte	0x7b60
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF663
	.byte	0x14
	.2byte	0x739
	.4byte	.LASF1149
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7b7a
	.4byte	0x7b86
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1150
	.byte	0x14
	.2byte	0x73a
	.4byte	.LASF1151
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7ba0
	.4byte	0x7bac
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1152
	.byte	0x14
	.2byte	0x73b
	.4byte	.LASF1153
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7bc6
	.4byte	0x7bd2
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1154
	.byte	0x14
	.2byte	0x73c
	.4byte	.LASF1155
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7bec
	.4byte	0x7bf8
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1156
	.byte	0x14
	.2byte	0x73d
	.4byte	.LASF1157
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7c12
	.4byte	0x7c1e
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1158
	.byte	0x14
	.2byte	0x73e
	.4byte	.LASF1159
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7c38
	.4byte	0x7c44
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1160
	.byte	0x14
	.2byte	0x73f
	.4byte	.LASF1161
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7c5e
	.4byte	0x7c6a
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1162
	.byte	0x14
	.2byte	0x740
	.4byte	.LASF1163
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7c84
	.4byte	0x7c90
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1164
	.byte	0x14
	.2byte	0x741
	.4byte	.LASF1165
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7caa
	.4byte	0x7cb6
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF676
	.byte	0x14
	.2byte	0x743
	.4byte	.LASF1166
	.4byte	0x109
	.byte	0x1
	.4byte	0x7cd0
	.4byte	0x7cd7
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF678
	.byte	0x14
	.2byte	0x744
	.4byte	.LASF1167
	.4byte	0x109
	.byte	0x1
	.4byte	0x7cf1
	.4byte	0x7cf8
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF684
	.byte	0x14
	.2byte	0x745
	.4byte	.LASF1168
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7d12
	.4byte	0x7d19
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF686
	.byte	0x14
	.2byte	0x746
	.4byte	.LASF1169
	.4byte	0x8d18
	.byte	0x1
	.4byte	0x7d33
	.4byte	0x7d3a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF688
	.byte	0x14
	.2byte	0x747
	.4byte	.LASF1170
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7d54
	.4byte	0x7d5b
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF690
	.byte	0x14
	.2byte	0x748
	.4byte	.LASF1171
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7d75
	.4byte	0x7d7c
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF692
	.byte	0x14
	.2byte	0x749
	.4byte	.LASF1172
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7d96
	.4byte	0x7d9d
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF694
	.byte	0x14
	.2byte	0x74a
	.4byte	.LASF1173
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7db7
	.4byte	0x7dbe
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1174
	.byte	0x14
	.2byte	0x74c
	.4byte	.LASF1175
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7dd8
	.4byte	0x7ddf
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1176
	.byte	0x14
	.2byte	0x74d
	.4byte	.LASF1177
	.4byte	0x158e
	.byte	0x1
	.4byte	0x7df9
	.4byte	0x7e00
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1178
	.byte	0x14
	.2byte	0x74f
	.4byte	.LASF1179
	.4byte	0x4953
	.byte	0x1
	.4byte	0x7e1a
	.4byte	0x7e26
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x750
	.4byte	.LASF1180
	.4byte	0x4953
	.byte	0x1
	.4byte	0x7e40
	.4byte	0x7e4c
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1178
	.byte	0x14
	.2byte	0x752
	.4byte	.LASF1181
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7e66
	.4byte	0x7e72
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x753
	.4byte	.LASF1182
	.4byte	0x7334
	.byte	0x1
	.4byte	0x7e8c
	.4byte	0x7e98
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1178
	.byte	0x14
	.2byte	0x755
	.4byte	.LASF1183
	.byte	0x1
	.4byte	0x7eae
	.4byte	0x7ebf
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1184
	.byte	0x14
	.2byte	0x756
	.4byte	.LASF1185
	.byte	0x1
	.4byte	0x7ed5
	.4byte	0x7ee6
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1186
	.byte	0x14
	.2byte	0x757
	.4byte	.LASF1187
	.byte	0x1
	.4byte	0x7efc
	.4byte	0x7f0d
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x758
	.4byte	.LASF1188
	.byte	0x1
	.4byte	0x7f23
	.4byte	0x7f34
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1189
	.byte	0x14
	.2byte	0x759
	.4byte	.LASF1190
	.byte	0x1
	.4byte	0x7f4a
	.4byte	0x7f5b
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1191
	.byte	0x14
	.2byte	0x75a
	.4byte	.LASF1192
	.byte	0x1
	.4byte	0x7f71
	.4byte	0x7f82
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1178
	.byte	0x14
	.2byte	0x75c
	.4byte	.LASF1193
	.byte	0x1
	.4byte	0x7f98
	.4byte	0x7fa9
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF696
	.byte	0x14
	.2byte	0x75d
	.4byte	.LASF1194
	.byte	0x1
	.4byte	0x7fbf
	.4byte	0x7fd0
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF513
	.byte	0x14
	.2byte	0x75f
	.4byte	.LASF1195
	.4byte	0xac
	.byte	0x1
	.4byte	0x7fea
	.4byte	0x7ff1
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF842
	.byte	0x14
	.2byte	0x761
	.4byte	.LASF1196
	.4byte	0x5050
	.byte	0x1
	.4byte	0x800b
	.4byte	0x8017
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF842
	.byte	0x14
	.2byte	0x762
	.4byte	.LASF1197
	.4byte	0x5056
	.byte	0x1
	.4byte	0x8031
	.4byte	0x803d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1198
	.byte	0x14
	.2byte	0x763
	.4byte	.LASF1199
	.4byte	0x503a
	.byte	0x1
	.4byte	0x8057
	.4byte	0x8063
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1198
	.byte	0x14
	.2byte	0x764
	.4byte	.LASF1200
	.4byte	0x4953
	.byte	0x1
	.4byte	0x807d
	.4byte	0x8089
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x765
	.4byte	.LASF1201
	.4byte	0x209d
	.byte	0x1
	.4byte	0x80a3
	.4byte	0x80aa
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF515
	.byte	0x14
	.2byte	0x766
	.4byte	.LASF1202
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x80c4
	.4byte	0x80cb
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF518
	.byte	0x14
	.2byte	0x767
	.4byte	.LASF1203
	.4byte	0xe5
	.byte	0x1
	.4byte	0x80e5
	.4byte	0x80f1
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1204
	.byte	0x14
	.2byte	0x769
	.4byte	.LASF1205
	.byte	0x1
	.4byte	0x8107
	.4byte	0x811d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1206
	.byte	0x14
	.2byte	0x76a
	.4byte	.LASF1207
	.byte	0x1
	.4byte	0x8133
	.4byte	0x8144
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1208
	.byte	0x14
	.2byte	0x76b
	.4byte	.LASF1209
	.byte	0x1
	.4byte	0x815a
	.4byte	0x8170
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1210
	.byte	0x14
	.2byte	0x76c
	.4byte	.LASF1211
	.byte	0x1
	.4byte	0x8186
	.4byte	0x8197
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1212
	.byte	0x14
	.2byte	0x76d
	.4byte	.LASF1213
	.byte	0x1
	.4byte	0x81ad
	.4byte	0x81be
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1214
	.byte	0x14
	.2byte	0x76e
	.4byte	.LASF1215
	.byte	0x1
	.4byte	0x81d4
	.4byte	0x81e0
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1216
	.byte	0x14
	.2byte	0x76f
	.4byte	.LASF1217
	.byte	0x1
	.4byte	0x81f6
	.4byte	0x8202
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1218
	.byte	0x14
	.2byte	0x771
	.4byte	.LASF1219
	.4byte	0x158e
	.byte	0x1
	.4byte	0x821c
	.4byte	0x8223
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1220
	.byte	0x14
	.2byte	0x772
	.4byte	.LASF1221
	.4byte	0x158e
	.byte	0x1
	.4byte	0x823d
	.4byte	0x8253
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1222
	.byte	0x14
	.2byte	0x773
	.4byte	.LASF1223
	.4byte	0x158e
	.byte	0x1
	.4byte	0x826d
	.4byte	0x8283
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1224
	.byte	0x14
	.2byte	0x774
	.4byte	.LASF1225
	.4byte	0x158e
	.byte	0x1
	.4byte	0x829d
	.4byte	0x82ae
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1226
	.byte	0x14
	.2byte	0x775
	.4byte	.LASF1227
	.4byte	0x158e
	.byte	0x1
	.4byte	0x82c8
	.4byte	0x82de
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1228
	.byte	0x14
	.2byte	0x776
	.4byte	.LASF1229
	.byte	0x1
	.4byte	0x82f4
	.4byte	0x8305
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1230
	.byte	0x14
	.2byte	0x778
	.4byte	.LASF1231
	.4byte	0x158e
	.byte	0x1
	.4byte	0x831f
	.4byte	0x8330
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d35
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1232
	.byte	0x14
	.2byte	0x779
	.4byte	.LASF1233
	.4byte	0x158e
	.byte	0x1
	.4byte	0x834a
	.4byte	0x8365
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1234
	.byte	0x14
	.2byte	0x77a
	.4byte	.LASF1235
	.4byte	0x158e
	.byte	0x1
	.4byte	0x837f
	.4byte	0x839a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1236
	.byte	0x14
	.2byte	0x77b
	.4byte	.LASF1237
	.4byte	0x158e
	.byte	0x1
	.4byte	0x83b4
	.4byte	0x83ca
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1238
	.byte	0x14
	.2byte	0x77c
	.4byte	.LASF1239
	.4byte	0x158e
	.byte	0x1
	.4byte	0x83e4
	.4byte	0x8404
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1240
	.byte	0x14
	.2byte	0x77d
	.4byte	.LASF1241
	.byte	0x1
	.4byte	0x841a
	.4byte	0x8430
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d3b
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1242
	.byte	0x14
	.2byte	0x77e
	.4byte	.LASF1243
	.byte	0x1
	.4byte	0x8446
	.4byte	0x8457
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d3b
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1244
	.byte	0x14
	.2byte	0x77f
	.4byte	.LASF1245
	.byte	0x1
	.4byte	0x846d
	.4byte	0x847e
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1246
	.byte	0x14
	.2byte	0x780
	.4byte	.LASF1247
	.byte	0x1
	.4byte	0x8494
	.4byte	0x84a5
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d3b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1248
	.byte	0x14
	.2byte	0x782
	.4byte	.LASF1249
	.4byte	0x158e
	.byte	0x1
	.4byte	0x84bf
	.4byte	0x84d0
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1250
	.byte	0x14
	.2byte	0x783
	.4byte	.LASF1251
	.4byte	0x158e
	.byte	0x1
	.4byte	0x84ea
	.4byte	0x8505
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1252
	.byte	0x14
	.2byte	0x784
	.4byte	.LASF1253
	.4byte	0x158e
	.byte	0x1
	.4byte	0x851f
	.4byte	0x853a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1254
	.byte	0x14
	.2byte	0x785
	.4byte	.LASF1255
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8554
	.4byte	0x856a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1256
	.byte	0x14
	.2byte	0x786
	.4byte	.LASF1257
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8584
	.4byte	0x859f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1258
	.byte	0x14
	.2byte	0x787
	.4byte	.LASF1259
	.byte	0x1
	.4byte	0x85b5
	.4byte	0x85d0
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1258
	.byte	0x14
	.2byte	0x788
	.4byte	.LASF1260
	.byte	0x1
	.4byte	0x85e6
	.4byte	0x85fc
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1261
	.byte	0x14
	.2byte	0x789
	.4byte	.LASF1262
	.byte	0x1
	.4byte	0x8612
	.4byte	0x8628
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1263
	.byte	0x14
	.2byte	0x78a
	.4byte	.LASF1264
	.byte	0x1
	.4byte	0x863e
	.4byte	0x8659
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1265
	.byte	0x14
	.2byte	0x78b
	.4byte	.LASF1266
	.byte	0x1
	.4byte	0x866f
	.4byte	0x8685
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1267
	.byte	0x14
	.2byte	0x78d
	.4byte	.LASF1268
	.4byte	0x158e
	.byte	0x1
	.4byte	0x869f
	.4byte	0x86b0
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1269
	.byte	0x14
	.2byte	0x78e
	.4byte	.LASF1270
	.byte	0x1
	.4byte	0x86c6
	.4byte	0x86e1
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1271
	.byte	0x14
	.2byte	0x78f
	.4byte	.LASF1272
	.byte	0x1
	.4byte	0x86f7
	.4byte	0x870d
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1273
	.byte	0x14
	.2byte	0x790
	.4byte	.LASF1274
	.byte	0x1
	.4byte	0x8723
	.4byte	0x8739
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x8d1e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1275
	.byte	0x14
	.2byte	0x792
	.4byte	.LASF1276
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8753
	.4byte	0x875a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1277
	.byte	0x14
	.2byte	0x793
	.4byte	.LASF1278
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8774
	.4byte	0x878a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1279
	.byte	0x14
	.2byte	0x794
	.4byte	.LASF1280
	.4byte	0x158e
	.byte	0x1
	.4byte	0x87a4
	.4byte	0x87b5
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1281
	.byte	0x14
	.2byte	0x795
	.4byte	.LASF1282
	.4byte	0x158e
	.byte	0x1
	.4byte	0x87cf
	.4byte	0x87db
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1283
	.byte	0x14
	.2byte	0x796
	.4byte	.LASF1284
	.4byte	0x158e
	.byte	0x1
	.4byte	0x87f5
	.4byte	0x8806
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1285
	.byte	0x14
	.2byte	0x797
	.4byte	.LASF1286
	.byte	0x1
	.4byte	0x881c
	.4byte	0x882d
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1287
	.byte	0x14
	.2byte	0x798
	.4byte	.LASF1288
	.byte	0x1
	.4byte	0x8843
	.4byte	0x884f
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1289
	.byte	0x14
	.2byte	0x799
	.4byte	.LASF1290
	.byte	0x1
	.4byte	0x8865
	.4byte	0x8871
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1291
	.byte	0x14
	.2byte	0x79b
	.4byte	.LASF1292
	.4byte	0x158e
	.byte	0x1
	.4byte	0x888b
	.4byte	0x8892
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1293
	.byte	0x14
	.2byte	0x79c
	.4byte	.LASF1294
	.4byte	0x158e
	.byte	0x1
	.4byte	0x88ac
	.4byte	0x88c2
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1295
	.byte	0x14
	.2byte	0x79d
	.4byte	.LASF1296
	.4byte	0x158e
	.byte	0x1
	.4byte	0x88dc
	.4byte	0x88ed
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1297
	.byte	0x14
	.2byte	0x79e
	.4byte	.LASF1298
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8907
	.4byte	0x8913
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1299
	.byte	0x14
	.2byte	0x79f
	.4byte	.LASF1300
	.4byte	0x158e
	.byte	0x1
	.4byte	0x892d
	.4byte	0x893e
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d29
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1301
	.byte	0x14
	.2byte	0x7a0
	.4byte	.LASF1302
	.byte	0x1
	.4byte	0x8954
	.4byte	0x8965
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1303
	.byte	0x14
	.2byte	0x7a1
	.4byte	.LASF1304
	.byte	0x1
	.4byte	0x897b
	.4byte	0x8987
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1305
	.byte	0x14
	.2byte	0x7a2
	.4byte	.LASF1306
	.byte	0x1
	.4byte	0x899d
	.4byte	0x89ae
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1307
	.byte	0x14
	.2byte	0x7a3
	.4byte	.LASF1308
	.byte	0x1
	.4byte	0x89c4
	.4byte	0x89d0
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1309
	.byte	0x14
	.2byte	0x7a5
	.4byte	.LASF1310
	.byte	0x1
	.4byte	0x89e6
	.4byte	0x89ed
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1311
	.byte	0x14
	.2byte	0x7a6
	.4byte	.LASF1312
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8a07
	.4byte	0x8a18
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d29
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1313
	.byte	0x14
	.2byte	0x7a7
	.4byte	.LASF1314
	.byte	0x1
	.4byte	0x8a2e
	.4byte	0x8a3a
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1315
	.byte	0x14
	.2byte	0x7a9
	.4byte	.LASF1316
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8a54
	.4byte	0x8a60
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1317
	.byte	0x14
	.2byte	0x7aa
	.4byte	.LASF1318
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8a7a
	.4byte	0x8a86
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1319
	.byte	0x14
	.2byte	0x7ab
	.4byte	.LASF1320
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8aa0
	.4byte	0x8ab1
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1321
	.byte	0x14
	.2byte	0x7ac
	.4byte	.LASF1322
	.byte	0x1
	.4byte	0x8ac7
	.4byte	0x8ad3
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1323
	.byte	0x14
	.2byte	0x7ad
	.4byte	.LASF1324
	.byte	0x1
	.4byte	0x8ae9
	.4byte	0x8af5
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF1325
	.byte	0x14
	.2byte	0x7af
	.4byte	.LASF2353
	.byte	0x1
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF848
	.byte	0x14
	.2byte	0x7bc
	.4byte	.LASF1326
	.byte	0x3
	.byte	0x1
	.4byte	0x8b1a
	.4byte	0x8b2b
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF1328
	.byte	0x14
	.2byte	0x7bd
	.4byte	.LASF1330
	.4byte	0x109
	.byte	0x3
	.byte	0x1
	.4byte	0x8b46
	.4byte	0x8b4d
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF1331
	.byte	0x14
	.2byte	0x7be
	.4byte	.LASF1332
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0x8b68
	.4byte	0x8b6f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1333
	.byte	0x14
	.2byte	0x7bf
	.4byte	.LASF1334
	.byte	0x3
	.byte	0x1
	.4byte	0x8b86
	.4byte	0x8ba1
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF1335
	.byte	0x14
	.2byte	0x7c0
	.4byte	.LASF1336
	.4byte	0x109
	.byte	0x3
	.byte	0x1
	.4byte	0x8bbc
	.4byte	0x8bcd
	.uleb128 0x17
	.4byte	0x8d0d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1337
	.byte	0x14
	.2byte	0x7c1
	.4byte	.LASF1338
	.byte	0x3
	.byte	0x1
	.4byte	0x8be4
	.4byte	0x8bfa
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1339
	.byte	0x14
	.2byte	0x7c2
	.4byte	.LASF1340
	.byte	0x3
	.byte	0x1
	.4byte	0x8c11
	.4byte	0x8c27
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1341
	.byte	0x14
	.2byte	0x7c3
	.4byte	.LASF1342
	.byte	0x3
	.byte	0x1
	.4byte	0x8c3e
	.4byte	0x8c4f
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"QL"
	.byte	0x14
	.2byte	0x7c4
	.4byte	.LASF6602
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0x8c69
	.4byte	0x8c7a
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1343
	.byte	0x14
	.2byte	0x7c5
	.4byte	.LASF1344
	.byte	0x3
	.byte	0x1
	.4byte	0x8c91
	.4byte	0x8c9d
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1345
	.byte	0x14
	.2byte	0x7c6
	.4byte	.LASF1346
	.byte	0x3
	.byte	0x1
	.4byte	0x8cb4
	.4byte	0x8cd9
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1347
	.byte	0x14
	.2byte	0x7c7
	.4byte	.LASF1348
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0x8cf0
	.uleb128 0x17
	.4byte	0x8d07
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d18
	.uleb128 0x19
	.4byte	0x8d2f
	.uleb128 0x19
	.4byte	0x8d2f
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7334
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d13
	.uleb128 0xc
	.4byte	0x7334
	.uleb128 0x22
	.byte	0x4
	.4byte	0x7334
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8d24
	.uleb128 0xc
	.4byte	0x7334
	.uleb128 0x22
	.byte	0x4
	.4byte	0x503a
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4953
	.uleb128 0xb
	.byte	0x4
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21ad
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2eae
	.uleb128 0x22
	.byte	0x4
	.4byte	0x2eae
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d53
	.uleb128 0xc
	.4byte	0x2eae
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8d5e
	.uleb128 0xc
	.4byte	0x2eae
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5628
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d6f
	.uleb128 0xc
	.4byte	0x5628
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5628
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8d80
	.uleb128 0xc
	.4byte	0x5628
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5b3e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d91
	.uleb128 0xc
	.4byte	0x5b3e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8d9c
	.uleb128 0xc
	.4byte	0x5b3e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5df3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8dad
	.uleb128 0xc
	.4byte	0x5df3
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5df3
	.uleb128 0x2b
	.4byte	.LASF1349
	.byte	0x10
	.byte	0x17
	.byte	0x47
	.4byte	0x9456
	.uleb128 0x48
	.string	"a"
	.byte	0x17
	.byte	0x80
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.string	"b"
	.byte	0x17
	.byte	0x81
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.string	"c"
	.byte	0x17
	.byte	0x82
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x48
	.string	"d"
	.byte	0x17
	.byte	0x83
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1349
	.byte	0x17
	.byte	0x49
	.byte	0x1
	.4byte	0x8e09
	.4byte	0x8e10
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1349
	.byte	0x17
	.byte	0x4a
	.byte	0x1
	.4byte	0x8e21
	.4byte	0x8e3c
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1349
	.byte	0x17
	.byte	0x4b
	.byte	0x1
	.4byte	0x8e4d
	.4byte	0x8e5e
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x17
	.byte	0x4d
	.4byte	.LASF1350
	.4byte	0x109
	.byte	0x1
	.4byte	0x8e77
	.4byte	0x8e83
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x17
	.byte	0x4e
	.4byte	.LASF1351
	.4byte	0x2091
	.byte	0x1
	.4byte	0x8e9c
	.4byte	0x8ea8
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x17
	.byte	0x4f
	.4byte	.LASF1352
	.4byte	0x8db8
	.byte	0x1
	.4byte	0x8ec1
	.4byte	0x8ec8
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x17
	.byte	0x50
	.4byte	.LASF1353
	.4byte	0x9467
	.byte	0x1
	.4byte	0x8ee1
	.4byte	0x8eed
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x17
	.byte	0x51
	.4byte	.LASF1354
	.4byte	0x8db8
	.byte	0x1
	.4byte	0x8f06
	.4byte	0x8f12
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x17
	.byte	0x52
	.4byte	.LASF1355
	.4byte	0x8db8
	.byte	0x1
	.4byte	0x8f2b
	.4byte	0x8f37
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x17
	.byte	0x53
	.4byte	.LASF1356
	.4byte	0x9467
	.byte	0x1
	.4byte	0x8f50
	.4byte	0x8f5c
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x17
	.byte	0x55
	.4byte	.LASF1357
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8f75
	.4byte	0x8f81
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x17
	.byte	0x56
	.4byte	.LASF1358
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8f9a
	.4byte	0x8fab
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x17
	.byte	0x57
	.4byte	.LASF1359
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8fc4
	.4byte	0x8fda
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x17
	.byte	0x58
	.4byte	.LASF1360
	.4byte	0x158e
	.byte	0x1
	.4byte	0x8ff3
	.4byte	0x8fff
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x17
	.byte	0x59
	.4byte	.LASF1361
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9018
	.4byte	0x9024
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x17
	.byte	0x5b
	.4byte	.LASF1362
	.byte	0x1
	.4byte	0x9039
	.4byte	0x9040
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1363
	.byte	0x17
	.byte	0x5c
	.4byte	.LASF1364
	.byte	0x1
	.4byte	0x9055
	.4byte	0x9061
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1365
	.byte	0x17
	.byte	0x5d
	.4byte	.LASF1366
	.4byte	0x4236
	.byte	0x1
	.4byte	0x907a
	.4byte	0x9081
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1365
	.byte	0x17
	.byte	0x5e
	.4byte	.LASF1367
	.4byte	0x423c
	.byte	0x1
	.4byte	0x909a
	.4byte	0x90a1
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF501
	.byte	0x17
	.byte	0x5f
	.4byte	.LASF1368
	.4byte	0x109
	.byte	0x1
	.4byte	0x90ba
	.4byte	0x90c6
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF541
	.byte	0x17
	.byte	0x60
	.4byte	.LASF1369
	.4byte	0x158e
	.byte	0x1
	.4byte	0x90df
	.4byte	0x90e6
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF673
	.byte	0x17
	.byte	0x61
	.4byte	.LASF1370
	.4byte	0x158e
	.byte	0x1
	.4byte	0x90ff
	.4byte	0x910b
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1371
	.byte	0x17
	.byte	0x62
	.4byte	.LASF1372
	.4byte	0x109
	.byte	0x1
	.4byte	0x9124
	.4byte	0x912b
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1373
	.byte	0x17
	.byte	0x63
	.4byte	.LASF1374
	.byte	0x1
	.4byte	0x9140
	.4byte	0x914c
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1375
	.byte	0x17
	.byte	0x64
	.4byte	.LASF1376
	.4byte	0xac
	.byte	0x1
	.4byte	0x9165
	.4byte	0x916c
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x17
	.byte	0x66
	.4byte	.LASF1378
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9185
	.4byte	0x91a0
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1379
	.byte	0x17
	.byte	0x67
	.4byte	.LASF1380
	.4byte	0x158e
	.byte	0x1
	.4byte	0x91b9
	.4byte	0x91d4
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x17
	.byte	0x68
	.4byte	.LASF1382
	.byte	0x1
	.4byte	0x91e9
	.4byte	0x91f5
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1383
	.byte	0x17
	.byte	0x69
	.4byte	.LASF1384
	.4byte	0x158e
	.byte	0x1
	.4byte	0x920e
	.4byte	0x921f
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x17
	.byte	0x6a
	.4byte	.LASF1386
	.4byte	0x8db8
	.byte	0x1
	.4byte	0x9238
	.4byte	0x9244
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x17
	.byte	0x6b
	.4byte	.LASF1388
	.4byte	0x9467
	.byte	0x1
	.4byte	0x925d
	.4byte	0x9269
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x17
	.byte	0x6c
	.4byte	.LASF1390
	.4byte	0x8db8
	.byte	0x1
	.4byte	0x9282
	.4byte	0x9293
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x17
	.byte	0x6d
	.4byte	.LASF1392
	.4byte	0x9467
	.byte	0x1
	.4byte	0x92ac
	.4byte	0x92bd
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x17
	.byte	0x6f
	.4byte	.LASF1394
	.4byte	0x109
	.byte	0x1
	.4byte	0x92d6
	.4byte	0x92e2
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x17
	.byte	0x70
	.4byte	.LASF1396
	.4byte	0xac
	.byte	0x1
	.4byte	0x92fb
	.4byte	0x930c
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x17
	.byte	0x72
	.4byte	.LASF1398
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9325
	.4byte	0x9336
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x17
	.byte	0x74
	.4byte	.LASF1400
	.4byte	0x158e
	.byte	0x1
	.4byte	0x934f
	.4byte	0x9365
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x17
	.byte	0x75
	.4byte	.LASF1402
	.4byte	0x158e
	.byte	0x1
	.4byte	0x937e
	.4byte	0x9394
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x946d
	.uleb128 0x19
	.4byte	0x423c
	.uleb128 0x19
	.4byte	0x423c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x17
	.byte	0x77
	.4byte	.LASF1403
	.4byte	0xac
	.byte	0x1
	.4byte	0x93ad
	.4byte	0x93b4
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1404
	.byte	0x17
	.byte	0x79
	.4byte	.LASF1405
	.4byte	0x6809
	.byte	0x1
	.4byte	0x93cd
	.4byte	0x93d4
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1404
	.byte	0x17
	.byte	0x7a
	.4byte	.LASF1406
	.4byte	0x6836
	.byte	0x1
	.4byte	0x93ed
	.4byte	0x93f4
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x17
	.byte	0x7b
	.4byte	.LASF1407
	.4byte	0x209d
	.byte	0x1
	.4byte	0x940d
	.4byte	0x9414
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x17
	.byte	0x7c
	.4byte	.LASF1408
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x942d
	.4byte	0x9434
	.uleb128 0x17
	.4byte	0x9456
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF518
	.byte	0x17
	.byte	0x7d
	.4byte	.LASF1409
	.4byte	0xe5
	.byte	0x1
	.4byte	0x9449
	.uleb128 0x17
	.4byte	0x945c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8db8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9462
	.uleb128 0xc
	.4byte	0x8db8
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8db8
	.uleb128 0x22
	.byte	0x4
	.4byte	0x9473
	.uleb128 0xc
	.4byte	0x8db8
	.uleb128 0x22
	.byte	0x4
	.4byte	0x9462
	.uleb128 0x2b
	.4byte	.LASF1410
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.4byte	0x9a1f
	.uleb128 0x48
	.string	"num"
	.byte	0x18
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x18
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1411
	.byte	0x18
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1412
	.byte	0x18
	.byte	0x92
	.4byte	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1413
	.byte	0x18
	.byte	0x5f
	.4byte	0x9a1f
	.uleb128 0x2
	.4byte	.LASF1414
	.byte	0x18
	.byte	0x60
	.4byte	0x9a33
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0x9b
	.byte	0x1
	.4byte	0x94ed
	.4byte	0x94f9
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0xa9
	.byte	0x1
	.4byte	0x950a
	.4byte	0x9516
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a3e
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1416
	.byte	0x18
	.byte	0xb4
	.byte	0x1
	.4byte	0x9527
	.4byte	0x9534
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF1417
	.byte	0x1
	.4byte	0x9549
	.4byte	0x9550
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Num"
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF1445
	.4byte	0xac
	.byte	0x1
	.4byte	0x956a
	.4byte	0x9571
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF1419
	.4byte	0xac
	.byte	0x1
	.4byte	0x958b
	.4byte	0x9592
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF1421
	.byte	0x1
	.4byte	0x95a8
	.4byte	0x95b4
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x18
	.2byte	0x151
	.4byte	.LASF1423
	.4byte	0xac
	.byte	0x1
	.4byte	0x95ce
	.4byte	0x95d5
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x18
	.byte	0xee
	.4byte	.LASF1425
	.4byte	0x29
	.byte	0x1
	.4byte	0x95ee
	.4byte	0x95f5
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF1427
	.4byte	0x29
	.byte	0x1
	.4byte	0x960e
	.4byte	0x9615
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF1429
	.4byte	0x29
	.byte	0x1
	.4byte	0x962f
	.4byte	0x9636
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x18
	.2byte	0x21d
	.4byte	.LASF1430
	.4byte	0x9a4f
	.byte	0x1
	.4byte	0x9650
	.4byte	0x965c
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a3e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x239
	.4byte	.LASF1431
	.4byte	0x9a55
	.byte	0x1
	.4byte	0x9676
	.4byte	0x9682
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x249
	.4byte	.LASF1432
	.4byte	0x2091
	.byte	0x1
	.4byte	0x969c
	.4byte	0x96a8
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1433
	.byte	0x18
	.2byte	0x15d
	.4byte	.LASF1434
	.byte	0x1
	.4byte	0x96be
	.4byte	0x96c5
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x170
	.4byte	.LASF1436
	.byte	0x1
	.4byte	0x96db
	.4byte	0x96e7
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x19c
	.4byte	.LASF1437
	.byte	0x1
	.4byte	0x96fd
	.4byte	0x970e
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1438
	.byte	0x18
	.2byte	0x129
	.4byte	.LASF1439
	.byte	0x1
	.4byte	0x9724
	.4byte	0x9735
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1c5
	.4byte	.LASF1441
	.byte	0x1
	.4byte	0x974b
	.4byte	0x9757
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1de
	.4byte	.LASF1442
	.byte	0x1
	.4byte	0x976d
	.4byte	0x977e
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1443
	.byte	0x18
	.2byte	0x1ff
	.4byte	.LASF1444
	.byte	0x1
	.4byte	0x9794
	.4byte	0x97a5
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9a5b
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x25c
	.4byte	.LASF1446
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x97bf
	.4byte	0x97c6
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x26c
	.4byte	.LASF1447
	.4byte	0x209d
	.byte	0x1
	.4byte	0x97e0
	.4byte	0x97e7
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1448
	.byte	0x18
	.2byte	0x278
	.4byte	.LASF1449
	.4byte	0x2091
	.byte	0x1
	.4byte	0x9801
	.4byte	0x9808
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x28e
	.4byte	.LASF1451
	.4byte	0xac
	.byte	0x1
	.4byte	0x9822
	.4byte	0x982e
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x2d6
	.4byte	.LASF1452
	.4byte	0xac
	.byte	0x1
	.4byte	0x9848
	.4byte	0x9854
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a3e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1453
	.byte	0x18
	.2byte	0x2ee
	.4byte	.LASF1454
	.4byte	0xac
	.byte	0x1
	.4byte	0x986e
	.4byte	0x987a
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x18
	.2byte	0x2af
	.4byte	.LASF1456
	.4byte	0xac
	.byte	0x1
	.4byte	0x9894
	.4byte	0x98a5
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.2byte	0x301
	.4byte	.LASF1458
	.4byte	0xac
	.byte	0x1
	.4byte	0x98bf
	.4byte	0x98cb
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.2byte	0x316
	.4byte	.LASF1459
	.4byte	0x21c8
	.byte	0x1
	.4byte	0x98e5
	.4byte	0x98f1
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1460
	.byte	0x18
	.2byte	0x32c
	.4byte	.LASF1461
	.4byte	0xac
	.byte	0x1
	.4byte	0x990b
	.4byte	0x9912
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x18
	.2byte	0x344
	.4byte	.LASF1463
	.4byte	0xac
	.byte	0x1
	.4byte	0x992c
	.4byte	0x9938
	.uleb128 0x17
	.4byte	0x9a49
	.byte	0x1
	.uleb128 0x19
	.4byte	0x209d
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x18
	.2byte	0x359
	.4byte	.LASF1465
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9952
	.4byte	0x995e
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x18
	.2byte	0x376
	.4byte	.LASF1467
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9978
	.4byte	0x9984
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a55
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x18
	.2byte	0x38a
	.4byte	.LASF1469
	.byte	0x1
	.4byte	0x999a
	.4byte	0x99a6
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a61
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x18
	.2byte	0x39c
	.4byte	.LASF1471
	.byte	0x1
	.4byte	0x99bc
	.4byte	0x99d2
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9a61
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x18
	.2byte	0x3b7
	.4byte	.LASF1473
	.byte	0x1
	.4byte	0x99e8
	.4byte	0x99f4
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a4f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF1475
	.byte	0x1
	.4byte	0x9a09
	.4byte	0x9a15
	.uleb128 0x17
	.4byte	0x9a38
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF57
	.4byte	0x109
	.byte	0
	.uleb128 0x50
	.4byte	0xac
	.4byte	0x9a33
	.uleb128 0x19
	.4byte	0x209d
	.uleb128 0x19
	.4byte	0x209d
	.byte	0
	.uleb128 0x51
	.4byte	0x109
	.uleb128 0xb
	.byte	0x4
	.4byte	0x947e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x9a44
	.uleb128 0xc
	.4byte	0x947e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a44
	.uleb128 0x22
	.byte	0x4
	.4byte	0x947e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x207b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94d1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94c6
	.uleb128 0x2
	.4byte	.LASF1476
	.byte	0x19
	.byte	0x2f
	.4byte	0x9a72
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a78
	.uleb128 0x52
	.4byte	0x9a92
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x9a92
	.uleb128 0x19
	.4byte	0x209d
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a98
	.uleb128 0x53
	.uleb128 0x2b
	.4byte	.LASF1477
	.byte	0x10
	.byte	0x1a
	.byte	0x28
	.4byte	0xa032
	.uleb128 0x26
	.4byte	.LASF938
	.byte	0x1a
	.byte	0x5f
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF631
	.byte	0x1a
	.byte	0x60
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1477
	.byte	0x1a
	.byte	0x2a
	.byte	0x1
	.4byte	0x9ad4
	.4byte	0x9adb
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1477
	.byte	0x1a
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0x9aed
	.4byte	0x9af9
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1477
	.byte	0x1a
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0x9b0b
	.4byte	0x9b1c
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1a
	.byte	0x2e
	.4byte	.LASF1478
	.4byte	0x109
	.byte	0x1
	.4byte	0x9b35
	.4byte	0x9b41
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1a
	.byte	0x2f
	.4byte	.LASF1479
	.4byte	0x2091
	.byte	0x1
	.4byte	0x9b5a
	.4byte	0x9b66
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1a
	.byte	0x30
	.4byte	.LASF1480
	.4byte	0x9a99
	.byte	0x1
	.4byte	0x9b7f
	.4byte	0x9b8b
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1a
	.byte	0x31
	.4byte	.LASF1481
	.4byte	0xa043
	.byte	0x1
	.4byte	0x9ba4
	.4byte	0x9bb0
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1a
	.byte	0x32
	.4byte	.LASF1482
	.4byte	0x9a99
	.byte	0x1
	.4byte	0x9bc9
	.4byte	0x9bd5
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1a
	.byte	0x33
	.4byte	.LASF1483
	.4byte	0xa043
	.byte	0x1
	.4byte	0x9bee
	.4byte	0x9bfa
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1a
	.byte	0x35
	.4byte	.LASF1484
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9c13
	.4byte	0x9c1f
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1a
	.byte	0x36
	.4byte	.LASF1485
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9c38
	.4byte	0x9c49
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x1a
	.byte	0x37
	.4byte	.LASF1486
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9c62
	.4byte	0x9c6e
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1a
	.byte	0x38
	.4byte	.LASF1487
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9c87
	.4byte	0x9c93
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1a
	.byte	0x3a
	.4byte	.LASF1488
	.byte	0x1
	.4byte	0x9ca8
	.4byte	0x9caf
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x1a
	.byte	0x3b
	.4byte	.LASF1489
	.byte	0x1
	.4byte	0x9cc4
	.4byte	0x9ccb
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF943
	.byte	0x1a
	.byte	0x3c
	.4byte	.LASF1490
	.byte	0x1
	.4byte	0x9ce0
	.4byte	0x9cec
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1491
	.byte	0x1a
	.byte	0x3d
	.4byte	.LASF1492
	.byte	0x1
	.4byte	0x9d01
	.4byte	0x9d0d
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF954
	.byte	0x1a
	.byte	0x3f
	.4byte	.LASF1493
	.4byte	0x4236
	.byte	0x1
	.4byte	0x9d26
	.4byte	0x9d2d
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1494
	.byte	0x1a
	.byte	0x40
	.4byte	.LASF1495
	.4byte	0x109
	.byte	0x1
	.4byte	0x9d46
	.4byte	0x9d4d
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1496
	.byte	0x1a
	.byte	0x41
	.4byte	.LASF1497
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9d66
	.4byte	0x9d6d
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1a
	.byte	0x43
	.4byte	.LASF1499
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9d86
	.4byte	0x9d92
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x1a
	.byte	0x44
	.4byte	.LASF1501
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9dab
	.4byte	0x9db7
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1a
	.byte	0x45
	.4byte	.LASF1503
	.4byte	0x9a99
	.byte	0x1
	.4byte	0x9dd0
	.4byte	0x9ddc
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x1a
	.byte	0x46
	.4byte	.LASF1505
	.4byte	0xa043
	.byte	0x1
	.4byte	0x9df5
	.4byte	0x9e01
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x1a
	.byte	0x47
	.4byte	.LASF1506
	.4byte	0x9a99
	.byte	0x1
	.4byte	0x9e1a
	.4byte	0x9e26
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x1a
	.byte	0x48
	.4byte	.LASF1507
	.4byte	0xa043
	.byte	0x1
	.4byte	0x9e3f
	.4byte	0x9e4b
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1a
	.byte	0x4a
	.4byte	.LASF1509
	.4byte	0x109
	.byte	0x1
	.4byte	0x9e64
	.4byte	0x9e70
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1a
	.byte	0x4b
	.4byte	.LASF1511
	.4byte	0xac
	.byte	0x1
	.4byte	0x9e89
	.4byte	0x9e9a
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1a
	.byte	0x4d
	.4byte	.LASF1513
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9eb3
	.4byte	0x9ebf
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x1a
	.byte	0x4e
	.4byte	.LASF1515
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9ed8
	.4byte	0x9ee4
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1a
	.byte	0x4f
	.4byte	.LASF1516
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9efd
	.4byte	0x9f0e
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1a
	.byte	0x51
	.4byte	.LASF1517
	.4byte	0x158e
	.byte	0x1
	.4byte	0x9f27
	.4byte	0x9f42
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x1a
	.byte	0x54
	.4byte	.LASF1518
	.byte	0x1
	.4byte	0x9f57
	.4byte	0x9f68
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1519
	.byte	0x1a
	.byte	0x56
	.4byte	.LASF1520
	.byte	0x1
	.4byte	0x9f7d
	.4byte	0x9f8e
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1521
	.byte	0x1a
	.byte	0x57
	.4byte	.LASF1522
	.byte	0x1
	.4byte	0x9fa3
	.4byte	0x9fb9
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x1a
	.byte	0x59
	.4byte	.LASF1524
	.byte	0x1
	.4byte	0x9fce
	.4byte	0x9fdf
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1525
	.byte	0x1a
	.byte	0x5a
	.4byte	.LASF1526
	.byte	0x1
	.4byte	0x9ff4
	.4byte	0xa00a
	.uleb128 0x17
	.4byte	0xa032
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa049
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1a
	.byte	0x5c
	.4byte	.LASF1528
	.byte	0x1
	.4byte	0xa01b
	.uleb128 0x17
	.4byte	0xa038
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a99
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa03e
	.uleb128 0xc
	.4byte	0x9a99
	.uleb128 0x22
	.byte	0x4
	.4byte	0x9a99
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa04f
	.uleb128 0xc
	.4byte	0x9a99
	.uleb128 0x22
	.byte	0x4
	.4byte	0x8dad
	.uleb128 0x2b
	.4byte	.LASF1529
	.byte	0x18
	.byte	0x1b
	.byte	0x28
	.4byte	0xa7b3
	.uleb128 0x48
	.string	"b"
	.byte	0x1b
	.byte	0x6d
	.4byte	0xa7b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x1b
	.byte	0x2a
	.byte	0x1
	.4byte	0xa084
	.4byte	0xa08b
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x1b
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa09d
	.4byte	0xa0ae
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x1b
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa0c0
	.4byte	0xa0cc
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1b
	.byte	0x2e
	.4byte	.LASF1530
	.4byte	0x4236
	.byte	0x1
	.4byte	0xa0e5
	.4byte	0xa0f1
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1b
	.byte	0x2f
	.4byte	.LASF1531
	.4byte	0x423c
	.byte	0x1
	.4byte	0xa10a
	.4byte	0xa116
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1b
	.byte	0x30
	.4byte	.LASF1532
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa12f
	.4byte	0xa13b
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1b
	.byte	0x31
	.4byte	.LASF1533
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa154
	.4byte	0xa160
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x1b
	.byte	0x32
	.4byte	.LASF1534
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa179
	.4byte	0xa185
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x1b
	.byte	0x33
	.4byte	.LASF1535
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa19e
	.4byte	0xa1aa
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1b
	.byte	0x34
	.4byte	.LASF1536
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa1c3
	.4byte	0xa1cf
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1b
	.byte	0x35
	.4byte	.LASF1537
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa1e8
	.4byte	0xa1f4
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x1b
	.byte	0x36
	.4byte	.LASF1538
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa20d
	.4byte	0xa219
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1b
	.byte	0x37
	.4byte	.LASF1539
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa232
	.4byte	0xa23e
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1b
	.byte	0x39
	.4byte	.LASF1540
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa257
	.4byte	0xa263
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1b
	.byte	0x3a
	.4byte	.LASF1541
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa27c
	.4byte	0xa28d
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x1b
	.byte	0x3b
	.4byte	.LASF1542
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa2a6
	.4byte	0xa2b2
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1b
	.byte	0x3c
	.4byte	.LASF1543
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa2cb
	.4byte	0xa2d7
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1b
	.byte	0x3e
	.4byte	.LASF1544
	.byte	0x1
	.4byte	0xa2ec
	.4byte	0xa2f3
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x1b
	.byte	0x3f
	.4byte	.LASF1545
	.byte	0x1
	.4byte	0xa308
	.4byte	0xa30f
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1546
	.byte	0x1b
	.byte	0x41
	.4byte	.LASF1547
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xa328
	.4byte	0xa32f
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1494
	.byte	0x1b
	.byte	0x42
	.4byte	.LASF1548
	.4byte	0x109
	.byte	0x1
	.4byte	0xa348
	.4byte	0xa34f
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1494
	.byte	0x1b
	.byte	0x43
	.4byte	.LASF1549
	.4byte	0x109
	.byte	0x1
	.4byte	0xa368
	.4byte	0xa374
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x1b
	.byte	0x44
	.4byte	.LASF1551
	.4byte	0x109
	.byte	0x1
	.4byte	0xa38d
	.4byte	0xa394
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1496
	.byte	0x1b
	.byte	0x45
	.4byte	.LASF1552
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa3ad
	.4byte	0xa3b4
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1b
	.byte	0x47
	.4byte	.LASF1553
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa3cd
	.4byte	0xa3d9
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1554
	.byte	0x1b
	.byte	0x48
	.4byte	.LASF1555
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa3f2
	.4byte	0xa3fe
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1556
	.byte	0x1b
	.byte	0x49
	.4byte	.LASF1557
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa417
	.4byte	0xa423
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1558
	.byte	0x1b
	.byte	0x4a
	.4byte	.LASF1559
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa43c
	.4byte	0xa448
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1b
	.byte	0x4b
	.4byte	.LASF1560
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa461
	.4byte	0xa46d
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x1b
	.byte	0x4c
	.4byte	.LASF1561
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa486
	.4byte	0xa492
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x1b
	.byte	0x4d
	.4byte	.LASF1562
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa4ab
	.4byte	0xa4b7
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x1b
	.byte	0x4e
	.4byte	.LASF1563
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa4d0
	.4byte	0xa4dc
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x1b
	.byte	0x4f
	.4byte	.LASF1564
	.4byte	0xa05a
	.byte	0x1
	.4byte	0xa4f5
	.4byte	0xa501
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x1b
	.byte	0x50
	.4byte	.LASF1565
	.4byte	0xa7d4
	.byte	0x1
	.4byte	0xa51a
	.4byte	0xa526
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1b
	.byte	0x52
	.4byte	.LASF1566
	.4byte	0x109
	.byte	0x1
	.4byte	0xa53f
	.4byte	0xa54b
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1b
	.byte	0x53
	.4byte	.LASF1567
	.4byte	0xac
	.byte	0x1
	.4byte	0xa564
	.4byte	0xa575
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1b
	.byte	0x55
	.4byte	.LASF1568
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa58e
	.4byte	0xa59a
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1569
	.byte	0x1b
	.byte	0x56
	.4byte	.LASF1570
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa5b3
	.4byte	0xa5bf
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1b
	.byte	0x57
	.4byte	.LASF1571
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa5d8
	.4byte	0xa5e9
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1b
	.byte	0x59
	.4byte	.LASF1572
	.4byte	0x158e
	.byte	0x1
	.4byte	0xa602
	.4byte	0xa618
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1573
	.byte	0x1b
	.byte	0x5c
	.4byte	.LASF1574
	.byte	0x1
	.4byte	0xa62d
	.4byte	0xa643
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x1b
	.byte	0x5e
	.4byte	.LASF1575
	.byte	0x1
	.4byte	0xa658
	.4byte	0xa669
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1519
	.byte	0x1b
	.byte	0x60
	.4byte	.LASF1576
	.byte	0x1
	.4byte	0xa67e
	.4byte	0xa68f
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1577
	.byte	0x1b
	.byte	0x61
	.4byte	.LASF1578
	.byte	0x1
	.4byte	0xa6a4
	.4byte	0xa6bf
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x1b
	.byte	0x63
	.4byte	.LASF1579
	.byte	0x1
	.4byte	0xa6d4
	.4byte	0xa6e5
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1580
	.byte	0x1b
	.byte	0x64
	.4byte	.LASF1581
	.byte	0x1
	.4byte	0xa6fa
	.4byte	0xa715
	.uleb128 0x17
	.4byte	0xa7c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa7da
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1582
	.byte	0x1b
	.byte	0x66
	.4byte	.LASF1583
	.byte	0x1
	.4byte	0xa72a
	.4byte	0xa736
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x1b
	.byte	0x67
	.4byte	.LASF1585
	.4byte	0x9a99
	.byte	0x1
	.4byte	0xa74f
	.4byte	0xa756
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1b
	.byte	0x69
	.4byte	.LASF1586
	.byte	0x1
	.4byte	0xa76b
	.4byte	0xa781
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1b
	.byte	0x6a
	.4byte	.LASF1587
	.byte	0x1
	.4byte	0xa792
	.uleb128 0x17
	.4byte	0xa7c9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x26d6
	.4byte	0xa7c3
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa05a
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa7cf
	.uleb128 0xc
	.4byte	0xa05a
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa05a
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa7e0
	.uleb128 0xc
	.4byte	0xa05a
	.uleb128 0x2b
	.4byte	.LASF1588
	.byte	0x3c
	.byte	0x1c
	.byte	0x28
	.4byte	0xaf1b
	.uleb128 0x26
	.4byte	.LASF1589
	.byte	0x1c
	.byte	0x6e
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1590
	.byte	0x1c
	.byte	0x6f
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF940
	.byte	0x1c
	.byte	0x70
	.4byte	0x3508
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x1c
	.byte	0x2a
	.byte	0x1
	.4byte	0xa82f
	.4byte	0xa836
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x1c
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa848
	.4byte	0xa85e
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x1c
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa870
	.4byte	0xa87c
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x1c
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.4byte	0xa88e
	.4byte	0xa89a
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x1c
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.4byte	0xa8ac
	.4byte	0xa8c2
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1c
	.byte	0x30
	.4byte	.LASF1591
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xa8db
	.4byte	0xa8e7
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1c
	.byte	0x31
	.4byte	.LASF1592
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xa900
	.4byte	0xa90c
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x1c
	.byte	0x32
	.4byte	.LASF1593
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xa925
	.4byte	0xa931
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x1c
	.byte	0x33
	.4byte	.LASF1594
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xa94a
	.4byte	0xa956
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1c
	.byte	0x34
	.4byte	.LASF1595
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xa96f
	.4byte	0xa97b
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1c
	.byte	0x35
	.4byte	.LASF1596
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xa994
	.4byte	0xa9a0
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x1c
	.byte	0x36
	.4byte	.LASF1597
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xa9b9
	.4byte	0xa9c5
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1c
	.byte	0x37
	.4byte	.LASF1598
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xa9de
	.4byte	0xa9ea
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1c
	.byte	0x39
	.4byte	.LASF1599
	.4byte	0x158e
	.byte	0x1
	.4byte	0xaa03
	.4byte	0xaa0f
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1c
	.byte	0x3a
	.4byte	.LASF1600
	.4byte	0x158e
	.byte	0x1
	.4byte	0xaa28
	.4byte	0xaa39
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x1c
	.byte	0x3b
	.4byte	.LASF1601
	.4byte	0x158e
	.byte	0x1
	.4byte	0xaa52
	.4byte	0xaa5e
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1c
	.byte	0x3c
	.4byte	.LASF1602
	.4byte	0x158e
	.byte	0x1
	.4byte	0xaa77
	.4byte	0xaa83
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1c
	.byte	0x3e
	.4byte	.LASF1603
	.byte	0x1
	.4byte	0xaa98
	.4byte	0xaa9f
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x1c
	.byte	0x3f
	.4byte	.LASF1604
	.byte	0x1
	.4byte	0xaab4
	.4byte	0xaabb
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1546
	.byte	0x1c
	.byte	0x41
	.4byte	.LASF1605
	.4byte	0x4236
	.byte	0x1
	.4byte	0xaad4
	.4byte	0xaadb
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1606
	.byte	0x1c
	.byte	0x42
	.4byte	.LASF1607
	.4byte	0x4236
	.byte	0x1
	.4byte	0xaaf4
	.4byte	0xaafb
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1608
	.byte	0x1c
	.byte	0x43
	.4byte	.LASF1609
	.4byte	0x680f
	.byte	0x1
	.4byte	0xab14
	.4byte	0xab1b
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x1c
	.byte	0x44
	.4byte	.LASF1610
	.4byte	0x109
	.byte	0x1
	.4byte	0xab34
	.4byte	0xab3b
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1496
	.byte	0x1c
	.byte	0x45
	.4byte	.LASF1611
	.4byte	0x158e
	.byte	0x1
	.4byte	0xab54
	.4byte	0xab5b
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1c
	.byte	0x47
	.4byte	.LASF1612
	.4byte	0x158e
	.byte	0x1
	.4byte	0xab74
	.4byte	0xab80
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1613
	.byte	0x1c
	.byte	0x48
	.4byte	.LASF1614
	.4byte	0x158e
	.byte	0x1
	.4byte	0xab99
	.4byte	0xaba5
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1c
	.byte	0x49
	.4byte	.LASF1615
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xabbe
	.4byte	0xabca
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x1c
	.byte	0x4a
	.4byte	.LASF1616
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xabe3
	.4byte	0xabef
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x1c
	.byte	0x4b
	.4byte	.LASF1617
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xac08
	.4byte	0xac14
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x1c
	.byte	0x4c
	.4byte	.LASF1618
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xac2d
	.4byte	0xac39
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x1c
	.byte	0x4d
	.4byte	.LASF1619
	.4byte	0xa7e5
	.byte	0x1
	.4byte	0xac52
	.4byte	0xac5e
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x1c
	.byte	0x4e
	.4byte	.LASF1620
	.4byte	0xaf32
	.byte	0x1
	.4byte	0xac77
	.4byte	0xac83
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1c
	.byte	0x50
	.4byte	.LASF1621
	.4byte	0x109
	.byte	0x1
	.4byte	0xac9c
	.4byte	0xaca8
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1c
	.byte	0x51
	.4byte	.LASF1622
	.4byte	0xac
	.byte	0x1
	.4byte	0xacc1
	.4byte	0xacd2
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1c
	.byte	0x53
	.4byte	.LASF1623
	.4byte	0x158e
	.byte	0x1
	.4byte	0xaceb
	.4byte	0xacf7
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1624
	.byte	0x1c
	.byte	0x54
	.4byte	.LASF1625
	.4byte	0x158e
	.byte	0x1
	.4byte	0xad10
	.4byte	0xad1c
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1c
	.byte	0x55
	.4byte	.LASF1626
	.4byte	0x158e
	.byte	0x1
	.4byte	0xad35
	.4byte	0xad46
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1c
	.byte	0x57
	.4byte	.LASF1627
	.4byte	0x158e
	.byte	0x1
	.4byte	0xad5f
	.4byte	0xad7a
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x1c
	.byte	0x5a
	.4byte	.LASF1628
	.byte	0x1
	.4byte	0xad8f
	.4byte	0xada0
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1519
	.byte	0x1c
	.byte	0x5c
	.4byte	.LASF1629
	.byte	0x1
	.4byte	0xadb5
	.4byte	0xadc6
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1630
	.byte	0x1c
	.byte	0x5d
	.4byte	.LASF1631
	.byte	0x1
	.4byte	0xaddb
	.4byte	0xadec
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x1c
	.byte	0x5f
	.4byte	.LASF1632
	.byte	0x1
	.4byte	0xae01
	.4byte	0xae12
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1633
	.byte	0x1c
	.byte	0x60
	.4byte	.LASF1634
	.byte	0x1
	.4byte	0xae27
	.4byte	0xae38
	.uleb128 0x17
	.4byte	0xaf1b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf38
	.uleb128 0x19
	.4byte	0xa054
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1582
	.byte	0x1c
	.byte	0x62
	.4byte	.LASF1635
	.byte	0x1
	.4byte	0xae4d
	.4byte	0xae59
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x1c
	.byte	0x63
	.4byte	.LASF1636
	.4byte	0x9a99
	.byte	0x1
	.4byte	0xae72
	.4byte	0xae79
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1c
	.byte	0x66
	.4byte	.LASF1637
	.byte	0x1
	.4byte	0xae8e
	.4byte	0xaea4
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1c
	.byte	0x67
	.4byte	.LASF1638
	.byte	0x1
	.4byte	0xaeb9
	.4byte	0xaeca
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1639
	.byte	0x1c
	.byte	0x6a
	.4byte	.LASF1640
	.4byte	0xac
	.byte	0x1
	.4byte	0xaee3
	.4byte	0xaef4
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1641
	.byte	0x1c
	.byte	0x6b
	.4byte	.LASF1642
	.4byte	0xac
	.byte	0x1
	.4byte	0xaf09
	.uleb128 0x17
	.4byte	0xaf27
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa7e5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa7cf
	.uleb128 0xb
	.byte	0x4
	.4byte	0xaf2d
	.uleb128 0xc
	.4byte	0xa7e5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa7e5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xaf3e
	.uleb128 0xc
	.4byte	0xa7e5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa05a
	.uleb128 0x2b
	.4byte	.LASF1643
	.byte	0x44
	.byte	0x1d
	.byte	0x28
	.4byte	0xbb24
	.uleb128 0x26
	.4byte	.LASF938
	.byte	0x1d
	.byte	0x76
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF940
	.byte	0x1d
	.byte	0x77
	.4byte	0x3508
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1644
	.byte	0x1d
	.byte	0x78
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1645
	.byte	0x1d
	.byte	0x79
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1646
	.byte	0x1d
	.byte	0x7a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x48
	.string	"dUp"
	.byte	0x1d
	.byte	0x7b
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1647
	.byte	0x1d
	.byte	0x7c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1643
	.byte	0x1d
	.byte	0x2a
	.byte	0x1
	.4byte	0xafcf
	.4byte	0xafd6
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF943
	.byte	0x1d
	.byte	0x2c
	.4byte	.LASF1648
	.byte	0x1
	.4byte	0xafeb
	.4byte	0xaff7
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1649
	.byte	0x1d
	.byte	0x2d
	.4byte	.LASF1650
	.byte	0x1
	.4byte	0xb00c
	.4byte	0xb018
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF816
	.byte	0x1d
	.byte	0x2e
	.4byte	.LASF1651
	.byte	0x1
	.4byte	0xb02d
	.4byte	0xb048
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1652
	.byte	0x1d
	.byte	0x2f
	.4byte	.LASF1653
	.byte	0x1
	.4byte	0xb05d
	.4byte	0xb06e
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1654
	.byte	0x1d
	.byte	0x30
	.4byte	.LASF1655
	.byte	0x1
	.4byte	0xb083
	.4byte	0xb08f
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1656
	.byte	0x1d
	.byte	0x31
	.4byte	.LASF1657
	.byte	0x1
	.4byte	0xb0a4
	.4byte	0xb0b0
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF954
	.byte	0x1d
	.byte	0x33
	.4byte	.LASF1658
	.4byte	0x4236
	.byte	0x1
	.4byte	0xb0c9
	.4byte	0xb0d0
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1608
	.byte	0x1d
	.byte	0x34
	.4byte	.LASF1659
	.4byte	0x680f
	.byte	0x1
	.4byte	0xb0e9
	.4byte	0xb0f0
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1546
	.byte	0x1d
	.byte	0x35
	.4byte	.LASF1660
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xb109
	.4byte	0xb110
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1661
	.byte	0x1d
	.byte	0x37
	.4byte	.LASF1662
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb129
	.4byte	0xb130
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1663
	.byte	0x1d
	.byte	0x38
	.4byte	.LASF1664
	.4byte	0x109
	.byte	0x1
	.4byte	0xb149
	.4byte	0xb150
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1665
	.byte	0x1d
	.byte	0x39
	.4byte	.LASF1666
	.4byte	0x109
	.byte	0x1
	.4byte	0xb169
	.4byte	0xb170
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1667
	.byte	0x1d
	.byte	0x3a
	.4byte	.LASF1668
	.4byte	0x109
	.byte	0x1
	.4byte	0xb189
	.4byte	0xb190
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1669
	.byte	0x1d
	.byte	0x3b
	.4byte	.LASF1670
	.4byte	0x109
	.byte	0x1
	.4byte	0xb1a9
	.4byte	0xb1b0
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1d
	.byte	0x3d
	.4byte	.LASF1671
	.4byte	0xaf49
	.byte	0x1
	.4byte	0xb1c9
	.4byte	0xb1d5
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x1d
	.byte	0x3e
	.4byte	.LASF1672
	.4byte	0xbb35
	.byte	0x1
	.4byte	0xb1ee
	.4byte	0xb1fa
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x1d
	.byte	0x3f
	.4byte	.LASF1673
	.4byte	0xaf49
	.byte	0x1
	.4byte	0xb213
	.4byte	0xb21f
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x1d
	.byte	0x40
	.4byte	.LASF1674
	.4byte	0xbb35
	.byte	0x1
	.4byte	0xb238
	.4byte	0xb244
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x1d
	.byte	0x41
	.4byte	.LASF1675
	.4byte	0xaf49
	.byte	0x1
	.4byte	0xb25d
	.4byte	0xb269
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x1d
	.byte	0x42
	.4byte	.LASF1676
	.4byte	0xbb35
	.byte	0x1
	.4byte	0xb282
	.4byte	0xb28e
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1d
	.byte	0x44
	.4byte	.LASF1677
	.4byte	0x109
	.byte	0x1
	.4byte	0xb2a7
	.4byte	0xb2b3
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1d
	.byte	0x45
	.4byte	.LASF1678
	.4byte	0xac
	.byte	0x1
	.4byte	0xb2cc
	.4byte	0xb2dd
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1679
	.byte	0x1d
	.byte	0x48
	.4byte	.LASF1680
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb2f6
	.4byte	0xb302
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1681
	.byte	0x1d
	.byte	0x49
	.4byte	.LASF1682
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb31b
	.4byte	0xb327
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1683
	.byte	0x1d
	.byte	0x4a
	.4byte	.LASF1684
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb340
	.4byte	0xb34c
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1685
	.byte	0x1d
	.byte	0x4b
	.4byte	.LASF1686
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb365
	.4byte	0xb371
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb41
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1687
	.byte	0x1d
	.byte	0x4c
	.4byte	.LASF1688
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb38a
	.4byte	0xb396
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1689
	.byte	0x1d
	.byte	0x4d
	.4byte	.LASF1690
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb3af
	.4byte	0xb3bb
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb52
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1d
	.byte	0x50
	.4byte	.LASF1691
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb3d4
	.4byte	0xb3e0
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1569
	.byte	0x1d
	.byte	0x51
	.4byte	.LASF1692
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb3f9
	.4byte	0xb405
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1624
	.byte	0x1d
	.byte	0x52
	.4byte	.LASF1693
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb41e
	.4byte	0xb42a
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x1d
	.byte	0x53
	.4byte	.LASF1694
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb443
	.4byte	0xb44f
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb41
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1695
	.byte	0x1d
	.byte	0x54
	.4byte	.LASF1696
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb468
	.4byte	0xb474
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1697
	.byte	0x1d
	.byte	0x55
	.4byte	.LASF1698
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb48d
	.4byte	0xb499
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb52
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1d
	.byte	0x56
	.4byte	.LASF1699
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb4b2
	.4byte	0xb4c3
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1d
	.byte	0x57
	.4byte	.LASF1700
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb4dc
	.4byte	0xb4f7
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1701
	.byte	0x1d
	.byte	0x5a
	.4byte	.LASF1702
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb510
	.4byte	0xb526
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1701
	.byte	0x1d
	.byte	0x5b
	.4byte	.LASF1703
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb53f
	.4byte	0xb555
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1701
	.byte	0x1d
	.byte	0x5c
	.4byte	.LASF1704
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb56e
	.4byte	0xb584
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb41
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1705
	.byte	0x1d
	.byte	0x5f
	.4byte	.LASF1706
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb59d
	.4byte	0xb5a9
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1707
	.byte	0x1d
	.byte	0x60
	.4byte	.LASF1708
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb5c2
	.4byte	0xb5ce
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1709
	.byte	0x1d
	.byte	0x61
	.4byte	.LASF1710
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb5e7
	.4byte	0xb5f3
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb41
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1711
	.byte	0x1d
	.byte	0x62
	.4byte	.LASF1712
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb60c
	.4byte	0xb618
	.uleb128 0x17
	.4byte	0xbb24
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1713
	.byte	0x1d
	.byte	0x64
	.4byte	.LASF1714
	.byte	0x1
	.4byte	0xb62d
	.4byte	0xb639
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9456
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1582
	.byte	0x1d
	.byte	0x65
	.4byte	.LASF1715
	.byte	0x1
	.4byte	0xb64e
	.4byte	0xb65a
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1d
	.byte	0x68
	.4byte	.LASF1716
	.byte	0x1
	.4byte	0xb66f
	.4byte	0xb685
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1d
	.byte	0x69
	.4byte	.LASF1717
	.byte	0x1
	.4byte	0xb69a
	.4byte	0xb6ab
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1718
	.byte	0x1d
	.byte	0x6c
	.4byte	.LASF1719
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb6c4
	.4byte	0xb6d5
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1718
	.byte	0x1d
	.byte	0x6d
	.4byte	.LASF1720
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb6ee
	.4byte	0xb6ff
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1718
	.byte	0x1d
	.byte	0x6e
	.4byte	.LASF1721
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb718
	.4byte	0xb729
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb41
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1718
	.byte	0x1d
	.byte	0x6f
	.4byte	.LASF1722
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb742
	.4byte	0xb753
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1718
	.byte	0x1d
	.byte	0x70
	.4byte	.LASF1723
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb76c
	.4byte	0xb77d
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb52
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1724
	.byte	0x1d
	.byte	0x73
	.4byte	.LASF1725
	.4byte	0x158e
	.byte	0x1
	.4byte	0xb796
	.4byte	0xb7ac
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.uleb128 0x19
	.4byte	0xbb3b
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1726
	.byte	0x1d
	.byte	0x7f
	.4byte	.LASF1728
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb7c6
	.4byte	0xb7dc
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1727
	.byte	0x1d
	.byte	0x80
	.4byte	.LASF1729
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb7f6
	.4byte	0xb80c
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb47
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x2e92
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1730
	.byte	0x1d
	.byte	0x81
	.4byte	.LASF1731
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb826
	.4byte	0xb83c
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1732
	.byte	0x1d
	.byte	0x82
	.4byte	.LASF1733
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb856
	.4byte	0xb871
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0xbb47
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x2e92
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1734
	.byte	0x1d
	.byte	0x83
	.4byte	.LASF1735
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb88b
	.4byte	0xb89c
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1736
	.byte	0x1d
	.byte	0x84
	.4byte	.LASF1737
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb8b6
	.4byte	0xb8d1
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1738
	.byte	0x1d
	.byte	0x85
	.4byte	.LASF1739
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb8eb
	.4byte	0xb8fc
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1740
	.byte	0x1d
	.byte	0x86
	.4byte	.LASF1741
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xb916
	.4byte	0xb927
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1742
	.byte	0x1d
	.byte	0x87
	.4byte	.LASF1743
	.byte	0x3
	.byte	0x1
	.4byte	0xb93d
	.4byte	0xb94e
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x209d
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1744
	.byte	0x1d
	.byte	0x88
	.4byte	.LASF1745
	.byte	0x3
	.byte	0x1
	.4byte	0xb964
	.4byte	0xb970
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1746
	.byte	0x1d
	.byte	0x89
	.4byte	.LASF1747
	.byte	0x3
	.byte	0x1
	.4byte	0xb986
	.4byte	0xb997
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e8c
	.uleb128 0x19
	.4byte	0x2e8c
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x1d
	.byte	0x8a
	.4byte	.LASF1748
	.byte	0x3
	.byte	0x1
	.4byte	0xb9ad
	.4byte	0xb9cd
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1749
	.byte	0x1d
	.byte	0x8b
	.4byte	.LASF1750
	.byte	0x3
	.byte	0x1
	.4byte	0xb9e3
	.4byte	0xba03
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xc34a
	.uleb128 0x19
	.4byte	0xc34a
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1751
	.byte	0x1d
	.byte	0x8c
	.4byte	.LASF1752
	.byte	0x3
	.byte	0x1
	.4byte	0xba19
	.4byte	0xba39
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1753
	.byte	0x1d
	.byte	0x8d
	.4byte	.LASF1754
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xba53
	.4byte	0xba78
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF1755
	.byte	0x1d
	.byte	0x8e
	.4byte	.LASF1756
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xba92
	.4byte	0xbab2
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF1757
	.byte	0x1d
	.byte	0x8f
	.4byte	.LASF1758
	.byte	0x3
	.byte	0x1
	.4byte	0xbac8
	.4byte	0xbade
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb3b
	.uleb128 0x19
	.4byte	0x21c8
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.4byte	.LASF1759
	.byte	0x1d
	.byte	0x90
	.4byte	.LASF1760
	.4byte	0x158e
	.byte	0x3
	.byte	0x1
	.4byte	0xbaf4
	.uleb128 0x17
	.4byte	0xbb2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x423c
	.uleb128 0x19
	.4byte	0x423c
	.uleb128 0x19
	.4byte	0xc34a
	.uleb128 0x19
	.4byte	0xc34a
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xaf49
	.uleb128 0xb
	.byte	0x4
	.4byte	0xbb30
	.uleb128 0xc
	.4byte	0xaf49
	.uleb128 0x22
	.byte	0x4
	.4byte	0xaf49
	.uleb128 0x22
	.byte	0x4
	.4byte	0xaf2d
	.uleb128 0x22
	.byte	0x4
	.4byte	0xa03e
	.uleb128 0x22
	.byte	0x4
	.4byte	0xbb4d
	.uleb128 0xc
	.4byte	0xaf49
	.uleb128 0x22
	.byte	0x4
	.4byte	0xbb58
	.uleb128 0xc
	.4byte	0xbb5d
	.uleb128 0x14
	.4byte	.LASF1761
	.byte	0x10
	.byte	0x1
	.byte	0x28
	.4byte	0xbb5d
	.4byte	0xc34a
	.uleb128 0x15
	.4byte	.LASF1762
	.4byte	0x25e23
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF1763
	.byte	0x1
	.byte	0x7c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x48
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x4466
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x26
	.4byte	.LASF1764
	.byte	0x1
	.byte	0x7e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0xbbb6
	.4byte	0xbbbd
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.4byte	0xbbcf
	.4byte	0xbbdb
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.4byte	0xbbed
	.4byte	0xbbfe
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x1
	.4byte	0xbc10
	.4byte	0xbc21
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.4byte	0xbc33
	.4byte	0xbc3f
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.byte	0x1
	.4byte	0xbc51
	.4byte	0xbc5d
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28c32
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	0xbb5d
	.byte	0x1
	.4byte	0xbc73
	.4byte	0xbc80
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x1
	.byte	0xbc
	.4byte	.LASF1766
	.4byte	0x28c4e
	.byte	0x1
	.4byte	0xbc99
	.4byte	0xbca5
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28c32
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1
	.byte	0xca
	.4byte	.LASF1767
	.4byte	0x6d64
	.byte	0x1
	.4byte	0xbcbe
	.4byte	0xbcca
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1
	.byte	0xcf
	.4byte	.LASF1768
	.4byte	0x6d8b
	.byte	0x1
	.4byte	0xbce3
	.4byte	0xbcef
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1
	.byte	0xd4
	.4byte	.LASF1769
	.4byte	0x28c4e
	.byte	0x1
	.4byte	0xbd08
	.4byte	0xbd14
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1
	.byte	0xd9
	.4byte	.LASF1770
	.4byte	0x28c4e
	.byte	0x1
	.4byte	0xbd2d
	.4byte	0xbd39
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d64
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1
	.byte	0xde
	.4byte	.LASF1771
	.byte	0x1
	.4byte	0xbd4e
	.4byte	0xbd5a
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1
	.byte	0xe6
	.4byte	.LASF1772
	.byte	0x1
	.4byte	0xbd6f
	.4byte	0xbd7b
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6d64
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1773
	.byte	0x1
	.byte	0xee
	.4byte	.LASF1774
	.4byte	0xac
	.byte	0x1
	.4byte	0xbd94
	.4byte	0xbd9b
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1775
	.byte	0x1
	.byte	0xf2
	.4byte	.LASF1776
	.byte	0x1
	.4byte	0xbdb0
	.4byte	0xbdbc
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1
	.byte	0xf9
	.4byte	.LASF1777
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xbb5d
	.byte	0x1
	.4byte	0xbdd9
	.4byte	0xbde0
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1778
	.byte	0x1
	.byte	0x43
	.4byte	.LASF1779
	.byte	0x1
	.4byte	0xbdf5
	.4byte	0xbe06
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1778
	.byte	0x1
	.byte	0xff
	.4byte	.LASF1780
	.byte	0x1
	.4byte	0xbe1b
	.4byte	0xbe27
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1781
	.byte	0x1
	.byte	0x48
	.4byte	.LASF1782
	.4byte	0xac
	.byte	0x1
	.4byte	0xbe40
	.4byte	0xbe5b
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x28c54
	.uleb128 0x19
	.4byte	0x28c54
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1783
	.byte	0x1
	.byte	0x4b
	.4byte	.LASF1784
	.4byte	0x28c5a
	.byte	0x1
	.4byte	0xbe74
	.4byte	0xbe8a
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1785
	.byte	0x1
	.byte	0x4e
	.4byte	.LASF1786
	.4byte	0x158e
	.byte	0x1
	.4byte	0xbea3
	.4byte	0xbeb9
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1787
	.byte	0x1
	.byte	0x51
	.4byte	.LASF1788
	.4byte	0x28c5a
	.byte	0x1
	.4byte	0xbed2
	.4byte	0xbed9
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1789
	.byte	0x1
	.byte	0x52
	.4byte	.LASF1790
	.4byte	0x28c5a
	.byte	0x1
	.4byte	0xbef2
	.4byte	0xbef9
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1791
	.byte	0x1
	.byte	0x53
	.4byte	.LASF1792
	.byte	0x1
	.4byte	0xbf0e
	.4byte	0xbf15
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1793
	.byte	0x1
	.byte	0x54
	.4byte	.LASF1794
	.byte	0x1
	.4byte	0xbf2a
	.4byte	0xbf36
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1795
	.byte	0x1
	.byte	0x55
	.4byte	.LASF1796
	.byte	0x1
	.4byte	0xbf4b
	.4byte	0xbf5c
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1797
	.byte	0x1
	.byte	0x56
	.4byte	.LASF1798
	.byte	0x1
	.4byte	0xbf71
	.4byte	0xbf7d
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1799
	.byte	0x1
	.byte	0x57
	.4byte	.LASF1800
	.byte	0x1
	.4byte	0xbf92
	.4byte	0xbfa3
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1801
	.byte	0x1
	.byte	0x58
	.4byte	.LASF1802
	.4byte	0x158e
	.byte	0x1
	.4byte	0xbfbc
	.4byte	0xbfd2
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1803
	.byte	0x1
	.byte	0x5a
	.4byte	.LASF1804
	.byte	0x1
	.4byte	0xbfe7
	.4byte	0xbffd
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28c60
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1803
	.byte	0x1
	.byte	0x5c
	.4byte	.LASF1805
	.byte	0x1
	.4byte	0xc012
	.4byte	0xc028
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1806
	.byte	0x1
	.byte	0x5f
	.4byte	.LASF1807
	.4byte	0x28c5a
	.byte	0x1
	.4byte	0xc041
	.4byte	0xc057
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28c32
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1808
	.byte	0x1
	.byte	0x61
	.4byte	.LASF1809
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc070
	.4byte	0xc07c
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1810
	.byte	0x1
	.byte	0x63
	.4byte	.LASF1811
	.4byte	0x109
	.byte	0x1
	.4byte	0xc095
	.4byte	0xc09c
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1546
	.byte	0x1
	.byte	0x64
	.4byte	.LASF1812
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xc0b5
	.4byte	0xc0bc
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1494
	.byte	0x1
	.byte	0x65
	.4byte	.LASF1813
	.4byte	0x109
	.byte	0x1
	.4byte	0xc0d5
	.4byte	0xc0e1
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1814
	.byte	0x1
	.byte	0x66
	.4byte	.LASF1815
	.byte	0x1
	.4byte	0xc0f6
	.4byte	0xc107
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x423c
	.uleb128 0x19
	.4byte	0x2091
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1814
	.byte	0x1
	.byte	0x67
	.4byte	.LASF1816
	.byte	0x1
	.4byte	0xc11c
	.4byte	0xc128
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13890
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1817
	.byte	0x1
	.byte	0x68
	.4byte	.LASF1818
	.byte	0x1
	.4byte	0xc13d
	.4byte	0xc149
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf43
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1819
	.byte	0x1
	.byte	0x6a
	.4byte	.LASF1820
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc162
	.4byte	0xc169
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1821
	.byte	0x1
	.byte	0x6b
	.4byte	.LASF1822
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc182
	.4byte	0xc189
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1823
	.byte	0x1
	.byte	0x6c
	.4byte	.LASF1824
	.byte	0x1
	.4byte	0xc19e
	.4byte	0xc1a5
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1
	.byte	0x6e
	.4byte	.LASF1825
	.4byte	0x109
	.byte	0x1
	.4byte	0xc1be
	.4byte	0xc1ca
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1
	.byte	0x6f
	.4byte	.LASF1826
	.4byte	0xac
	.byte	0x1
	.4byte	0xc1e3
	.4byte	0xc1f4
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1827
	.byte	0x1
	.byte	0x71
	.4byte	.LASF1828
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc20d
	.4byte	0xc22d
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x28c32
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1829
	.byte	0x1
	.byte	0x73
	.4byte	.LASF1830
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc246
	.4byte	0xc25c
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1
	.byte	0x75
	.4byte	.LASF1831
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc275
	.4byte	0xc290
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1
	.byte	0x77
	.4byte	.LASF1832
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc2a9
	.4byte	0xc2c9
	.uleb128 0x17
	.4byte	0x19d9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF1833
	.byte	0x1
	.byte	0x79
	.4byte	.LASF1834
	.4byte	0x109
	.byte	0x1
	.4byte	0xc2ee
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF1835
	.byte	0x1
	.2byte	0x103
	.4byte	.LASF1836
	.4byte	0x158e
	.byte	0x2
	.byte	0x1
	.4byte	0xc309
	.4byte	0xc31a
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x1
	.byte	0x81
	.4byte	.LASF1838
	.4byte	0x158e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xbb5d
	.byte	0x2
	.byte	0x1
	.4byte	0xc338
	.uleb128 0x17
	.4byte	0x20c94
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0xac
	.uleb128 0x2b
	.4byte	.LASF1839
	.byte	0x3c
	.byte	0x8
	.byte	0x28
	.4byte	0xc4d7
	.uleb128 0x5
	.string	"xyz"
	.byte	0x8
	.byte	0x2a
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"st"
	.byte	0x8
	.byte	0x2b
	.4byte	0x21ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF1840
	.byte	0x8
	.byte	0x2c
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF1841
	.byte	0x8
	.byte	0x2d
	.4byte	0xa7b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x8
	.byte	0x2e
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x8
	.byte	0x32
	.4byte	.LASF1843
	.4byte	0x109
	.byte	0x1
	.4byte	0xc3ba
	.4byte	0xc3c6
	.uleb128 0x17
	.4byte	0xc4d7
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x8
	.byte	0x33
	.4byte	.LASF1844
	.4byte	0x2091
	.byte	0x1
	.4byte	0xc3df
	.4byte	0xc3eb
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x8
	.byte	0x35
	.4byte	.LASF1845
	.byte	0x1
	.4byte	0xc400
	.4byte	0xc407
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF520
	.byte	0x8
	.byte	0x37
	.4byte	.LASF1846
	.byte	0x1
	.4byte	0xc41c
	.4byte	0xc432
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc4e8
	.uleb128 0x19
	.4byte	0xc4e8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1847
	.byte	0x8
	.byte	0x38
	.4byte	.LASF1848
	.byte	0x1
	.4byte	0xc447
	.4byte	0xc45d
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc4e8
	.uleb128 0x19
	.4byte	0xc4e8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF501
	.byte	0x8
	.byte	0x3a
	.4byte	.LASF1849
	.byte	0x1
	.4byte	0xc472
	.4byte	0xc479
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1850
	.byte	0x8
	.byte	0x3c
	.4byte	.LASF1851
	.byte	0x1
	.4byte	0xc48e
	.4byte	0xc49a
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1567
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1852
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF1853
	.4byte	0x1567
	.byte	0x1
	.4byte	0xc4b3
	.4byte	0xc4ba
	.uleb128 0x17
	.4byte	0xc4d7
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF284
	.4byte	0xcd92
	.byte	0x1
	.byte	0x1
	.4byte	0xc4ca
	.uleb128 0x17
	.4byte	0xc4e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc4dd
	.uleb128 0xc
	.4byte	0xc350
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc350
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc4ee
	.uleb128 0xc
	.4byte	0xc350
	.uleb128 0x2b
	.4byte	.LASF1854
	.byte	0x1c
	.byte	0x1e
	.byte	0x28
	.4byte	0xc518
	.uleb128 0x5
	.string	"q"
	.byte	0x1e
	.byte	0x2b
	.4byte	0x5628
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"t"
	.byte	0x1e
	.byte	0x2c
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1855
	.byte	0x30
	.byte	0x1e
	.byte	0x3f
	.4byte	0xc73f
	.uleb128 0x48
	.string	"mat"
	.byte	0x1e
	.byte	0x57
	.4byte	0xc73f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1856
	.byte	0x1e
	.byte	0x42
	.4byte	.LASF1857
	.byte	0x1
	.4byte	0xc548
	.4byte	0xc554
	.uleb128 0x17
	.4byte	0xc74f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1858
	.byte	0x1e
	.byte	0x43
	.4byte	.LASF1859
	.byte	0x1
	.4byte	0xc569
	.4byte	0xc575
	.uleb128 0x17
	.4byte	0xc74f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x1e
	.byte	0x45
	.4byte	.LASF1860
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xc58e
	.4byte	0xc59a
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x1e
	.byte	0x46
	.4byte	.LASF1861
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xc5b3
	.4byte	0xc5bf
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF486
	.byte	0x1e
	.byte	0x48
	.4byte	.LASF1862
	.4byte	0xc760
	.byte	0x1
	.4byte	0xc5d8
	.4byte	0xc5e4
	.uleb128 0x17
	.4byte	0xc74f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF483
	.byte	0x1e
	.byte	0x49
	.4byte	.LASF1863
	.4byte	0xc760
	.byte	0x1
	.4byte	0xc5fd
	.4byte	0xc609
	.uleb128 0x17
	.4byte	0xc74f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1e
	.byte	0x4b
	.4byte	.LASF1864
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc622
	.4byte	0xc62e
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x1e
	.byte	0x4c
	.4byte	.LASF1865
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc647
	.4byte	0xc658
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x1e
	.byte	0x4d
	.4byte	.LASF1866
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc671
	.4byte	0xc67d
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1e
	.byte	0x4e
	.4byte	.LASF1867
	.4byte	0x158e
	.byte	0x1
	.4byte	0xc696
	.4byte	0xc6a2
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc766
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF567
	.byte	0x1e
	.byte	0x50
	.4byte	.LASF1868
	.4byte	0x3508
	.byte	0x1
	.4byte	0xc6bb
	.4byte	0xc6c2
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF639
	.byte	0x1e
	.byte	0x51
	.4byte	.LASF1869
	.4byte	0x26d6
	.byte	0x1
	.4byte	0xc6db
	.4byte	0xc6e2
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1870
	.byte	0x1e
	.byte	0x52
	.4byte	.LASF1871
	.4byte	0xc4f3
	.byte	0x1
	.4byte	0xc6fb
	.4byte	0xc702
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x1e
	.byte	0x53
	.4byte	.LASF1872
	.4byte	0x209d
	.byte	0x1
	.4byte	0xc71b
	.4byte	0xc722
	.uleb128 0x17
	.4byte	0xc755
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF515
	.byte	0x1e
	.byte	0x54
	.4byte	.LASF1873
	.4byte	0x21c8
	.byte	0x1
	.4byte	0xc737
	.uleb128 0x17
	.4byte	0xc74f
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0xc74f
	.uleb128 0xa
	.4byte	0x34
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc518
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc75b
	.uleb128 0xc
	.4byte	0xc518
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc518
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc76c
	.uleb128 0xc
	.4byte	0xc518
	.uleb128 0x4
	.4byte	.LASF1874
	.byte	0x10
	.byte	0x1f
	.byte	0x2b
	.4byte	0xc79a
	.uleb128 0x6
	.4byte	.LASF1875
	.byte	0x1f
	.byte	0x2c
	.4byte	0xc79a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1876
	.byte	0x1f
	.byte	0x2d
	.4byte	0xc79a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0xc7aa
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1877
	.byte	0x1f
	.byte	0x2e
	.4byte	0xc771
	.uleb128 0x2b
	.4byte	.LASF1878
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.4byte	0xcd56
	.uleb128 0x48
	.string	"num"
	.byte	0x18
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x18
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1411
	.byte	0x18
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1412
	.byte	0x18
	.byte	0x92
	.4byte	0xc4e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1413
	.byte	0x18
	.byte	0x5f
	.4byte	0xcd56
	.uleb128 0x2
	.4byte	.LASF1414
	.byte	0x18
	.byte	0x60
	.4byte	0xcd6a
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0x9b
	.byte	0x1
	.4byte	0xc824
	.4byte	0xc830
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0xa9
	.byte	0x1
	.4byte	0xc841
	.4byte	0xc84d
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd75
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1416
	.byte	0x18
	.byte	0xb4
	.byte	0x1
	.4byte	0xc85e
	.4byte	0xc86b
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF1879
	.byte	0x1
	.4byte	0xc880
	.4byte	0xc887
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Num"
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF1880
	.4byte	0xac
	.byte	0x1
	.4byte	0xc8a1
	.4byte	0xc8a8
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF1881
	.4byte	0xac
	.byte	0x1
	.4byte	0xc8c2
	.4byte	0xc8c9
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF1882
	.byte	0x1
	.4byte	0xc8df
	.4byte	0xc8eb
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x18
	.2byte	0x151
	.4byte	.LASF1883
	.4byte	0xac
	.byte	0x1
	.4byte	0xc905
	.4byte	0xc90c
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x18
	.byte	0xee
	.4byte	.LASF1884
	.4byte	0x29
	.byte	0x1
	.4byte	0xc925
	.4byte	0xc92c
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF1885
	.4byte	0x29
	.byte	0x1
	.4byte	0xc945
	.4byte	0xc94c
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF1886
	.4byte	0x29
	.byte	0x1
	.4byte	0xc966
	.4byte	0xc96d
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x18
	.2byte	0x21d
	.4byte	.LASF1887
	.4byte	0xcd86
	.byte	0x1
	.4byte	0xc987
	.4byte	0xc993
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd75
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x239
	.4byte	.LASF1888
	.4byte	0xcd8c
	.byte	0x1
	.4byte	0xc9ad
	.4byte	0xc9b9
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x249
	.4byte	.LASF1889
	.4byte	0xcd92
	.byte	0x1
	.4byte	0xc9d3
	.4byte	0xc9df
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1433
	.byte	0x18
	.2byte	0x15d
	.4byte	.LASF1890
	.byte	0x1
	.4byte	0xc9f5
	.4byte	0xc9fc
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x170
	.4byte	.LASF1891
	.byte	0x1
	.4byte	0xca12
	.4byte	0xca1e
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x19c
	.4byte	.LASF1892
	.byte	0x1
	.4byte	0xca34
	.4byte	0xca45
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1438
	.byte	0x18
	.2byte	0x129
	.4byte	.LASF1893
	.byte	0x1
	.4byte	0xca5b
	.4byte	0xca6c
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1c5
	.4byte	.LASF1894
	.byte	0x1
	.4byte	0xca82
	.4byte	0xca8e
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1de
	.4byte	.LASF1895
	.byte	0x1
	.4byte	0xcaa4
	.4byte	0xcab5
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1443
	.byte	0x18
	.2byte	0x1ff
	.4byte	.LASF1896
	.byte	0x1
	.4byte	0xcacb
	.4byte	0xcadc
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcd98
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x25c
	.4byte	.LASF1897
	.4byte	0xc4e2
	.byte	0x1
	.4byte	0xcaf6
	.4byte	0xcafd
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x26c
	.4byte	.LASF1898
	.4byte	0xc4d7
	.byte	0x1
	.4byte	0xcb17
	.4byte	0xcb1e
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1448
	.byte	0x18
	.2byte	0x278
	.4byte	.LASF1899
	.4byte	0xcd92
	.byte	0x1
	.4byte	0xcb38
	.4byte	0xcb3f
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x28e
	.4byte	.LASF1900
	.4byte	0xac
	.byte	0x1
	.4byte	0xcb59
	.4byte	0xcb65
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x2d6
	.4byte	.LASF1901
	.4byte	0xac
	.byte	0x1
	.4byte	0xcb7f
	.4byte	0xcb8b
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd75
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1453
	.byte	0x18
	.2byte	0x2ee
	.4byte	.LASF1902
	.4byte	0xac
	.byte	0x1
	.4byte	0xcba5
	.4byte	0xcbb1
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x18
	.2byte	0x2af
	.4byte	.LASF1903
	.4byte	0xac
	.byte	0x1
	.4byte	0xcbcb
	.4byte	0xcbdc
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.2byte	0x301
	.4byte	.LASF1904
	.4byte	0xac
	.byte	0x1
	.4byte	0xcbf6
	.4byte	0xcc02
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.2byte	0x316
	.4byte	.LASF1905
	.4byte	0xc4e2
	.byte	0x1
	.4byte	0xcc1c
	.4byte	0xcc28
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1460
	.byte	0x18
	.2byte	0x32c
	.4byte	.LASF1906
	.4byte	0xac
	.byte	0x1
	.4byte	0xcc42
	.4byte	0xcc49
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x18
	.2byte	0x344
	.4byte	.LASF1907
	.4byte	0xac
	.byte	0x1
	.4byte	0xcc63
	.4byte	0xcc6f
	.uleb128 0x17
	.4byte	0xcd80
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc4d7
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x18
	.2byte	0x359
	.4byte	.LASF1908
	.4byte	0x158e
	.byte	0x1
	.4byte	0xcc89
	.4byte	0xcc95
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x18
	.2byte	0x376
	.4byte	.LASF1909
	.4byte	0x158e
	.byte	0x1
	.4byte	0xccaf
	.4byte	0xccbb
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd8c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x18
	.2byte	0x38a
	.4byte	.LASF1910
	.byte	0x1
	.4byte	0xccd1
	.4byte	0xccdd
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd9e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x18
	.2byte	0x39c
	.4byte	.LASF1911
	.byte	0x1
	.4byte	0xccf3
	.4byte	0xcd09
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcd9e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x18
	.2byte	0x3b7
	.4byte	.LASF1912
	.byte	0x1
	.4byte	0xcd1f
	.4byte	0xcd2b
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcd86
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF1913
	.byte	0x1
	.4byte	0xcd40
	.4byte	0xcd4c
	.uleb128 0x17
	.4byte	0xcd6f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF57
	.4byte	0xc350
	.byte	0
	.uleb128 0x50
	.4byte	0xac
	.4byte	0xcd6a
	.uleb128 0x19
	.4byte	0xc4d7
	.uleb128 0x19
	.4byte	0xc4d7
	.byte	0
	.uleb128 0x51
	.4byte	0xc350
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7b5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xcd7b
	.uleb128 0xc
	.4byte	0xc7b5
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcd7b
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc7b5
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc4dd
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc350
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc808
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7fd
	.uleb128 0x2b
	.4byte	.LASF1914
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.4byte	0xd345
	.uleb128 0x48
	.string	"num"
	.byte	0x18
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x18
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1411
	.byte	0x18
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1412
	.byte	0x18
	.byte	0x92
	.4byte	0x8d35
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1413
	.byte	0x18
	.byte	0x5f
	.4byte	0xd345
	.uleb128 0x2
	.4byte	.LASF1414
	.byte	0x18
	.byte	0x60
	.4byte	0xd359
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0x9b
	.byte	0x1
	.4byte	0xce13
	.4byte	0xce1f
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0xa9
	.byte	0x1
	.4byte	0xce30
	.4byte	0xce3c
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd364
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1416
	.byte	0x18
	.byte	0xb4
	.byte	0x1
	.4byte	0xce4d
	.4byte	0xce5a
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF1915
	.byte	0x1
	.4byte	0xce6f
	.4byte	0xce76
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Num"
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF1916
	.4byte	0xac
	.byte	0x1
	.4byte	0xce90
	.4byte	0xce97
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF1917
	.4byte	0xac
	.byte	0x1
	.4byte	0xceb1
	.4byte	0xceb8
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF1918
	.byte	0x1
	.4byte	0xcece
	.4byte	0xceda
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x18
	.2byte	0x151
	.4byte	.LASF1919
	.4byte	0xac
	.byte	0x1
	.4byte	0xcef4
	.4byte	0xcefb
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x18
	.byte	0xee
	.4byte	.LASF1920
	.4byte	0x29
	.byte	0x1
	.4byte	0xcf14
	.4byte	0xcf1b
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF1921
	.4byte	0x29
	.byte	0x1
	.4byte	0xcf34
	.4byte	0xcf3b
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF1922
	.4byte	0x29
	.byte	0x1
	.4byte	0xcf55
	.4byte	0xcf5c
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x18
	.2byte	0x21d
	.4byte	.LASF1923
	.4byte	0xd375
	.byte	0x1
	.4byte	0xcf76
	.4byte	0xcf82
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd364
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x239
	.4byte	.LASF1924
	.4byte	0xd37b
	.byte	0x1
	.4byte	0xcf9c
	.4byte	0xcfa8
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x249
	.4byte	.LASF1925
	.4byte	0xc34a
	.byte	0x1
	.4byte	0xcfc2
	.4byte	0xcfce
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1433
	.byte	0x18
	.2byte	0x15d
	.4byte	.LASF1926
	.byte	0x1
	.4byte	0xcfe4
	.4byte	0xcfeb
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x170
	.4byte	.LASF1927
	.byte	0x1
	.4byte	0xd001
	.4byte	0xd00d
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x19c
	.4byte	.LASF1928
	.byte	0x1
	.4byte	0xd023
	.4byte	0xd034
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1438
	.byte	0x18
	.2byte	0x129
	.4byte	.LASF1929
	.byte	0x1
	.4byte	0xd04a
	.4byte	0xd05b
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1c5
	.4byte	.LASF1930
	.byte	0x1
	.4byte	0xd071
	.4byte	0xd07d
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1de
	.4byte	.LASF1931
	.byte	0x1
	.4byte	0xd093
	.4byte	0xd0a4
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1443
	.byte	0x18
	.2byte	0x1ff
	.4byte	.LASF1932
	.byte	0x1
	.4byte	0xd0ba
	.4byte	0xd0cb
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd381
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x25c
	.4byte	.LASF1933
	.4byte	0x8d35
	.byte	0x1
	.4byte	0xd0e5
	.4byte	0xd0ec
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x26c
	.4byte	.LASF1934
	.4byte	0x8d3b
	.byte	0x1
	.4byte	0xd106
	.4byte	0xd10d
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1448
	.byte	0x18
	.2byte	0x278
	.4byte	.LASF1935
	.4byte	0xc34a
	.byte	0x1
	.4byte	0xd127
	.4byte	0xd12e
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x28e
	.4byte	.LASF1936
	.4byte	0xac
	.byte	0x1
	.4byte	0xd148
	.4byte	0xd154
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x2d6
	.4byte	.LASF1937
	.4byte	0xac
	.byte	0x1
	.4byte	0xd16e
	.4byte	0xd17a
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd364
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1453
	.byte	0x18
	.2byte	0x2ee
	.4byte	.LASF1938
	.4byte	0xac
	.byte	0x1
	.4byte	0xd194
	.4byte	0xd1a0
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x18
	.2byte	0x2af
	.4byte	.LASF1939
	.4byte	0xac
	.byte	0x1
	.4byte	0xd1ba
	.4byte	0xd1cb
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.2byte	0x301
	.4byte	.LASF1940
	.4byte	0xac
	.byte	0x1
	.4byte	0xd1e5
	.4byte	0xd1f1
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.2byte	0x316
	.4byte	.LASF1941
	.4byte	0x8d35
	.byte	0x1
	.4byte	0xd20b
	.4byte	0xd217
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1460
	.byte	0x18
	.2byte	0x32c
	.4byte	.LASF1942
	.4byte	0xac
	.byte	0x1
	.4byte	0xd231
	.4byte	0xd238
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x18
	.2byte	0x344
	.4byte	.LASF1943
	.4byte	0xac
	.byte	0x1
	.4byte	0xd252
	.4byte	0xd25e
	.uleb128 0x17
	.4byte	0xd36f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d3b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x18
	.2byte	0x359
	.4byte	.LASF1944
	.4byte	0x158e
	.byte	0x1
	.4byte	0xd278
	.4byte	0xd284
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x18
	.2byte	0x376
	.4byte	.LASF1945
	.4byte	0x158e
	.byte	0x1
	.4byte	0xd29e
	.4byte	0xd2aa
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x18
	.2byte	0x38a
	.4byte	.LASF1946
	.byte	0x1
	.4byte	0xd2c0
	.4byte	0xd2cc
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd387
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x18
	.2byte	0x39c
	.4byte	.LASF1947
	.byte	0x1
	.4byte	0xd2e2
	.4byte	0xd2f8
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd387
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x18
	.2byte	0x3b7
	.4byte	.LASF1948
	.byte	0x1
	.4byte	0xd30e
	.4byte	0xd31a
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd375
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF1949
	.byte	0x1
	.4byte	0xd32f
	.4byte	0xd33b
	.uleb128 0x17
	.4byte	0xd35e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF57
	.4byte	0xac
	.byte	0
	.uleb128 0x50
	.4byte	0xac
	.4byte	0xd359
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0x8d3b
	.byte	0
	.uleb128 0x51
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcda4
	.uleb128 0x22
	.byte	0x4
	.4byte	0xd36a
	.uleb128 0xc
	.4byte	0xcda4
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd36a
	.uleb128 0x22
	.byte	0x4
	.4byte	0xcda4
	.uleb128 0x22
	.byte	0x4
	.4byte	0x21ad
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcdf7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcdec
	.uleb128 0x2b
	.4byte	.LASF1950
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.4byte	0xd92e
	.uleb128 0x48
	.string	"num"
	.byte	0x18
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x18
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1411
	.byte	0x18
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1412
	.byte	0x18
	.byte	0x92
	.4byte	0xd92e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1413
	.byte	0x18
	.byte	0x5f
	.4byte	0xd934
	.uleb128 0x2
	.4byte	.LASF1414
	.byte	0x18
	.byte	0x60
	.4byte	0xd953
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0x9b
	.byte	0x1
	.4byte	0xd3fc
	.4byte	0xd408
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0xa9
	.byte	0x1
	.4byte	0xd419
	.4byte	0xd425
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd95e
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1416
	.byte	0x18
	.byte	0xb4
	.byte	0x1
	.4byte	0xd436
	.4byte	0xd443
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF1951
	.byte	0x1
	.4byte	0xd458
	.4byte	0xd45f
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Num"
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF1952
	.4byte	0xac
	.byte	0x1
	.4byte	0xd479
	.4byte	0xd480
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF1953
	.4byte	0xac
	.byte	0x1
	.4byte	0xd49a
	.4byte	0xd4a1
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF1954
	.byte	0x1
	.4byte	0xd4b7
	.4byte	0xd4c3
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x18
	.2byte	0x151
	.4byte	.LASF1955
	.4byte	0xac
	.byte	0x1
	.4byte	0xd4dd
	.4byte	0xd4e4
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x18
	.byte	0xee
	.4byte	.LASF1956
	.4byte	0x29
	.byte	0x1
	.4byte	0xd4fd
	.4byte	0xd504
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF1957
	.4byte	0x29
	.byte	0x1
	.4byte	0xd51d
	.4byte	0xd524
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF1958
	.4byte	0x29
	.byte	0x1
	.4byte	0xd53e
	.4byte	0xd545
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x18
	.2byte	0x21d
	.4byte	.LASF1959
	.4byte	0xd96f
	.byte	0x1
	.4byte	0xd55f
	.4byte	0xd56b
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd95e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x239
	.4byte	.LASF1960
	.4byte	0xd975
	.byte	0x1
	.4byte	0xd585
	.4byte	0xd591
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x249
	.4byte	.LASF1961
	.4byte	0xd97b
	.byte	0x1
	.4byte	0xd5ab
	.4byte	0xd5b7
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1433
	.byte	0x18
	.2byte	0x15d
	.4byte	.LASF1962
	.byte	0x1
	.4byte	0xd5cd
	.4byte	0xd5d4
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x170
	.4byte	.LASF1963
	.byte	0x1
	.4byte	0xd5ea
	.4byte	0xd5f6
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x19c
	.4byte	.LASF1964
	.byte	0x1
	.4byte	0xd60c
	.4byte	0xd61d
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1438
	.byte	0x18
	.2byte	0x129
	.4byte	.LASF1965
	.byte	0x1
	.4byte	0xd633
	.4byte	0xd644
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1c5
	.4byte	.LASF1966
	.byte	0x1
	.4byte	0xd65a
	.4byte	0xd666
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1de
	.4byte	.LASF1967
	.byte	0x1
	.4byte	0xd67c
	.4byte	0xd68d
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1443
	.byte	0x18
	.2byte	0x1ff
	.4byte	.LASF1968
	.byte	0x1
	.4byte	0xd6a3
	.4byte	0xd6b4
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd981
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x25c
	.4byte	.LASF1969
	.4byte	0xd92e
	.byte	0x1
	.4byte	0xd6ce
	.4byte	0xd6d5
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x26c
	.4byte	.LASF1970
	.4byte	0xd948
	.byte	0x1
	.4byte	0xd6ef
	.4byte	0xd6f6
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1448
	.byte	0x18
	.2byte	0x278
	.4byte	.LASF1971
	.4byte	0xd97b
	.byte	0x1
	.4byte	0xd710
	.4byte	0xd717
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x28e
	.4byte	.LASF1972
	.4byte	0xac
	.byte	0x1
	.4byte	0xd731
	.4byte	0xd73d
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x2d6
	.4byte	.LASF1973
	.4byte	0xac
	.byte	0x1
	.4byte	0xd757
	.4byte	0xd763
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd95e
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1453
	.byte	0x18
	.2byte	0x2ee
	.4byte	.LASF1974
	.4byte	0xac
	.byte	0x1
	.4byte	0xd77d
	.4byte	0xd789
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x18
	.2byte	0x2af
	.4byte	.LASF1975
	.4byte	0xac
	.byte	0x1
	.4byte	0xd7a3
	.4byte	0xd7b4
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.2byte	0x301
	.4byte	.LASF1976
	.4byte	0xac
	.byte	0x1
	.4byte	0xd7ce
	.4byte	0xd7da
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.2byte	0x316
	.4byte	.LASF1977
	.4byte	0xd92e
	.byte	0x1
	.4byte	0xd7f4
	.4byte	0xd800
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1460
	.byte	0x18
	.2byte	0x32c
	.4byte	.LASF1978
	.4byte	0xac
	.byte	0x1
	.4byte	0xd81a
	.4byte	0xd821
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x18
	.2byte	0x344
	.4byte	.LASF1979
	.4byte	0xac
	.byte	0x1
	.4byte	0xd83b
	.4byte	0xd847
	.uleb128 0x17
	.4byte	0xd969
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd948
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x18
	.2byte	0x359
	.4byte	.LASF1980
	.4byte	0x158e
	.byte	0x1
	.4byte	0xd861
	.4byte	0xd86d
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x18
	.2byte	0x376
	.4byte	.LASF1981
	.4byte	0x158e
	.byte	0x1
	.4byte	0xd887
	.4byte	0xd893
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd975
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x18
	.2byte	0x38a
	.4byte	.LASF1982
	.byte	0x1
	.4byte	0xd8a9
	.4byte	0xd8b5
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd987
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x18
	.2byte	0x39c
	.4byte	.LASF1983
	.byte	0x1
	.4byte	0xd8cb
	.4byte	0xd8e1
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd987
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x18
	.2byte	0x3b7
	.4byte	.LASF1984
	.byte	0x1
	.4byte	0xd8f7
	.4byte	0xd903
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd96f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF1985
	.byte	0x1
	.4byte	0xd918
	.4byte	0xd924
	.uleb128 0x17
	.4byte	0xd958
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF57
	.4byte	0xc771
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc771
	.uleb128 0x50
	.4byte	0xac
	.4byte	0xd948
	.uleb128 0x19
	.4byte	0xd948
	.uleb128 0x19
	.4byte	0xd948
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd94e
	.uleb128 0xc
	.4byte	0xc771
	.uleb128 0x51
	.4byte	0xc771
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd38d
	.uleb128 0x22
	.byte	0x4
	.4byte	0xd964
	.uleb128 0xc
	.4byte	0xd38d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd964
	.uleb128 0x22
	.byte	0x4
	.4byte	0xd38d
	.uleb128 0x22
	.byte	0x4
	.4byte	0xd94e
	.uleb128 0x22
	.byte	0x4
	.4byte	0xc771
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd3e0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd3d5
	.uleb128 0x2b
	.4byte	.LASF1986
	.byte	0x40
	.byte	0x1f
	.byte	0x31
	.4byte	0xddcd
	.uleb128 0x26
	.4byte	.LASF1875
	.byte	0x1f
	.byte	0x60
	.4byte	0xc7b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x26
	.4byte	.LASF1987
	.byte	0x1f
	.byte	0x61
	.4byte	0xcda4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x2
	.uleb128 0x26
	.4byte	.LASF1988
	.byte	0x1f
	.byte	0x62
	.4byte	0xd38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x2
	.uleb128 0x26
	.4byte	.LASF1989
	.byte	0x1f
	.byte	0x63
	.4byte	0xcda4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x2
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1986
	.byte	0x1f
	.byte	0x33
	.byte	0x1
	.4byte	0xd9e6
	.4byte	0xd9ed
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1986
	.byte	0x1f
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.4byte	0xd9ff
	.4byte	0xda0b
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xddd3
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF1986
	.byte	0x1f
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.4byte	0xda1d
	.4byte	0xda38
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc4d7
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1990
	.byte	0x1f
	.byte	0x36
	.byte	0x1
	.4byte	0xda49
	.4byte	0xda56
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1f
	.byte	0x38
	.4byte	.LASF1991
	.4byte	0xcd8c
	.byte	0x1
	.4byte	0xda6f
	.4byte	0xda7b
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1f
	.byte	0x39
	.4byte	.LASF1992
	.4byte	0xcd92
	.byte	0x1
	.4byte	0xda94
	.4byte	0xdaa0
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1f
	.byte	0x3a
	.4byte	.LASF1993
	.4byte	0xdde9
	.byte	0x1
	.4byte	0xdab9
	.4byte	0xdac5
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xddd3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1994
	.byte	0x1f
	.byte	0x3c
	.4byte	.LASF1995
	.4byte	0xac
	.byte	0x1
	.4byte	0xdade
	.4byte	0xdae5
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1996
	.byte	0x1f
	.byte	0x3d
	.4byte	.LASF1997
	.4byte	0x8d3b
	.byte	0x1
	.4byte	0xdafe
	.4byte	0xdb05
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1998
	.byte	0x1f
	.byte	0x3e
	.4byte	.LASF1999
	.4byte	0xac
	.byte	0x1
	.4byte	0xdb1e
	.4byte	0xdb25
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2000
	.byte	0x1f
	.byte	0x3f
	.4byte	.LASF2001
	.4byte	0xc4d7
	.byte	0x1
	.4byte	0xdb3e
	.4byte	0xdb45
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2002
	.byte	0x1f
	.byte	0x40
	.4byte	.LASF2003
	.4byte	0x8d3b
	.byte	0x1
	.4byte	0xdb5e
	.4byte	0xdb65
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2004
	.byte	0x1f
	.byte	0x41
	.4byte	.LASF2005
	.4byte	0xddef
	.byte	0x1
	.4byte	0xdb7e
	.4byte	0xdb85
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1f
	.byte	0x43
	.4byte	.LASF2006
	.byte	0x1
	.4byte	0xdb9a
	.4byte	0xdba1
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2007
	.byte	0x1f
	.byte	0x44
	.4byte	.LASF2008
	.byte	0x1
	.4byte	0xdbb6
	.4byte	0xdbc2
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xdde9
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x1f
	.byte	0x45
	.4byte	.LASF2009
	.byte	0x1
	.4byte	0xdbd7
	.4byte	0xdbe3
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x1f
	.byte	0x46
	.4byte	.LASF2010
	.byte	0x1
	.4byte	0xdbf8
	.4byte	0xdc04
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1781
	.byte	0x1f
	.byte	0x4b
	.4byte	.LASF2011
	.4byte	0xac
	.byte	0x1
	.4byte	0xdc1d
	.4byte	0xdc42
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xddfa
	.uleb128 0x19
	.4byte	0xddfa
	.uleb128 0x19
	.4byte	0x8d35
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1785
	.byte	0x1f
	.byte	0x4e
	.4byte	.LASF2012
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdc5b
	.4byte	0xdc71
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2013
	.byte	0x1f
	.byte	0x51
	.4byte	.LASF2014
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdc8a
	.4byte	0xdc91
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2015
	.byte	0x1f
	.byte	0x53
	.4byte	.LASF2016
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdcaa
	.4byte	0xdcb1
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2017
	.byte	0x1f
	.byte	0x55
	.4byte	.LASF2018
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdcca
	.4byte	0xdcd6
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x1f
	.byte	0x57
	.4byte	.LASF2019
	.4byte	0x109
	.byte	0x1
	.4byte	0xdcef
	.4byte	0xdcfb
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1f
	.byte	0x58
	.4byte	.LASF2020
	.4byte	0xac
	.byte	0x1
	.4byte	0xdd14
	.4byte	0xdd25
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9478
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x1f
	.byte	0x5b
	.4byte	.LASF2021
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdd3e
	.4byte	0xdd54
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1f
	.byte	0x5d
	.4byte	.LASF2022
	.4byte	0x158e
	.byte	0x1
	.4byte	0xdd6d
	.4byte	0xdd88
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2023
	.byte	0x1f
	.byte	0x66
	.4byte	.LASF2024
	.byte	0x2
	.byte	0x1
	.4byte	0xdd9e
	.4byte	0xdda5
	.uleb128 0x17
	.4byte	0xddcd
	.byte	0x1
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.4byte	.LASF2025
	.byte	0x1f
	.byte	0x67
	.4byte	.LASF2026
	.4byte	0xac
	.byte	0x2
	.byte	0x1
	.4byte	0xddbb
	.uleb128 0x17
	.4byte	0xddde
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd98d
	.uleb128 0x22
	.byte	0x4
	.4byte	0xddd9
	.uleb128 0xc
	.4byte	0xd98d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xdde4
	.uleb128 0xc
	.4byte	0xd98d
	.uleb128 0x22
	.byte	0x4
	.4byte	0xd98d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xddf5
	.uleb128 0xc
	.4byte	0xc7aa
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde00
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd98d
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3508
	.uleb128 0x2b
	.4byte	.LASF2027
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.4byte	0xe3ad
	.uleb128 0x48
	.string	"num"
	.byte	0x18
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x18
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1411
	.byte	0x18
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF1412
	.byte	0x18
	.byte	0x92
	.4byte	0x4214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1413
	.byte	0x18
	.byte	0x5f
	.4byte	0xe3ad
	.uleb128 0x2
	.4byte	.LASF1414
	.byte	0x18
	.byte	0x60
	.4byte	0xe3c1
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0x9b
	.byte	0x1
	.4byte	0xde7b
	.4byte	0xde87
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1415
	.byte	0x18
	.byte	0xa9
	.byte	0x1
	.4byte	0xde98
	.4byte	0xdea4
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe3cc
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF1416
	.byte	0x18
	.byte	0xb4
	.byte	0x1
	.4byte	0xdeb5
	.4byte	0xdec2
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF2028
	.byte	0x1
	.4byte	0xded7
	.4byte	0xdede
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Num"
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF2029
	.4byte	0xac
	.byte	0x1
	.4byte	0xdef8
	.4byte	0xdeff
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF2030
	.4byte	0xac
	.byte	0x1
	.4byte	0xdf19
	.4byte	0xdf20
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF2031
	.byte	0x1
	.4byte	0xdf36
	.4byte	0xdf42
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x18
	.2byte	0x151
	.4byte	.LASF2032
	.4byte	0xac
	.byte	0x1
	.4byte	0xdf5c
	.4byte	0xdf63
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x18
	.byte	0xee
	.4byte	.LASF2033
	.4byte	0x29
	.byte	0x1
	.4byte	0xdf7c
	.4byte	0xdf83
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF2034
	.4byte	0x29
	.byte	0x1
	.4byte	0xdf9c
	.4byte	0xdfa3
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF2035
	.4byte	0x29
	.byte	0x1
	.4byte	0xdfbd
	.4byte	0xdfc4
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF284
	.byte	0x18
	.2byte	0x21d
	.4byte	.LASF2036
	.4byte	0xe3dd
	.byte	0x1
	.4byte	0xdfde
	.4byte	0xdfea
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe3cc
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x239
	.4byte	.LASF2037
	.4byte	0x6809
	.byte	0x1
	.4byte	0xe004
	.4byte	0xe010
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF466
	.byte	0x18
	.2byte	0x249
	.4byte	.LASF2038
	.4byte	0x6836
	.byte	0x1
	.4byte	0xe02a
	.4byte	0xe036
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1433
	.byte	0x18
	.2byte	0x15d
	.4byte	.LASF2039
	.byte	0x1
	.4byte	0xe04c
	.4byte	0xe053
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x170
	.4byte	.LASF2040
	.byte	0x1
	.4byte	0xe069
	.4byte	0xe075
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x18
	.2byte	0x19c
	.4byte	.LASF2041
	.byte	0x1
	.4byte	0xe08b
	.4byte	0xe09c
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1438
	.byte	0x18
	.2byte	0x129
	.4byte	.LASF2042
	.byte	0x1
	.4byte	0xe0b2
	.4byte	0xe0c3
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1c5
	.4byte	.LASF2043
	.byte	0x1
	.4byte	0xe0d9
	.4byte	0xe0e5
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x18
	.2byte	0x1de
	.4byte	.LASF2044
	.byte	0x1
	.4byte	0xe0fb
	.4byte	0xe10c
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1443
	.byte	0x18
	.2byte	0x1ff
	.4byte	.LASF2045
	.byte	0x1
	.4byte	0xe122
	.4byte	0xe133
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe3e3
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x25c
	.4byte	.LASF2046
	.4byte	0x4214
	.byte	0x1
	.4byte	0xe14d
	.4byte	0xe154
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"Ptr"
	.byte	0x18
	.2byte	0x26c
	.4byte	.LASF2047
	.4byte	0x421a
	.byte	0x1
	.4byte	0xe16e
	.4byte	0xe175
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1448
	.byte	0x18
	.2byte	0x278
	.4byte	.LASF2048
	.4byte	0x6836
	.byte	0x1
	.4byte	0xe18f
	.4byte	0xe196
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x28e
	.4byte	.LASF2049
	.4byte	0xac
	.byte	0x1
	.4byte	0xe1b0
	.4byte	0xe1bc
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x18
	.2byte	0x2d6
	.4byte	.LASF2050
	.4byte	0xac
	.byte	0x1
	.4byte	0xe1d6
	.4byte	0xe1e2
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe3cc
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1453
	.byte	0x18
	.2byte	0x2ee
	.4byte	.LASF2051
	.4byte	0xac
	.byte	0x1
	.4byte	0xe1fc
	.4byte	0xe208
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x18
	.2byte	0x2af
	.4byte	.LASF2052
	.4byte	0xac
	.byte	0x1
	.4byte	0xe222
	.4byte	0xe233
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.2byte	0x301
	.4byte	.LASF2053
	.4byte	0xac
	.byte	0x1
	.4byte	0xe24d
	.4byte	0xe259
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.2byte	0x316
	.4byte	.LASF2054
	.4byte	0x4214
	.byte	0x1
	.4byte	0xe273
	.4byte	0xe27f
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1460
	.byte	0x18
	.2byte	0x32c
	.4byte	.LASF2055
	.4byte	0xac
	.byte	0x1
	.4byte	0xe299
	.4byte	0xe2a0
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x18
	.2byte	0x344
	.4byte	.LASF2056
	.4byte	0xac
	.byte	0x1
	.4byte	0xe2ba
	.4byte	0xe2c6
	.uleb128 0x17
	.4byte	0xe3d7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x421a
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x18
	.2byte	0x359
	.4byte	.LASF2057
	.4byte	0x158e
	.byte	0x1
	.4byte	0xe2e0
	.4byte	0xe2ec
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x18
	.2byte	0x376
	.4byte	.LASF2058
	.4byte	0x158e
	.byte	0x1
	.4byte	0xe306
	.4byte	0xe312
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6809
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x18
	.2byte	0x38a
	.4byte	.LASF2059
	.byte	0x1
	.4byte	0xe328
	.4byte	0xe334
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe3e9
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x18
	.2byte	0x39c
	.4byte	.LASF2060
	.byte	0x1
	.4byte	0xe34a
	.4byte	0xe360
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe3e9
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x18
	.2byte	0x3b7
	.4byte	.LASF2061
	.byte	0x1
	.4byte	0xe376
	.4byte	0xe382
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe3dd
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF2062
	.byte	0x1
	.4byte	0xe397
	.4byte	0xe3a3
	.uleb128 0x17
	.4byte	0xe3c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF57
	.4byte	0x3cfe
	.byte	0
	.uleb128 0x50
	.4byte	0xac
	.4byte	0xe3c1
	.uleb128 0x19
	.4byte	0x421a
	.uleb128 0x19
	.4byte	0x421a
	.byte	0
	.uleb128 0x51
	.4byte	0x3cfe
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde0c
	.uleb128 0x22
	.byte	0x4
	.4byte	0xe3d2
	.uleb128 0xc
	.4byte	0xde0c
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe3d2
	.uleb128 0x22
	.byte	0x4
	.4byte	0xde0c
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde5f
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde54
	.uleb128 0xd
	.byte	0x4
	.byte	0x20
	.byte	0x31
	.4byte	.LASF2063
	.4byte	0xe438
	.uleb128 0xe
	.4byte	.LASF2064
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF2065
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF2066
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF2067
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF2068
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF2069
	.sleb128 5
	.uleb128 0xe
	.4byte	.LASF2070
	.sleb128 6
	.uleb128 0xe
	.4byte	.LASF2071
	.sleb128 7
	.uleb128 0xe
	.4byte	.LASF2072
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF2073
	.sleb128 9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2074
	.byte	0x20
	.byte	0x3c
	.4byte	0xe3ef
	.uleb128 0x59
	.byte	0x14
	.byte	0x20
	.byte	0x46
	.4byte	.LASF2076
	.4byte	0xe46a
	.uleb128 0x5
	.string	"v"
	.byte	0x20
	.byte	0x47
	.4byte	0xc79a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1840
	.byte	0x20
	.byte	0x48
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2075
	.byte	0x20
	.byte	0x49
	.4byte	0xe443
	.uleb128 0x59
	.byte	0x6c
	.byte	0x20
	.byte	0x4b
	.4byte	.LASF2077
	.4byte	0xe4c8
	.uleb128 0x6
	.4byte	.LASF1840
	.byte	0x20
	.byte	0x4c
	.4byte	0x26d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2078
	.byte	0x20
	.byte	0x4d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2079
	.byte	0x20
	.byte	0x4e
	.4byte	0xa05a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2080
	.byte	0x20
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF1988
	.byte	0x20
	.byte	0x50
	.4byte	0xe4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0xe4d8
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2081
	.byte	0x20
	.byte	0x51
	.4byte	0xe475
	.uleb128 0x5a
	.4byte	.LASF2082
	.2byte	0xb0c
	.byte	0x20
	.byte	0x53
	.4byte	0xeab8
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x20
	.byte	0x56
	.4byte	0xe438
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2083
	.byte	0x20
	.byte	0x57
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1875
	.byte	0x20
	.byte	0x58
	.4byte	0xeab8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2080
	.byte	0x20
	.byte	0x59
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x6
	.4byte	.LASF1988
	.byte	0x20
	.byte	0x5a
	.4byte	0xeac8
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x6
	.4byte	.LASF2084
	.byte	0x20
	.byte	0x5b
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0x6
	.4byte	.LASF2085
	.byte	0x20
	.byte	0x5c
	.4byte	0xead8
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x6
	.4byte	.LASF2086
	.byte	0x20
	.byte	0x5d
	.4byte	0x26d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xae4
	.uleb128 0x6
	.4byte	.LASF2079
	.byte	0x20
	.byte	0x5e
	.4byte	0xa05a
	.byte	0x3
	.byte	0x23
	.uleb128 0xaf0
	.uleb128 0x6
	.4byte	.LASF2087
	.byte	0x20
	.byte	0x5f
	.4byte	0x158e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb08
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2082
	.byte	0x20
	.byte	0x62
	.byte	0x1
	.4byte	0xe594
	.4byte	0xe59b
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2082
	.byte	0x20
	.byte	0x64
	.byte	0x1
	.4byte	0xe5ac
	.4byte	0xe5b8
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2082
	.byte	0x20
	.byte	0x66
	.byte	0x1
	.4byte	0xe5c9
	.4byte	0xe5da
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2082
	.byte	0x20
	.byte	0x68
	.byte	0x1
	.4byte	0xe5eb
	.4byte	0xe5fc
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2088
	.byte	0x20
	.byte	0x6b
	.4byte	.LASF2089
	.byte	0x1
	.4byte	0xe611
	.4byte	0xe61d
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2088
	.byte	0x20
	.byte	0x6c
	.4byte	.LASF2090
	.byte	0x1
	.4byte	0xe632
	.4byte	0xe63e
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2091
	.byte	0x20
	.byte	0x6e
	.4byte	.LASF2092
	.byte	0x1
	.4byte	0xe653
	.4byte	0xe65f
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2091
	.byte	0x20
	.byte	0x6f
	.4byte	.LASF2093
	.byte	0x1
	.4byte	0xe674
	.4byte	0xe680
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2094
	.byte	0x20
	.byte	0x71
	.4byte	.LASF2095
	.byte	0x1
	.4byte	0xe695
	.4byte	0xe6a1
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2094
	.byte	0x20
	.byte	0x72
	.4byte	.LASF2096
	.byte	0x1
	.4byte	0xe6b6
	.4byte	0xe6c2
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2097
	.byte	0x20
	.byte	0x74
	.4byte	.LASF2098
	.byte	0x1
	.4byte	0xe6d7
	.4byte	0xe6e8
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2097
	.byte	0x20
	.byte	0x75
	.4byte	.LASF2099
	.byte	0x1
	.4byte	0xe6fd
	.4byte	0xe713
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2100
	.byte	0x20
	.byte	0x77
	.4byte	.LASF2101
	.byte	0x1
	.4byte	0xe728
	.4byte	0xe739
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf21
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2100
	.byte	0x20
	.byte	0x78
	.4byte	.LASF2102
	.byte	0x1
	.4byte	0xe74e
	.4byte	0xe764
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2103
	.byte	0x20
	.byte	0x7a
	.4byte	.LASF2104
	.byte	0x1
	.4byte	0xe779
	.4byte	0xe78a
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2105
	.byte	0x20
	.byte	0x7c
	.4byte	.LASF2106
	.byte	0x1
	.4byte	0xe79f
	.4byte	0xe7b0
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e92
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2105
	.byte	0x20
	.byte	0x7d
	.4byte	.LASF2107
	.byte	0x1
	.4byte	0xe7c5
	.4byte	0xe7d1
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbb52
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2108
	.byte	0x20
	.byte	0x7f
	.4byte	.LASF2109
	.4byte	0xac
	.byte	0x1
	.4byte	0xe7ea
	.4byte	0xe7f1
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x20
	.byte	0x81
	.4byte	.LASF2110
	.byte	0x1
	.4byte	0xe806
	.4byte	0xe812
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x20
	.byte	0x83
	.4byte	.LASF2111
	.byte	0x1
	.4byte	0xe827
	.4byte	0xe833
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x680f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2112
	.byte	0x20
	.byte	0x85
	.4byte	.LASF2113
	.byte	0x1
	.4byte	0xe848
	.4byte	0xe854
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF488
	.byte	0x20
	.byte	0x87
	.4byte	.LASF2114
	.4byte	0x158e
	.byte	0x1
	.4byte	0xe86d
	.4byte	0xe879
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeaf9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x20
	.byte	0x88
	.4byte	.LASF2115
	.4byte	0x158e
	.byte	0x1
	.4byte	0xe892
	.4byte	0xe89e
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeaf9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x20
	.byte	0x89
	.4byte	.LASF2116
	.4byte	0x158e
	.byte	0x1
	.4byte	0xe8b7
	.4byte	0xe8c3
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeaf9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2117
	.byte	0x20
	.byte	0x8b
	.4byte	.LASF2118
	.4byte	0x109
	.byte	0x1
	.4byte	0xe8dc
	.4byte	0xe8e8
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2119
	.byte	0x20
	.byte	0x8d
	.4byte	.LASF2120
	.4byte	0xac
	.byte	0x1
	.4byte	0xe901
	.4byte	0xe912
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2121
	.byte	0x20
	.byte	0x8e
	.4byte	.LASF2122
	.4byte	0xac
	.byte	0x1
	.4byte	0xe92b
	.4byte	0xe93c
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4236
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2123
	.byte	0x20
	.byte	0x90
	.4byte	.LASF2124
	.byte	0x1
	.4byte	0xe951
	.4byte	0xe96c
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x2091
	.uleb128 0x19
	.4byte	0x423c
	.uleb128 0x19
	.4byte	0xde06
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2125
	.byte	0x20
	.byte	0x93
	.4byte	.LASF2126
	.byte	0x3
	.byte	0x1
	.4byte	0xe982
	.4byte	0xe989
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2127
	.byte	0x20
	.byte	0x94
	.4byte	.LASF2128
	.byte	0x3
	.byte	0x1
	.4byte	0xe99f
	.4byte	0xe9a6
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2129
	.byte	0x20
	.byte	0x95
	.4byte	.LASF2130
	.byte	0x3
	.byte	0x1
	.4byte	0xe9bc
	.4byte	0xe9c3
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2131
	.byte	0x20
	.byte	0x96
	.4byte	.LASF2132
	.byte	0x3
	.byte	0x1
	.4byte	0xe9d9
	.4byte	0xe9e0
	.uleb128 0x17
	.4byte	0xeae8
	.byte	0x1
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2133
	.byte	0x20
	.byte	0x98
	.4byte	.LASF2134
	.byte	0x3
	.byte	0x1
	.4byte	0xe9f6
	.4byte	0xea11
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xeb04
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2135
	.byte	0x20
	.byte	0x99
	.4byte	.LASF2136
	.byte	0x3
	.byte	0x1
	.4byte	0xea27
	.4byte	0xea47
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xeb10
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2137
	.byte	0x20
	.byte	0x9a
	.4byte	.LASF2138
	.byte	0x3
	.byte	0x1
	.4byte	0xea5d
	.4byte	0xea69
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb1c
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.4byte	.LASF2139
	.byte	0x20
	.byte	0x9b
	.4byte	.LASF2140
	.byte	0x3
	.byte	0x1
	.4byte	0xea7f
	.4byte	0xea90
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb28
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.4byte	.LASF2141
	.byte	0x20
	.byte	0x9c
	.4byte	.LASF2142
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0xeaa6
	.uleb128 0x17
	.4byte	0xeaee
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d3b
	.uleb128 0x19
	.4byte	0x8d35
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x26d6
	.4byte	0xeac8
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0xe46a
	.4byte	0xead8
	.uleb128 0xa
	.4byte	0x34
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0xe4d8
	.4byte	0xeae8
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe4e3
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeaf4
	.uleb128 0xc
	.4byte	0xe4e3
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeaff
	.uleb128 0xc
	.4byte	0xe4e3
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeb0a
	.uleb128 0x5b
	.4byte	.LASF2143
	.byte	0x1
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeb16
	.uleb128 0x5b
	.4byte	.LASF2144
	.byte	0x1
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeb22
	.uleb128 0x5b
	.4byte	.LASF2145
	.byte	0x1
	.uleb128 0x22
	.byte	0x4
	.4byte	0xe4e3
	.uleb128 0xd
	.byte	0x4
	.byte	0x21
	.byte	0x84
	.4byte	.LASF2146
	.4byte	0xeb47
	.uleb128 0xe
	.4byte	.LASF2147
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF2148
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2149
	.byte	0x21
	.byte	0x87
	.4byte	0xeb2e
	.uleb128 0x2b
	.4byte	.LASF2150
	.byte	0x20
	.byte	0x21
	.byte	0x89
	.4byte	0xfed1
	.uleb128 0x44
	.string	"len"
	.byte	0x21
	.2byte	0x151
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x45
	.4byte	.LASF2151
	.byte	0x21
	.2byte	0x152
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x45
	.4byte	.LASF794
	.byte	0x21
	.2byte	0x153
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x45
	.4byte	.LASF2152
	.byte	0x21
	.2byte	0x154
	.4byte	0xfed1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x8c
	.byte	0x1
	.4byte	0xebaf
	.4byte	0xebb6
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x8d
	.byte	0x1
	.4byte	0xebc7
	.4byte	0xebd3
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x8e
	.byte	0x1
	.4byte	0xebe4
	.4byte	0xebfa
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x8f
	.byte	0x1
	.4byte	0xec0b
	.4byte	0xec17
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x90
	.byte	0x1
	.4byte	0xec28
	.4byte	0xec3e
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x91
	.byte	0x1
	.byte	0x1
	.4byte	0xec50
	.4byte	0xec5c
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.4byte	0xec6e
	.4byte	0xec7a
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x93
	.byte	0x1
	.byte	0x1
	.4byte	0xec8c
	.4byte	0xec98
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.4byte	0xecaa
	.4byte	0xecb6
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF2150
	.byte	0x21
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.4byte	0xecc8
	.4byte	0xecd4
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2153
	.byte	0x21
	.byte	0x96
	.byte	0x1
	.4byte	0xece5
	.4byte	0xecf2
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x21
	.byte	0x98
	.4byte	.LASF2154
	.4byte	0x29
	.byte	0x1
	.4byte	0xed0b
	.4byte	0xed12
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2155
	.byte	0x21
	.byte	0x99
	.4byte	.LASF2156
	.4byte	0xe5
	.byte	0x1
	.4byte	0xed2b
	.4byte	0xed32
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2157
	.byte	0x21
	.byte	0x9a
	.4byte	.LASF2158
	.4byte	0xe5
	.byte	0x1
	.4byte	0xed4b
	.4byte	0xed52
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2157
	.byte	0x21
	.byte	0x9b
	.4byte	.LASF2159
	.4byte	0xe5
	.byte	0x1
	.4byte	0xed6b
	.4byte	0xed72
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x21
	.byte	0x9d
	.4byte	.LASF2160
	.4byte	0xde
	.byte	0x1
	.4byte	0xed8b
	.4byte	0xed97
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x21
	.byte	0x9e
	.4byte	.LASF2161
	.4byte	0xfefd
	.byte	0x1
	.4byte	0xedb0
	.4byte	0xedbc
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x21
	.byte	0xa0
	.4byte	.LASF2162
	.byte	0x1
	.4byte	0xedd1
	.4byte	0xeddd
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x21
	.byte	0xa1
	.4byte	.LASF2163
	.byte	0x1
	.4byte	0xedf2
	.4byte	0xedfe
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xad
	.4byte	.LASF2164
	.4byte	0xff03
	.byte	0x1
	.4byte	0xee17
	.4byte	0xee23
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xae
	.4byte	.LASF2165
	.4byte	0xff03
	.byte	0x1
	.4byte	0xee3c
	.4byte	0xee48
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xaf
	.4byte	.LASF2166
	.4byte	0xff03
	.byte	0x1
	.4byte	0xee61
	.4byte	0xee6d
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xb0
	.4byte	.LASF2167
	.4byte	0xff03
	.byte	0x1
	.4byte	0xee86
	.4byte	0xee92
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xb1
	.4byte	.LASF2168
	.4byte	0xff03
	.byte	0x1
	.4byte	0xeeab
	.4byte	0xeeb7
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xb2
	.4byte	.LASF2169
	.4byte	0xff03
	.byte	0x1
	.4byte	0xeed0
	.4byte	0xeedc
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x21
	.byte	0xb3
	.4byte	.LASF2170
	.4byte	0xff03
	.byte	0x1
	.4byte	0xeef5
	.4byte	0xef01
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"Cmp"
	.byte	0x21
	.byte	0xc0
	.4byte	.LASF2232
	.4byte	0xac
	.byte	0x1
	.4byte	0xef1a
	.4byte	0xef26
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2171
	.byte	0x21
	.byte	0xc1
	.4byte	.LASF2172
	.4byte	0xac
	.byte	0x1
	.4byte	0xef3f
	.4byte	0xef50
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2173
	.byte	0x21
	.byte	0xc2
	.4byte	.LASF2174
	.4byte	0xac
	.byte	0x1
	.4byte	0xef69
	.4byte	0xef75
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2175
	.byte	0x21
	.byte	0xc5
	.4byte	.LASF2176
	.4byte	0xac
	.byte	0x1
	.4byte	0xef8e
	.4byte	0xef9a
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x21
	.byte	0xc6
	.4byte	.LASF2178
	.4byte	0xac
	.byte	0x1
	.4byte	0xefb3
	.4byte	0xefc4
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2179
	.byte	0x21
	.byte	0xc7
	.4byte	.LASF2180
	.4byte	0xac
	.byte	0x1
	.4byte	0xefdd
	.4byte	0xefe9
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2181
	.byte	0x21
	.byte	0xca
	.4byte	.LASF2182
	.4byte	0xac
	.byte	0x1
	.4byte	0xf002
	.4byte	0xf00e
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x21
	.byte	0xcd
	.4byte	.LASF2184
	.4byte	0xac
	.byte	0x1
	.4byte	0xf027
	.4byte	0xf033
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x21
	.byte	0xce
	.4byte	.LASF2186
	.4byte	0xac
	.byte	0x1
	.4byte	0xf04c
	.4byte	0xf05d
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2187
	.byte	0x21
	.byte	0xcf
	.4byte	.LASF2188
	.4byte	0xac
	.byte	0x1
	.4byte	0xf076
	.4byte	0xf082
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF495
	.byte	0x21
	.byte	0xd1
	.4byte	.LASF2189
	.4byte	0xac
	.byte	0x1
	.4byte	0xf09b
	.4byte	0xf0a2
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x21
	.byte	0xd2
	.4byte	.LASF2190
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0bb
	.4byte	0xf0c2
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2191
	.byte	0x21
	.byte	0xd3
	.4byte	.LASF2192
	.byte	0x1
	.4byte	0xf0d7
	.4byte	0xf0de
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2193
	.byte	0x21
	.byte	0xd4
	.4byte	.LASF2194
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf0f7
	.4byte	0xf0fe
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x21
	.byte	0xd5
	.4byte	.LASF2195
	.byte	0x1
	.4byte	0xf113
	.4byte	0xf11a
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x21
	.byte	0xd6
	.4byte	.LASF2196
	.byte	0x1
	.4byte	0xf12f
	.4byte	0xf13b
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x21
	.byte	0xd7
	.4byte	.LASF2197
	.byte	0x1
	.4byte	0xf150
	.4byte	0xf15c
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x21
	.byte	0xd8
	.4byte	.LASF2198
	.byte	0x1
	.4byte	0xf171
	.4byte	0xf17d
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x21
	.byte	0xd9
	.4byte	.LASF2199
	.byte	0x1
	.4byte	0xf192
	.4byte	0xf1a3
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x21
	.byte	0xda
	.4byte	.LASF2200
	.byte	0x1
	.4byte	0xf1b8
	.4byte	0xf1c9
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x21
	.byte	0xdb
	.4byte	.LASF2201
	.byte	0x1
	.4byte	0xf1de
	.4byte	0xf1ef
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2202
	.byte	0x21
	.byte	0xdc
	.4byte	.LASF2203
	.byte	0x1
	.4byte	0xf204
	.4byte	0xf20b
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x21
	.byte	0xdd
	.4byte	.LASF2205
	.byte	0x1
	.4byte	0xf220
	.4byte	0xf227
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x21
	.byte	0xde
	.4byte	.LASF2207
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf240
	.4byte	0xf247
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x21
	.byte	0xdf
	.4byte	.LASF2209
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf260
	.4byte	0xf267
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x21
	.byte	0xe0
	.4byte	.LASF2211
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf280
	.4byte	0xf287
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x21
	.byte	0xe1
	.4byte	.LASF2213
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf2a0
	.4byte	0xf2a7
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x21
	.byte	0xe2
	.4byte	.LASF2215
	.4byte	0xac
	.byte	0x1
	.4byte	0xf2c0
	.4byte	0xf2c7
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x21
	.byte	0xe3
	.4byte	.LASF2217
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf2e0
	.4byte	0xf2e7
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2218
	.byte	0x21
	.byte	0xe4
	.4byte	.LASF2219
	.byte	0x1
	.4byte	0xf2fc
	.4byte	0xf308
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2220
	.byte	0x21
	.byte	0xe5
	.4byte	.LASF2221
	.byte	0x1
	.4byte	0xf31d
	.4byte	0xf32e
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF129
	.byte	0x21
	.byte	0xe7
	.4byte	.LASF2222
	.4byte	0xac
	.byte	0x1
	.4byte	0xf347
	.4byte	0xf35d
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF129
	.byte	0x21
	.byte	0xe8
	.4byte	.LASF2223
	.4byte	0xac
	.byte	0x1
	.4byte	0xf376
	.4byte	0xf391
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2224
	.byte	0x21
	.byte	0xe9
	.4byte	.LASF2225
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf3aa
	.4byte	0xf3bb
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2226
	.byte	0x21
	.byte	0xea
	.4byte	.LASF2227
	.4byte	0xac
	.byte	0x1
	.4byte	0xf3d4
	.4byte	0xf3e0
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2228
	.byte	0x21
	.byte	0xeb
	.4byte	.LASF2229
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf3f9
	.4byte	0xf40a
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x21
	.byte	0xec
	.4byte	.LASF2231
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf423
	.4byte	0xf434
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"Mid"
	.byte	0x21
	.byte	0xed
	.4byte	.LASF2233
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf44d
	.4byte	0xf463
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2228
	.byte	0x21
	.byte	0xee
	.4byte	.LASF2234
	.4byte	0xeb52
	.byte	0x1
	.4byte	0xf47c
	.4byte	0xf488
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x21
	.byte	0xef
	.4byte	.LASF2235
	.4byte	0xeb52
	.byte	0x1
	.4byte	0xf4a1
	.4byte	0xf4ad
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"Mid"
	.byte	0x21
	.byte	0xf0
	.4byte	.LASF2236
	.4byte	0xeb52
	.byte	0x1
	.4byte	0xf4c6
	.4byte	0xf4d7
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2237
	.byte	0x21
	.byte	0xf1
	.4byte	.LASF2238
	.byte	0x1
	.4byte	0xf4ec
	.4byte	0xf4f8
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2237
	.byte	0x21
	.byte	0xf2
	.4byte	.LASF2239
	.byte	0x1
	.4byte	0xf50d
	.4byte	0xf519
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2240
	.byte	0x21
	.byte	0xf3
	.4byte	.LASF2241
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf532
	.4byte	0xf53e
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2242
	.byte	0x21
	.byte	0xf4
	.4byte	.LASF2243
	.byte	0x1
	.4byte	0xf553
	.4byte	0xf55f
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2242
	.byte	0x21
	.byte	0xf5
	.4byte	.LASF2244
	.byte	0x1
	.4byte	0xf574
	.4byte	0xf580
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2245
	.byte	0x21
	.byte	0xf6
	.4byte	.LASF2246
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf599
	.4byte	0xf5a5
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2247
	.byte	0x21
	.byte	0xf7
	.4byte	.LASF2248
	.byte	0x1
	.4byte	0xf5ba
	.4byte	0xf5c6
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2247
	.byte	0x21
	.byte	0xf8
	.4byte	.LASF2249
	.byte	0x1
	.4byte	0xf5db
	.4byte	0xf5e7
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2250
	.byte	0x21
	.byte	0xf9
	.4byte	.LASF2251
	.byte	0x1
	.4byte	0xf5fc
	.4byte	0xf603
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2252
	.byte	0x21
	.byte	0xfa
	.4byte	.LASF2253
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf61c
	.4byte	0xf623
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2254
	.byte	0x21
	.byte	0xfb
	.4byte	.LASF2255
	.byte	0x1
	.4byte	0xf638
	.4byte	0xf649
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2256
	.byte	0x21
	.byte	0xfe
	.4byte	.LASF2257
	.4byte	0xac
	.byte	0x1
	.4byte	0xf662
	.4byte	0xf669
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2258
	.byte	0x21
	.byte	0xff
	.4byte	.LASF2259
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf682
	.4byte	0xf689
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2260
	.byte	0x21
	.2byte	0x100
	.4byte	.LASF2261
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf6a3
	.4byte	0xf6af
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2262
	.byte	0x21
	.2byte	0x101
	.4byte	.LASF2263
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf6c9
	.4byte	0xf6d0
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2264
	.byte	0x21
	.2byte	0x102
	.4byte	.LASF2265
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf6ea
	.4byte	0xf6f1
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2266
	.byte	0x21
	.2byte	0x103
	.4byte	.LASF2267
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf70b
	.4byte	0xf717
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2268
	.byte	0x21
	.2byte	0x104
	.4byte	.LASF2269
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf731
	.4byte	0xf73d
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2270
	.byte	0x21
	.2byte	0x105
	.4byte	.LASF2271
	.byte	0x1
	.4byte	0xf753
	.4byte	0xf75f
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2272
	.byte	0x21
	.2byte	0x106
	.4byte	.LASF2273
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf779
	.4byte	0xf780
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2274
	.byte	0x21
	.2byte	0x107
	.4byte	.LASF2275
	.4byte	0xff03
	.byte	0x1
	.4byte	0xf79a
	.4byte	0xf7a1
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2276
	.byte	0x21
	.2byte	0x108
	.4byte	.LASF2277
	.byte	0x1
	.4byte	0xf7b7
	.4byte	0xf7c3
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2278
	.byte	0x21
	.2byte	0x109
	.4byte	.LASF2279
	.byte	0x1
	.4byte	0xf7d9
	.4byte	0xf7e5
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2280
	.byte	0x21
	.2byte	0x10a
	.4byte	.LASF2281
	.byte	0x1
	.4byte	0xf7fb
	.4byte	0xf807
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2282
	.byte	0x21
	.2byte	0x10b
	.4byte	.LASF2283
	.byte	0x1
	.4byte	0xf81d
	.4byte	0xf829
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2284
	.byte	0x21
	.2byte	0x10c
	.4byte	.LASF2285
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf843
	.4byte	0xf84f
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF495
	.byte	0x21
	.2byte	0x10f
	.4byte	.LASF2286
	.4byte	0xac
	.byte	0x1
	.4byte	0xf86b
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2202
	.byte	0x21
	.2byte	0x110
	.4byte	.LASF2287
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf887
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x21
	.2byte	0x111
	.4byte	.LASF2288
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf8a3
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x21
	.2byte	0x112
	.4byte	.LASF2289
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf8bf
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x21
	.2byte	0x113
	.4byte	.LASF2290
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf8db
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x21
	.2byte	0x114
	.4byte	.LASF2291
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf8f7
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x21
	.2byte	0x115
	.4byte	.LASF2292
	.4byte	0x158e
	.byte	0x1
	.4byte	0xf913
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x21
	.2byte	0x116
	.4byte	.LASF2293
	.4byte	0xac
	.byte	0x1
	.4byte	0xf92f
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x21
	.2byte	0x117
	.4byte	.LASF2294
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf94b
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"Cmp"
	.byte	0x21
	.2byte	0x118
	.4byte	.LASF2295
	.4byte	0xac
	.byte	0x1
	.4byte	0xf96c
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2171
	.byte	0x21
	.2byte	0x119
	.4byte	.LASF2296
	.4byte	0xac
	.byte	0x1
	.4byte	0xf992
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2175
	.byte	0x21
	.2byte	0x11a
	.4byte	.LASF2297
	.4byte	0xac
	.byte	0x1
	.4byte	0xf9b3
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x21
	.2byte	0x11b
	.4byte	.LASF2298
	.4byte	0xac
	.byte	0x1
	.4byte	0xf9d9
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2181
	.byte	0x21
	.2byte	0x11c
	.4byte	.LASF2299
	.4byte	0xac
	.byte	0x1
	.4byte	0xf9fa
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x21
	.2byte	0x11d
	.4byte	.LASF2300
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa1b
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x21
	.2byte	0x11e
	.4byte	.LASF2301
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa41
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x21
	.2byte	0x11f
	.4byte	.LASF2302
	.byte	0x1
	.4byte	0xfa63
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2303
	.byte	0x21
	.2byte	0x120
	.4byte	.LASF2304
	.byte	0x1
	.4byte	0xfa85
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2305
	.byte	0x21
	.2byte	0x121
	.4byte	.LASF2306
	.4byte	0xac
	.byte	0x1
	.4byte	0xfaac
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2307
	.byte	0x21
	.2byte	0x122
	.4byte	.LASF2308
	.4byte	0xac
	.byte	0x1
	.4byte	0xfad7
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff09
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2309
	.byte	0x21
	.2byte	0x123
	.4byte	.LASF2310
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb02
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2311
	.byte	0x21
	.2byte	0x124
	.4byte	.LASF2312
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb32
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2224
	.byte	0x21
	.2byte	0x125
	.4byte	.LASF2313
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfb58
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2314
	.byte	0x21
	.2byte	0x126
	.4byte	.LASF2315
	.byte	0x1
	.4byte	0xfb75
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff03
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2284
	.byte	0x21
	.2byte	0x127
	.4byte	.LASF2316
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfb96
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2317
	.byte	0x21
	.2byte	0x128
	.4byte	.LASF2318
	.4byte	0xe5
	.byte	0x1
	.4byte	0xfbbc
	.uleb128 0x19
	.4byte	0x209d
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2319
	.byte	0x21
	.2byte	0x12b
	.4byte	.LASF2320
	.4byte	0xac
	.byte	0x1
	.4byte	0xfbd8
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2319
	.byte	0x21
	.2byte	0x12c
	.4byte	.LASF2321
	.4byte	0xac
	.byte	0x1
	.4byte	0xfbf9
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2322
	.byte	0x21
	.2byte	0x12d
	.4byte	.LASF2323
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc15
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2322
	.byte	0x21
	.2byte	0x12e
	.4byte	.LASF2324
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc36
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2202
	.byte	0x21
	.2byte	0x131
	.4byte	.LASF2325
	.4byte	0xde
	.byte	0x1
	.4byte	0xfc52
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x21
	.2byte	0x132
	.4byte	.LASF2326
	.4byte	0xde
	.byte	0x1
	.4byte	0xfc6e
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2327
	.byte	0x21
	.2byte	0x133
	.4byte	.LASF2328
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfc8a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2329
	.byte	0x21
	.2byte	0x134
	.4byte	.LASF2330
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfca6
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2331
	.byte	0x21
	.2byte	0x135
	.4byte	.LASF2332
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfcc2
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2333
	.byte	0x21
	.2byte	0x136
	.4byte	.LASF2334
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfcde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2335
	.byte	0x21
	.2byte	0x137
	.4byte	.LASF2336
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfcfa
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2337
	.byte	0x21
	.2byte	0x138
	.4byte	.LASF2338
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfd16
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2339
	.byte	0x21
	.2byte	0x139
	.4byte	.LASF2340
	.4byte	0x158e
	.byte	0x1
	.4byte	0xfd32
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2341
	.byte	0x21
	.2byte	0x13a
	.4byte	.LASF2342
	.4byte	0xac
	.byte	0x1
	.4byte	0xfd4e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2343
	.byte	0x21
	.2byte	0x13b
	.4byte	.LASF2344
	.4byte	0x6836
	.byte	0x1
	.4byte	0xfd6a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x21
	.2byte	0x140
	.4byte	.LASF2345
	.byte	0x1
	.4byte	0xfd80
	.4byte	0xfd91
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2346
	.byte	0x21
	.2byte	0x141
	.4byte	.LASF2347
	.byte	0x1
	.4byte	0xfda7
	.4byte	0xfdae
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2348
	.byte	0x21
	.2byte	0x144
	.4byte	.LASF2349
	.4byte	0xac
	.byte	0x1
	.4byte	0xfdc8
	.4byte	0xfdde
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xeb47
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2350
	.byte	0x21
	.2byte	0x146
	.4byte	.LASF2351
	.byte	0x1
	.4byte	0xfdf4
	.4byte	0xfe0f
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xeb47
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF2352
	.byte	0x21
	.2byte	0x148
	.4byte	.LASF2354
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF2355
	.byte	0x21
	.2byte	0x149
	.4byte	.LASF2356
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF2357
	.byte	0x21
	.2byte	0x14a
	.4byte	.LASF2358
	.byte	0x1
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2359
	.byte	0x21
	.2byte	0x14b
	.4byte	.LASF2360
	.byte	0x1
	.4byte	0xfe51
	.uleb128 0x19
	.4byte	0x1595
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2361
	.byte	0x21
	.2byte	0x14d
	.4byte	.LASF2362
	.4byte	0xac
	.byte	0x1
	.4byte	0xfe6b
	.4byte	0xfe72
	.uleb128 0x17
	.4byte	0xfef2
	.byte	0x1
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF2363
	.byte	0x21
	.2byte	0x14e
	.4byte	.LASF2364
	.4byte	0xeb52
	.byte	0x1
	.4byte	0xfe8e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF60
	.byte	0x21
	.2byte	0x156
	.4byte	.LASF2365
	.byte	0x2
	.byte	0x1
	.4byte	0xfea5
	.4byte	0xfeac
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF1835
	.byte	0x21
	.2byte	0x157
	.4byte	.LASF2366
	.byte	0x2
	.byte	0x1
	.4byte	0xfebf
	.uleb128 0x17
	.4byte	0xfee1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0xfee1
	.uleb128 0xa
	.4byte	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb52
	.uleb128 0x22
	.byte	0x4
	.4byte	0xfeed
	.uleb128 0xc
	.4byte	0xeb52
	.uleb128 0xb
	.byte	0x4
	.4byte	0xfef8
	.uleb128 0xc
	.4byte	0xeb52
	.uleb128 0x22
	.byte	0x4
	.4byte	0xde
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeb52
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3b
	.uleb128 0x2b
	.4byte	.LASF2367
	.byte	0x50
	.byte	0x22
	.byte	0x47
	.4byte	0x10141
	.uleb128 0x60
	.4byte	0xeb52
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x22
	.byte	0x4d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF2368
	.byte	0x22
	.byte	0x4e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF2369
	.byte	0x22
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF2370
	.byte	0x22
	.byte	0x50
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.4byte	.LASF2371
	.byte	0x22
	.byte	0x51
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x26
	.4byte	.LASF2372
	.byte	0x22
	.byte	0x65
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2373
	.byte	0x22
	.byte	0x66
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2374
	.byte	0x22
	.byte	0x69
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2375
	.byte	0x22
	.byte	0x6a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2376
	.byte	0x22
	.byte	0x6b
	.4byte	0x10141
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2367
	.byte	0x22
	.byte	0x54
	.byte	0x1
	.4byte	0xffc6
	.4byte	0xffcd
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2367
	.byte	0x22
	.byte	0x55
	.byte	0x1
	.4byte	0xffde
	.4byte	0xffea
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1014d
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2377
	.byte	0x22
	.byte	0x56
	.byte	0x1
	.4byte	0xfffb
	.4byte	0x10008
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x22
	.byte	0x58
	.4byte	.LASF2378
	.byte	0x1
	.4byte	0x1001d
	.4byte	0x10029
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfee7
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x22
	.byte	0x59
	.4byte	.LASF2379
	.byte	0x1
	.4byte	0x1003e
	.4byte	0x1004a
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2380
	.byte	0x22
	.byte	0x5b
	.4byte	.LASF2381
	.4byte	0x102
	.byte	0x1
	.4byte	0x10063
	.4byte	0x1006a
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2382
	.byte	0x22
	.byte	0x5c
	.4byte	.LASF2383
	.4byte	0x109
	.byte	0x1
	.4byte	0x10083
	.4byte	0x1008a
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2384
	.byte	0x22
	.byte	0x5d
	.4byte	.LASF2385
	.4byte	0xd1
	.byte	0x1
	.4byte	0x100a3
	.4byte	0x100aa
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2386
	.byte	0x22
	.byte	0x5e
	.4byte	.LASF2387
	.4byte	0xac
	.byte	0x1
	.4byte	0x100c3
	.4byte	0x100ca
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2388
	.byte	0x22
	.byte	0x5f
	.4byte	.LASF2389
	.4byte	0xac
	.byte	0x1
	.4byte	0x100e3
	.4byte	0x100ea
	.uleb128 0x17
	.4byte	0x10158
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2390
	.byte	0x22
	.byte	0x60
	.4byte	.LASF2391
	.byte	0x1
	.4byte	0x100ff
	.4byte	0x10106
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2392
	.byte	0x22
	.byte	0x62
	.4byte	.LASF2393
	.byte	0x1
	.4byte	0x1011b
	.4byte	0x10122
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF2394
	.byte	0x22
	.byte	0x6d
	.4byte	.LASF2395
	.byte	0x3
	.byte	0x1
	.4byte	0x10134
	.uleb128 0x17
	.4byte	0x10147
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff0f
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff0f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10153
	.uleb128 0xc
	.4byte	0xff0f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1015e
	.uleb128 0xc
	.4byte	0xff0f
	.uleb128 0x4
	.4byte	.LASF2396
	.byte	0x8
	.byte	0x23
	.byte	0x82
	.4byte	0x10188
	.uleb128 0x5
	.string	"p"
	.byte	0x23
	.byte	0x84
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"n"
	.byte	0x23
	.byte	0x85
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2397
	.byte	0x23
	.byte	0x86
	.4byte	0x10163
	.uleb128 0x2b
	.4byte	.LASF2398
	.byte	0x1c
	.byte	0x23
	.byte	0x8a
	.4byte	0x10594
	.uleb128 0x5
	.string	"ptr"
	.byte	0x23
	.byte	0xab
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"buf"
	.byte	0x23
	.byte	0xac
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2399
	.byte	0x23
	.byte	0xad
	.4byte	0x105be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x26
	.4byte	.LASF2400
	.byte	0x23
	.byte	0xb3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2401
	.byte	0x23
	.byte	0xb4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF793
	.byte	0x23
	.byte	0xb5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2402
	.byte	0x23
	.byte	0xb6
	.4byte	0x158e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2403
	.byte	0x23
	.byte	0xb7
	.4byte	0x158e
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2398
	.byte	0x23
	.byte	0x8c
	.byte	0x1
	.4byte	0x10225
	.4byte	0x1022c
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2404
	.byte	0x23
	.byte	0x8d
	.byte	0x1
	.4byte	0x1023d
	.4byte	0x1024a
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2398
	.byte	0x23
	.byte	0x8f
	.byte	0x1
	.4byte	0x1025b
	.4byte	0x10267
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x105ca
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2398
	.byte	0x23
	.byte	0x90
	.byte	0x1
	.4byte	0x10278
	.4byte	0x10284
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x105d5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2405
	.byte	0x23
	.byte	0x92
	.4byte	.LASF2406
	.byte	0x1
	.4byte	0x10299
	.4byte	0x102a5
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2407
	.byte	0x23
	.byte	0x93
	.4byte	.LASF2408
	.byte	0x1
	.4byte	0x102ba
	.4byte	0x102cb
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2409
	.byte	0x23
	.byte	0x95
	.4byte	.LASF2410
	.4byte	0x21ad
	.byte	0x1
	.4byte	0x102e4
	.4byte	0x102eb
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2409
	.byte	0x23
	.byte	0x96
	.4byte	.LASF2411
	.4byte	0x21ad
	.byte	0x1
	.4byte	0x10304
	.4byte	0x1030b
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF471
	.byte	0x23
	.byte	0x98
	.4byte	.LASF2412
	.4byte	0xde
	.byte	0x1
	.4byte	0x10324
	.4byte	0x1032b
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x23
	.byte	0x99
	.4byte	.LASF2413
	.4byte	0xde
	.byte	0x1
	.4byte	0x10344
	.4byte	0x10350
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc34a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2414
	.byte	0x23
	.byte	0x9a
	.4byte	.LASF2415
	.4byte	0x105d5
	.byte	0x1
	.4byte	0x10369
	.4byte	0x10370
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2414
	.byte	0x23
	.byte	0x9b
	.4byte	.LASF2416
	.4byte	0x10193
	.byte	0x1
	.4byte	0x10389
	.4byte	0x10395
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2417
	.byte	0x23
	.byte	0x9c
	.4byte	.LASF2418
	.4byte	0x105d5
	.byte	0x1
	.4byte	0x103ae
	.4byte	0x103b5
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2417
	.byte	0x23
	.byte	0x9d
	.4byte	.LASF2419
	.4byte	0x10193
	.byte	0x1
	.4byte	0x103ce
	.4byte	0x103da
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x23
	.byte	0x9e
	.4byte	.LASF2420
	.4byte	0x105d5
	.byte	0x1
	.4byte	0x103f3
	.4byte	0x103ff
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF481
	.byte	0x23
	.byte	0x9f
	.4byte	.LASF2421
	.4byte	0x105d5
	.byte	0x1
	.4byte	0x10418
	.4byte	0x10424
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF476
	.byte	0x23
	.byte	0xa0
	.4byte	.LASF2422
	.4byte	0x10193
	.byte	0x1
	.4byte	0x1043d
	.4byte	0x10449
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF469
	.byte	0x23
	.byte	0xa1
	.4byte	.LASF2423
	.4byte	0x10193
	.byte	0x1
	.4byte	0x10462
	.4byte	0x1046e
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x23
	.byte	0xa2
	.4byte	.LASF2424
	.4byte	0x105d5
	.byte	0x1
	.4byte	0x10487
	.4byte	0x10493
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF491
	.byte	0x23
	.byte	0xa3
	.4byte	.LASF2425
	.4byte	0x158e
	.byte	0x1
	.4byte	0x104ac
	.4byte	0x104b8
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF493
	.byte	0x23
	.byte	0xa4
	.4byte	.LASF2426
	.4byte	0x158e
	.byte	0x1
	.4byte	0x104d1
	.4byte	0x104dd
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2427
	.byte	0x23
	.byte	0xa5
	.4byte	.LASF2428
	.4byte	0x158e
	.byte	0x1
	.4byte	0x104f6
	.4byte	0x10502
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2429
	.byte	0x23
	.byte	0xa6
	.4byte	.LASF2430
	.4byte	0x158e
	.byte	0x1
	.4byte	0x1051b
	.4byte	0x10527
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2431
	.byte	0x23
	.byte	0xa7
	.4byte	.LASF2432
	.4byte	0x158e
	.byte	0x1
	.4byte	0x10540
	.4byte	0x1054c
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2433
	.byte	0x23
	.byte	0xa8
	.4byte	.LASF2434
	.4byte	0x158e
	.byte	0x1
	.4byte	0x10565
	.4byte	0x10571
	.uleb128 0x17
	.4byte	0x105db
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd37b
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.4byte	.LASF2435
	.byte	0x23
	.byte	0xb1
	.4byte	.LASF2436
	.4byte	0xde
	.byte	0x3
	.byte	0x1
	.4byte	0x10587
	.uleb128 0x17
	.4byte	0x105c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x62
	.4byte	.LASF6603
	.byte	0x1
	.4byte	0x105be
	.uleb128 0x63
	.byte	0x1
	.4byte	.LASF2437
	.byte	0x24
	.byte	0x3c
	.byte	0x1
	.4byte	0x10594
	.byte	0x1
	.4byte	0x105b0
	.uleb128 0x17
	.4byte	0x105be
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10594
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10193
	.uleb128 0x22
	.byte	0x4
	.4byte	0x105d0
	.uleb128 0xc
	.4byte	0x10193
	.uleb128 0x22
	.byte	0x4
	.4byte	0x10193
	.uleb128 0xb
	.byte	0x4
	.4byte	0x105e1
	.uleb128 0xc
	.4byte	0x10193
	.uleb128 0x2b
	.4byte	.LASF2438
	.byte	0xd0
	.byte	0x23
	.byte	0xbd
	.4byte	0x10ffb
	.uleb128 0x45
	.4byte	.LASF2439
	.byte	0x23
	.2byte	0x12a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2440
	.byte	0x23
	.2byte	0x12b
	.4byte	0xeb52
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2402
	.byte	0x23
	.2byte	0x12c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2441
	.byte	0x23
	.2byte	0x12e
	.4byte	0x10193
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2442
	.byte	0x23
	.2byte	0x12f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2443
	.byte	0x23
	.2byte	0x130
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2374
	.byte	0x23
	.2byte	0x131
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2375
	.byte	0x23
	.2byte	0x132
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2444
	.byte	0x23
	.2byte	0x13b
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2445
	.byte	0x23
	.2byte	0x13c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2369
	.byte	0x23
	.2byte	0x13d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2446
	.byte	0x23
	.2byte	0x13e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2447
	.byte	0x23
	.2byte	0x13f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2371
	.byte	0x23
	.2byte	0x140
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2448
	.byte	0x23
	.2byte	0x141
	.4byte	0x10ffb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2449
	.byte	0x23
	.2byte	0x142
	.4byte	0x8d35
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2450
	.byte	0x23
	.2byte	0x143
	.4byte	0x8d35
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2451
	.byte	0x23
	.2byte	0x144
	.4byte	0xff0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2376
	.byte	0x23
	.2byte	0x145
	.4byte	0x11006
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x3
	.uleb128 0x45
	.4byte	.LASF2452
	.byte	0x23
	.2byte	0x146
	.4byte	0x158e
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x3
	.uleb128 0x46
	.4byte	.LASF2453
	.byte	0x23
	.2byte	0x148
	.4byte	0x1100c
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2438
	.byte	0x23
	.byte	0xc3
	.byte	0x1
	.4byte	0x10754
	.4byte	0x1075b
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2438
	.byte	0x23
	.byte	0xc4
	.byte	0x1
	.4byte	0x1076c
	.4byte	0x10778
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2438
	.byte	0x23
	.byte	0xc5
	.byte	0x1
	.4byte	0x10789
	.4byte	0x1079f
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2438
	.byte	0x23
	.byte	0xc6
	.byte	0x1
	.4byte	0x107b0
	.4byte	0x107cb
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2454
	.byte	0x23
	.byte	0xc8
	.byte	0x1
	.4byte	0x107dc
	.4byte	0x107e9
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2455
	.byte	0x23
	.byte	0xca
	.4byte	.LASF2456
	.4byte	0xac
	.byte	0x1
	.4byte	0x10802
	.4byte	0x10813
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2457
	.byte	0x23
	.byte	0xce
	.4byte	.LASF2458
	.4byte	0xac
	.byte	0x1
	.4byte	0x1082c
	.4byte	0x10847
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2459
	.byte	0x23
	.byte	0xd0
	.4byte	.LASF2460
	.byte	0x1
	.4byte	0x1085c
	.4byte	0x10863
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2461
	.byte	0x23
	.byte	0xd2
	.4byte	.LASF2462
	.4byte	0xac
	.byte	0x1
	.4byte	0x1087c
	.4byte	0x10883
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2463
	.byte	0x23
	.byte	0xd4
	.4byte	.LASF2464
	.4byte	0xac
	.byte	0x1
	.4byte	0x1089c
	.4byte	0x108a8
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2465
	.byte	0x23
	.byte	0xd6
	.4byte	.LASF2466
	.4byte	0xac
	.byte	0x1
	.4byte	0x108c1
	.4byte	0x108cd
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2467
	.byte	0x23
	.byte	0xd8
	.4byte	.LASF2468
	.4byte	0xac
	.byte	0x1
	.4byte	0x108e6
	.4byte	0x108fc
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2469
	.byte	0x23
	.byte	0xda
	.4byte	.LASF2470
	.4byte	0xac
	.byte	0x1
	.4byte	0x10915
	.4byte	0x10921
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2471
	.byte	0x23
	.byte	0xdc
	.4byte	.LASF2472
	.4byte	0xac
	.byte	0x1
	.4byte	0x1093a
	.4byte	0x10946
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2473
	.byte	0x23
	.byte	0xde
	.4byte	.LASF2474
	.4byte	0xac
	.byte	0x1
	.4byte	0x1095f
	.4byte	0x10975
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2475
	.byte	0x23
	.byte	0xe0
	.4byte	.LASF2476
	.4byte	0xac
	.byte	0x1
	.4byte	0x1098e
	.4byte	0x1099a
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2477
	.byte	0x23
	.byte	0xe2
	.4byte	.LASF2478
	.4byte	0xac
	.byte	0x1
	.4byte	0x109b3
	.4byte	0x109c9
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2479
	.byte	0x23
	.byte	0xe4
	.4byte	.LASF2480
	.4byte	0xac
	.byte	0x1
	.4byte	0x109e2
	.4byte	0x109ee
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2481
	.byte	0x23
	.byte	0xe6
	.4byte	.LASF2482
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a07
	.4byte	0x10a0e
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2483
	.byte	0x23
	.byte	0xe8
	.4byte	.LASF2484
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a27
	.4byte	0x10a33
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x158e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF2485
	.byte	0x23
	.byte	0xea
	.4byte	.LASF2486
	.byte	0x1
	.4byte	0x10a48
	.4byte	0x10a54
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10158
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2487
	.byte	0x23
	.byte	0xec
	.4byte	.LASF2488
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a6d
	.4byte	0x10a79
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2489
	.byte	0x23
	.byte	0xef
	.4byte	.LASF2490
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10a92
	.4byte	0x10a9e
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11022
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2491
	.byte	0x23
	.byte	0xf2
	.4byte	.LASF2492
	.4byte	0xac
	.byte	0x1
	.4byte	0x10ab7
	.4byte	0x10abe
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2493
	.byte	0x23
	.byte	0xf4
	.4byte	.LASF2494
	.4byte	0x158e
	.byte	0x1
	.4byte	0x10ad7
	.4byte	0x10ade
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2495
	.byte	0x23
	.byte	0xf7
	.4byte	.LASF2496
	.4byte	0x109
	.byte	0x1
	.4byte	0x10af7
	.4byte	0x10b03
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11028
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2497
	.byte	0x23
	.byte	0xf9
	.4byte	.LASF2498
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b1c
	.4byte	0x10b2d
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2499
	.byte	0x23
	.byte	0xfa
	.4byte	.LASF2500
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b46
	.4byte	0x10b5c
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2501
	.byte	0x23
	.byte	0xfb
	.4byte	.LASF2502
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b75
	.4byte	0x10b90
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21c8
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2503
	.byte	0x23
	.byte	0xfd
	.4byte	.LASF2504
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10ba9
	.4byte	0x10bb5
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11022
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2505
	.byte	0x23
	.byte	0xff
	.4byte	.LASF2506
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10bce
	.4byte	0x10bdf
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11022
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2507
	.byte	0x23
	.2byte	0x101
	.4byte	.LASF2508
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10bf9
	.4byte	0x10c05
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11022
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2509
	.byte	0x23
	.2byte	0x103
	.4byte	.LASF2510
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c1f
	.4byte	0x10c2b
	.uleb128 0x17
	.4byte	0x1102e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11022
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2511
	.byte	0x23
	.2byte	0x105
	.4byte	.LASF2512
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c45
	.4byte	0x10c4c
	.uleb128 0x17
	.4byte	0x1102e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2513
	.byte	0x23
	.2byte	0x107
	.4byte	.LASF2514
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c66
	.4byte	0x10c6d
	.uleb128 0x17
	.4byte	0x1102e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2515
	.byte	0x23
	.2byte	0x109
	.4byte	.LASF2516
	.byte	0x1
	.4byte	0x10c83
	.4byte	0x10c8f
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10ffb
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2517
	.byte	0x23
	.2byte	0x10b
	.4byte	.LASF2518
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10ca9
	.4byte	0x10cb5
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2519
	.byte	0x23
	.2byte	0x10d
	.4byte	.LASF2520
	.4byte	0xac
	.byte	0x1
	.4byte	0x10ccf
	.4byte	0x10cdb
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2521
	.byte	0x23
	.2byte	0x10f
	.4byte	.LASF2522
	.byte	0x1
	.4byte	0x10cf1
	.4byte	0x10cfd
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2523
	.byte	0x23
	.2byte	0x111
	.4byte	.LASF2524
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d17
	.4byte	0x10d1e
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2525
	.byte	0x23
	.2byte	0x113
	.4byte	.LASF2526
	.byte	0x1
	.4byte	0x10d34
	.4byte	0x10d3b
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2527
	.byte	0x23
	.2byte	0x115
	.4byte	.LASF2528
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d55
	.4byte	0x10d5c
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2529
	.byte	0x23
	.2byte	0x117
	.4byte	.LASF2530
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10d76
	.4byte	0x10d7d
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2531
	.byte	0x23
	.2byte	0x119
	.4byte	.LASF2532
	.4byte	0x21ad
	.byte	0x1
	.4byte	0x10d97
	.4byte	0x10d9e
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF2533
	.byte	0x23
	.2byte	0x11a
	.4byte	.LASF2534
	.byte	0x1
	.4byte	0x10db4
	.4byte	0x10dc0
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2535
	.byte	0x23
	.2byte	0x11c
	.4byte	.LASF2536
	.4byte	0x11039
	.byte	0x1
	.4byte	0x10dda
	.4byte	0x10de1
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2537
	.byte	0x23
	.2byte	0x11e
	.4byte	.LASF2538
	.4byte	0x21ad
	.byte	0x1
	.4byte	0x10dfb
	.4byte	0x10e02
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF102
	.byte	0x23
	.2byte	0x120
	.4byte	.LASF2539
	.byte	0x1
	.4byte	0x10e18
	.4byte	0x10e25
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF94
	.byte	0x23
	.2byte	0x122
	.4byte	.LASF2540
	.byte	0x1
	.4byte	0x10e3b
	.4byte	0x10e48
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF2541
	.byte	0x23
	.2byte	0x124
	.4byte	.LASF2542
	.4byte	0x158e
	.byte	0x1
	.4byte	0x10e62
	.4byte	0x10e69
	.uleb128 0x17
	.4byte	0x1102e
	.byte	0x1
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2543
	.byte	0x23
	.2byte	0x127
	.4byte	.LASF2544
	.byte	0x1
	.4byte	0x10e81
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF2545
	.byte	0x23
	.2byte	0x14b
	.4byte	.LASF2546
	.byte	0x3
	.byte	0x1
	.4byte	0x10e98
	.4byte	0x10ea4
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10ffb
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2547
	.byte	0x23
	.2byte	0x14c
	.4byte	.LASF2548
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10ebf
	.4byte	0x10ec6
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2549
	.byte	0x23
	.2byte	0x14d
	.4byte	.LASF2550
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10ee1
	.4byte	0x10eed
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2551
	.byte	0x23
	.2byte	0x14e
	.4byte	.LASF2552
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f08
	.4byte	0x10f19
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2553
	.byte	0x23
	.2byte	0x14f
	.4byte	.LASF2554
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f34
	.4byte	0x10f40
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2555
	.byte	0x23
	.2byte	0x150
	.4byte	.LASF2556
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f5b
	.4byte	0x10f67
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2557
	.byte	0x23
	.2byte	0x151
	.4byte	.LASF2558
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f82
	.4byte	0x10f8e
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2559
	.byte	0x23
	.2byte	0x152
	.4byte	.LASF2560
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fa9
	.4byte	0x10fb5
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10147
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.4byte	.LASF2561
	.byte	0x23
	.2byte	0x153
	.4byte	.LASF2562
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fd0
	.4byte	0x10fdc
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF2563
	.byte	0x23
	.2byte	0x154
	.4byte	.LASF2564
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10ff3
	.uleb128 0x17
	.4byte	0x1101c
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11001
	.uleb128 0xc
	.4byte	0x10188
	.uleb128 0xb
	.byte	0x4
	.4byte	0x105e6
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x1101c
	.uleb128 0xa
	.4byte	0x34
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x105e6
	.uleb128 0x22
	.byte	0x4
	.4byte	0xeb52
	.uleb128 0xb
	.byte	0x4
	.4byte	0x158e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11034
	.uleb128 0xc
	.4byte	0x105e6
	.uleb128 0xc
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF2565
	.byte	0x20
	.byte	0x25
	.byte	0x37
	.4byte	0x110bb
	.uleb128 0x6
	.4byte	.LASF2566
	.byte	0x25
	.byte	0x38
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2371
	.byte	0x25
	.byte	0x39
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2567
	.byte	0x25
	.byte	0x3a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2568
	.byte	0x25
	.byte	0x3b
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2569
	.byte	0x25
	.byte	0x3c
	.4byte	0x10147
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2570
	.byte	0x25
	.byte	0x3d
	.4byte	0x10147
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF2376
	.byte	0x25
	.byte	0x3e
	.4byte	0x110bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF2571
	.byte	0x25
	.byte	0x3f
	.4byte	0x110bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1103e
	.uleb128 0x2
	.4byte	.LASF2572
	.byte	0x25
	.byte	0x40
	.4byte	0x1103e
	.uleb128 0x4
	.4byte	.LASF2573
	.byte	0x10
	.byte	0x25
	.byte	0x44
	.4byte	0x11111
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x25
	.byte	0x45
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2574
	.byte	0x25
	.byte	0x46
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2575
	.byte	0x25
	.byte	0x47
	.4byte	0x1101c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2376
	.byte	0x25
	.byte	0x48
	.4byte	0x11111
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x110cc
	.uleb128 0x2
	.4byte	.LASF2576
	.byte	0x25
	.byte	0x49
	.4byte	0x110cc
	.uleb128 0x2b
	.4byte	.LASF2577
	.byte	0x6c
	.byte	0x25
	.byte	0x4c
	.4byte	0x11fc1
	.uleb128 0x26
	.4byte	.LASF2439
	.byte	0x25
	.byte	0xb6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2440
	.byte	0x25
	.byte	0xb7
	.4byte	0xeb52
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2578
	.byte	0x25
	.byte	0xb8
	.4byte	0xeb52
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2579
	.byte	0x25
	.byte	0xb9
	.4byte	0x158e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2448
	.byte	0x25
	.byte	0xba
	.4byte	0x10ffb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2371
	.byte	0x25
	.byte	0xbb
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2580
	.byte	0x25
	.byte	0xbc
	.4byte	0x1101c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2570
	.byte	0x25
	.byte	0xbd
	.4byte	0x10147
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2581
	.byte	0x25
	.byte	0xbe
	.4byte	0x11fc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2582
	.byte	0x25
	.byte	0xbf
	.4byte	0x11fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2583
	.byte	0x25
	.byte	0xc0
	.4byte	0x11fcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2574
	.byte	0x25
	.byte	0xc1
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF2584
	.byte	0x25
	.byte	0xc3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x31
	.4byte	.LASF2585
	.byte	0x25
	.byte	0xc5
	.4byte	0x11fc1
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2577
	.byte	0x25
	.byte	0x50
	.byte	0x1
	.4byte	0x11210
	.4byte	0x11217
	.uleb128 0x17
	.4byte	0x11fd3
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF2577
	.byte	0x25
	.byte	0x51
	.byte	0x1
	.4byte	0x11228
	.4byte	0x11234
	.uleb128 0x17