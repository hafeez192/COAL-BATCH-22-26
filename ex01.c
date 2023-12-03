int myfunc(int x, int y)
{
	int t = x+y;
	int sum = t+(x*y);
	int k = sum++;
	return k;
}