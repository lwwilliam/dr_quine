SRC_DIR = Colleen Grace Sully

SRC_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir).c)

OUT_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir))

CFLAGS = -Wall -Wextra -Werror

GREEN=\033[0;32m
RED=\033[0;31m
BLUE=\033[0;34m
END=\033[0m

all: $(OUT_FILES)

$(OUT_FILES): $(SRC_FILES)
	@echo -n "$(BLUE)"	
	gcc $(CFLAGS) $@.c -o $@
	@echo -n "$(END)"

clean:
	@echo -n "$(RED)"
	rm -rf $(OUT_FILES)
	@echo -n "$(END)"

re: clean all

.PHONY: all clean