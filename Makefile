CUCUMBER ?= cucumber

.PHONY: check
check: build
	$(CUCUMBER) -q

.PHONY: build
build:
	$(MAKE) -C tests build

.PHONY: clean
clean:
	$(MAKE) -C tests clean
