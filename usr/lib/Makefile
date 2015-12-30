SHELL= /bin/bash -o pipefail

CCC = ../../../c4/c5
ASM = ../../../c4/as
LNK = ../../../c4/lk
PPA = cpp $< | ../../system/scripts/newline-sub.js | ../../system/scripts/func-ext.js 

../lib.o: ../build/init.o ../build/api.o ../build/initc.o ../build/math.o ../build/printf.o ../build/string.o ../build/io.o
	$(LNK) -m -o $@ $^

../build/init.o : init.asm ../../system/basic_level/macros.asm
	$(PPA) > ../build/init-bundle.asm
	$(ASM) -m -o $@ ../build/init-bundle.asm

../build/math.o : ../../system/basic_level/math.asm ../../system/basic_level/macros.asm
	$(PPA) > ../build/math-bundle.asm
	$(ASM) -m -o $@ ../build/math-bundle.asm

../build/string.o : ../../system/basic_level/string.asm ../../system/basic_level/macros.asm
	$(PPA) > ../build/string-bundle.asm
	$(ASM) -m -o $@ ../build/string-bundle.asm

../build/api.o : api.asm ../../system/basic_level/macros.asm
	$(PPA) > ../build/api-bundle.asm
	$(ASM) -m -o $@ ../build/api-bundle.asm

../build/initc.o : initc.c
	$(CCC) -o ../build/initc.asm $<
	$(ASM) -m -o $@ ../build/initc.asm

../build/printf.o : printf.c
	$(CCC) -o ../build/printf.asm $<
	$(ASM) -m -o $@ ../build/printf.asm

../build/io.o : io.c
	$(CCC) -o ../build/io.asm $<
	$(ASM) -m -o $@ ../build/io.asm

