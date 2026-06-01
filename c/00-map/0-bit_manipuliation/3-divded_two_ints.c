#include <limits.h>
#include <stdlib.h>
#include <stdio.h>

int	divide(int dividend, int divisor) {
	if (dividend == INT_MIN && divisor == -1)
		return INT_MAX;
	long long a = llabs((long long)dividend);
	long long b = llabs((long long)divisor);
	int res = 0;
	for (int i = 31; i >= 0; --i) {
		if ((a >> i) >= b) {
			a -= (b << i);
			res |= (1 << i);
		}
	}
	if ((dividend < 0) ^ (divisor < 0))
		res = -res;
	return (res);
}

int	main()
{
	int res = divide(20, 2);
	printf("%d\n", res);
	return(0);
}
