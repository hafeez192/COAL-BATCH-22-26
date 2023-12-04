	.file	"ex20.c"
	.text
	.globl	_prime
	.def	_prime;	.scl	2;	.type	32;	.endef
_prime:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	16(%esp), %esi
	cmpl	$1, %esi
	jle	L8
	addl	$1, %esi
	movl	$0, %edi
	movl	$2, %ebx
	jmp	L3
L8:
	movl	$0, %edi
L1:
	movl	%edi, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
L6:
	addl	$1, %edi
L4:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L1
L3:
	cmpl	$3, %ebx
	jle	L6
	movl	%ebx, %edx
	shrl	$31, %edx
	leal	(%ebx,%edx), %eax
	andl	$1, %eax
	cmpl	%edx, %eax
	je	L4
	movl	$2, %ecx
L7:
	addl	$1, %ecx
	movl	%ecx, %eax
	imull	%ecx, %eax
	cmpl	%ebx, %eax
	jg	L6
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	L7
	jmp	L4
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
