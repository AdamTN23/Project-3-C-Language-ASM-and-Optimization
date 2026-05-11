	.file	"hexdump.c"
	.text
	.section	.rodata
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
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	cmpl	$1, -68(%rbp)
	jg	.L2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	jmp	.L21
.L2:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %edi
	call	exit@PLT
.L4:
	movl	$0, -56(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L5
.L9:
	leaq	-32(%rbp), %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	cmpl	$1, %eax
	jne	.L24
	addl	$1, -56(%rbp)
	addl	$1, -48(%rbp)
.L5:
	cmpl	$15, -48(%rbp)
	jle	.L9
	jmp	.L8
.L24:
	nop
.L8:
	cmpl	$0, -56(%rbp)
	je	.L25
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -48(%rbp)
	jmp	.L12
.L16:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.L13
	movl	-48(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbl	%al, %eax
	andl	$255, %eax
	movl	%eax, -44(%rbp)
	cmpl	$15, -44(%rbp)
	jg	.L14
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L14:
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L13:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L15:
	addl	$1, -48(%rbp)
.L12:
	cmpl	$15, -48(%rbp)
	jle	.L16
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -48(%rbp)
	jmp	.L17
.L20:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-48(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L18
	movl	-48(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L19
.L18:
	movl	$46, %edi
	call	putchar@PLT
.L19:
	addl	$1, -48(%rbp)
.L17:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L20
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$16, -52(%rbp)
	jmp	.L4
.L25:
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L21:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
