.PHONY: FS TTY

../build/high_level.o: ../build/fs.o ../build/tty.o ../build/test.o ../build/runtime.o
	../../../c4/lk -m -o $@ $^

../build/fs.o: FS

../build/tty.o: TTY

../build/test.o: TEST

../build/runtime.o: RUNTIME

FS:
	make -C fs

TTY:
	make -C tty

TEST:
	make -C test

RUNTIME:
	make -C runtime
