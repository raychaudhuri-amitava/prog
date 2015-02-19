	.file	"virt_complexity.cc"
	.section	.text._ZN1AC2Ev,"axG",@progbits,_ZN1AC2Ev,comdat
	.align 2
	.weak	_ZN1AC2Ev
	.type	_ZN1AC2Ev, @function
_ZN1AC2Ev:
.LFB968:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	movl	8(%ebp), %eax
	movl	$_ZTV1A+8, (%eax)
	popl	%ebp
	ret
.LFE968:
	.size	_ZN1AC2Ev, .-_ZN1AC2Ev
	.section	.text._ZN1AC1Ev,"axG",@progbits,_ZN1AC1Ev,comdat
	.align 2
	.weak	_ZN1AC1Ev
	.type	_ZN1AC1Ev, @function
_ZN1AC1Ev:
.LFB969:
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	movl	8(%ebp), %eax
	movl	$_ZTV1A+8, (%eax)
	popl	%ebp
	ret
.LFE969:
	.size	_ZN1AC1Ev, .-_ZN1AC1Ev
	.section	.text._ZN1BC1Ev,"axG",@progbits,_ZN1BC1Ev,comdat
	.align 2
	.weak	_ZN1BC1Ev
	.type	_ZN1BC1Ev, @function
_ZN1BC1Ev:
.LFB972:
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$8, %esp
.LCFI6:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN1AC2Ev
	movl	8(%ebp), %eax
	movl	$_ZTV1B+8, (%eax)
	leave
	ret
.LFE972:
	.size	_ZN1BC1Ev, .-_ZN1BC1Ev
	.section	.rodata
.LC0:
	.string	"In f6 of A\n"
	.section	.text._ZN1A2f6Ev,"axG",@progbits,_ZN1A2f6Ev,comdat
	.align 2
	.weak	_ZN1A2f6Ev
	.type	_ZN1A2f6Ev, @function
_ZN1A2f6Ev:
.LFB957:
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	subl	$8, %esp
.LCFI9:
	movl	$.LC0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE957:
	.size	_ZN1A2f6Ev, .-_ZN1A2f6Ev
	.section	.rodata
.LC1:
	.string	"In f5 of A\n"
	.section	.text._ZN1A2f5Ev,"axG",@progbits,_ZN1A2f5Ev,comdat
	.align 2
	.weak	_ZN1A2f5Ev
	.type	_ZN1A2f5Ev, @function
_ZN1A2f5Ev:
.LFB956:
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	subl	$8, %esp
.LCFI12:
	movl	$.LC1, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE956:
	.size	_ZN1A2f5Ev, .-_ZN1A2f5Ev
	.section	.rodata
.LC2:
	.string	"In f4 of A\n"
	.section	.text._ZN1A2f4Ev,"axG",@progbits,_ZN1A2f4Ev,comdat
	.align 2
	.weak	_ZN1A2f4Ev
	.type	_ZN1A2f4Ev, @function
_ZN1A2f4Ev:
.LFB955:
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	subl	$8, %esp
.LCFI15:
	movl	$.LC2, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE955:
	.size	_ZN1A2f4Ev, .-_ZN1A2f4Ev
	.section	.rodata
.LC3:
	.string	"In f3 of A\n"
	.section	.text._ZN1A2f3Ev,"axG",@progbits,_ZN1A2f3Ev,comdat
	.align 2
	.weak	_ZN1A2f3Ev
	.type	_ZN1A2f3Ev, @function
_ZN1A2f3Ev:
.LFB954:
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	subl	$8, %esp
.LCFI18:
	movl	$.LC3, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE954:
	.size	_ZN1A2f3Ev, .-_ZN1A2f3Ev
	.section	.rodata
.LC4:
	.string	"In f2 of A\n"
	.section	.text._ZN1A2f2Ev,"axG",@progbits,_ZN1A2f2Ev,comdat
	.align 2
	.weak	_ZN1A2f2Ev
	.type	_ZN1A2f2Ev, @function
_ZN1A2f2Ev:
.LFB953:
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$8, %esp
.LCFI21:
	movl	$.LC4, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE953:
	.size	_ZN1A2f2Ev, .-_ZN1A2f2Ev
	.section	.rodata
.LC5:
	.string	"In f1 of A\n"
	.section	.text._ZN1A2f1Ev,"axG",@progbits,_ZN1A2f1Ev,comdat
	.align 2
	.weak	_ZN1A2f1Ev
	.type	_ZN1A2f1Ev, @function
_ZN1A2f1Ev:
.LFB952:
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$8, %esp
.LCFI24:
	movl	$.LC5, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE952:
	.size	_ZN1A2f1Ev, .-_ZN1A2f1Ev
	.section	.rodata
.LC6:
	.string	"In f6 of B\n"
	.section	.text._ZN1B2f6Ev,"axG",@progbits,_ZN1B2f6Ev,comdat
	.align 2
	.weak	_ZN1B2f6Ev
	.type	_ZN1B2f6Ev, @function
_ZN1B2f6Ev:
.LFB964:
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	subl	$8, %esp
.LCFI27:
	movl	$.LC6, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE964:
	.size	_ZN1B2f6Ev, .-_ZN1B2f6Ev
	.section	.rodata
.LC7:
	.string	"In f5 of B\n"
	.section	.text._ZN1B2f5Ev,"axG",@progbits,_ZN1B2f5Ev,comdat
	.align 2
	.weak	_ZN1B2f5Ev
	.type	_ZN1B2f5Ev, @function
_ZN1B2f5Ev:
.LFB963:
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	subl	$8, %esp
.LCFI30:
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE963:
	.size	_ZN1B2f5Ev, .-_ZN1B2f5Ev
	.section	.rodata
.LC8:
	.string	"In f4 of B\n"
	.section	.text._ZN1B2f4Ev,"axG",@progbits,_ZN1B2f4Ev,comdat
	.align 2
	.weak	_ZN1B2f4Ev
	.type	_ZN1B2f4Ev, @function
_ZN1B2f4Ev:
.LFB962:
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$8, %esp
.LCFI33:
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE962:
	.size	_ZN1B2f4Ev, .-_ZN1B2f4Ev
	.section	.rodata
.LC9:
	.string	"In f3 of B\n"
	.section	.text._ZN1B2f3Ev,"axG",@progbits,_ZN1B2f3Ev,comdat
	.align 2
	.weak	_ZN1B2f3Ev
	.type	_ZN1B2f3Ev, @function
_ZN1B2f3Ev:
.LFB961:
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$8, %esp
.LCFI36:
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE961:
	.size	_ZN1B2f3Ev, .-_ZN1B2f3Ev
	.section	.rodata
.LC10:
	.string	"In f2 of B\n"
	.section	.text._ZN1B2f2Ev,"axG",@progbits,_ZN1B2f2Ev,comdat
	.align 2
	.weak	_ZN1B2f2Ev
	.type	_ZN1B2f2Ev, @function
_ZN1B2f2Ev:
.LFB960:
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	subl	$8, %esp
.LCFI39:
	movl	$.LC10, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE960:
	.size	_ZN1B2f2Ev, .-_ZN1B2f2Ev
	.section	.rodata
.LC11:
	.string	"In f1 of B\n"
	.section	.text._ZN1B2f1Ev,"axG",@progbits,_ZN1B2f1Ev,comdat
	.align 2
	.weak	_ZN1B2f1Ev
	.type	_ZN1B2f1Ev, @function
_ZN1B2f1Ev:
.LFB959:
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$8, %esp
.LCFI42:
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE959:
	.size	_ZN1B2f1Ev, .-_ZN1B2f1Ev
	.section	.rodata
.LC12:
	.string	"In f7 of A\n"
	.section	.text._ZN1A2f7Ev,"axG",@progbits,_ZN1A2f7Ev,comdat
	.align 2
	.weak	_ZN1A2f7Ev
	.type	_ZN1A2f7Ev, @function
_ZN1A2f7Ev:
.LFB958:
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$8, %esp
.LCFI45:
	movl	$.LC12, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.LFE958:
	.size	_ZN1A2f7Ev, .-_ZN1A2f7Ev
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB976:
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$24, %esp
.LCFI48:
	cmpl	$1, 8(%ebp)
	jne	.L35
	cmpl	$65535, 12(%ebp)
	jne	.L35
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L35:
	leave
	ret
.LFE976:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I_main, @function
_GLOBAL__I_main:
.LFB977:
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	subl	$8, %esp
.LCFI51:
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
.LFE977:
	.size	_GLOBAL__I_main, .-_GLOBAL__I_main
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I_main
	.text
.globl main
	.type	main, @function
main:
.LFB966:
	leal	4(%esp), %ecx
.LCFI52:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI53:
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	pushl	%ecx
.LCFI57:
	subl	$48, %esp
.LCFI58:
	movl	$4, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_ZN1AC1Ev
	movl	%ebx, -12(%ebp)
	movl	$4, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_ZN1BC1Ev
	movl	%ebx, -16(%ebp)
	movl	$4, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_ZN1BC1Ev
	movl	%ebx, -20(%ebp)
	movl	$4, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_ZN1BC1Ev
	movl	%ebx, -24(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN1AC1Ev
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN1BC1Ev
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN1A2f7Ev
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN1A2f7Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	$0, %eax
	addl	$48, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE966:
	.size	main, .-main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weak	_ZTV1A
	.section	.rodata._ZTV1A,"aG",@progbits,_ZTV1A,comdat
	.align 32
	.type	_ZTV1A, @object
	.size	_ZTV1A, 32
_ZTV1A:
	.long	0
	.long	_ZTI1A
	.long	_ZN1A2f1Ev
	.long	_ZN1A2f2Ev
	.long	_ZN1A2f3Ev
	.long	_ZN1A2f4Ev
	.long	_ZN1A2f5Ev
	.long	_ZN1A2f6Ev
	.weak	_ZTI1A
	.section	.rodata._ZTI1A,"aG",@progbits,_ZTI1A,comdat
	.align 4
	.type	_ZTI1A, @object
	.size	_ZTI1A, 8
_ZTI1A:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS1A
	.weak	_ZTS1A
	.section	.rodata._ZTS1A,"aG",@progbits,_ZTS1A,comdat
	.type	_ZTS1A, @object
	.size	_ZTS1A, 3
_ZTS1A:
	.string	"1A"
	.weak	_ZTV1B
	.section	.rodata._ZTV1B,"aG",@progbits,_ZTV1B,comdat
	.align 32
	.type	_ZTV1B, @object
	.size	_ZTV1B, 32
_ZTV1B:
	.long	0
	.long	_ZTI1B
	.long	_ZN1B2f1Ev
	.long	_ZN1B2f2Ev
	.long	_ZN1B2f3Ev
	.long	_ZN1B2f4Ev
	.long	_ZN1B2f5Ev
	.long	_ZN1B2f6Ev
	.weak	_ZTI1B
	.section	.rodata._ZTI1B,"aG",@progbits,_ZTI1B,comdat
	.align 4
	.type	_ZTI1B, @object
	.size	_ZTI1B, 12
_ZTI1B:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS1B
	.long	_ZTI1A
	.weak	_ZTS1B
	.section	.rodata._ZTS1B,"aG",@progbits,_ZTS1B,comdat
	.type	_ZTS1B, @object
	.size	_ZTS1B, 3
_ZTS1B:
	.string	"1B"
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
.globl __gxx_personality_v0
	.string	"zP"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.uleb128 0x5
	.byte	0x0
	.long	__gxx_personality_v0
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE1:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.long	.LFB957
	.long	.LFE957-.LFB957
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI7-.LFB957
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.long	.LFB956
	.long	.LFE956-.LFB956
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI10-.LFB956
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.long	.LFB955
	.long	.LFE955-.LFB955
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI13-.LFB955
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.long	.LFB954
	.long	.LFE954-.LFB954
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI16-.LFB954
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.long	.LFB953
	.long	.LFE953-.LFB953
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI19-.LFB953
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.long	.LFB952
	.long	.LFE952-.LFB952
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI22-.LFB952
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.long	.LFB964
	.long	.LFE964-.LFB964
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI25-.LFB964
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.long	.LFB963
	.long	.LFE963-.LFB963
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI28-.LFB963
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.long	.LFB962
	.long	.LFE962-.LFB962
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI31-.LFB962
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.long	.LFB961
	.long	.LFE961-.LFB961
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI34-.LFB961
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.long	.LFB960
	.long	.LFE960-.LFB960
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI37-.LFB960
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.long	.LFB959
	.long	.LFE959-.LFB959
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI40-.LFB959
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.long	.LFB958
	.long	.LFE958-.LFB958
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI43-.LFB958
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.long	.LFB976
	.long	.LFE976-.LFB976
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI46-.LFB976
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE33:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.long	.LFB966
	.long	.LFE966-.LFB966
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI52-.LFB966
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI55
	.byte	0x84
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE37:
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
