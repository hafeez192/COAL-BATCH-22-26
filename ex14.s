	.file	"ex14.c"
	.text
	.globl	_isLeapYear
	.def	_isLeapYear;	.scl	2;	.type	32;	.endef
_isLeapYear:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	L2
	movl	8(%ebp), %ecx
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L3
L2:
	movl	8(%ebp), %ecx
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$400, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L4
L3:
	movl	$1, %eax
	jmp	L6
L4:
	movl	$0, %eax
L6:
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
