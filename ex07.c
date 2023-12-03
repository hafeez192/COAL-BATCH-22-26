int arith(int x, int y, int z)
{
	int t1 = x+y;
	int t2 = z*48;
	int t3 = t1 & 0xffff;
	int t4 = t2 * t3;
	return t4;
}

	movl	8(%esp), %eax
	addl	4(%esp), %eax
	movzwl	%ax, %eax
	imull	12(%esp), %eax
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	ret