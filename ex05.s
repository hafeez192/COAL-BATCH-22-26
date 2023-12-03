	.file	"ex05.c"
	.text
	.globl	_swap
	.def	_swap;	.scl	2;	.type	32;	.endef
_swap:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	xorl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	xorl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	xorl	%eax, 8(%ebp)
	nop
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
