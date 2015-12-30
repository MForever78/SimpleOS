all: mkdir ../build/sys/echo.mrl ../build/sys/cd.mrl ../build/sys/ls.mrl ../build/sys/cat.mrl ../build/sys/ed.mrl ../build/sys/cc.mrl ../build/sys/as.mrl ../build/sys/lk.mrl

.PHONY: mkdir

mkdir:
	mkdir ../build/sys
	cp ../lib.o ../build/sys/

../build/sys/echo.mrl: echo.c
	../../../c4/c5 -o ../build/echo.asm $^
	../../../c4/as -m -o ../build/echo.o ../build/echo.asm
	../../../c4/lk -l ../build/echo.label -m -o $@ ../build/sys/lib.o ../build/echo.o 

../build/sys/cd.mrl: cd.c
	../../../c4/c5 -o ../build/cd.asm $^
	../../../c4/as -m -o ../build/cd.o ../build/cd.asm
	../../../c4/lk -l ../build/cd.label -m -o $@ ../build/sys/lib.o ../build/cd.o 

../build/sys/ls.mrl: ls.c
	../../../c4/c5 -o ../build/ls.asm $^
	../../../c4/as -m -o ../build/ls.o ../build/ls.asm
	../../../c4/lk -l ../build/ls.label -m -o $@ ../build/sys/lib.o ../build/ls.o 

../build/sys/cat.mrl: cat.c
	../../../c4/c5 -o ../build/cat.asm $^
	../../../c4/as -m -o ../build/cat.o ../build/cat.asm
	../../../c4/lk -l ../build/cat.label -m -o $@ ../build/sys/lib.o ../build/cat.o 

../build/sys/ed.mrl: ed.c
	../../../c4/c5 -o ../build/ed.asm $^
	../../../c4/as -m -o ../build/ed.o ../build/ed.asm
	../../../c4/lk -l ../build/ed.label -m -o $@ ../build/sys/lib.o ../build/ed.o 

../build/sys/cc.mrl: cc.c
	../../../c4/c5 -o ../build/cc.asm $^
	../../../c4/as -m -o ../build/cc.o ../build/cc.asm
	../../../c4/lk -l ../build/cc.label -m -o $@ ../build/sys/lib.o ../build/cc.o 

../build/sys/as.mrl: as.c
	../../../c4/c5 -o ../build/as.asm $^
	../../../c4/as -m -o ../build/as.o ../build/as.asm
	../../../c4/lk -l ../build/as.label -m -o $@ ../build/sys/lib.o ../build/as.o 

../build/sys/lk.mrl: lk.c
	../../../c4/c5 -o ../build/lk.asm $^
	../../../c4/as -m -o ../build/lk.o ../build/lk.asm
	../../../c4/lk -l ../build/lk.label -m -o $@ ../build/sys/lib.o ../build/lk.o 
