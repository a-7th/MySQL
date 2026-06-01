#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    int h, x, y;
    char c;
    char p = 'y';

    srand(time(NULL)); // Seed the random generator once

    printf("\n🎮 Welcome to the Guessing Number Game! 🎮\n");

    while (p == 'y') {
        printf("\n🙌 Press [s] to start or [q] to quit: ");
        scanf(" %c", &c);

        if (c == 'q') {
            break;
        } 
        else if (c == 's') {
            printf("\nPick a difficulty level from 1 to 3: ");
            scanf(" %d", &h);

            int t, m;

            // Set attempts and max number based on difficulty
            if (h == 1) { t = 5; m = 20; }
            else if (h == 2) { t = 4; m = 30; }
            else if (h == 3) { t = 3; m = 50; }
            else {
                printf("⚠️ Invalid difficulty, defaulting to level 1\n");
                t = 5; m = 20;
            }

            x = rand() % m + 1; // Generate random number

            printf("\n🎯 I'm thinking of a number between 1 and %d. You have %d chances!\n", m, t);

            for (int i = t; i > 0; i--) {
                printf("\nPick a number: ");
                scanf(" %d", &y);

                if (y == x) {
                    printf("\n🎉 Congratulations! The number is %d! 🎉\n", x);
                    break;
                } 
                else {
                    if (y > x) 
                        printf("⬆️ Too high!\n");
                    else 
                        printf("⬇️ Too low!\n");

                    // Show remaining chances without ternary
                    if (i - 1 == 1)
                        printf("You have %d chance left 🎰\n", i - 1);
                    else
                        printf("You have %d chances left 🎰\n", i - 1);

                    if (i - 1 == 0)
                        printf("💡 The number was [%d]\n", x);
                }
            }
        } 
        else {
            printf("⚠️ Invalid input, please press 's' or 'q'\n");
        }

        printf("\n🔄 Do you want to play again? [y]/[n]: ");
        scanf(" %c", &p);
    }

    printf("\n👋 Thanks for playing! Come back whenever you want!\n\n");
    return 0;
}
