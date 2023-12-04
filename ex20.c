int prime(int n)
{
	int i = 2;
	int primes = 0;
	int is_prime = 0;
	while (i <= n)
	{
		is_prime = 1;
		int j = 2;
		while(j * j <= i)
		{
			if(i%j == 0)
			{
				is_prime=0;
				break;
			}
			j++;
		}
		if(is_prime == 1)
		{
			primes++;
		}
		i++;
	}	
	return primes;
}