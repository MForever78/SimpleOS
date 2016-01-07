SHELL= /bin/bash -o pipefail

ASM = ../../../c4/as
LNK = ../../../c4/lk
PPA = cpp $< | ../scripts/newline-sub.js | ../scripts/func-ext.js 

../build/basic_level.o : ../build/interrupt.o ../build/init.o ../build/math.o ../build/memory.o ../build/string.o
	$(LNK) -l ../build/basic_label -m -o $@ $^

../build/init.o : init.asm macros.asm
	$(PPA) > ../build/init-bundle.asm
	$(ASM) -m -o $@ ../build/init-bundle.asm

../build/interrupt.o : interrupt.asm macros.asm
	$(PPA) > ../build/interrupt-bundle.asm
	$(ASM) -m -o $@ ../build/interrupt-bundle.asm

../build/math.o : math.asm macros.asm
	$(PPA) > ../build/math-bundle.asm
	$(ASM) -m -o $@ ../build/math-bundle.asm

../build/memory.o : memory.asm macros.asm
	$(PPA) > ../build/memory-bundle.asm
	$(ASM) -m -o $@ ../build/memory-bundle.asm

../build/string.o : string.asm macros.asm
	$(PPA) > ../build/string-bundle.asm
	$(ASM) -m -o $@ ../build/string-bundle.asm
