CFLAGS=-ansi -Wpedantic -Wall -Werror -D_THREAD_SAFE -D_REENTRANT -D_POSIX_C_SOURCE=200112L
LIBRARIES=-lpthread 
LFLAGS=

all: .exe

.exe: .o DBGpthread.o
	gcc ${LFLAGS} -o .exe .o DBGpthread.o ${LIBRARIES}

.o: .c DBGpthread.h
	gcc -c ${CFLAGS} .c 

DBGpthread.o: DBGpthread.c printerror.h
	gcc -c ${CFLAGS} DBGpthread.c

.PHONY: clean run

clean: 
	rm -f *.exe *.o *~ core

run: .exe
	./.exe   


