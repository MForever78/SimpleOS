../../build/fs.o: ../../build/fat16.o ../../build/driver.o
	../../c4/lk -m -o $@ $^

../../build/fat16.o: fat16.c
	../../c4/c5 -o ../../build/fat16.asm $^
	../../c4/as -m -o $@ ../../build/fat16.asm

../../build/driver.o: driver.c
	../../c4/c5 -o ../../build/driver.asm $^
	../../c4/as -m -o $@ ../../build/driver.asm
