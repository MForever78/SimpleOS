# work only in make 3.81
SHELL= /bin/bash -o pipefail

SOURCES=	\
		etc/const.asm 	etc/init.asm 	etc/interrupt.asm 	etc/macros.asm	\
		fs/fat16.asm														\
		main/sys.asm	main/shell.asm 										\
		stdlib/stdlib.asm

build/sys.coe: build/sys.bin
	../mips_as/bin2coe.sh $< > $@

build/sys.bin: build/sys-bundle.asm
	../mips_as/mas --def ../mips_as/res/defination.xml -l build/label -o $@ $< 

build/sys-bundle.asm: $(SOURCES)
	cpp main/sys.asm | sed 's/__CR__/\n/g' | ./scripts/func-ext.js | ./scripts/string2as.js > $@

.PHONY: clean

clean:
	rm build/*
