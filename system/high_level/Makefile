.PHONY: FS

../build/high_level.o: ../build/fs.o
	../c4/lk -m -o $@ $^

../build/fs.o: FS

FS:
	make -C fs
