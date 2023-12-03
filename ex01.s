	.file	"ex01.c"
	.text
	.globl	_myfunc
	.def	_myfunc;	.scl	2;	.type	32;	.endef
_myfunc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	imull	12(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leave
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
