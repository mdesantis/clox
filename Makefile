SRC = $(wildcard *.c)
OBJ = ${SRC:.c=.o}
OUT = clox
C = gcc

$(OUT): $(OBJ)
	@$(CC) $^ -o $@
	@printf "\e[33mLinking\e[90m %s\e[0m\n" $@

%.o: %.c
	@$(CC) -c $< -o $@
	@printf "\e[36mCompiling\e[90m %s\e[0m\n" $@

clean:
	@rm -f $(OUT) $(OBJ)
	@printf "\e[34mCleaning\e[0m\n"
