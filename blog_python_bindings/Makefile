pwd:=$(shell pwd)
a: foolib.o main.o
	gcc -o a main.o foolib.o -lm

sharea: main.o sharelib
	gcc -L$(shell pwd) -Wall -o sharea main.o -lfoolib

build_lib: sharelib
	CFLAGS="-I$(pwd)" LDFLAGS="-L$(pwd)" python3 setup.py build_ext --inplace

foolib.o:
	gcc -c -o foolib.o foolib.c

main.o:
	gcc -c -o main.o main.c

sharelib:
	gcc -c -Wall -Werror -fpic foolib.c
	gcc -shared -o libfoolib.so foolib.o -lm

clean:
	rm -f foolib.o main.o a foolib.so pfoolib.*.so
	rm -rf build
