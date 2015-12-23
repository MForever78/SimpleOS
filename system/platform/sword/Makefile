SHELL=/bin/bash -o pipefail

ASM = ../../../../c4/as
LNK = ../../../../c4/lk
PPA = cpp $< | ../../scripts/newline-sub.js | ../../scripts/func-ext.js 

all: ../../build/sword.o ./build/bios.bin ./build/bootloader1.bin ./build/bootloader2.bin

../../build/sword.o: ../../build/sword_driver.o ../../build/sword_driver_util.o ../../build/sword_keyboard.o
	../../../../c4/lk -m -o $@ $^

../../build/sword_driver.o: sword_driver.c
	../../../../c4/c5 -m -o ../../build/sword_driver.asm $^
	../../../../c4/as -m -o $@ ../../build/sword_driver.asm

../../build/sword_driver_util.o: sword_driver_util.asm
	$(PPA) > ../../build/sword_driver-bundle.asm
	$(ASM) -m -o $@ ../../build/sword_driver-bundle.asm

../../build/sword_keyboard.o: sword_keyboard.asm
	$(PPA) > ../../build/sword_keyboard-bundle.asm
	$(ASM) -m -o $@ ../../build/sword_keyboard-bundle.asm

./build/bios.bin: bios.asm
	$(ASM) -m -o ./build/bios.o $<
	$(LNK) -s 2097152 -l ./build/bios.label -o $@ ./build/bios.o

./build/bootloader1.bin: bootloader1.asm
	$(ASM) -m -o ./build/bootloader1.o $<
	$(LNK) -s 1048576 -l ./build/bootloader1.label -o $@ ./build/bootloader1.o

./build/bootloader2.bin: bootloader2.asm
	$(ASM) -m -o ./build/bootloader2.o $<
	$(LNK) -s 1049088 -l ./build/bootloader2.label -o $@ ./build/bootloader2.o
