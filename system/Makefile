.PHONY: all clean TOOLCHAIN BASIC_LEVEL HIGH_LEVEL PLATFORM_VM PLATFORM_SWORD

all: clean vm.bin sword.bin

vm.bin: ./build/basic_level.o ./build/high_level.o ./build/vm.o
	../../c4/lk -l vm.label -o $@ $^

sword.bin: ./build/basic_level.o ./build/high_level.o ./build/sword.o
	../../c4/lk -l sword.label -o $@ $^

./build/basic_level.o: BASIC_LEVEL

./build/high_level.o: HIGH_LEVEL

./build/vm.o: PLATFORM_VM

./build/sword.o: PLATFORM_SWORD

TOOLCHAIN:
	make -C c4

BASIC_LEVEL: TOOLCHAIN
	make -C basic_level

HIGH_LEVEL: TOOLCHAIN
	make -C high_level

PLATFORM_VM: TOOLCHAIN
	make -C platform/vm

PLATFORM_SWORD: TOOLCHAIN
	make -C platform/sword

clean:
	rm -f build/* vm.bin
