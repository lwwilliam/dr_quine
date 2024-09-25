SRC_DIRS = Colleen Grace Sully

SRC_FILES = $(foreach dir, $(SRC_DIRS), $(dir)/$(dir).asm)

OBJ_FILES = $(SRC_FILES:.asm=.o)

OUT_FILES = $(foreach dir, $(SRC_DIRS), $(dir)/$(dir))

FORMAT = elf64
CFLAGS = -Wall -Wextra -Werror -no-pie

all: $(OUT_FILES)

%.o: %.asm
	nasm -f $(FORMAT) -o $@ $<

$(OUT_FILES): %: %.o
	gcc $(CFLAGS) -o $@ $<

clean:
	rm -f $(OBJ_FILES)

fclean: clean
	rm -f $(OUT_FILES)

re: fclean all

.PHONY: all clean fclean re