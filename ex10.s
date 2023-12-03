	.file	"ex10.c"
	.text
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	movl	8(%ebp), %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jne	L2
	addl	$1, 8(%ebp)
	jmp	L3
L2:
	movl	8(%ebp), %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	je	L4
	subl	$1, 8(%ebp)
	jmp	L3
L4:
	movl	$0, 8(%ebp)
L3:
	movl	8(%ebp), %eax
	popl	%ebx
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
