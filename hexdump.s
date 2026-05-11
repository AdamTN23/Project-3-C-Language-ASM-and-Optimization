	.file	"hexdump.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: %s <filename>\n"
.LC1:
	.string	"r"
.LC2:
	.string	"Error opening file"
.LC3:
	.string	"%c"
.LC4:
	.string	"%8x  "
.LC5:
	.string	"0%x "
.LC6:
	.string	"%x "
.LC7:
	.string	"   "
.LC8:
	.string	" |"
.LC9:
	.string	"|"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L24
	movq	8(%rsi), %rdi
	leaq	.LC1(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L25
	movl	$0, 12(%rsp)
	leaq	16(%rsp), %rbp
	leaq	.LC3(%rip), %r14
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L6:
	xorl	%eax, %eax
	leaq	0(%rbp,%r15), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbp, %rbx
	call	__isoc99_fscanf@PLT
	cmpl	$1, %eax
	jne	.L5
	addq	$1, %r15
	cmpq	$16, %r15
	jne	.L6
	movl	$16, %r12d
.L7:
	movl	12(%rsp), %edx
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	movl	$2, %edi
	call	__printf_chk@PLT
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L27:
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L11:
	addq	$1, %r15
	cmpq	$16, %r15
	je	.L26
.L12:
	cmpl	%r15d, %r12d
	jle	.L9
	movsbl	0(%rbp,%r15), %eax
	movzbl	%al, %edx
	testb	$-16, %al
	je	.L27
	leaq	.LC6(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$1, %r15
	call	__printf_chk@PLT
	cmpq	$16, %r15
	jne	.L12
.L26:
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	%rbp, %r12
	call	__printf_chk@PLT
	call	__ctype_b_loc@PLT
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L15:
	movsbq	(%rbx), %rdx
	movq	(%r15), %rax
	movq	%rdx, %rdi
	testb	$64, 1(%rax,%rdx,2)
	jne	.L22
	movl	$46, %edi
.L22:
	call	putchar@PLT
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.L15
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	addl	$16, 12(%rsp)
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L9:
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L5:
	movslq	%r15d, %r12
	testl	%r15d, %r15d
	jne	.L7
	movq	%r13, %rdi
	call	fclose@PLT
.L1:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
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
.L24:
	.cfi_restore_state
	movq	(%rsi), %rdx
	movl	$2, %edi
	leaq	.LC0(%rip), %rsi
	movl	$1, %r12d
	call	__printf_chk@PLT
	jmp	.L1
.L28:
	call	__stack_chk_fail@PLT
.L25:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	orl	$-1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
