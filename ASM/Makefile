SRC_DIR = Colleen #Grace Sully

SRC_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir).asm)

OUT_FILES = $(foreach dir, $(SRC_DIR), $(dir)/$(dir))

OUT_FILES_O = $(foreach dir, $(SRC_DIR), $(dir)/$(dir).o)

FORMAT = elf64

all: $(OUT_FILES)

$(OUT_FILES): $(SRC_FILES)
	nasm -f $(FORMAT) -o $@.o $<
	ld  -o $@ $@.o


clean:
	rm -rf $(OUT_FILES) $(OUT_FILES_O)

re: clean all

.PHONY: all clean

# ; nasm -f elf64 -o hello-stack_64.o hello-stack_64.asm
# ; ld  -o hello-stack_64 hello-stack_64.o