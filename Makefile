CFLAGS=-ansi -Wpedantic -Wall -Werror -D_THREAD_SAFE -D_REENTRANT -D_POSIX_C_SOURCE=200112L
LIBRARIES=-lpthread 
LFLAGS=

all: sorgente.exe

sorgente.exe: sorgente.o DBGpthread.o
	gcc ${LFLAGS} -o sorgente.exe sorgente.o DBGpthread.o ${LIBRARIES}

sorgente.o: sorgente.c DBGpthread.h
	gcc -c ${CFLAGS} sorgente.c 

DBGpthread.o: DBGpthread.c printerror.h
	gcc -c ${CFLAGS} DBGpthread.c

.PHONY: clean run

clean: 
	rm -f *.exe *.o *~ core

run: sorgente.exe
	./sorgente.exe   


