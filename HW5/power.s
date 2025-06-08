	.file	"power.c"
	.text
	.globl	power
	.def	power;	.scl	2;	.type	32;	.endef
	.seh_proc	power
power:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue

	movl	$1, %eax         # result = 1
	movl	%edx, %ecx       # ecx = exp

	testl	%ecx, %ecx
	jle	.L2

.L3:
	imull	%esi, %eax      # result *= base
	decl	%ecx
	jnz	.L3

.L2:
	popq	%rbp
	ret
	.seh_endproc

	.section	.rdata,"dr"
.LC0:
	.ascii	"power(%d, %d) = %d\12\0"

	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue

	movl	$2, %edi       # base = 2 (1st arg)
	movl	$3, %esi       # exp = 3 (2nd arg)
	call	power

	movl	%eax, %edx    # save return value for printf
	leaq	.LC0(%rip), %rcx
	movl	$2, %esi       # 1st arg for printf
	movl	$3, %edi       # 2nd arg for printf
	call	printf

	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc

	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
