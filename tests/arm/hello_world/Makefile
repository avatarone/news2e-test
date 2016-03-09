include ../Makefile.common

LDFLAGS += -Wl,-T test.ld

test: test.o

all build: test

clean:
	rm -f test *.o
	rm -Rf s2e-out-* s2e-last

.PHONY: build clean
