	.file	"ex21.c"
	.text
	.globl	_absdiff
	.def	_absdiff;	.scl	2;	.type	32;	.endef
_absdiff:
	pushl	%ebx
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	movl	%edx, %ebx
	subl	%ecx, %ebx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%edx, %ecx
	cmovl	%ebx, %eax
	popl	%ebx
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
