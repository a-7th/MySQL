#include <stdio.h>

void	print_pwr(int R[4])
{
	int	total = 1 << 4;
	for (int i = 0; i < total; i++) {
		printf("[");
		for (int j = 0; j < 4; j++) {
			if (i & (1 << j))
				printf("%d", R[j]);
		}
		printf("]");
	}
	printf("\n");
	return;
}

int	main()
{
	int R[4] = {1, 2, 3, 4};
	print_pwr(R);
}
