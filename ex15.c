int fact(int n)
{
	//we will write while loop based factorial function
	int result = 1;
	while( n > 1)
	{
		result *=n;
		n--;
	}
	return result;
}