#include <stdio.h>

void	print_board(char board[3][3]){
	for (int i = 0 ; i < 3; i++) {
		for (int j = 0 ; j < 3; j++) {
			printf(" %c ", board[i][j]);
			if (j < 2) printf("|");
		}
		printf("\n");
		if (i < 2) printf("---+---+---\n");
	}
}

void	reset_board(char board[3][3])
{
	for (int i = 0; i < 3; i++)
		for (int j = 0; j < 3; j++)
			board[i][j] = ' ';
}

int	check_input(int row, int col, char symbol, char board[3][3]) {
	if (row < 1 || row > 3 || col < 1 || col > 3) {
		printf("Out of bounds!\n");
		return (0);
	}

	row--;
	col--;

	if (board[row][col] != ' ') {
		printf("Cell already taken!\n");
		return (0);
	}
	
	board[row][col] = symbol;
	return (1);
}

int	check_win(char board[3][3], char symbol)
{
	for (int i = 0; i < 3; i++)
	{
		if (board[i][0] == symbol &&
			board[i][1] == symbol &&
			board[i][2] == symbol)
			return (1);
	}

	for (int i = 0; i < 3; i++)
	{
		if (board[0][i] == symbol &&
			board[1][i] == symbol &&
			board[2][i] == symbol)
			return (1);
	}

	if (board[0][0] == symbol &&
		board[1][1] == symbol &&
		board[2][2] == symbol)
		return (1);

	if (board[0][2] == symbol &&
		board[1][1] == symbol &&
		board[2][0] == symbol)
		return (1);

	return (0);
}

int	check_draw(char board[3][3])
{
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			if (board[i][j] == ' ')
				return (0);
		}
	}
	return (1);
}

int	main(){
	char	currenplayer = 'x';
	int	row, col;
	char	choice;
	char	board[3][3];

	reset_board(board);
	print_board(board);

	while (1)
	{
		printf("Player %c -> enter [row 1-3] and [col 1-3]: ", currenplayer);
		scanf("%d %d", &row, &col);

		if (check_input(row, col, currenplayer, board)) {
			print_board(board);

			if (check_win(board, currenplayer)) {
				printf("Player %c wins!\n", currenplayer);

				printf("Play again? (Y/N): ");
				scanf(" %c", &choice);

				if (choice == 'y' || choice == 'Y') {
					reset_board(board);
					currenplayer = 'x';
					print_board(board);
					continue;
				}
				else
					break;
			}

			if (check_draw(board)) {
				printf("Draw!\n");

				printf("Play again? (Y/N): ");
				scanf(" %c", &choice);

				if (choice == 'y' || choice == 'Y') {
					reset_board(board);
					currenplayer = 'x';
					print_board(board);
					continue;
				}
				else
					break;
			}

			currenplayer = (currenplayer == 'x') ? 'o' : 'x';
		}
	}

	return (0);
}
