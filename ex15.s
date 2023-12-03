	.file	"ex15.c"
	.text
	.globl	_fact
	.def	_fact;	.scl	2;	.type	32;	.endef
_fact:
	movl	4(%esp), %edx
	cmpl	$1, %edx
	jle	L4
	movl	$1, %eax
L3:
	imull	%edx, %eax
	subl	$1, %edx
	cmpl	$1, %edx
	jne	L3
	ret
L4:
	movl	$1, %eax
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
