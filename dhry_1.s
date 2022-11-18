	.file	"dhry_1.c"
	.text
	.p2align 2
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	Ptr_Glob(%rip), %rax
	movq	(%rdi), %rbx
	movl	Int_Glob(%rip), %esi
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	movdqu	16(%rax), %xmm1
	movups	%xmm1, 16(%rbx)
	movdqu	32(%rax), %xmm2
	movups	%xmm2, 32(%rbx)
	movq	48(%rax), %rdx
	movq	%rdx, 48(%rbx)
	movq	(%rdi), %rdx
	movl	$5, 16(%rdi)
	movl	$10, %edi
	movq	%rdx, (%rbx)
	movq	(%rax), %rax
	movl	$5, 16(%rbx)
	movq	%rax, (%rbx)
	movq	Ptr_Glob(%rip), %rax
	leaq	16(%rax), %rdx
	xorl	%eax, %eax
	call	Proc_7@PLT
	movl	8(%rbx), %eax
	testl	%eax, %eax
	je	.L5
	movq	0(%rbp), %rax
	movdqu	(%rax), %xmm3
	movups	%xmm3, 0(%rbp)
	movdqu	16(%rax), %xmm4
	movups	%xmm4, 16(%rbp)
	movdqu	32(%rax), %xmm5
	movups	%xmm5, 32(%rbp)
	movq	48(%rax), %rax
	movq	%rax, 48(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movl	$6, 16(%rbx)
	movl	12(%rbp), %edi
	leaq	12(%rbx), %rsi
	xorl	%eax, %eax
	call	Proc_6@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	16(%rbx), %edi
	leaq	16(%rbx), %rdx
	movl	$10, %esi
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	Proc_7@PLT
	.cfi_endproc
.LFE24:
	.size	Proc_1, .-Proc_1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)"
	.align 8
.LC1:
	.string	"Program compiled with 'register' attribute"
	.align 8
.LC2:
	.string	"Program compiled without 'register' attribute"
	.align 8
.LC3:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Execution ends"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Final values of the variables used in the benchmark:"
	.section	.rodata.str1.1
.LC6:
	.string	"Int_Glob:            %d\n"
.LC7:
	.string	"        should be:   %d\n"
.LC8:
	.string	"Bool_Glob:           %d\n"
.LC9:
	.string	"Ch_1_Glob:           %c\n"
.LC10:
	.string	"        should be:   %c\n"
.LC11:
	.string	"Ch_2_Glob:           %c\n"
.LC12:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC13:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"        should be:   Number_Of_Runs + 10"
	.section	.rodata.str1.1
.LC15:
	.string	"Ptr_Glob->"
.LC16:
	.string	"  Ptr_Comp:          %d\n"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"        should be:   (implementation-dependent)"
	.section	.rodata.str1.1
.LC18:
	.string	"  Discr:             %d\n"
.LC19:
	.string	"  Enum_Comp:         %d\n"
.LC20:
	.string	"  Int_Comp:          %d\n"
.LC21:
	.string	"  Str_Comp:          %s\n"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING"
	.section	.rodata.str1.1
.LC23:
	.string	"Next_Ptr_Glob->"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"        should be:   (implementation-dependent), same as above"
	.section	.rodata.str1.1
.LC25:
	.string	"Int_1_Loc:           %d\n"
.LC26:
	.string	"Int_2_Loc:           %d\n"
.LC27:
	.string	"Int_3_Loc:           %d\n"
.LC28:
	.string	"Enum_Loc:            %d\n"
.LC29:
	.string	"Str_1_Loc:           %s\n"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
	.section	.rodata.str1.1
.LC31:
	.string	"Str_2_Loc:           %s\n"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
	.align 8
.LC33:
	.string	"Measured time too small to obtain meaningful results"
	.align 8
.LC34:
	.string	"Please increase number of runs"
	.align 8
.LC37:
	.string	"Microseconds for one run through Dhrystone: "
	.section	.rodata.str1.1
.LC38:
	.string	"%f \n"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"Dhrystones per Second:                      "
	.section	.text.startup,"ax",@progbits
	.p2align 2
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$56, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	call	malloc@PLT
	movl	$56, %edi
	movq	%rax, Next_Ptr_Glob(%rip)
	xorl	%eax, %eax
	call	malloc@PLT
	movl	$18254, %esi
	movl	$10, %edi
	movq	Next_Ptr_Glob(%rip), %rdx
	movdqa	.LC40(%rip), %xmm0
	movl	$40, 16(%rax)
	movabsq	$8589934592, %rcx
	movq	%rcx, 8(%rax)
	movl	$18254, %ecx
	movups	%xmm0, 20(%rax)
	movq	%rax, Ptr_Glob(%rip)
	movq	%rdx, (%rax)
	leaq	20(%rax), %rdx
	movabsq	$2325349785699101773, %rax
	movq	%rax, 16(%rdx)
	movabsq	$2329578335050411085, %rax
	movaps	%xmm0, 48(%rsp)
	movl	$1230132307, 24(%rdx)
	movw	%cx, 28(%rdx)
	movb	$0, 30(%rdx)
	movq	%rax, 64(%rsp)
	movw	%si, 76(%rsp)
	movl	$1230132307, 72(%rsp)
	movb	$0, 78(%rsp)
	movl	$10, 1628+Arr_2_Glob(%rip)
	call	putchar@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	Reg(%rip), %edi
	testl	%edi, %edi
	je	.L7
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
.L8:
	movl	$20000000, %edx
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	$1, %ebx
	call	time@PLT
	movabsq	$5642821575076104260, %r12
	movabsq	$4706902966564560965, %r13
	movq	%rax, Begin_Time(%rip)
	leaq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L15:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	movabsq	$2325069237881678925, %rax
	movl	$18254, %edx
	movq	%rax, 96(%rsp)
	xorl	%eax, %eax
	movw	%dx, 108(%rsp)
	movb	$65, Ch_1_Glob(%rip)
	movl	$1, Bool_Glob(%rip)
	movb	$66, Ch_2_Glob(%rip)
	movq	%r12, 80(%rsp)
	movq	%r13, 88(%rsp)
	movl	$1230132307, 104(%rsp)
	movb	$0, 110(%rsp)
	movl	$1, 44(%rsp)
	call	Func_2@PLT
	movq	16(%rsp), %rdx
	movl	$3, %esi
	movl	$2, %edi
	testl	%eax, %eax
	movl	$7, 40(%rsp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, Bool_Glob(%rip)
	xorl	%eax, %eax
	call	Proc_7@PLT
	movl	40(%rsp), %ecx
	movl	$3, %edx
	xorl	%eax, %eax
	leaq	Arr_2_Glob(%rip), %rsi
	leaq	Arr_1_Glob(%rip), %rdi
	call	Proc_8@PLT
	movq	Ptr_Glob(%rip), %rdi
	xorl	%eax, %eax
	call	Proc_1
	cmpb	$64, Ch_2_Glob(%rip)
	jle	.L19
	movl	$65, %r15d
	movl	$3, %ebp
	leaq	44(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%eax, %eax
	movsbl	%r15b, %edi
	movl	$67, %esi
	call	Func_1@PLT
	cmpl	44(%rsp), %eax
	je	.L24
	addl	$1, %r15d
	cmpb	%r15b, Ch_2_Glob(%rip)
	jge	.L13
.L12:
	leal	0(%rbp,%rbp,2), %ebp
.L9:
	movl	%ebp, %eax
	movl	40(%rsp), %r14d
	cltd
	idivl	%r14d
	cmpb	$65, Ch_1_Glob(%rip)
	movl	%eax, %ecx
	movl	%eax, %r8d
	jne	.L14
	leal	9(%rax), %r8d
	subl	Int_Glob(%rip), %r8d
.L14:
	addl	$1, %ebx
	cmpl	$20000001, %ebx
	jne	.L15
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%ecx, 28(%rsp)
	movl	%r8d, 16(%rsp)
	call	time@PLT
	leaq	.LC4(%rip), %rdi
	movq	%rax, End_Time(%rip)
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	Int_Glob(%rip), %edx
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	Bool_Glob(%rip), %edx
	leaq	.LC8(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movsbl	Ch_1_Glob(%rip), %edx
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$65, %edx
	leaq	.LC10(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movsbl	Ch_2_Glob(%rip), %edx
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$66, %edx
	leaq	.LC10(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	32+Arr_1_Glob(%rip), %edx
	leaq	.LC12(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$7, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	1628+Arr_2_Glob(%rip), %edx
	leaq	.LC13(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC16(%rip), %rsi
	movq	(%rax), %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC18(%rip), %rsi
	movl	8(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edx, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC19(%rip), %rsi
	movl	12(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$2, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC20(%rip), %rsi
	movl	16(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$17, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC21(%rip), %rsi
	leaq	20(%rax), %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC16(%rip), %rsi
	movq	(%rax), %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC18(%rip), %rsi
	movl	8(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edx, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC19(%rip), %rsi
	movl	12(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC20(%rip), %rsi
	movl	16(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$18, %edx
	xorl	%eax, %eax
	subl	%r14d, %ebp
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	$1, %edi
	leaq	.LC21(%rip), %rsi
	leaq	20(%rax), %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	16(%rsp), %r8d
	leaq	.LC25(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	movl	%r8d, %edx
	call	__printf_chk@PLT
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	28(%rsp), %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leal	0(,%rbp,8), %edx
	leaq	.LC26(%rip), %rsi
	subl	%ebp, %edx
	subl	%ecx, %edx
	call	__printf_chk@PLT
	movl	$13, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	40(%rsp), %edx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rsi
	call	__printf_chk@PLT
	movl	$7, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	44(%rsp), %edx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rsi
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	(%rsp), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rsi
	call	__printf_chk@PLT
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movq	8(%rsp), %rdx
	leaq	.LC31(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	End_Time(%rip), %rax
	subq	Begin_Time(%rip), %rax
	movq	%rax, User_Time(%rip)
	cmpq	$1, %rax
	jle	.L25
	pxor	%xmm0, %xmm0
	movss	.LC35(%rip), %xmm2
	movss	.LC36(%rip), %xmm1
	leaq	.LC37(%rip), %rsi
	cvtsi2ssq	%rax, %xmm0
	movl	$1, %edi
	xorl	%eax, %eax
	mulss	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	divss	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, Microseconds(%rip)
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, Dhrystones_Per_Second(%rip)
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	movsd	Microseconds(%rip), %xmm0
	leaq	.LC38(%rip), %rsi
	call	__printf_chk@PLT
	leaq	.LC39(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	movsd	Dhrystones_Per_Second(%rip), %xmm0
	leaq	.LC38(%rip), %rsi
	call	__printf_chk@PLT
	movl	$10, %edi
	call	putchar@PLT
.L17:
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L26
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	xorl	%edi, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	addl	$1, %r15d
	call	Proc_6@PLT
	cmpb	%r15b, Ch_2_Glob(%rip)
	movq	%r12, 80(%rsp)
	movabsq	$2325073635944967245, %rax
	movq	%rax, 96(%rsp)
	movl	$18254, %eax
	movl	%ebx, %ebp
	movq	%r13, 88(%rsp)
	movl	$1230132307, 104(%rsp)
	movw	%ax, 108(%rsp)
	movb	$0, 110(%rsp)
	movl	%ebx, Int_Glob(%rip)
	jge	.L13
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L19:
	movl	$9, %ebp
	jmp	.L9
.L7:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L8
.L25:
	leaq	.LC33(%rip), %rdi
	call	puts@PLT
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L17
.L26:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.text
	.p2align 2
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB25:
	.cfi_startproc
	endbr64
	cmpb	$65, Ch_1_Glob(%rip)
	je	.L29
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movl	(%rdi), %eax
	addl	$9, %eax
	subl	Int_Glob(%rip), %eax
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE25:
	.size	Proc_2, .-Proc_2
	.p2align 2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB26:
	.cfi_startproc
	endbr64
	movq	Ptr_Glob(%rip), %rdx
	testq	%rdx, %rdx
	je	.L31
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	Ptr_Glob(%rip), %rdx
.L31:
	movl	Int_Glob(%rip), %esi
	addq	$16, %rdx
	movl	$10, %edi
	xorl	%eax, %eax
	jmp	Proc_7@PLT
	.cfi_endproc
.LFE26:
	.size	Proc_3, .-Proc_3
	.p2align 2
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB27:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	cmpb	$65, Ch_1_Glob(%rip)
	movb	$66, Ch_2_Glob(%rip)
	sete	%al
	orl	%eax, Bool_Glob(%rip)
	ret
	.cfi_endproc
.LFE27:
	.size	Proc_4, .-Proc_4
	.p2align 2
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB28:
	.cfi_startproc
	endbr64
	movb	$65, Ch_1_Glob(%rip)
	movl	$0, Bool_Glob(%rip)
	ret
	.cfi_endproc
.LFE28:
	.size	Proc_5, .-Proc_5
	.globl	Dhrystones_Per_Second
	.bss
	.align 8
	.type	Dhrystones_Per_Second, @object
	.size	Dhrystones_Per_Second, 8
Dhrystones_Per_Second:
	.zero	8
	.globl	Microseconds
	.align 8
	.type	Microseconds, @object
	.size	Microseconds, 8
Microseconds:
	.zero	8
	.globl	User_Time
	.align 8
	.type	User_Time, @object
	.size	User_Time, 8
User_Time:
	.zero	8
	.globl	End_Time
	.align 8
	.type	End_Time, @object
	.size	End_Time, 8
End_Time:
	.zero	8
	.globl	Begin_Time
	.align 8
	.type	Begin_Time, @object
	.size	Begin_Time, 8
Begin_Time:
	.zero	8
	.globl	Reg
	.align 4
	.type	Reg, @object
	.size	Reg, 4
Reg:
	.zero	4
	.globl	Arr_2_Glob
	.align 32
	.type	Arr_2_Glob, @object
	.size	Arr_2_Glob, 10000
Arr_2_Glob:
	.zero	10000
	.globl	Arr_1_Glob
	.align 32
	.type	Arr_1_Glob, @object
	.size	Arr_1_Glob, 200
Arr_1_Glob:
	.zero	200
	.globl	Ch_2_Glob
	.type	Ch_2_Glob, @object
	.size	Ch_2_Glob, 1
Ch_2_Glob:
	.zero	1
	.globl	Ch_1_Glob
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.globl	Bool_Glob
	.align 4
	.type	Bool_Glob, @object
	.size	Bool_Glob, 4
Bool_Glob:
	.zero	4
	.globl	Int_Glob
	.align 4
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.globl	Next_Ptr_Glob
	.align 8
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 8
Next_Ptr_Glob:
	.zero	8
	.globl	Ptr_Glob
	.align 8
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 8
Ptr_Glob:
	.zero	8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC35:
	.long	1232348160
	.align 4
.LC36:
	.long	1268291200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC40:
	.quad	5642821575076104260
	.quad	4706902966564560965
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
