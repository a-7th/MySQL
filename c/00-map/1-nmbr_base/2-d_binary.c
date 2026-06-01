#include <stdio.h>

void	binary(int	x)
{
	if (x == 0)
		return;
	binary(x / 2);
	printf("%d", x % 2);
}

int	main()
{
	int	a = 10, b = 25, c = 64, d = 255;
	binary(a);
	printf("\n");
	binary(b);
	printf("\n");
	binary(c);
	printf("\n");
	binary(d);
	printf("\n");
	return(0);
}
