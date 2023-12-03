	.file	"ex09.c"
	.text
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	L2
	movl	12(%ebp), %eax
	subl	8(%ebp), %eax
	jmp	L3
L2:
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
L3:
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
