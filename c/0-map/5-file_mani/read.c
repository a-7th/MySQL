#include <stdio.h>

int	main()
{
    FILE	*fp;
    char	text[100];
    fp = fopen("data.txt", "r");
    if (fp == NULL)
    {
        printf("Error");
        return (1);
    }
    fscanf(fp, "%s", text);
    printf("%s", text);
    fclose(fp);
    return (0);
}
