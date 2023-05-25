	.file	"net_vcr.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl VCR_Shutdown
	.type	VCR_Shutdown, @function
VCR_Shutdown:
.LFB41:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/net_vcr.c"
	.loc 1 75 0
	.cfi_startproc
	.loc 1 76 0
	blr
	.cfi_endproc
.LFE41:
	.size	VCR_Shutdown, .-VCR_Shutdown
	.align 2
	.globl VCR_Close
	.type	VCR_Close, @function
VCR_Close:
.LFB45:
	.loc 1 133 0
	.cfi_startproc
.LVL0:
	.loc 1 135 0
	blr
	.cfi_endproc
.LFE45:
	.size	VCR_Close, .-VCR_Close
	.align 2
	.globl VCR_SearchForHosts
	.type	VCR_SearchForHosts, @function
VCR_SearchForHosts:
.LFB46:
	.loc 1 139 0
	.cfi_startproc
.LVL1:
	.loc 1 141 0
	blr
	.cfi_endproc
.LFE46:
	.size	VCR_SearchForHosts, .-VCR_SearchForHosts
	.align 2
	.globl VCR_Connect
	.type	VCR_Connect, @function
VCR_Connect:
.LFB47:
	.loc 1 145 0
	.cfi_startproc
.LVL2:
	.loc 1 148 0
	li 3,0
.LVL3:
	blr
	.cfi_endproc
.LFE47:
	.size	VCR_Connect, .-VCR_Connect
	.align 2
	.globl VCR_Init
	.type	VCR_Init, @function
VCR_Init:
.LFB38:
	.loc 1 40 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 52 0
	lis 9,vcrFile@ha
	.loc 1 41 0
	lis 11,VCR_Init@ha
	.loc 1 52 0
	lwz 3,vcrFile@l(9)
	.loc 1 41 0
	lis 9,net_drivers@ha
	.loc 1 40 0
	stw 0,12(1)
	.loc 1 41 0
	la 9,net_drivers@l(9)
	la 0,VCR_Init@l(11)
	.cfi_offset 65, 4
	.loc 1 43 0
	lis 11,VCR_SearchForHosts@ha
	.loc 1 41 0
	stw 0,8(9)
	.loc 1 43 0
	la 0,VCR_SearchForHosts@l(11)
	.loc 1 44 0
	lis 11,VCR_Connect@ha
	.loc 1 43 0
	stw 0,16(9)
	.loc 1 44 0
	la 0,VCR_Connect@l(11)
	.loc 1 45 0
	lis 11,VCR_CheckNewConnections@ha
	.loc 1 44 0
	stw 0,20(9)
	.loc 1 45 0
	la 0,VCR_CheckNewConnections@l(11)
	.loc 1 46 0
	lis 11,VCR_GetMessage@ha
	.loc 1 45 0
	stw 0,24(9)
	.loc 1 46 0
	la 0,VCR_GetMessage@l(11)
	.loc 1 47 0
	lis 11,VCR_SendMessage@ha
	.loc 1 46 0
	stw 0,28(9)
	.loc 1 47 0
	la 0,VCR_SendMessage@l(11)
	.loc 1 48 0
	lis 11,VCR_CanSendMessage@ha
	.loc 1 47 0
	stw 0,32(9)
	.loc 1 48 0
	la 0,VCR_CanSendMessage@l(11)
	.loc 1 49 0
	lis 11,VCR_Close@ha
	.loc 1 48 0
	stw 0,40(9)
	.loc 1 49 0
	la 0,VCR_Close@l(11)
	.loc 1 50 0
	lis 11,VCR_Shutdown@ha
	.loc 1 49 0
	stw 0,48(9)
	.loc 1 50 0
	la 0,VCR_Shutdown@l(11)
	.loc 1 52 0
	lis 4,.LANCHOR0@ha
	.loc 1 50 0
	stw 0,52(9)
	.loc 1 52 0
	la 4,.LANCHOR0@l(4)
	li 5,16
	bl Sys_FileRead
	.loc 1 54 0
	lwz 0,12(1)
	li 3,0
	mtlr 0
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	VCR_Init, .-VCR_Init
	.align 2
	.globl VCR_ReadNext
	.type	VCR_ReadNext, @function
VCR_ReadNext:
.LFB39:
	.loc 1 57 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 1 58 0
	lis 9,vcrFile@ha
	li 5,16
	.loc 1 57 0
	stw 31,12(1)
	.loc 1 58 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR0@l(31)
	lwz 3,vcrFile@l(9)
	mr 4,31
	.loc 1 57 0
	stw 0,20(1)
	.loc 1 58 0
	.cfi_offset 65, 4
	bl Sys_FileRead
	cmpwi 7,3,0
	beq- 7,.L10
.L7:
	.loc 1 63 0
	lwz 9,8(31)
	addi 0,9,-1
	cmplwi 7,0,3
	ble+ 7,.L6
	.loc 1 64 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl Sys_Error
.L6:
	.loc 1 65 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L10:
.LCFI4:
	.cfi_restore_state
	.loc 1 60 0
	li 0,255
	.loc 1 61 0
	lis 3,.LC0@ha
	.loc 1 60 0
	stw 0,8(31)
	.loc 1 61 0
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L7
	.cfi_endproc
.LFE39:
	.size	VCR_ReadNext, .-VCR_ReadNext
	.align 2
	.globl VCR_CheckNewConnections
	.type	VCR_CheckNewConnections, @function
VCR_CheckNewConnections:
.LFB48:
	.loc 1 152 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI5:
	.cfi_def_cfa_offset 16
	.loc 1 155 0
	lis 9,host_time@ha
	lfd 0,host_time@l(9)
	.loc 1 152 0
	mflr 0
	stw 30,8(1)
	.loc 1 155 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	lfd 13,.LANCHOR0@l(30)
	la 30,.LANCHOR0@l(30)
	.loc 1 152 0
	stw 0,20(1)
	.loc 1 155 0
	fcmpu 7,13,0
	.loc 1 152 0
	stw 31,12(1)
	.loc 1 155 0
	bne- 7,.L12
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 155 0 is_stmt 0 discriminator 1
	lwz 0,8(30)
	cmpwi 7,0,1
	beq- 7,.L13
.L12:
	.loc 1 156 0 is_stmt 1
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Error
.L13:
	.loc 1 158 0
	lwz 0,12(30)
	cmpwi 7,0,0
	beq- 7,.L16
	.loc 1 164 0
	bl NET_NewQSocket
	.loc 1 165 0
	lwz 0,12(30)
	.loc 1 167 0
	lis 9,vcrFile@ha
	.loc 1 164 0
	mr 31,3
.LVL4:
	.loc 1 165 0
	stw 0,48(3)
	.loc 1 167 0
	addis 4,3,0x1
	lwz 3,vcrFile@l(9)
.LVL5:
	addi 4,4,-32672
	li 5,64
	bl Sys_FileRead
	.loc 1 168 0
	bl VCR_ReadNext
	.loc 1 171 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL6:
	addi 1,1,16
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL7:
.L16:
.LCFI7:
	.cfi_restore_state
	.loc 1 160 0
	bl VCR_ReadNext
	.loc 1 171 0
	lwz 0,20(1)
	.loc 1 161 0
	li 31,0
	.loc 1 171 0
	lwz 30,8(1)
	mtlr 0
	mr 3,31
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI8:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE48:
	.size	VCR_CheckNewConnections, .-VCR_CheckNewConnections
	.align 2
	.globl VCR_CanSendMessage
	.type	VCR_CanSendMessage, @function
VCR_CanSendMessage:
.LFB44:
	.loc 1 118 0
	.cfi_startproc
.LVL8:
	.loc 1 121 0
	lis 9,.LANCHOR0@ha
	lis 11,host_time@ha
	lfd 13,.LANCHOR0@l(9)
	.loc 1 118 0
	mflr 0
	.loc 1 121 0
	lfd 0,host_time@l(11)
	la 9,.LANCHOR0@l(9)
	.loc 1 118 0
	stwu 1,-24(1)
.LCFI9:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 121 0
	fcmpu 7,13,0
	.loc 1 118 0
	stw 0,28(1)
	.loc 1 121 0
	bne- 7,.L18
	.cfi_offset 65, 4
	.loc 1 121 0 is_stmt 0 discriminator 1
	lwz 0,8(9)
	cmpwi 7,0,4
	beq- 7,.L20
.L18:
	.loc 1 122 0 is_stmt 1
	lis 3,.LC2@ha
.LVL9:
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Error
.L19:
	.loc 1 124 0
	lis 9,vcrFile@ha
	addi 4,1,8
	lwz 3,vcrFile@l(9)
	li 5,4
	bl Sys_FileRead
	.loc 1 126 0
	bl VCR_ReadNext
	.loc 1 129 0
	lwz 0,28(1)
.LVL10:
	lbz 3,8(1)
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
.LVL11:
.L20:
.LCFI11:
	.cfi_restore_state
	.loc 1 121 0 discriminator 1
	lwz 9,12(9)
	lwz 0,48(3)
	cmpw 7,9,0
	bne+ 7,.L18
	b .L19
	.cfi_endproc
.LFE44:
	.size	VCR_CanSendMessage, .-VCR_CanSendMessage
	.align 2
	.globl VCR_SendMessage
	.type	VCR_SendMessage, @function
VCR_SendMessage:
.LFB43:
	.loc 1 103 0
	.cfi_startproc
.LVL12:
	.loc 1 106 0
	lis 9,.LANCHOR0@ha
	lis 11,host_time@ha
	lfd 13,.LANCHOR0@l(9)
	.loc 1 103 0
	mflr 0
	.loc 1 106 0
	lfd 0,host_time@l(11)
	la 9,.LANCHOR0@l(9)
	.loc 1 103 0
	stwu 1,-24(1)
.LCFI12:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 106 0
	fcmpu 7,13,0
	.loc 1 103 0
	stw 0,28(1)
	.loc 1 106 0
	bne- 7,.L22
	.cfi_offset 65, 4
	.loc 1 106 0 is_stmt 0 discriminator 1
	lwz 0,8(9)
	cmpwi 7,0,3
	beq- 7,.L24
.L22:
	.loc 1 107 0 is_stmt 1
	lis 3,.LC2@ha
.LVL13:
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL14:
.L23:
	.loc 1 109 0
	lis 9,vcrFile@ha
	addi 4,1,8
	lwz 3,vcrFile@l(9)
	li 5,4
	bl Sys_FileRead
	.loc 1 111 0
	bl VCR_ReadNext
	.loc 1 114 0
	lwz 0,28(1)
.LVL15:
	lwz 3,8(1)
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	blr
.LVL16:
.L24:
.LCFI14:
	.cfi_restore_state
	.loc 1 106 0 discriminator 1
	lwz 9,12(9)
	lwz 0,48(3)
	cmpw 7,9,0
	bne+ 7,.L22
	b .L23
	.cfi_endproc
.LFE43:
	.size	VCR_SendMessage, .-VCR_SendMessage
	.align 2
	.globl VCR_GetMessage
	.type	VCR_GetMessage, @function
VCR_GetMessage:
.LFB42:
	.loc 1 80 0
	.cfi_startproc
.LVL17:
	.loc 1 83 0
	lis 9,.LANCHOR0@ha
	lis 11,host_time@ha
	lfd 13,.LANCHOR0@l(9)
	.loc 1 80 0
	mflr 0
	.loc 1 83 0
	lfd 0,host_time@l(11)
	la 9,.LANCHOR0@l(9)
	.loc 1 80 0
	stwu 1,-32(1)
.LCFI15:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 83 0
	fcmpu 7,13,0
	.loc 1 80 0
	stw 0,36(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 83 0
	bne- 7,.L26
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 83 0 is_stmt 0 discriminator 1
	lwz 0,8(9)
	cmpwi 7,0,2
	beq- 7,.L30
.L26:
	.loc 1 84 0 is_stmt 1
	lis 3,.LC2@ha
.LVL18:
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Error
.L27:
	.loc 1 86 0
	lis 31,vcrFile@ha
	addi 4,1,8
	lwz 3,vcrFile@l(31)
	li 5,4
	bl Sys_FileRead
.LVL19:
	.loc 1 87 0
	lwz 0,8(1)
	cmpwi 7,0,1
	beq- 7,.L28
	.loc 1 89 0
	bl VCR_ReadNext
	.loc 1 99 0
	lwz 0,36(1)
	.loc 1 90 0
	lwz 3,8(1)
	.loc 1 99 0
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L28:
.LCFI17:
	.cfi_restore_state
.LBB4:
.LBB5:
	.loc 1 93 0
	lis 30,net_message+12@ha
	lwz 3,vcrFile@l(31)
	la 30,net_message+12@l(30)
	li 5,4
	mr 4,30
	bl Sys_FileRead
	.loc 1 94 0
	lwz 4,-8(30)
	lwz 5,0(30)
	lwz 3,vcrFile@l(31)
	bl Sys_FileRead
	.loc 1 96 0
	bl VCR_ReadNext
.LBE5:
.LBE4:
	.loc 1 99 0
	lwz 0,36(1)
	lwz 30,24(1)
.LBB7:
.LBB6:
	.loc 1 96 0
	li 3,1
.LBE6:
.LBE7:
	.loc 1 99 0
	mtlr 0
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.LVL20:
.L30:
.LCFI19:
	.cfi_restore_state
	.loc 1 83 0 discriminator 1
	lwz 9,12(9)
	lwz 0,48(3)
	cmpw 7,9,0
	bne+ 7,.L26
	b .L27
	.cfi_endproc
.LFE42:
	.size	VCR_GetMessage, .-VCR_GetMessage
	.align 2
	.globl VCR_Listen
	.type	VCR_Listen, @function
VCR_Listen:
.LFB40:
	.loc 1 69 0
	.cfi_startproc
.LVL21:
	.loc 1 71 0
	blr
	.cfi_endproc
.LFE40:
	.size	VCR_Listen, .-VCR_Listen
	.comm	causticschain,4,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"=== END OF PLAYBACK===\n"
.LC1:
	.string	"VCR_ReadNext: bad op"
	.zero	3
.LC2:
	.string	"VCR missmatch"
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	next, @object
	.size	next, 16
next:
	.zero	16
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/server.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb87
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.4byte	.LASF142
	.4byte	.LASF143
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
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x10
	.byte	0x2
	.byte	0x28
	.4byte	0x10c
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2a
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0x2b
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0x2c
	.4byte	0x10c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2f
	.4byte	0xb9
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x12d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x13d
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x14d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x15d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x173
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x183
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x16
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x17
	.4byte	0x199
	.uleb128 0xb
	.4byte	0x183
	.4byte	0x1a9
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x10
	.byte	0x4
	.byte	0x16
	.4byte	0x1d2
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x19
	.4byte	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.2byte	0x80a0
	.byte	0x4
	.byte	0x78
	.4byte	0x330
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x7a
	.4byte	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x7c
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x7d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7f
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x80
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x81
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x86
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x8c
	.4byte	0x336
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0x91
	.4byte	0x336
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0x93
	.4byte	0x1a9
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0x94
	.4byte	0x347
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x347
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x357
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.byte	0x96
	.4byte	0x1e2
	.uleb128 0xf
	.byte	0x1
	.4byte	0x41
	.uleb128 0x6
	.byte	0x4
	.4byte	0x362
	.uleb128 0x10
	.byte	0x1
	.4byte	0x37a
	.uleb128 0x11
	.4byte	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36e
	.uleb128 0x12
	.byte	0x3c
	.byte	0x4
	.byte	0xb9
	.4byte	0x45b
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xbb
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0xbc
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xbd
	.4byte	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0xbe
	.4byte	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xbf
	.4byte	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0xc0
	.4byte	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0xc1
	.4byte	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0xc2
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc3
	.4byte	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc4
	.4byte	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.byte	0xc5
	.4byte	0x4ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0xc6
	.4byte	0x4ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0xc7
	.4byte	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0xc8
	.4byte	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0xc9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	0x46b
	.4byte	0x46b
	.uleb128 0x11
	.4byte	0x6e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x357
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45b
	.uleb128 0xf
	.byte	0x1
	.4byte	0x46b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x477
	.uleb128 0x13
	.byte	0x1
	.4byte	0x41
	.4byte	0x493
	.uleb128 0x11
	.4byte	0x46b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x483
	.uleb128 0x13
	.byte	0x1
	.4byte	0x41
	.4byte	0x4ae
	.uleb128 0x11
	.4byte	0x46b
	.uleb128 0x11
	.4byte	0x4ae
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x112
	.uleb128 0x6
	.byte	0x4
	.4byte	0x499
	.uleb128 0x13
	.byte	0x1
	.4byte	0xa7
	.4byte	0x4ca
	.uleb128 0x11
	.4byte	0x46b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ba
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4dc
	.uleb128 0x11
	.4byte	0x46b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d0
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x4
	.byte	0xca
	.4byte	0x380
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x14
	.byte	0x5
	.byte	0x52
	.4byte	0x540
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0x54
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x5
	.byte	0x55
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x5
	.byte	0x56
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x5
	.byte	0x57
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x14
	.string	"pad"
	.byte	0x5
	.byte	0x58
	.4byte	0x540
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x550
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.byte	0x59
	.4byte	0x4ed
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x48
	.byte	0x5
	.byte	0x5b
	.4byte	0x610
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x5
	.byte	0x5d
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x5
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x5
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x5
	.byte	0x61
	.4byte	0x735
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x5
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x5
	.byte	0x64
	.4byte	0x73b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x5
	.byte	0x65
	.4byte	0x73b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x5
	.byte	0x66
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x5c
	.byte	0x5
	.byte	0x96
	.4byte	0x735
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x5
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x5
	.byte	0x9a
	.4byte	0x824
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x5
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x5
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x5
	.byte	0xa0
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x5
	.byte	0xa1
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x5
	.byte	0xa5
	.4byte	0x82a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x5
	.byte	0xa6
	.4byte	0x735
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x5
	.byte	0xa7
	.4byte	0x735
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x5
	.byte	0xa9
	.4byte	0x830
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x5
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x5
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x5
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x5
	.byte	0xb0
	.4byte	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x5
	.byte	0xb1
	.4byte	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x5
	.byte	0xb2
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x5
	.byte	0xb3
	.4byte	0x10c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x610
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55b
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x5
	.byte	0x67
	.4byte	0x55b
	.uleb128 0x12
	.byte	0x2c
	.byte	0x5
	.byte	0x7e
	.4byte	0x78d
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x5
	.byte	0x80
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x5
	.byte	0x81
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x5
	.byte	0x82
	.4byte	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x741
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x5
	.byte	0x84
	.4byte	0x74c
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1c
	.byte	0x5
	.byte	0x8a
	.4byte	0x80d
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x8c
	.4byte	0x80d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x5
	.byte	0x8d
	.4byte	0x80d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x5
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x5
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x5
	.byte	0x92
	.4byte	0x813
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x5
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x80d
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x5
	.byte	0x94
	.4byte	0x79e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x550
	.uleb128 0x6
	.byte	0x4
	.4byte	0x819
	.uleb128 0x6
	.byte	0x4
	.4byte	0x793
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x5
	.byte	0xb4
	.4byte	0x610
	.uleb128 0x6
	.byte	0x4
	.4byte	0x836
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x8a7
	.uleb128 0x16
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x8a7
	.uleb128 0x16
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x8ac
	.uleb128 0x16
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x8b1
	.uleb128 0x16
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x8b6
	.uleb128 0x16
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0x8bb
	.uleb128 0x16
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x8c0
	.uleb128 0x16
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0xa2
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
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x499
	.4byte	0x847
	.uleb128 0x12
	.byte	0x10
	.byte	0x1
	.byte	0x20
	.4byte	0x903
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x1
	.byte	0x22
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"op"
	.byte	0x1
	.byte	0x23
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0x24
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x92c
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x1
	.byte	0x4f
	.4byte	0x46b
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x51
	.4byte	0x41
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x966
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x84
	.4byte	0x46b
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x98c
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x8a
	.4byte	0xa7
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x46b
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9b8
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x90
	.4byte	0x6e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST1
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST2
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	0x46b
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST3
	.4byte	0xa13
	.uleb128 0x23
	.4byte	.LASF124
	.byte	0x1
	.byte	0x99
	.4byte	0x46b
	.4byte	.LLST4
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST5
	.4byte	0xa4f
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.byte	0x75
	.4byte	0x46b
	.4byte	.LLST6
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x77
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST8
	.4byte	0xa9a
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.byte	0x66
	.4byte	0x46b
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	.LASF18
	.byte	0x1
	.byte	0x66
	.4byte	0x4ae
	.4byte	.LLST10
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x68
	.4byte	0x41
	.4byte	.LLST11
	.byte	0
	.uleb128 0x25
	.4byte	0x903
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST12
	.4byte	0xae2
	.uleb128 0x26
	.4byte	0x915
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	0x920
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	0x903
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.4byte	0x920
	.uleb128 0x2b
	.4byte	0x915
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb08
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.byte	0x44
	.4byte	0xa7
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.4byte	0x8d1
	.byte	0x5
	.byte	0x3
	.4byte	next
	.uleb128 0xb
	.4byte	0x4e2
	.4byte	0xb29
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x4
	.byte	0xcd
	.4byte	0xb19
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x110
	.4byte	0x112
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF137
	.byte	0x7
	.byte	0xd5
	.4byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF138
	.byte	0x8
	.2byte	0xc2c
	.4byte	0x841
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2e
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x548
	.4byte	0xb72
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	0xb77
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c5
	.uleb128 0x2d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x19
	.4byte	0x41
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x6
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
	.uleb128 0x23
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"net_drivers"
.LASF131:
	.string	"VCR_CanSendMessage"
.LASF55:
	.string	"Listen"
.LASF35:
	.string	"sendNext"
.LASF54:
	.string	"Init"
.LASF38:
	.string	"socket"
.LASF16:
	.string	"allowoverflow"
.LASF115:
	.string	"neighbours"
.LASF71:
	.string	"type"
.LASF41:
	.string	"sendSequence"
.LASF88:
	.string	"plane"
.LASF49:
	.string	"addr"
.LASF104:
	.string	"cached_dlight"
.LASF44:
	.string	"sendMessage"
.LASF29:
	.string	"next"
.LASF93:
	.string	"extents"
.LASF137:
	.string	"host_time"
.LASF21:
	.string	"sizebuf_t"
.LASF101:
	.string	"lightmaptexturenum"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF145:
	.string	"VCR_GetMessage"
.LASF6:
	.string	"long long unsigned int"
.LASF92:
	.string	"texturemins"
.LASF144:
	.string	"_wgpipe"
.LASF134:
	.string	"state"
.LASF34:
	.string	"canSend"
.LASF12:
	.string	"long int"
.LASF143:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF111:
	.string	"glpoly_s"
.LASF117:
	.string	"glpoly_t"
.LASF146:
	.string	"VCR_Init"
.LASF31:
	.string	"lastMessageTime"
.LASF9:
	.string	"double"
.LASF98:
	.string	"texinfo"
.LASF96:
	.string	"polys"
.LASF68:
	.string	"mplane_s"
.LASF73:
	.string	"mplane_t"
.LASF14:
	.string	"qboolean"
.LASF13:
	.string	"byte"
.LASF124:
	.string	"sock"
.LASF80:
	.string	"anim_total"
.LASF20:
	.string	"cursize"
.LASF83:
	.string	"anim_next"
.LASF126:
	.string	"host"
.LASF53:
	.string	"initialized"
.LASF4:
	.string	"unsigned int"
.LASF109:
	.string	"texture"
.LASF79:
	.string	"texturechain"
.LASF94:
	.string	"light_s"
.LASF95:
	.string	"light_t"
.LASF7:
	.string	"long unsigned int"
.LASF52:
	.string	"name"
.LASF75:
	.string	"width"
.LASF18:
	.string	"data"
.LASF108:
	.string	"mipadjust"
.LASF127:
	.string	"VCR_Shutdown"
.LASF48:
	.string	"receiveMessage"
.LASF132:
	.string	"VCR_SendMessage"
.LASF17:
	.string	"overflowed"
.LASF45:
	.string	"receiveSequence"
.LASF97:
	.string	"shadowchain"
.LASF90:
	.string	"firstedge"
.LASF136:
	.string	"net_message"
.LASF72:
	.string	"signbits"
.LASF56:
	.string	"SearchForHosts"
.LASF61:
	.string	"SendUnreliableMessage"
.LASF140:
	.string	"vcrFile"
.LASF65:
	.string	"Shutdown"
.LASF105:
	.string	"samples"
.LASF50:
	.string	"address"
.LASF33:
	.string	"disconnected"
.LASF99:
	.string	"dlightframe"
.LASF78:
	.string	"gl_lumitex"
.LASF43:
	.string	"sendMessageLength"
.LASF100:
	.string	"dlightbits"
.LASF114:
	.string	"lightTimestamp"
.LASF113:
	.string	"numverts"
.LASF120:
	.string	"time"
.LASF40:
	.string	"ackSequence"
.LASF121:
	.string	"session"
.LASF102:
	.string	"styles"
.LASF142:
	.string	"d:/Data/Nintendo/TenebraeGX/src/net_vcr.c"
.LASF10:
	.string	"float"
.LASF69:
	.string	"normal"
.LASF26:
	.string	"sa_family"
.LASF86:
	.string	"msurface_s"
.LASF118:
	.string	"msurface_t"
.LASF22:
	.string	"vec_t"
.LASF87:
	.string	"visframe"
.LASF82:
	.string	"anim_max"
.LASF15:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"gl_texturenum"
.LASF2:
	.string	"short int"
.LASF139:
	.string	"wgPipe"
.LASF46:
	.string	"unreliableReceiveSequence"
.LASF116:
	.string	"firstvertex"
.LASF103:
	.string	"cached_light"
.LASF42:
	.string	"unreliableSendSequence"
.LASF84:
	.string	"alternate_anims"
.LASF133:
	.string	"VCR_Listen"
.LASF112:
	.string	"chain"
.LASF30:
	.string	"connecttime"
.LASF122:
	.string	"VCR_Close"
.LASF39:
	.string	"driverdata"
.LASF119:
	.string	"WGPipe"
.LASF23:
	.string	"vec3_t"
.LASF11:
	.string	"long double"
.LASF8:
	.string	"char"
.LASF129:
	.string	"VCR_Connect"
.LASF123:
	.string	"VCR_SearchForHosts"
.LASF59:
	.string	"QGetMessage"
.LASF28:
	.string	"qsocket_s"
.LASF25:
	.string	"qsockaddr"
.LASF107:
	.string	"vecs"
.LASF66:
	.string	"controlSock"
.LASF51:
	.string	"qsocket_t"
.LASF58:
	.string	"CheckNewConnections"
.LASF110:
	.string	"mtexinfo_t"
.LASF138:
	.string	"causticschain"
.LASF67:
	.string	"net_driver_t"
.LASF3:
	.string	"short unsigned int"
.LASF70:
	.string	"dist"
.LASF63:
	.string	"CanSendUnreliableMessage"
.LASF85:
	.string	"offsets"
.LASF141:
	.string	"GNU C 4.6.3"
.LASF37:
	.string	"landriver"
.LASF60:
	.string	"QSendMessage"
.LASF32:
	.string	"lastSendTime"
.LASF24:
	.string	"sizebuf_s"
.LASF128:
	.string	"VCR_ReadNext"
.LASF89:
	.string	"flags"
.LASF130:
	.string	"VCR_CheckNewConnections"
.LASF57:
	.string	"Connect"
.LASF64:
	.string	"Close"
.LASF36:
	.string	"driver"
.LASF27:
	.string	"sa_data"
.LASF81:
	.string	"anim_min"
.LASF74:
	.string	"texture_s"
.LASF106:
	.string	"texture_t"
.LASF62:
	.string	"CanSendMessage"
.LASF76:
	.string	"height"
.LASF47:
	.string	"receiveMessageLength"
.LASF19:
	.string	"maxsize"
.LASF125:
	.string	"xmit"
.LASF91:
	.string	"numedges"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
