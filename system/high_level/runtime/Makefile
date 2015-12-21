SHELL= /bin/bash -o pipefail

ASM = ../../../../c4/as
LNK = ../../../../c4/lk
PPA = cpp $< | ../../scripts/newline-sub.js | ../../scripts/func-ext.js 

../../build/runtime.o: runtime.c ../../build/runtime-bundle.asm
	../../../../c4/c5 -o ../../build/runtime.asm runtime.c
	../../../../c4/as -m -o $@ ../../build/runtime.asm ../../build/runtime-bundle.asm

../../build/runtime-bundle.asm: runtime.asm
	$(PPA) > $@
