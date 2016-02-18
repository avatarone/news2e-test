include ../Makefile.common

LDFLAGS += -Wl,-T test.ld

test: test.o

all build: test

clean:
	rm -f test *.o

.PHONY: build clean
