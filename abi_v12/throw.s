	.file	"throw.cpp"
	.section	.rodata
	.align 4
.LC0:
	.string	"RAII object %i has been built\n"
	.section	.text._ZN4RAIIC2Ei,"axG",@progbits,_ZN4RAIIC5Ei,comdat
	.align 2
	.weak	_ZN4RAIIC2Ei
	.type	_ZN4RAIIC2Ei, @function
_ZN4RAIIC2Ei:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN4RAIIC2Ei, .-_ZN4RAIIC2Ei
	.section	.rodata
	.align 4
.LC1:
	.string	"RAII object %i has been destroyed\n"
	.section	.text._ZN4RAIID2Ev,"axG",@progbits,_ZN4RAIID5Ev,comdat
	.align 2
	.weak	_ZN4RAIID2Ev
	.type	_ZN4RAIID2Ev, @function
_ZN4RAIID2Ev:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN4RAIID2Ev, .-_ZN4RAIID2Ev
	.text
	.globl	_Z5raisev
	.type	_Z5raisev, @function
_Z5raisev:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$1, (%esp)
	call	__cxa_allocate_exception
	movl	$0, 8(%esp)
	movl	$_ZTI9Exception, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_throw
	.cfi_endproc
.LFE6:
	.size	_Z5raisev, .-_Z5raisev
	.section	.rodata
	.align 4
.LC2:
	.string	"try_but_dont_catch handled the exception"
.LC3:
	.string	"Caught a Fake_Exception!"
	.text
	.globl	_Z18try_but_dont_catchv
	.type	_Z18try_but_dont_catchv, @function
_Z18try_but_dont_catchv:
.LFB7:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA7
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
.LEHB0:
	.cfi_offset 3, -12
	call	_ZN4RAIIC1Ei
.LEHE0:
	movl	$2, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB1:
	call	_ZN4RAIIC1Ei
.LEHE1:
.LEHB2:
	call	_Z5raisev
.LEHE2:
.L11:
	movl	$.LC2, (%esp)
.LEHB3:
	call	puts
.LEHE3:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB4:
	call	_ZN4RAIID1Ev
.LEHE4:
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
.LEHB5:
	call	_ZN4RAIID1Ev
.LEHE5:
	addl	$36, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L16:
	.cfi_restore_state
	movl	%eax, %ebx
	call	__cxa_end_catch
	jmp	.L7
.L14:
	cmpl	$1, %edx
	je	.L10
	movl	%eax, %ebx
	jmp	.L7
.L10:
	movl	%eax, (%esp)
	call	__cxa_begin_catch
	movl	%eax, -12(%ebp)
	movl	$.LC3, (%esp)
.LEHB6:
	call	puts
.LEHE6:
	call	__cxa_end_catch
	jmp	.L11
.L15:
	movl	%eax, %ebx
.L7:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4RAIID1Ev
	jmp	.L12
.L13:
	movl	%eax, %ebx
.L12:
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN4RAIID1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
	.cfi_endproc
.LFE7:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA7:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT7-.LLSDATTD7
.LLSDATTD7:
	.byte	0x1
	.uleb128 .LLSDACSE7-.LLSDACSB7
.LLSDACSB7:
	.uleb128 .LEHB0-.LFB7
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB7
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L13-.LFB7
	.uleb128 0
	.uleb128 .LEHB2-.LFB7
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L14-.LFB7
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB7
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L15-.LFB7
	.uleb128 0
	.uleb128 .LEHB4-.LFB7
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L13-.LFB7
	.uleb128 0
	.uleb128 .LEHB5-.LFB7
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB7
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L16-.LFB7
	.uleb128 0
	.uleb128 .LEHB7-.LFB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE7:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	_ZTI14Fake_Exception
.LLSDATT7:
	.text
	.size	_Z18try_but_dont_catchv, .-_Z18try_but_dont_catchv
	.section	.rodata
.LC4:
	.string	"catchit handled the exception"
.LC5:
	.string	"Caught an Exception!"
	.text
	.globl	_Z7catchitv
	.type	_Z7catchitv, @function
_Z7catchitv:
.LFB8:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA8
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
.LEHB8:
	.cfi_offset 3, -12
	call	_Z18try_but_dont_catchv
.LEHE8:
.L24:
	movl	$.LC4, (%esp)
.LEHB9:
	call	puts
	addl	$36, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L26:
	.cfi_restore_state
	movl	%eax, %ebx
	call	__cxa_end_catch
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L27:
	movl	%eax, %ebx
	call	__cxa_end_catch
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L25:
	cmpl	$1, %edx
	je	.L22
	cmpl	$2, %edx
	je	.L23
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE9:
.L22:
	movl	%eax, (%esp)
	call	__cxa_begin_catch
	movl	%eax, -16(%ebp)
	movl	$.LC3, (%esp)
.LEHB10:
	call	puts
.LEHE10:
	call	__cxa_end_catch
	jmp	.L24
.L23:
	movl	%eax, (%esp)
	call	__cxa_begin_catch
	movl	%eax, -12(%ebp)
	movl	$.LC5, (%esp)
.LEHB11:
	call	puts
.LEHE11:
	call	__cxa_end_catch
	jmp	.L24
	.cfi_endproc
.LFE8:
	.section	.gcc_except_table
	.align 4
.LLSDA8:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT8-.LLSDATTD8
.LLSDATTD8:
	.byte	0x1
	.uleb128 .LLSDACSE8-.LLSDACSB8
.LLSDACSB8:
	.uleb128 .LEHB8-.LFB8
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L25-.LFB8
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB8
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L26-.LFB8
	.uleb128 0
	.uleb128 .LEHB11-.LFB8
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L27-.LFB8
	.uleb128 0
.LLSDACSE8:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	_ZTI9Exception
	.long	_ZTI14Fake_Exception
.LLSDATT8:
	.text
	.size	_Z7catchitv, .-_Z7catchitv
	.globl	seppuku
	.type	seppuku, @function
seppuku:
.LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	_Z7catchitv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	seppuku, .-seppuku
	.weak	_ZTS14Fake_Exception
	.section	.rodata._ZTS14Fake_Exception,"aG",@progbits,_ZTS14Fake_Exception,comdat
	.type	_ZTS14Fake_Exception, @object
	.size	_ZTS14Fake_Exception, 17
_ZTS14Fake_Exception:
	.string	"14Fake_Exception"
	.weak	_ZTI14Fake_Exception
	.section	.rodata._ZTI14Fake_Exception,"aG",@progbits,_ZTI14Fake_Exception,comdat
	.align 4
	.type	_ZTI14Fake_Exception, @object
	.size	_ZTI14Fake_Exception, 8
_ZTI14Fake_Exception:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS14Fake_Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.type	_ZTS9Exception, @object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.string	"9Exception"
	.weak	_ZTI9Exception
	.section	.rodata._ZTI9Exception,"aG",@progbits,_ZTI9Exception,comdat
	.align 4
	.type	_ZTI9Exception, @object
	.size	_ZTI9Exception, 8
_ZTI9Exception:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS9Exception
	.weak	_ZN4RAIIC1Ei
	.set	_ZN4RAIIC1Ei,_ZN4RAIIC2Ei
	.weak	_ZN4RAIID1Ev
	.set	_ZN4RAIID1Ev,_ZN4RAIID2Ev
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
