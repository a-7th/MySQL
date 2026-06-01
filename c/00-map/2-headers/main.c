#include <stdio.h>
#include "math_utils.h"

int	main()
{
	int	a = add(5, 3);
	int 	b = sub(10, 4);
	int	c = mul(6, 7);
	int	d = div(3, 2);
	int	e = square(3);

	printf("add = %d\n", a);
	printf("sub = %d\n", b);
	printf("mul = %d\n", c);
	printf("div = %d\n", d);
	printf("square = %d\n", e);

	return (0);
}
