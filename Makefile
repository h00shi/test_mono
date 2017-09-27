## Default directories
BUILD_DIR=./build/
BIN_DIR=./bin/
SRC_DIR=./src/
SRC_BIN_DIR=./src_bin/

## Executables
CSHARP = mcs
RM = rm -rf
EXE = .exe

## Glob all the files
SRC_FILES= $(wildcard ${SRC_DIR}/*.cs)
SRC_BIN_FILES= $(wildcard ${SRC_BIN_DIR}/*.exe.cs)

## Flags
CSHARP_FLAGS=

## -------------------------------------------------------------
##  Targets
## -------------------------------------------------------------
.PHONY: hello_world

hello_world: ${BIN_DIR}hello_world${EXE}

## -------------------------------------------------------------
##  Rules
## -------------------------------------------------------------

${BIN_DIR}%${EXE}: ${SRC_BIN_DIR}%${EXE}.cs ${SRC_FILES}
	${CSHARP} $^ ${CSHARP_FLAGS} -out:$@

