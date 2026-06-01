#include <stdio.h>

int	main()
{
	FILE	*fp;
	fp = fopen("data.txt", "w");
	if (fp == NULL)
	{
		printf("Error opening file");
		return (1);
	}
	fprintf(fp, "Hello");
	fclose(fp);
	return (0);
}
