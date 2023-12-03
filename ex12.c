int f(int x)
{
	if(x>= 0 && x <= 10)
		x++;
	else if (x>= 11 && x <=20)
		x--;
	else
		x=0;
	return x;
}