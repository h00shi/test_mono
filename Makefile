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
SRC_FILES= $(wildcard ${SRC_DIR}*.cs)
SRC_BIN_FILES= $(wildcard ${SRC_BIN_DIR}*${EXE}.cs)


## -------------------------------------------------------------
##  Targets
## -------------------------------------------------------------
.PHONY: hello_world \
	test_complex

hello_world: ${BIN_DIR}hello_world${EXE}
test_complex: ${BIN_DIR}test_complex${EXE}


## -------------------------------------------------------------
##  Rules
## -------------------------------------------------------------

${BIN_DIR}%${EXE}: ${SRC_BIN_DIR}%${EXE}.cs ${SRC_FILES}
	${CSHARP}  $< ${SRC_FILES} -out:$@



## -------------------------------------------------------------
##  Debugging
## -------------------------------------------------------------
.PHONY: echo clean

clean:
	${RM} ${BIN_DIR}*
	${RM} ${BUILD_DIR}*


echo:
	@echo ${OBJ_FILES}
	@echo ${SRC_FILES}
	@echo ${SRC_EXE_FILES}	
