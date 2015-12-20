../../build/test.o: ../../build/main.o
	../../../../c4/lk -m -o $@ $^

../../build/main.o: main.c
	../../../../c4/c5 -o ../../build/main.asm $^
	../../../../c4/as -m -o $@ ../../build/main.asm
