#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int	main(void)
{
	char	cmnd[100];
	char	u[10];
	char	cwd[1024];
	char	*args[10];
	pid_t	pid;

	printf("enter your user name: ");
	scanf("%9s", u);
	getchar();

	while (1)
	{
		if (getcwd(cwd, sizeof(cwd)) == NULL)
		{
			perror("getcwd");
			continue;
		}

		printf("%s@mini_shell %s> ", u, cwd);

		if (fgets(cmnd, sizeof(cmnd), stdin) == NULL)
			break;

		cmnd[strcspn(cmnd, "\n")] = 0;

		int i = 0;
		char *token = strtok(cmnd, " ");
		while (token != NULL && i < 9)
		{
			args[i++] = token;
			token = strtok(NULL, " ");
		}
		args[i] = NULL;

		if (args[0] == NULL)
			continue;

		if (strcmp(args[0], "cd") == 0)
		{
			if (args[1] == NULL)
			{
				char *home = getenv("HOME");
				if (home == NULL)
					printf("cd: HOME not set\n");
				else if (chdir(home) != 0)
					perror("cd");
			}
			else if (chdir(args[1]) != 0)
				perror("cd");
		}
		else if (strcmp(args[0], "pwd") == 0)
		{
			if (getcwd(cwd, sizeof(cwd)) == NULL)
				perror("pwd");
			else
				printf("%s\n", cwd);
		}
		else if (strcmp(args[0], "exit") == 0)
			break;
		else
		{
			pid = fork();
			if (pid == 0)
			{
				execvp(args[0], args);
				perror("execvp");
				exit(1);
			}
			else if (pid < 0)
				perror("fork");
			else
				waitpid(pid, NULL, 0);
		}
	}
	return (0);
}
