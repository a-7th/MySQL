CC = gcc

CFLAGS = -Wall -Wextra -Werror -Iinclude

SRC = src/add.c src/sub.c src/mul.c src/div.c

OBJ = add.o sub.o mul.o div.o

NAME = libcalc.a

all: $(NAME) app

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

add.o:
	$(CC) $(CFLAGS) -c src/add.c

sub.o:
	$(CC) $(CFLAGS) -c src/sub.c

mul.o:
	$(CC) $(CFLAGS) -c src/mul.c

div.o:
	$(CC) $(CFLAGS) -c src/div.c

app:
	$(CC) main.c -Iinclude -L. -lcalc -o app

clean:
	rm -f *.o

fclean: clean
	rm -f *.a app

re: fclean all
