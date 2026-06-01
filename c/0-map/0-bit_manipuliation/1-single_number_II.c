#include <stdio.h>

int	sngl_nmbr_II(int R[10])
{
	int	res = 0;
	for (int bit = 0; bit < 32; bit++) {
		int sum = 0;
		for (int i = 0; i < 10; i++) {
			if (R[i] & (1 << bit))
				sum++;
		}
		if (sum % 3 != 0)
			res |= (1 << bit);
	}
	return (res);
}

int	main()
{
	int	R[10] = { 1, 2, 1, 3, 2, 3, 1, 3, 2, 8};
	int x = sngl_nmbr_II(R);
	printf("%d\n", x);
	return(0);
}
