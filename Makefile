# Build
ifeq ($(OS),Windows_NT)
    BUILD_CMD := build.bat
else
    BUILD_CMD := ./build.sh
endif

# Clean
ifeq ($(OS),Windows_NT)
    CLEAN_CMD := rmdir /s /q "./build"
else
    CLEAN_CMD := rm -rf ./build
endif

all:
	@echo Building the document...
	@$(BUILD_CMD)
	@echo Check out ./build directory!

clean:
	@echo Removing ./build directory...
	@$(CLEAN_CMD)
	@echo Done!
