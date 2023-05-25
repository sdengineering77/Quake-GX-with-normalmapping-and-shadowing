	.file	"jerror.c.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	emit_message, @function
emit_message:
.LFB2:
	.file 1 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jerror.c.c"
	.loc 1 111 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 114 0
	cmpwi 0,4,0
	.loc 1 111 0
	mr 9,3
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 112 0
	lwz 31,0(3)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1:
	.loc 1 114 0
	blt- 0,.L7
	.loc 1 125 0
	lwz 0,104(31)
	cmpw 7,4,0
	ble- 7,.L8
	.loc 1 128 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L8:
.LCFI2:
	.cfi_restore_state
	.loc 1 126 0
	lwz 0,8(31)
	mtctr 0
	bctrl
.LVL2:
	.loc 1 128 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL4:
.L7:
.LCFI4:
	.cfi_restore_state
	.loc 1 119 0
	lwz 11,108(31)
	cmpwi 7,11,0
	beq- 7,.L3
	.loc 1 119 0 is_stmt 0 discriminator 1
	lwz 0,104(31)
	cmpwi 7,0,2
	ble- 7,.L4
.L3:
	.loc 1 120 0 is_stmt 1
	lwz 0,8(31)
	mr 3,9
.LVL5:
	mtctr 0
	bctrl
.LVL6:
	lwz 11,108(31)
.L4:
	.loc 1 122 0
	addi 11,11,1
	stw 11,108(31)
	.loc 1 128 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL7:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2:
	.size	emit_message, .-emit_message
	.align 2
	.type	reset_error_mgr, @function
reset_error_mgr:
.LFB4:
	.loc 1 195 0
	.cfi_startproc
.LVL8:
	.loc 1 196 0
	lwz 9,0(3)
	li 0,0
	stw 0,108(9)
	.loc 1 198 0
	lwz 9,0(3)
	stw 0,20(9)
	.loc 1 199 0
	blr
	.cfi_endproc
.LFE4:
	.size	reset_error_mgr, .-reset_error_mgr
	.align 2
	.type	format_message, @function
format_message:
.LFB3:
	.loc 1 140 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 141 0
	lwz 11,0(3)
.LVL10:
	.loc 1 140 0
	mr 3,4
.LVL11:
	.loc 1 142 0
	lwz 0,20(11)
	.cfi_offset 65, 4
.LVL12:
	.loc 1 149 0
	cmpwi 7,0,0
	ble- 7,.L11
.LVL13:
	.loc 1 149 0 is_stmt 0 discriminator 1
	lwz 9,116(11)
	cmpw 7,0,9
	bgt- 7,.L11
	.loc 1 150 0 is_stmt 1
	lwz 10,112(11)
	slwi 9,0,2
	lwzx 4,10,9
.LVL14:
.L12:
	.loc 1 158 0
	cmpwi 7,4,0
	beq- 7,.L13
.L14:
.LVL15:
	.loc 1 165 0
	mr 9,4
	.loc 1 166 0
	b .L15
.LVL16:
.L20:
	mr 9,10
.LVL17:
.L15:
	.loc 1 166 0 is_stmt 0 discriminator 1
	lbz 0,0(9)
.LVL18:
	addi 10,9,1
.LVL19:
	cmpwi 7,0,0
	.loc 1 167 0 is_stmt 1 discriminator 1
	cmpwi 6,0,37
	.loc 1 166 0 discriminator 1
	beq- 7,.L17
	.loc 1 167 0
	bne+ 6,.L20
	.loc 1 168 0
	lbz 0,1(9)
.LVL20:
	cmpwi 7,0,115
	beq- 7,.L21
.L17:
	.loc 1 177 0
	lwz 0,48(11)
	lwz 5,24(11)
	lwz 6,28(11)
	lwz 7,32(11)
	lwz 8,36(11)
	lwz 9,40(11)
	lwz 10,44(11)
.LVL21:
	stw 0,8(1)
	lwz 0,52(11)
	stw 0,12(1)
	crxor 6,6,6
	bl sprintf
.LVL22:
	.loc 1 182 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL23:
.L11:
.LCFI8:
	.cfi_restore_state
	.loc 1 151 0
	lwz 9,120(11)
	cmpwi 7,9,0
	beq- 7,.L13
	.loc 1 152 0 discriminator 1
	lwz 10,124(11)
	.loc 1 151 0 discriminator 1
	cmpw 7,0,10
	blt- 7,.L13
	.loc 1 152 0
	lwz 8,128(11)
	cmpw 7,0,8
	bgt- 7,.L13
	.loc 1 154 0
	subf 10,10,0
	slwi 10,10,2
	lwzx 4,9,10
.LVL24:
	b .L12
.LVL25:
.L21:
	.loc 1 175 0
	addi 5,11,24
	crxor 6,6,6
	bl sprintf
.LVL26:
	.loc 1 182 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL27:
.L13:
.LCFI10:
	.cfi_restore_state
	.loc 1 159 0
	stw 0,24(11)
	.loc 1 160 0
	lwz 9,112(11)
	lwz 4,0(9)
.LVL28:
	b .L14
	.cfi_endproc
.LFE3:
	.size	format_message, .-format_message
	.align 2
	.type	output_message, @function
output_message:
.LFB1:
	.loc 1 87 0
	.cfi_startproc
.LVL29:
	mflr 0
	stwu 1,-216(1)
.LCFI11:
	.cfi_def_cfa_offset 216
	.cfi_register 65, 0
	.loc 1 91 0
	addi 4,1,8
	.loc 1 87 0
	stw 0,220(1)
	.loc 1 91 0
	lwz 9,0(3)
	lwz 0,12(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL30:
	.loc 1 94 0
	lis 3,.LC0@ha
	addi 4,1,8
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl jpg_Printf
	.loc 1 95 0
	lwz 0,220(1)
	addi 1,1,216
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1:
	.size	output_message, .-output_message
	.align 2
	.type	error_exit, @function
error_exit:
.LFB0:
	.loc 1 66 0
	.cfi_startproc
.LVL31:
	mflr 0
	stwu 1,-224(1)
.LCFI13:
	.cfi_def_cfa_offset 224
	.cfi_register 65, 0
	stw 31,220(1)
	.loc 1 70 0
	addi 4,1,8
	.loc 1 66 0
	stw 0,228(1)
	.loc 1 66 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 70 0
	lwz 9,0(3)
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL32:
	.loc 1 73 0
	mr 3,31
	bl jpeg_destroy
	.loc 1 75 0
	lis 3,.LC0@ha
	addi 4,1,8
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl jpg_Error
	.loc 1 76 0
	lwz 0,228(1)
	lwz 31,220(1)
.LVL33:
	mtlr 0
	addi 1,1,224
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE0:
	.size	error_exit, .-error_exit
	.align 2
	.globl jpeg_std_error
	.type	jpeg_std_error, @function
jpeg_std_error:
.LFB5:
	.loc 1 214 0
	.cfi_startproc
.LVL34:
	.loc 1 215 0
	lis 11,error_exit@ha
	.loc 1 221 0
	li 0,0
	.loc 1 215 0
	la 11,error_exit@l(11)
	.loc 1 221 0
	stw 0,104(3)
	.loc 1 215 0
	stw 11,0(3)
	.loc 1 216 0
	lis 11,emit_message@ha
	la 11,emit_message@l(11)
	.loc 1 222 0
	stw 0,108(3)
	.loc 1 216 0
	stw 11,4(3)
	.loc 1 217 0
	lis 11,output_message@ha
	la 11,output_message@l(11)
	.loc 1 223 0
	stw 0,20(3)
	.loc 1 217 0
	stw 11,8(3)
	.loc 1 218 0
	lis 11,format_message@ha
	la 11,format_message@l(11)
	.loc 1 229 0
	stw 0,120(3)
	.loc 1 218 0
	stw 11,12(3)
	.loc 1 219 0
	lis 11,reset_error_mgr@ha
	la 11,reset_error_mgr@l(11)
	.loc 1 230 0
	stw 0,124(3)
	.loc 1 219 0
	stw 11,16(3)
	.loc 1 226 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	.loc 1 231 0
	stw 0,128(3)
	.loc 1 226 0
	stw 11,112(3)
	.loc 1 227 0
	li 11,117
	stw 11,116(3)
	.loc 1 234 0
	blr
	.cfi_endproc
.LFE5:
	.size	jpeg_std_error, .-jpeg_std_error
	.globl jpeg_std_message_table
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	jpeg_std_message_table, @object
	.size	jpeg_std_message_table, 476
jpeg_std_message_table:
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.long	.LC89
	.long	.LC90
	.long	.LC91
	.long	.LC92
	.long	.LC93
	.long	.LC94
	.long	.LC95
	.long	.LC96
	.long	.LC97
	.long	.LC98
	.long	.LC99
	.long	.LC100
	.long	.LC101
	.long	.LC102
	.long	.LC103
	.long	.LC104
	.long	.LC105
	.long	.LC106
	.long	.LC107
	.long	.LC108
	.long	.LC109
	.long	.LC110
	.long	.LC111
	.long	.LC112
	.long	.LC113
	.long	.LC114
	.long	.LC115
	.long	.LC116
	.long	.LC117
	.long	.LC118
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"%s\n"
.LC1:
	.string	"Bogus message code %d"
	.zero	2
.LC2:
	.string	"Sorry, there are legal restrictions on arithmetic coding"
	.zero	3
.LC3:
	.string	"ALIGN_TYPE is wrong, please fix"
.LC4:
	.string	"MAX_ALLOC_CHUNK is wrong, please fix"
	.zero	3
.LC5:
	.string	"Bogus buffer control mode"
	.zero	2
.LC6:
	.string	"Invalid component ID %d in SOS"
	.zero	1
.LC7:
	.string	"IDCT output block size %d not supported"
.LC8:
	.string	"Bogus input colorspace"
	.zero	1
.LC9:
	.string	"Bogus JPEG colorspace"
	.zero	2
.LC10:
	.string	"Bogus marker length"
.LC11:
	.string	"Sampling factors too large for interleaved scan"
.LC12:
	.string	"Invalid memory pool code %d"
.LC13:
	.string	"Unsupported JPEG data precision %d"
	.zero	1
.LC14:
	.string	"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d"
	.zero	1
.LC15:
	.string	"Invalid progressive parameters at scan script entry %d"
	.zero	1
.LC16:
	.string	"Bogus sampling factors"
	.zero	1
.LC17:
	.string	"Invalid scan script at entry %d"
.LC18:
	.string	"Improper call to JPEG library in state %d"
	.zero	2
.LC19:
	.string	"Bogus virtual array access"
	.zero	1
.LC20:
	.string	"Buffer passed to JPEG library is too small"
	.zero	1
.LC21:
	.string	"Suspension not allowed here"
.LC22:
	.string	"CCIR601 sampling not implemented yet"
	.zero	3
.LC23:
	.string	"Too many color components: %d, max %d"
	.zero	2
.LC24:
	.string	"Unsupported color conversion request"
	.zero	3
.LC25:
	.string	"Bogus DAC index %d"
	.zero	1
.LC26:
	.string	"Bogus DAC value 0x%x"
	.zero	3
.LC27:
	.string	"Bogus DHT counts"
	.zero	3
.LC28:
	.string	"Bogus DHT index %d"
	.zero	1
.LC29:
	.string	"Bogus DQT index %d"
	.zero	1
.LC30:
	.string	"Empty JPEG image (DNL not supported)"
	.zero	3
.LC31:
	.string	"Read from EMS failed"
	.zero	3
.LC32:
	.string	"Write to EMS failed"
.LC33:
	.string	"Didn't expect more than one scan"
	.zero	3
.LC34:
	.string	"Input file read error"
	.zero	2
.LC35:
	.string	"Output file write error --- out of disk space?"
	.zero	1
.LC36:
	.string	"Fractional sampling not implemented yet"
.LC37:
	.string	"Huffman code size table overflow"
	.zero	3
.LC38:
	.string	"Missing Huffman code table entry"
	.zero	3
.LC39:
	.string	"Maximum supported image dimension is %u pixels"
	.zero	1
.LC40:
	.string	"Empty input file"
	.zero	3
.LC41:
	.string	"Premature end of input file"
.LC42:
	.string	"Cannot transcode due to multiple use of quantization table %d"
	.zero	2
.LC43:
	.string	"Scan script does not transmit all data"
	.zero	1
.LC44:
	.string	"Invalid color quantization mode change"
	.zero	1
.LC45:
	.string	"Not implemented yet"
.LC46:
	.string	"Requested feature was omitted at compile time"
	.zero	2
.LC47:
	.string	"Backing store not supported"
.LC48:
	.string	"Huffman table 0x%02x was not defined"
	.zero	3
.LC49:
	.string	"JPEG datastream contains no image"
	.zero	2
.LC50:
	.string	"Quantization table 0x%02x was not defined"
	.zero	2
.LC51:
	.string	"Not a JPEG file: starts with 0x%02x 0x%02x"
	.zero	1
.LC52:
	.string	"Insufficient memory (case %d)"
	.zero	2
.LC53:
	.string	"Cannot quantize more than %d color components"
	.zero	2
.LC54:
	.string	"Cannot quantize to fewer than %d colors"
.LC55:
	.string	"Cannot quantize to more than %d colors"
	.zero	1
.LC56:
	.string	"Invalid JPEG file structure: two SOF markers"
	.zero	3
.LC57:
	.string	"Invalid JPEG file structure: missing SOS marker"
.LC58:
	.string	"Unsupported JPEG process: SOF type 0x%02x"
	.zero	2
.LC59:
	.string	"Invalid JPEG file structure: two SOI markers"
	.zero	3
.LC60:
	.string	"Invalid JPEG file structure: SOS before SOF"
.LC61:
	.string	"Failed to create temporary file %s"
	.zero	1
.LC62:
	.string	"Read failed on temporary file"
	.zero	2
.LC63:
	.string	"Seek failed on temporary file"
	.zero	2
.LC64:
	.string	"Write failed on temporary file --- out of disk space?"
	.zero	2
.LC65:
	.string	"Application transferred too few scanlines"
	.zero	2
.LC66:
	.string	"Unsupported marker type 0x%02x"
	.zero	1
.LC67:
	.string	"Virtual array controller messed up"
	.zero	1
.LC68:
	.string	"Image too wide for this implementation"
	.zero	1
.LC69:
	.string	"Read from XMS failed"
	.zero	3
.LC70:
	.string	"Write to XMS failed"
.LC71:
	.string	"Copyright (C) 1995, Thomas G. Lane"
	.zero	1
.LC72:
	.string	"6  2-Aug-95"
.LC73:
	.string	"Caution: quantization tables are too coarse for baseline JPEG"
	.zero	2
.LC74:
	.string	"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d"
	.zero	2
.LC75:
	.string	"Unknown APP0 marker (not JFIF), length %u"
	.zero	2
.LC76:
	.string	"Unknown APP14 marker (not Adobe), length %u"
.LC77:
	.string	"Define Arithmetic Table 0x%02x: 0x%02x"
	.zero	1
.LC78:
	.string	"Define Huffman Table 0x%02x"
.LC79:
	.string	"Define Quantization Table %d  precision %d"
	.zero	1
.LC80:
	.string	"Define Restart Interval %u"
	.zero	1
.LC81:
	.string	"Freed EMS handle %u"
.LC82:
	.string	"Obtained EMS handle %u"
	.zero	1
.LC83:
	.string	"End Of Image"
	.zero	3
.LC84:
	.string	"        %3d %3d %3d %3d %3d %3d %3d %3d"
.LC85:
	.string	"JFIF APP0 marker, density %dx%d  %d"
.LC86:
	.string	"Warning: thumbnail image size does not match data length %u"
.LC87:
	.string	"Unknown JFIF minor revision number %d.%02d"
	.zero	1
.LC88:
	.string	"    with %d x %d thumbnail image"
	.zero	3
.LC89:
	.string	"Skipping marker 0x%02x, length %u"
	.zero	2
.LC90:
	.string	"Unexpected marker 0x%02x"
	.zero	3
.LC91:
	.string	"        %4u %4u %4u %4u %4u %4u %4u %4u"
.LC92:
	.string	"Quantizing to %d = %d*%d*%d colors"
	.zero	1
.LC93:
	.string	"Quantizing to %d colors"
.LC94:
	.string	"Selected %d colors for quantization"
.LC95:
	.string	"At marker 0x%02x, recovery action %d"
	.zero	3
.LC96:
	.string	"RST%d"
	.zero	2
.LC97:
	.string	"Smoothing not supported with nonstandard sampling ratios"
	.zero	3
.LC98:
	.string	"Start Of Frame 0x%02x: width=%u, height=%u, components=%d"
	.zero	2
.LC99:
	.string	"    Component %d: %dhx%dv q=%d"
	.zero	1
.LC100:
	.string	"Start of Image"
	.zero	1
.LC101:
	.string	"Start Of Scan: %d components"
	.zero	3
.LC102:
	.string	"    Component %d: dc=%d ac=%d"
	.zero	2
.LC103:
	.string	"  Ss=%d, Se=%d, Ah=%d, Al=%d"
	.zero	3
.LC104:
	.string	"Closed temporary file %s"
	.zero	3
.LC105:
	.string	"Opened temporary file %s"
	.zero	3
.LC106:
	.string	"Unrecognized component IDs %d %d %d, assuming YCbCr"
.LC107:
	.string	"Freed XMS handle %u"
.LC108:
	.string	"Obtained XMS handle %u"
	.zero	1
.LC109:
	.string	"Unknown Adobe color transform code %d"
	.zero	2
.LC110:
	.string	"Inconsistent progression sequence for component %d coefficient %d"
	.zero	2
.LC111:
	.string	"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x"
.LC112:
	.string	"Corrupt JPEG data: premature end of data segment"
	.zero	3
.LC113:
	.string	"Corrupt JPEG data: bad Huffman code"
.LC114:
	.string	"Warning: unknown JFIF revision number %d.%02d"
	.zero	2
.LC115:
	.string	"Premature end of JPEG file"
	.zero	1
.LC116:
	.string	"Corrupt JPEG data: found marker 0x%02x instead of RST%d"
.LC117:
	.string	"Invalid SOS parameters for sequential JPEG"
	.zero	1
.LC118:
	.string	"Application transferred too many scanlines"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jpeglib.h"
	.file 4 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/../jpeg-6/jmorecfg.h"
	.file 5 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jerror.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa3b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x1
	.4byte	.LASF190
	.4byte	.LASF191
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x10
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3b
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x63
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xb1
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4f
	.4byte	0xc7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x50
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x53
	.4byte	0xe9
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x54
	.4byte	0x104
	.uleb128 0x6
	.byte	0x4
	.4byte	0xde
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x55
	.4byte	0x115
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x14
	.byte	0x3
	.byte	0xfc
	.4byte	0x16e
	.uleb128 0xb
	.string	"err"
	.byte	0x3
	.byte	0xfd
	.4byte	0x24f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"mem"
	.byte	0x3
	.byte	0xfd
	.4byte	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x3
	.byte	0xfd
	.4byte	0x376
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x3
	.byte	0xfd
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.byte	0xfd
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x84
	.byte	0x3
	.2byte	0x276
	.4byte	0x24f
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x278
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x27a
	.4byte	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x27c
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x27e
	.4byte	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x281
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x286
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x28b
	.4byte	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x28f
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x297
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x413
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x2a8
	.4byte	0x413
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x2a9
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x2aa
	.4byte	0x25
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16e
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x30
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x317
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x3
	.2byte	0x2ff
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x3
	.2byte	0x300
	.4byte	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x3
	.2byte	0x305
	.4byte	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x3
	.2byte	0x30a
	.4byte	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x3
	.2byte	0x30b
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x312
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x255
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x14
	.byte	0x3
	.2byte	0x2b0
	.4byte	0x376
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x2b1
	.4byte	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x2b3
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x2b4
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x2b5
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x2b6
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31d
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x104
	.4byte	0x388
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF59
	.uleb128 0x10
	.byte	0x50
	.byte	0x3
	.2byte	0x288
	.4byte	0x3b3
	.uleb128 0x11
	.string	"i"
	.byte	0x3
	.2byte	0x289
	.4byte	0x3b3
	.uleb128 0x11
	.string	"s"
	.byte	0x3
	.2byte	0x28a
	.4byte	0x3c3
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x3c3
	.uleb128 0x9
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x3d3
	.uleb128 0x9
	.4byte	0x37
	.byte	0x4f
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x3df
	.uleb128 0x13
	.4byte	0x37c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d3
	.uleb128 0x12
	.byte	0x1
	.4byte	0x3f6
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e5
	.uleb128 0x12
	.byte	0x1
	.4byte	0x40d
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x78
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x419
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x42a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x430
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x442
	.uleb128 0x6
	.byte	0x4
	.4byte	0x448
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	0x6f
	.4byte	0x468
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.uleb128 0x13
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44e
	.uleb128 0x15
	.byte	0x1
	.4byte	0xcd
	.4byte	0x48d
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46e
	.uleb128 0x15
	.byte	0x1
	.4byte	0x10a
	.4byte	0x4b2
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x493
	.uleb128 0x15
	.byte	0x1
	.4byte	0x41e
	.4byte	0x4e1
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.uleb128 0x13
	.4byte	0x90
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b8
	.uleb128 0x15
	.byte	0x1
	.4byte	0x436
	.4byte	0x510
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x25
	.uleb128 0x13
	.4byte	0x90
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e7
	.uleb128 0x15
	.byte	0x1
	.4byte	0xcd
	.4byte	0x53a
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x41e
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x516
	.uleb128 0x15
	.byte	0x1
	.4byte	0x10a
	.4byte	0x564
	.uleb128 0x13
	.4byte	0x37c
	.uleb128 0x13
	.4byte	0x436
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0xb1
	.uleb128 0x13
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x540
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.byte	0x21
	.4byte	0x874
	.uleb128 0x17
	.4byte	.LASF64
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF65
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF66
	.sleb128 2
	.uleb128 0x17
	.4byte	.LASF67
	.sleb128 3
	.uleb128 0x17
	.4byte	.LASF68
	.sleb128 4
	.uleb128 0x17
	.4byte	.LASF69
	.sleb128 5
	.uleb128 0x17
	.4byte	.LASF70
	.sleb128 6
	.uleb128 0x17
	.4byte	.LASF71
	.sleb128 7
	.uleb128 0x17
	.4byte	.LASF72
	.sleb128 8
	.uleb128 0x17
	.4byte	.LASF73
	.sleb128 9
	.uleb128 0x17
	.4byte	.LASF74
	.sleb128 10
	.uleb128 0x17
	.4byte	.LASF75
	.sleb128 11
	.uleb128 0x17
	.4byte	.LASF76
	.sleb128 12
	.uleb128 0x17
	.4byte	.LASF77
	.sleb128 13
	.uleb128 0x17
	.4byte	.LASF78
	.sleb128 14
	.uleb128 0x17
	.4byte	.LASF79
	.sleb128 15
	.uleb128 0x17
	.4byte	.LASF80
	.sleb128 16
	.uleb128 0x17
	.4byte	.LASF81
	.sleb128 17
	.uleb128 0x17
	.4byte	.LASF82
	.sleb128 18
	.uleb128 0x17
	.4byte	.LASF83
	.sleb128 19
	.uleb128 0x17
	.4byte	.LASF84
	.sleb128 20
	.uleb128 0x17
	.4byte	.LASF85
	.sleb128 21
	.uleb128 0x17
	.4byte	.LASF86
	.sleb128 22
	.uleb128 0x17
	.4byte	.LASF87
	.sleb128 23
	.uleb128 0x17
	.4byte	.LASF88
	.sleb128 24
	.uleb128 0x17
	.4byte	.LASF89
	.sleb128 25
	.uleb128 0x17
	.4byte	.LASF90
	.sleb128 26
	.uleb128 0x17
	.4byte	.LASF91
	.sleb128 27
	.uleb128 0x17
	.4byte	.LASF92
	.sleb128 28
	.uleb128 0x17
	.4byte	.LASF93
	.sleb128 29
	.uleb128 0x17
	.4byte	.LASF94
	.sleb128 30
	.uleb128 0x17
	.4byte	.LASF95
	.sleb128 31
	.uleb128 0x17
	.4byte	.LASF96
	.sleb128 32
	.uleb128 0x17
	.4byte	.LASF97
	.sleb128 33
	.uleb128 0x17
	.4byte	.LASF98
	.sleb128 34
	.uleb128 0x17
	.4byte	.LASF99
	.sleb128 35
	.uleb128 0x17
	.4byte	.LASF100
	.sleb128 36
	.uleb128 0x17
	.4byte	.LASF101
	.sleb128 37
	.uleb128 0x17
	.4byte	.LASF102
	.sleb128 38
	.uleb128 0x17
	.4byte	.LASF103
	.sleb128 39
	.uleb128 0x17
	.4byte	.LASF104
	.sleb128 40
	.uleb128 0x17
	.4byte	.LASF105
	.sleb128 41
	.uleb128 0x17
	.4byte	.LASF106
	.sleb128 42
	.uleb128 0x17
	.4byte	.LASF107
	.sleb128 43
	.uleb128 0x17
	.4byte	.LASF108
	.sleb128 44
	.uleb128 0x17
	.4byte	.LASF109
	.sleb128 45
	.uleb128 0x17
	.4byte	.LASF110
	.sleb128 46
	.uleb128 0x17
	.4byte	.LASF111
	.sleb128 47
	.uleb128 0x17
	.4byte	.LASF112
	.sleb128 48
	.uleb128 0x17
	.4byte	.LASF113
	.sleb128 49
	.uleb128 0x17
	.4byte	.LASF114
	.sleb128 50
	.uleb128 0x17
	.4byte	.LASF115
	.sleb128 51
	.uleb128 0x17
	.4byte	.LASF116
	.sleb128 52
	.uleb128 0x17
	.4byte	.LASF117
	.sleb128 53
	.uleb128 0x17
	.4byte	.LASF118
	.sleb128 54
	.uleb128 0x17
	.4byte	.LASF119
	.sleb128 55
	.uleb128 0x17
	.4byte	.LASF120
	.sleb128 56
	.uleb128 0x17
	.4byte	.LASF121
	.sleb128 57
	.uleb128 0x17
	.4byte	.LASF122
	.sleb128 58
	.uleb128 0x17
	.4byte	.LASF123
	.sleb128 59
	.uleb128 0x17
	.4byte	.LASF124
	.sleb128 60
	.uleb128 0x17
	.4byte	.LASF125
	.sleb128 61
	.uleb128 0x17
	.4byte	.LASF126
	.sleb128 62
	.uleb128 0x17
	.4byte	.LASF127
	.sleb128 63
	.uleb128 0x17
	.4byte	.LASF128
	.sleb128 64
	.uleb128 0x17
	.4byte	.LASF129
	.sleb128 65
	.uleb128 0x17
	.4byte	.LASF130
	.sleb128 66
	.uleb128 0x17
	.4byte	.LASF131
	.sleb128 67
	.uleb128 0x17
	.4byte	.LASF132
	.sleb128 68
	.uleb128 0x17
	.4byte	.LASF133
	.sleb128 69
	.uleb128 0x17
	.4byte	.LASF134
	.sleb128 70
	.uleb128 0x17
	.4byte	.LASF135
	.sleb128 71
	.uleb128 0x17
	.4byte	.LASF136
	.sleb128 72
	.uleb128 0x17
	.4byte	.LASF137
	.sleb128 73
	.uleb128 0x17
	.4byte	.LASF138
	.sleb128 74
	.uleb128 0x17
	.4byte	.LASF139
	.sleb128 75
	.uleb128 0x17
	.4byte	.LASF140
	.sleb128 76
	.uleb128 0x17
	.4byte	.LASF141
	.sleb128 77
	.uleb128 0x17
	.4byte	.LASF142
	.sleb128 78
	.uleb128 0x17
	.4byte	.LASF143
	.sleb128 79
	.uleb128 0x17
	.4byte	.LASF144
	.sleb128 80
	.uleb128 0x17
	.4byte	.LASF145
	.sleb128 81
	.uleb128 0x17
	.4byte	.LASF146
	.sleb128 82
	.uleb128 0x17
	.4byte	.LASF147
	.sleb128 83
	.uleb128 0x17
	.4byte	.LASF148
	.sleb128 84
	.uleb128 0x17
	.4byte	.LASF149
	.sleb128 85
	.uleb128 0x17
	.4byte	.LASF150
	.sleb128 86
	.uleb128 0x17
	.4byte	.LASF151
	.sleb128 87
	.uleb128 0x17
	.4byte	.LASF152
	.sleb128 88
	.uleb128 0x17
	.4byte	.LASF153
	.sleb128 89
	.uleb128 0x17
	.4byte	.LASF154
	.sleb128 90
	.uleb128 0x17
	.4byte	.LASF155
	.sleb128 91
	.uleb128 0x17
	.4byte	.LASF156
	.sleb128 92
	.uleb128 0x17
	.4byte	.LASF157
	.sleb128 93
	.uleb128 0x17
	.4byte	.LASF158
	.sleb128 94
	.uleb128 0x17
	.4byte	.LASF159
	.sleb128 95
	.uleb128 0x17
	.4byte	.LASF160
	.sleb128 96
	.uleb128 0x17
	.4byte	.LASF161
	.sleb128 97
	.uleb128 0x17
	.4byte	.LASF162
	.sleb128 98
	.uleb128 0x17
	.4byte	.LASF163
	.sleb128 99
	.uleb128 0x17
	.4byte	.LASF164
	.sleb128 100
	.uleb128 0x17
	.4byte	.LASF165
	.sleb128 101
	.uleb128 0x17
	.4byte	.LASF166
	.sleb128 102
	.uleb128 0x17
	.4byte	.LASF167
	.sleb128 103
	.uleb128 0x17
	.4byte	.LASF168
	.sleb128 104
	.uleb128 0x17
	.4byte	.LASF169
	.sleb128 105
	.uleb128 0x17
	.4byte	.LASF170
	.sleb128 106
	.uleb128 0x17
	.4byte	.LASF171
	.sleb128 107
	.uleb128 0x17
	.4byte	.LASF172
	.sleb128 108
	.uleb128 0x17
	.4byte	.LASF173
	.sleb128 109
	.uleb128 0x17
	.4byte	.LASF174
	.sleb128 110
	.uleb128 0x17
	.4byte	.LASF175
	.sleb128 111
	.uleb128 0x17
	.4byte	.LASF176
	.sleb128 112
	.uleb128 0x17
	.4byte	.LASF177
	.sleb128 113
	.uleb128 0x17
	.4byte	.LASF178
	.sleb128 114
	.uleb128 0x17
	.4byte	.LASF179
	.sleb128 115
	.uleb128 0x17
	.4byte	.LASF180
	.sleb128 116
	.uleb128 0x17
	.4byte	.LASF181
	.sleb128 117
	.uleb128 0x17
	.4byte	.LASF182
	.sleb128 118
	.byte	0
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x8ba
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x6e
	.4byte	0x37c
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF184
	.byte	0x1
	.byte	0x6e
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x70
	.4byte	0x24f
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8df
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0x1
	.byte	0xc2
	.4byte	0x37c
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST4
	.4byte	0x96f
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x8b
	.4byte	0x37c
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF185
	.byte	0x1
	.byte	0x8b
	.4byte	0x78
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x8d
	.4byte	0x24f
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8e
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.byte	0x8f
	.4byte	0x85
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.byte	0x90
	.4byte	0x85
	.4byte	.LLST10
	.uleb128 0x1a
	.string	"ch"
	.byte	0x1
	.byte	0x91
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.byte	0x92
	.4byte	0x90
	.4byte	.LLST12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST13
	.4byte	0x9a6
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x56
	.4byte	0x37c
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x58
	.4byte	0x9a6
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x9b6
	.uleb128 0x9
	.4byte	0x37
	.byte	0xc7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST15
	.4byte	0x9ed
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x41
	.4byte	0x37c
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x43
	.4byte	0x9a6
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	0x24f
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa17
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.byte	0xd5
	.4byte	0x24f
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.4byte	0x85
	.4byte	0xa27
	.uleb128 0x9
	.4byte	0x37
	.byte	0x76
	.byte	0
	.uleb128 0x21
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2d
	.4byte	0xa39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	jpeg_std_message_table
	.uleb128 0x7
	.4byte	0xa17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
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
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB3-.Ltext0
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
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 20
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 20
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x7
	.byte	0x7b
	.sleb128 120
	.byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0x7b
	.sleb128 112
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 216
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 224
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LVL33-.Ltext0
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
.LASF63:
	.string	"jvirt_barray_control"
.LASF90:
	.string	"JERR_DHT_COUNTS"
.LASF84:
	.string	"JERR_CANT_SUSPEND"
.LASF157:
	.string	"JTRC_QUANT_SELECTED"
.LASF178:
	.string	"JWRN_JPEG_EOF"
.LASF136:
	.string	"JTRC_16BIT_TABLES"
.LASF109:
	.string	"JERR_NOT_COMPILED"
.LASF132:
	.string	"JERR_XMS_READ"
.LASF191:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF41:
	.string	"alloc_large"
.LASF22:
	.string	"global_state"
.LASF169:
	.string	"JTRC_UNKNOWN_IDS"
.LASF154:
	.string	"JTRC_QUANTVALS"
.LASF185:
	.string	"buffer"
.LASF45:
	.string	"request_virt_barray"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"msg_parm"
.LASF15:
	.string	"JSAMPROW"
.LASF49:
	.string	"free_pool"
.LASF51:
	.string	"max_memory_to_use"
.LASF112:
	.string	"JERR_NO_IMAGE"
.LASF155:
	.string	"JTRC_QUANT_3_NCOLORS"
.LASF168:
	.string	"JTRC_TFILE_OPEN"
.LASF99:
	.string	"JERR_FRACT_SAMPLE_NOTIMPL"
.LASF75:
	.string	"JERR_BAD_POOL_ID"
.LASF180:
	.string	"JWRN_NOT_SEQUENTIAL"
.LASF81:
	.string	"JERR_BAD_STATE"
.LASF40:
	.string	"alloc_small"
.LASF144:
	.string	"JTRC_EMS_CLOSE"
.LASF139:
	.string	"JTRC_APP14"
.LASF152:
	.string	"JTRC_MISC_MARKER"
.LASF18:
	.string	"JBLOCKROW"
.LASF130:
	.string	"JERR_VIRTUAL_BUG"
.LASF131:
	.string	"JERR_WIDTH_OVERFLOW"
.LASF166:
	.string	"JTRC_SOS_PARAMS"
.LASF30:
	.string	"msg_code"
.LASF16:
	.string	"JSAMPARRAY"
.LASF36:
	.string	"addon_message_table"
.LASF184:
	.string	"msg_level"
.LASF55:
	.string	"pass_limit"
.LASF122:
	.string	"JERR_SOI_DUPLICATE"
.LASF111:
	.string	"JERR_NO_HUFF_TABLE"
.LASF24:
	.string	"jpeg_error_mgr"
.LASF76:
	.string	"JERR_BAD_PRECISION"
.LASF7:
	.string	"long long unsigned int"
.LASF54:
	.string	"pass_counter"
.LASF113:
	.string	"JERR_NO_QUANT_TABLE"
.LASF176:
	.string	"JWRN_HUFF_BAD_CODE"
.LASF119:
	.string	"JERR_SOF_DUPLICATE"
.LASF66:
	.string	"JERR_BAD_ALIGN_TYPE"
.LASF123:
	.string	"JERR_SOS_NO_SOF"
.LASF115:
	.string	"JERR_OUT_OF_MEMORY"
.LASF56:
	.string	"completed_passes"
.LASF121:
	.string	"JERR_SOF_UNSUPPORTED"
.LASF116:
	.string	"JERR_QUANT_COMPONENTS"
.LASF158:
	.string	"JTRC_RECOVERY_ACTION"
.LASF100:
	.string	"JERR_HUFF_CLEN_OVERFLOW"
.LASF174:
	.string	"JWRN_EXTRANEOUS_DATA"
.LASF10:
	.string	"size_t"
.LASF35:
	.string	"last_jpeg_message"
.LASF165:
	.string	"JTRC_SOS_COMPONENT"
.LASF80:
	.string	"JERR_BAD_SCAN_SCRIPT"
.LASF96:
	.string	"JERR_EOI_EXPECTED"
.LASF190:
	.string	"d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jerror.c.c"
.LASF95:
	.string	"JERR_EMS_WRITE"
.LASF159:
	.string	"JTRC_RST"
.LASF88:
	.string	"JERR_DAC_INDEX"
.LASF91:
	.string	"JERR_DHT_INDEX"
.LASF44:
	.string	"request_virt_sarray"
.LASF46:
	.string	"realize_virt_arrays"
.LASF69:
	.string	"JERR_BAD_COMPONENT_ID"
.LASF9:
	.string	"char"
.LASF114:
	.string	"JERR_NO_SOI"
.LASF171:
	.string	"JTRC_XMS_OPEN"
.LASF39:
	.string	"jpeg_memory_mgr"
.LASF29:
	.string	"reset_error_mgr"
.LASF107:
	.string	"JERR_MODE_CHANGE"
.LASF58:
	.string	"j_common_ptr"
.LASF117:
	.string	"JERR_QUANT_FEW_COLORS"
.LASF72:
	.string	"JERR_BAD_J_COLORSPACE"
.LASF20:
	.string	"progress"
.LASF183:
	.string	"cinfo"
.LASF106:
	.string	"JERR_MISSING_DATA"
.LASF160:
	.string	"JTRC_SMOOTH_NOTIMPL"
.LASF11:
	.string	"boolean"
.LASF148:
	.string	"JTRC_JFIF"
.LASF14:
	.string	"JDIMENSION"
.LASF182:
	.string	"JMSG_LASTMSGCODE"
.LASF6:
	.string	"long long int"
.LASF27:
	.string	"output_message"
.LASF145:
	.string	"JTRC_EMS_OPEN"
.LASF38:
	.string	"last_addon_message"
.LASF164:
	.string	"JTRC_SOS"
.LASF177:
	.string	"JWRN_JFIF_MAJOR"
.LASF71:
	.string	"JERR_BAD_IN_COLORSPACE"
.LASF102:
	.string	"JERR_IMAGE_TOO_BIG"
.LASF192:
	.string	"jpeg_std_error"
.LASF167:
	.string	"JTRC_TFILE_CLOSE"
.LASF126:
	.string	"JERR_TFILE_SEEK"
.LASF118:
	.string	"JERR_QUANT_MANY_COLORS"
.LASF32:
	.string	"trace_level"
.LASF61:
	.string	"jvirt_barray_ptr"
.LASF89:
	.string	"JERR_DAC_VALUE"
.LASF193:
	.string	"jpeg_std_message_table"
.LASF79:
	.string	"JERR_BAD_SAMPLING"
.LASF103:
	.string	"JERR_INPUT_EMPTY"
.LASF19:
	.string	"JBLOCKARRAY"
.LASF162:
	.string	"JTRC_SOF_COMPONENT"
.LASF147:
	.string	"JTRC_HUFFBITS"
.LASF67:
	.string	"JERR_BAD_ALLOC_CHUNK"
.LASF149:
	.string	"JTRC_JFIF_BADTHUMBNAILSIZE"
.LASF175:
	.string	"JWRN_HIT_MARKER"
.LASF48:
	.string	"access_virt_barray"
.LASF87:
	.string	"JERR_CONVERSION_NOTIMPL"
.LASF170:
	.string	"JTRC_XMS_CLOSE"
.LASF42:
	.string	"alloc_sarray"
.LASF33:
	.string	"num_warnings"
.LASF140:
	.string	"JTRC_DAC"
.LASF12:
	.string	"JSAMPLE"
.LASF156:
	.string	"JTRC_QUANT_NCOLORS"
.LASF60:
	.string	"jvirt_sarray_ptr"
.LASF120:
	.string	"JERR_SOF_NO_SOS"
.LASF92:
	.string	"JERR_DQT_INDEX"
.LASF188:
	.string	"isstring"
.LASF86:
	.string	"JERR_COMPONENT_COUNT"
.LASF135:
	.string	"JMSG_VERSION"
.LASF4:
	.string	"short int"
.LASF179:
	.string	"JWRN_MUST_RESYNC"
.LASF1:
	.string	"long int"
.LASF142:
	.string	"JTRC_DQT"
.LASF125:
	.string	"JERR_TFILE_READ"
.LASF62:
	.string	"jvirt_sarray_control"
.LASF110:
	.string	"JERR_NO_BACKING_STORE"
.LASF34:
	.string	"jpeg_message_table"
.LASF52:
	.string	"jpeg_progress_mgr"
.LASF181:
	.string	"JWRN_TOO_MUCH_DATA"
.LASF64:
	.string	"JMSG_NOMESSAGE"
.LASF143:
	.string	"JTRC_DRI"
.LASF13:
	.string	"JCOEF"
.LASF104:
	.string	"JERR_INPUT_EOF"
.LASF161:
	.string	"JTRC_SOF"
.LASF163:
	.string	"JTRC_SOI"
.LASF28:
	.string	"format_message"
.LASF82:
	.string	"JERR_BAD_VIRTUAL_ACCESS"
.LASF138:
	.string	"JTRC_APP0"
.LASF108:
	.string	"JERR_NOTIMPL"
.LASF70:
	.string	"JERR_BAD_DCTSIZE"
.LASF8:
	.string	"long unsigned int"
.LASF105:
	.string	"JERR_MISMATCHED_QUANT_TABLE"
.LASF85:
	.string	"JERR_CCIR601_NOTIMPL"
.LASF189:
	.string	"GNU C 4.6.3"
.LASF133:
	.string	"JERR_XMS_WRITE"
.LASF98:
	.string	"JERR_FILE_WRITE"
.LASF68:
	.string	"JERR_BAD_BUFFER_MODE"
.LASF3:
	.string	"unsigned char"
.LASF83:
	.string	"JERR_BUFFER_SIZE"
.LASF141:
	.string	"JTRC_DHT"
.LASF129:
	.string	"JERR_UNKNOWN_MARKER"
.LASF57:
	.string	"total_passes"
.LASF94:
	.string	"JERR_EMS_READ"
.LASF73:
	.string	"JERR_BAD_LENGTH"
.LASF93:
	.string	"JERR_EMPTY_IMAGE"
.LASF124:
	.string	"JERR_TFILE_CREATE"
.LASF78:
	.string	"JERR_BAD_PROG_SCRIPT"
.LASF150:
	.string	"JTRC_JFIF_MINOR"
.LASF21:
	.string	"is_decompressor"
.LASF43:
	.string	"alloc_barray"
.LASF53:
	.string	"progress_monitor"
.LASF172:
	.string	"JWRN_ADOBE_XFORM"
.LASF173:
	.string	"JWRN_BOGUS_PROGRESSION"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF37:
	.string	"first_addon_message"
.LASF134:
	.string	"JMSG_COPYRIGHT"
.LASF47:
	.string	"access_virt_sarray"
.LASF97:
	.string	"JERR_FILE_READ"
.LASF128:
	.string	"JERR_TOO_LITTLE_DATA"
.LASF74:
	.string	"JERR_BAD_MCU_SIZE"
.LASF153:
	.string	"JTRC_PARMLESS_MARKER"
.LASF186:
	.string	"msgtext"
.LASF65:
	.string	"JERR_ARITH_NOTIMPL"
.LASF59:
	.string	"double"
.LASF146:
	.string	"JTRC_EOI"
.LASF25:
	.string	"error_exit"
.LASF151:
	.string	"JTRC_JFIF_THUMBNAIL"
.LASF77:
	.string	"JERR_BAD_PROGRESSION"
.LASF127:
	.string	"JERR_TFILE_WRITE"
.LASF26:
	.string	"emit_message"
.LASF137:
	.string	"JTRC_ADOBE"
.LASF17:
	.string	"JBLOCK"
.LASF23:
	.string	"jpeg_common_struct"
.LASF101:
	.string	"JERR_HUFF_MISSING_CODE"
.LASF50:
	.string	"self_destruct"
.LASF187:
	.string	"msgptr"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
