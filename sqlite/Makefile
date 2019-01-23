CUR_PATH = $(shell pwd)

SRC_DIR=${CUR_PATH}/src
LIB_DIR=${CUR_PATH}/lib
INC_DIR=${CUR_PATH}/inclide
OBJ_DIR=${CUR_PATH}/obj
BIN_DIR=${CUR_PATH}/bin

CC       = gcc 
CFLAGS   = -Wall -O -g

CXXFLAGS = 

INCLUDE  = -I{INC_DIR}

TARGET   = demo
BIN_TARGET = ${BIN_DIR}/${TARGET}
LIBVAR   = -lsqlite3             

SRC = ${wildcard ${SRC_DIR}/*.c}

OBJ = $(patsubst %.c,${OBJ_DIR}/%.o,$(notdir ${SRC})) 
#OBJ = ${patsubst %.c, %.o, ${SRC}}
#LIBPATH  = -L./dynamiclib/libs  指明 libmytest.so 的路径

#${BIN_TARGET}: ${OBJ} $(LIBVAR)
${TARGET}: ${OBJ} $(LIBVAR)
	${CC} ${OBJ} -o $@ $(CFLAGS) $(INCLUDE) $(LIBVAR)
	@echo "Compile done."

#下行的 apue.h，可以不必写出来
#${OBJ}:${SRC}
#	$(CC) $(CFLAGS) $(INCLUDE) -c $^
#$(OBJ):%.o:%.c
${OBJ_DIR}/%.o:${SRC_DIR}/%.c
	@echo "Compiling $< ==> $@"
	${CC} ${CCFLAGS} -c $< -o $@

#all:$(OBJ) $(LIBVAR)
#	$(CC) $(OBJ) -o $@ $(CFLAGS) $(INCLUDE) $(LIBVAR)

#在上行中，在执行编译时，加载了 libmytest.so 中函数
clean:
	rm -f ${OBJ_DIR}/$(OBJ)
	rm -f $(BIN_TARGET)
