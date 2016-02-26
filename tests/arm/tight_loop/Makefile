include ../Makefile.common

RUN_CMDLINE := $(QEMU_ARM) -M versatilepb -s2e-config-file s2e_conf.lua -nographic -monitor /dev/null


test: test.o

all build: test

run: test
	$(RUN_CMDLINE) -kernel $<

debug: test
	gdb -x debug.gdb --args $(RUN_CMDLINE) -kernel $<

clean:
	rm -f test *.o

.PHONY: build clean
