include ../Makefile.common

RUN_CMDLINE := $(QEMU_ARM) -M versatilepb -s2e-config-file s2e_conf.lua -nographic -monitor /dev/null


test: test.o start.o

start.o: CFLAGS += -marm

test.o: CFLAGS += -mthumb

all build: test

run: test
	$(RUN_CMDLINE) -kernel $<

debug: test
	gdb -x debug.gdb --args $(RUN_CMDLINE) -kernel $<

clean:
	rm -f test *.o s2e-last 
	rm -Rf s2e-out-*

.PHONY: build clean
