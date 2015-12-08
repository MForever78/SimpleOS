.PHONY: clean TOOLCHAIN BASIC_LEVEL HIGH_LEVEL

core.bin: ./build/basic_level.o ./build/high_level.o
	../../c4/lk -l label -o $@ $^

./build/basic_level.o: BASIC_LEVEL

./build/high_level.o: HIGH_LEVEL

TOOLCHAIN:
	make -C c4

BASIC_LEVEL: TOOLCHAIN
	make -C basic_level

HIGH_LEVEL: TOOLCHAIN
	make -C high_level

clean:
	rm -f build/* core.bin
