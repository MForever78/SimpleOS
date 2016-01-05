fat.bin: kernel usr bios
	cp ./system/fat.bin ./
	dd if=./system/platform/sword/build/bootloader1.bin of=./fat.bin bs=446 count=1 conv=notrunc
	dd if=./system/platform/sword/build/bootloader2.bin of=./fat.bin bs=512 count=1 seek=63 conv=notrunc
	cp ./system/platform/sword/build/bios.bin ./

.PHONY: kernel usr bios

kernel:
	make -C system

usr: kernel
	make -C usr

bios: kernel
	xxd -g 4 -c 4 -e ./system/platform/sword/build/bios.bin | awk '{ print $$2 }' > bios.hex
	../c4/as -o bios_jump.bin ./system/platform/sword/bios_jump.asm
	../mips_as/bin2coe.sh bios.bin > bios.coe
