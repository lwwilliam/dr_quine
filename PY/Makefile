SRC_DIRS = Colleen Grace Sully

SRC_FILES = $(foreach dir, $(SRC_DIRS), $(dir)/$(dir).py)

all: $(SRC_FILES)

$(SRC_FILES):
	@python3 $@

.PHONY: all clean $(SRC_FILES)