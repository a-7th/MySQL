#include <stdio.h>

void	single_nmbr(int	R[8])
{
	long	x = 0;
	for (int i = 0; i < 8; i++)
		x ^= R[i];
	int rightmost = (x ^ (x - 1)) & x;
	int	b1 = 0, b2 = 0;
	for (int i = 0; i < 8; i++) {	
		if (R[i] & rightmost)
			b1 ^= R[i];
		else
			b2 ^= R[i];
	}
	printf("[%d, %d]\n", b1, b2);
	return;
}

int	main()
{
	int	R[10] = {2, 4, 2, 14, 3, 7, 7, 3};
	single_nmbr(R);
	return (0);
}
