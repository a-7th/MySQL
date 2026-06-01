#include <stdio.h>
#include <string.h>

FILE	*fd;

struct	account{
	char	name[20];
	char	pass[5];
	int		number;
	int		balance;
};

//showaccount
void	showAccount(struct account a){
	printf("\n---ACCOUNT INFORMATION---\n");
	printf("Name: %s\n", a.name);
	printf("Account Number: %d\n", a.number);
	printf("Balance: %d\n", a.balance);
}

//creat account
void	createAccount(struct	account *a){
	printf("\nEnter your account name : ");
	scanf("%19s", a->name);

	printf("Enter your account number : ");
	scanf("%d", &a->number);

	printf("Enter your password {make sure 4 digits} : ");
	scanf("%19s", a->pass);

	printf("How much money you want to charge in your account : ");
	scanf("%d", &a->balance);

	printf("\n--Your account was created successfully--\n");
	showAccount(*a);

	// Save the account to file immediately
	fd = fopen("accounts.data", "ab");
	if(fd != NULL){
		fwrite(a, sizeof(struct account), 1, fd);
		fclose(fd);
	}
	else
		printf("\n❌ Error: Could not open accounts.data for saving!\n");
}

/* LOGIN FROM FILE */
int	login(struct	account *a){
	int			userNumber;
	char		userPass[20];
	struct account	temp;

	printf("\nEnter your account number : ");
	scanf("%d", &userNumber);

	printf("Enter your account password : ");
	scanf("%19s", userPass);

	fd = fopen("accounts.data","rb");
	if(fd == NULL){
		printf("\n❌ Error: Could not open accounts.data!\n");
		return 0;
	}

	while(fread(&temp, sizeof(struct account), 1, fd)){
		if(temp.number == userNumber && strcmp(temp.pass, userPass) == 0){
			*a = temp;  // load account data
			fclose(fd);
			printf("\n✅ Login successful!\n");
			return 1;
		}
	}

	fclose(fd);
	printf("\n❌ Wrong account information!\n");
	return 0;
}

/* DEPOSIT */
void	deposit(struct account *a){
	int	x;

	printf("\nHow much money you want to deposit: ");
	scanf("%d",&x);

	a->balance += x;

	printf("\nMoney added successfully!\n");
	showAccount(*a);
}

/* WITHDRAW */
void	withdraw(struct account *a){
	int	x;

	printf("\nHow much money you want to withdraw: ");
	scanf("%d",&x);

	if(x > a->balance){
		printf("\n❌ Not enough balance!\n");
	}
	else{
		a->balance -= x;
		printf("\nMoney withdrawn successfully!\n");
	}

	showAccount(*a);
}

int	main(void){
	struct account	cnt;
	int				c;
	char			choice;

	printf("\n---WELCOME TO RBAN SERVICE---\n");
	printf("\nIf you already have an account tap [1]");
	printf("\nIf you want to create a new one tap [2]\n=> ");
	scanf("%d", &c);

	if(c == 2){
		createAccount(&cnt);

		printf("\nDo you want to log in now? (y/n): ");
		scanf(" %c", &choice);

		if(choice == 'n' || choice == 'N'){
			printf("\n== Thank you! Come back whenever you want ==\n");
			return 0;
		}
	}

	if(!login(&cnt)){
		printf("\nProgram closing...\n");
		return 0;
	}

	printf("\nChoose an operation:");
	printf("\n[1] Deposit money");
	printf("\n[2] Withdraw money\n=> ");
	scanf("%d",&c);

	if(c == 1){
		deposit(&cnt);
	}
	else if(c == 2){
		withdraw(&cnt);
	}
	else{
		printf("\n❌ Invalid operation!\n");
	}

	printf("\n== Welcome back whenever you want ==\n");

	return 0;
}
