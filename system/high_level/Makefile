.PHONY: FS TTY

../build/high_level.o: ../build/fs.o ../build/tty.o
	../../../c4/lk -m -o $@ $^

../build/fs.o: FS

../build/tty.o: TTY

FS:
	make -C fs

TTY:
	make -C tty
