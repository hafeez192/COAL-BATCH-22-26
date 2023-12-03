int func(int x, int y)
{
  int k =0;
  for(int i = 0; i < 10; i++)
    for(int j=0; j < 10; j++)
      k = x+y;
  return k;
}

movl	8(%esp), %eax
	addl	4(%esp), %eax
	ret
	