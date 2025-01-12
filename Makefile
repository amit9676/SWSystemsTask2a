

all: matrix connections
matrix: my_mat.a


#static libary
my_mat.a: my_mat.o 
	ar -rcs my_mat.a my_mat.o


#compiled file
my_mat.o: my_mat.c my_mat.h
	gcc -Wall -g -c my_mat.c -lm


#compiled file of main
main.o: main.c my_mat.h
	gcc -Wall -g -c main.c


connections: main.o my_mat.a
	gcc -Wall -g -o connections main.o my_mat.a -lm


.PHONY: clean all
clean:
	rm -f *.o *.a *.so connections matrix
