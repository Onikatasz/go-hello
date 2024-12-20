# Define variables
APP_NAME := my_app
MAIN_FILE := cmd/main.go

# Default target
.PHONY: run
run:
	go run $(MAIN_FILE)

# Build the binary
.PHONY: build
build:
	go build -o $(APP_NAME) $(MAIN_FILE)

# Clean the build
.PHONY: clean
clean:
	rm -f $(APP_NAME)

# Help message
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make run      - Run the Go application"
	@echo "  make build    - Build the Go binary"
	@echo "  make clean    - Remove the built binary"
