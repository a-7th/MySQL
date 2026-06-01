#include <stdio.h>
#include <string.h>

struct task{
    int id;
    char desc[50];
    char statu[10];
    int file_id;
};

struct	file{
	char	name[20];
};

int main(void){

    struct	task	tsk[50];

    struct	file	fl[10];
    int	n,	m;
    int	choice;
    int	edit_id;
    int	found = 0;

    printf("How many files do you want to create: ");
    scanf("%d", &m);
    for(int i = 0; i < m; i++){
        printf("Enter name of file %d: ", i+1);
        scanf("%s", fl[i].name);
    }

    printf("\nHow many tasks do you want to add: ");
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
        printf("\nTask %d ID: ", i+1);
        scanf("%d", &tsk[i].id);
        printf("Task description: ");
        scanf(" %[^\n]", tsk[i].desc);
        printf("Status (todo/done): ");
        scanf("%s", tsk[i].statu);
        printf("Save this task in which file (1-%d): ", m);
        scanf("%d", &tsk[i].file_id);
        printf("Task saved!\n");
    }

    printf("\nDo you want to edit a task? (1 = yes / 0 = no): ");
    scanf("%d", &choice);
    if(choice == 1){
        printf("Enter task ID to edit: ");
        scanf("%d", &edit_id);
        for(int i = 0; i < n; i++){
            if(tsk[i].id == edit_id){
                found = 1;
                printf("What do you want to edit?\n");
                printf("1. Description\n");
                printf("2. Status\n");
                int option;
                scanf("%d", &option);
                if(option == 1){
                    printf("Enter new description: ");
                    scanf(" %[^\n]", tsk[i].desc);
                }
                else if(option == 2){
                    printf("Enter new status: ");
                    scanf("%s", tsk[i].statu);
                }
                printf("Task updated!\n");
                break;
            }
        }
        if(found == 0)
            printf("Task ID not found!\n");
    }

    printf("\n------ YOUR TODO LIST ------\n");
    for(int f = 0; f < m; f++){
        printf("\nFile: %s\n", fl[f].name);
        for(int t = 0; t < n; t++){
            if(tsk[t].file_id == f + 1){
                printf("ID: %d | %s | Status: %s\n",
                       tsk[t].id,
                       tsk[t].desc,
                       tsk[t].statu);
            }
        }
    }
    return 0;
}

