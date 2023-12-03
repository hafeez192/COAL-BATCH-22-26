	.file	"ex16.c"
	.text
	.globl	_fact_for
	.def	_fact_for;	.scl	2;	.type	32;	.endef
_fact_for:
	movl	4(%esp), %ecx
	testl	%ecx, %ecx
	jle	L4
	addl	$1, %ecx
	movl	$1, %edx
	movl	$1, %eax
L3:
	imull	%edx, %eax
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	L3
	ret
L4:
	movl	$1, %eax
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
