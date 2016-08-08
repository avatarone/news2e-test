include ../Makefile.common

RUN_CMDLINE := $(S2E_DIR)/arm-s2e-softmmu/qemu-system-arm -M versatilepb -s2e-config-file s2e_conf.lua -nographic -monitor /dev/null -s2e-verbose


test: test.o

all build: test

run: test
	$(RUN_CMDLINE) -kernel $<

debug: test
	gdb -ex run --args $(RUN_CMDLINE) -kernel $<

clean:
	rm -f test *.o s2e-last 
	rm -Rf s2e-out-*

.PHONY: build clean
