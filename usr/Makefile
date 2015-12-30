all: clean lib sys img

.PHONY: clean lib sys img

clean:
	rm -rf lib.o ./build/*

lib:
	make -C lib

sys:
	make -C sys

img: lib sys
	sudo mount /dev/sdb1 /mnt
	sudo cp build/sys/* /mnt/sys
	sudo cp ../system/sword.bin /mnt/kernel.bin
	sudo umount /mnt
	sudo dd if=/dev/sdb of=../system/fat.bin bs=4M
