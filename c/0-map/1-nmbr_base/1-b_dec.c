#include <stdio.h>

int	binary_to_dec(int a)
{
	int	dec = 0;

	while (a) {
		 dec += (dec << 1) + (a % 10);
		 a /= 10;
	}
	return(dec);
}

int	main()
{
	int	a = 1010, b = 111111, c = 077, d = 0x1F, e = 0xA5;
	int	x = binary_to_dec(a), y = binary_to_dec(b);
	printf("%d %d %d %d %d\n", x, y, c, d, e);
	return(0);
}
