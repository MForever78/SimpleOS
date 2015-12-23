SHELL= /bin/bash -o pipefail

ASM = ../../../../c4/as
LNK = ../../../../c4/lk
PPA = cpp $< | ../../scripts/newline-sub.js | ../../scripts/func-ext.js 

../../build/runtime.o: ../../build/exec.o ../../build/env.o ../../build/shell.o
	../../../../c4/lk -m -o $@ $^

../../build/env.o: env.c
	../../../../c4/c5 -o ../../build/env.asm $^
	../../../../c4/as -m -o $@ ../../build/env.asm

../../build/shell.o: shell.c
	../../../../c4/c5 -o ../../build/shell.asm $^
	../../../../c4/as -m -o $@ ../../build/shell.asm

../../build/exec.o: exec.c ../../build/exec-bundle.asm
	../../../../c4/c5 -o ../../build/exec.asm exec.c
	../../../../c4/as -m -o $@ ../../build/exec.asm ../../build/exec-bundle.asm

../../build/exec-bundle.asm: exec.asm
	$(PPA) > $@
