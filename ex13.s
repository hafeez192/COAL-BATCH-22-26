	.file	"ex13.c"
	.text
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
	movl	4(%esp), %edx
	movl	%edx, %eax
	cmpl	$20, %edx
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
