SRC_DIR = Colleen Grace
# sully

SRC_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir).c)

OUT_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir))

CFLAGS = -Wall -Wextra -Werror

all: $(OUT_FILES)

$(OUT_FILES): $(SRC_FILES)
	gcc $(CFLAGS) $@.c -o $@

clean:
	rm -rf $(OUT_FILES)

re: clean all

.PHONY: all clean