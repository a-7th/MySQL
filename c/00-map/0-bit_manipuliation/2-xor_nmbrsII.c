#include<stdio.h>

int	xor_nmbrs_in_rnge(int	n)
{
	if (n % 4 == 1) return(1);
	else if (n % 4 == 2) return(n+1);
	else if (n % 4 == 3) return(0);
	else return(n);
}

int	xor_nmbrs_in_rngeII(int l, int r)
{
	return(xor_nmbrs_in_rnge(l - 1) ^ xor_nmbrs_in_rnge(r));
}

int	main()
{
	int x = xor_nmbrs_in_rngeII(5, 7);
	printf("%d\n", x);
	return(0);
}
