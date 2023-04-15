# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Directories
SRC_DIR = src
BIN_DIR = bin
BUILD_DIR = build

# Targets
EXECUTABLE = $(BIN_DIR)/main
SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJECTS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SOURCES))

# Build rules
all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BIN_DIR)/*

.PHONY: all clean