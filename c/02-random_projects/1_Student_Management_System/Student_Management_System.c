#include<math.h>
#include<stdio.h>

struct	student {
		char	name[50];
		int	age;
		int	nmbr;
	};

int	search_student(int s, struct student class[100], int count)
{
	for(int i = 0; i < count; i++)
	{
		if (class[i].nmbr == s)
			return (i);
	}
	return (-1);
}

int	delete_student(struct student class[100],
		int	d, int	*count)
{
	for(int	i = 0; i < *count ; i ++)
	{
		if(class[i].nmbr == d)
		{
			for (int j = i ; j < *count - 1; j++)
				class[j] = class[j + 1];
			(*count)--;
			return(1);
		}
	}
	return(0);
}

int	main(void)
{
	int	n, s, d, r;

	struct	student class[100];
	int	count = 0;

	printf("enter number of students: ");
	scanf("%d", &n);

	for (int i = 0; i < n; i++)
	{
		printf("Enter name, age, number: ");
		scanf("%s %d %d", class[i].name,
				&class[i].age, &class[i].nmbr);
		count++;
	}
	
	printf("search for student number: ");
	scanf("%d", &s);
	r = search_student(s, class, count);
	if(r != -1){
		printf("student name: %s \n", class[r].name);
		printf("student age: %d \n", class[r].age);
		printf("student nmbr: %d \n", class[r].nmbr);
	}
	else
		printf("student not found!\n");

	printf("delete student number: ");
	scanf("%d", &d);
	int del = delete_student(class, d, &count);
	if(del == 1)
		printf("the student is deleted \n");
	else
		printf("the selected student not found make sure of its number \n");
	return(0);
}
