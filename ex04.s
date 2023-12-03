	.file	"ex04.c"
	.text
	.globl	_arith
	.def	_arith;	.scl	2;	.type	32;	.endef
_arith:
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	movzwl	%ax, %eax
	imull	12(%esp), %eax
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
