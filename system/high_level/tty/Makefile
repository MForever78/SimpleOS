../../build/tty.o: ../../build/console.o ../../build/font.o
	../../../../c4/lk -m -o $@ $^

../../build/console.o: console.c
	../../../../c4/c5 -o ../../build/console.asm $^
	../../../../c4/as -m -o $@ ../../build/console.asm

../../build/font.o: font.c
	../../../../c4/c5 -o ../../build/font.asm $^
	../../../../c4/as -m -o $@ ../../build/font.asm
