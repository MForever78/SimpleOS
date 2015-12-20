SHELL=/bin/bash -o pipefail

ASM = ../../../../c4/as
LNK = ../../../../c4/lk
PPA = cpp $< | ../../scripts/newline-sub.js | ../../scripts/func-ext.js 

../../build/vm.o: ../../build/vm_driver.o ../../build/vm_keyboard.o
	../../../../c4/lk -m -o $@ $^

../../build/vm_driver.o: vm_driver.c
	../../../../c4/c5 -m -o ../../build/vm_driver.asm $^
	../../../../c4/as -m -o $@ ../../build/vm_driver.asm

../../build/vm_keyboard.o: vm_keyboard.asm
	$(PPA) > ../../build/vm_keyboard-bundle.asm
	$(ASM) -m -o $@ ../../build/vm_keyboard-bundle.asm

