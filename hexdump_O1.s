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
	.text
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
	jle	.L23
	movq	8(%rsi), %rdi
	leaq	.LC1(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L24
	movl	$0, 12(%rsp)
	leaq	.LC3(%rip), %r15
	jmp	.L4
.L23:
	movq	(%rsi), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$1, %ebp
	jmp	.L1
.L24:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$-1, %edi
	call	exit@PLT
.L19:
	movq	%rax, %rbp
.L6:
	leaq	16(%rsp), %r12
	leaq	0(%rbp,%r12), %rdx
	movq	%r15, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	cmpl	$1, %eax
	jne	.L7
	leaq	1(%rbp), %rax
	cmpq	$15, %rbp
	jne	.L19
	addl	$1, %ebp
.L7:
	testl	%ebp, %ebp
	je	.L8
	movl	12(%rsp), %edx
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %ebx
	leaq	16(%rsp), %r13
	jmp	.L12
.L10:
	leaq	.LC6(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.L11:
	addq	$1, %rbx
	cmpq	$16, %rbx
	je	.L25
.L12:
	cmpl	%ebx, %ebp
	jle	.L9
	movsbl	(%rbx,%r13), %eax
	movzbl	%al, %edx
	testb	$-16, %al
	jne	.L10
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L11
.L9:
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L11
.L25:
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	testl	%ebp, %ebp
	jle	.L13
	call	__ctype_b_loc@PLT
	movq	%rax, %rbx
	movslq	%ebp, %rbp
	addq	%r12, %rbp
	jmp	.L16
.L14:
	movl	$46, %edi
	call	putchar@PLT
.L15:
	addq	$1, %r12
	cmpq	%rbp, %r12
	je	.L13
.L16:
	movzbl	(%r12), %edi
	movsbq	%dil, %rdx
	movq	(%rbx), %rax
	testb	$64, 1(%rax,%rdx,2)
	je	.L14
	movsbl	%dil, %edi
	call	putchar@PLT
	jmp	.L15
.L13:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	addl	$16, 12(%rsp)
.L4:
	movl	$0, %ebp
	jmp	.L6
.L8:
	movq	%r14, %rdi
	call	fclose@PLT
.L1:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L26
	movl	%ebp, %eax
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L26:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
