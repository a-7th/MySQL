#include<math.h>
#include<stdio.h>

int	sum(int x, int y)
{
	return (x + y);
}

int	sub(int x, int y)
{
	return (x - y);
}

int	div(int x, int y)
{
	if (y == 0)
	{
		printf("impossible!\n");
		return (0);
	}
	return (x / y);
}

int	mult(int x, int y)
{
	return (x * y);
}

int	main(void)
{
	int	x;
	int	y;
	int	R;
	char	operator;

	printf("enter ur process:");
	scanf("%d %c %d", &x, &operator, &y);
	
	if(operator == '+')
	{
		R = sum(x, y);
		printf("Result = %d\n", R);
	}
	else if(operator == '-')
	{
		R = sub(x, y);
		printf("Result = %d\n", R);
	}
	else if(operator == '/')
	{
		R = div(x, y);
		printf("Result = %d\n", R);
	}
	else if(operator == '*')
	{
		R = mult(x, y);
		printf("Result = %d\n", R);
	}
	else
		printf("invalid operator\n");
	return (0);
}
