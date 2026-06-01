#include <stdio.h>

int	sngl_nmbr(int	R[9])
{
	int	res = 0;
	for (int i = 0; i < 9; i++)
		res ^= R[i];
	return (res);
}

int	main()
{
	int	R[9] = {1, 2, 3, 4, 1, 2, 3, 8, 4};
	int	x = sngl_nmbr(R);
	printf("%d\n", x);
	return (0);
}
