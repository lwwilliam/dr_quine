SRC_DIRS = Colleen Grace Sully

SRC_FILES = $(foreach dir, $(SRC_DIRS), $(dir)/$(dir).s)

OBJ_FILES = $(SRC_FILES:.s=.o)

OUT_FILES = $(foreach dir, $(SRC_DIRS), $(dir)/$(dir))

FORMAT = elf64

CFLAGS = -Wall -Wextra -Werror -no-pie

GREEN=\033[0;32m
RED=\033[0;31m
BLUE=\033[0;34m
END=\033[0m

all: $(OUT_FILES)

%.o: %.s
	@echo -n "$(BLUE)"
	nasm -f $(FORMAT) -o $@ $<

$(OUT_FILES): %: %.o
	gcc $(CFLAGS) -o $@ $<
	@echo -n "$(END)"

clean:
	@echo -n "$(RED)"
	rm -f $(OBJ_FILES)

fclean: clean
	rm -f $(OUT_FILES)
	@echo -n "$(END)"

re: fclean all

.PHONY: all clean fclean re

# https://web.stanford.edu/class/cs107/resources/x86-64-reference.pdf
# https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/