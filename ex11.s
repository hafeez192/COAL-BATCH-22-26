	.file	"ex11.c"
	.text
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L2
	addl	$1, 8(%ebp)
	jmp	L3
L2:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L4
	subl	$1, 8(%ebp)
	jmp	L3
L4:
	movl	$0, 8(%ebp)
L3:
	movl	8(%ebp), %eax
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
