#include <stdio.h>
#include <string.h>
#include <stdlib.h>

FILE	*lib;

struct	book {
	int	ID;
	char	title[50];
	char	author[20];
	char	statu[10];
	char	name[20];
	char	date[10];
};

void	AddBook(int *current_id) {
	struct	book	b;

	printf("\nTitle: ");
	scanf(" %[^\n]", b.title);

	printf("Author: ");
	scanf(" %[^\n]", b.author);

	b.ID = (*current_id) + 1;
	*current_id = b.ID;

	strcpy(b.statu, "able");
	strcpy(b.name, "");
	strcpy(b.date, "");

	lib = fopen("lib.data", "ab");
	if (!lib) return;

	fwrite(&b, sizeof(struct book), 1, lib);
	fclose(lib);

	printf("\n✅ Book added (ID: %d)\n", b.ID);
}

int	selectBookByTitle(char *title, int borrow_mode) {
	struct book b;
	int count = 0;

	lib = fopen("lib.data", "rb");
	if (!lib) return -1;

	printf("\nMatching books:\n");

	while (fread(&b, sizeof(struct book), 1, lib)) {
		if (strcmp(b.title, title) == 0) {
			if ((borrow_mode && strcmp(b.statu, "able") == 0) ||
			    (!borrow_mode && strcmp(b.statu, "unable") == 0)) {

				printf("[%d] %s - %s (%s)\n",
					b.ID, b.title, b.author, b.statu);
				count++;
			}
		}
	}
	fclose(lib);

	if (count == 0) {
		printf("\n❌ No matching books available\n");
		return -1;
	}

	int chosen_id;
	printf("\nEnter ID: ");
	scanf("%d", &chosen_id);

	return chosen_id;
}

int	BorrowBook() {
	char	title[50];
	char	name[20];
	char	date[10];
	struct	book b;
	int	found = 0;

	printf("\nEnter book title: ");
	scanf(" %[^\n]", title);

	int chosen_id = selectBookByTitle(title, 1);
	if (chosen_id == -1)
		return 0;

	printf("\nEnter your Name: ");
	scanf(" %[^\n]", name);

	printf("Enter Date /day/month/year: ");
	scanf(" %[^\n]", date);

	FILE *temp = fopen("temp.data", "wb");
	lib = fopen("lib.data", "rb");

	if (!lib || !temp) {
		printf("\n❌ Error\n");
		return 0;
	}

	while (fread(&b, sizeof(struct book), 1, lib)) {
		if (b.ID == chosen_id) {
			strcpy(b.statu, "unable");
			strcpy(b.name, name);
			strcpy(b.date, date);

			found = 1;

			printf("\n✅ Book borrowed:\n%s - %s\n", b.title, b.author);
		}
		fwrite(&b, sizeof(struct book), 1, temp);
	}

	fclose(lib);
	fclose(temp);

	remove("lib.data");
	rename("temp.data", "lib.data");

	return found;
}

void	ReturnBook(){
	char	title[50];
	struct	book	b;

	printf("\nEnter book title: ");
	scanf(" %[^\n]", title);

	int chosen_id = selectBookByTitle(title, 0);
	if (chosen_id == -1)
		return;

	FILE *tmp = fopen("temp.data", "wb");
	lib = fopen("lib.data", "rb");

	if (!lib || !tmp) {
		printf("\n❌ Error\n");
		return;
	}

	while (fread(&b, sizeof(struct book), 1, lib)){
		if (b.ID == chosen_id) {
			strcpy(b.statu, "able");
			strcpy(b.name, "");
			strcpy(b.date, "");

			printf("\n✅ Book returned:\n%s - %s\n", b.title, b.author);
		}
		fwrite(&b, sizeof(struct book), 1, tmp);
	}

	fclose(lib);
	fclose(tmp);

	remove("lib.data");
	rename("temp.data", "lib.data");
}

int	getLastID() {
	struct	book	b;
	int	id = 372484;

	lib = fopen("lib.data", "rb");
	if (!lib)
		return id;

	while (fread(&b, sizeof(struct book), 1, lib)) {
		if (b.ID > id)
			id = b.ID;
	}

	fclose(lib);
	return id;
}

int	main() {
	int choice;
	int current_id = getLastID();

	while (1) {
		printf("\n[1]: Borrow Book\n[2]: Add Book\n[3]: Return Book\n[0]: Exit\n\nChoice-> ");
		scanf("%d", &choice);

		if (choice == 3)
			ReturnBook();
		else if (choice == 2)
			AddBook(&current_id);
		else if (choice == 1)
			BorrowBook();
		else if (choice == 0)
			break;
	}

	return 0;
}
