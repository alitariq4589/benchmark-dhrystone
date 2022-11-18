	.file	"dhry_2.c"
	.text
	.p2align 2
	.globl	Proc_6
	.type	Proc_6, @function
Proc_6:
.LFB23:
	.cfi_startproc
	endbr64
	cmpl	$2, %edi
	je	.L2
	movl	$3, (%rsi)
	cmpl	$1, %edi
	je	.L3
	jle	.L10
	cmpl	$4, %edi
	jne	.L11
	movl	$2, (%rsi)
.L6:
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	testl	%edi, %edi
	jne	.L12
	movl	$0, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$100, Int_Glob(%rip)
	jle	.L6
	movl	$0, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movl	$1, (%rsi)
	ret
	.cfi_endproc
.LFE23:
	.size	Proc_6, .-Proc_6
	.p2align 2
	.globl	Proc_7
	.type	Proc_7, @function
Proc_7:
.LFB24:
	.cfi_startproc
	endbr64
	leal	2(%rdi,%rsi), %eax
	movl	%eax, (%rdx)
	ret
	.cfi_endproc
.LFE24:
	.size	Proc_7, .-Proc_7
	.p2align 2
	.globl	Proc_8
	.type	Proc_8, @function
Proc_8:
.LFB25:
	.cfi_startproc
	endbr64
	leal	5(%rdx), %r8d
	movslq	%edx, %rdx
	movslq	%r8d, %r10
	salq	$2, %rdx
	leaq	0(,%r10,4), %rax
	leaq	(%rdi,%rax), %r9
	movl	%ecx, (%r9)
	movl	%ecx, 4(%rdi,%rax)
	movl	%r8d, 120(%rdi,%rax)
	addq	%r10, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$3, %rcx
	leaq	(%rcx,%rdx), %rax
	addq	%rsi, %rax
	addq	%rcx, %rsi
	addl	$1, 16(%rax)
	movl	%r8d, 20(%rax)
	movl	%r8d, 24(%rax)
	movl	(%r9), %eax
	movl	$5, Int_Glob(%rip)
	movl	%eax, 4020(%rdx,%rsi)
	ret
	.cfi_endproc
.LFE25:
	.size	Proc_8, .-Proc_8
	.p2align 2
	.globl	Func_1
	.type	Func_1, @function
Func_1:
.LFB26:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	cmpb	%sil, %dil
	je	.L18
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movb	%dil, Ch_1_Glob(%rip)
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	Func_1, .-Func_1
	.p2align 2
	.globl	Func_2
	.type	Func_2, @function
Func_2:
.LFB27:
	.cfi_startproc
	endbr64
	movzbl	2(%rdi), %eax
	cmpb	%al, 3(%rsi)
	je	.L21
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	strcmp@PLT
	xorl	%r8d, %r8d
	testl	%eax, %eax
	jle	.L19
	movl	$10, Int_Glob(%rip)
	movl	$1, %r8d
.L19:
	movl	%r8d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L21:
	jmp	.L21
	.cfi_endproc
.LFE27:
	.size	Func_2, .-Func_2
	.p2align 2
	.globl	Func_3
	.type	Func_3, @function
Func_3:
.LFB28:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	ret
	.cfi_endproc
.LFE28:
	.size	Func_3, .-Func_3
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
