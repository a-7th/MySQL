#include <stdio.h>

void	duplicate(int	*arr, int n)
{
	for (int i = 0; i < n; i++) {
		for (int j = i + 1; j < n; j++) {
			if (arr[i] == arr[j]){
				printf("True\n");
			}
		}
	}
	printf("False\n");
}

int	main () {
	int	arr[] = { 1, 2, 3, 4, 5, 6, 7, 9, 8};
	int n = sizeof(arr) / sizeof(arr[0]);
	duplicate(arr, n);
	return(0);
}
