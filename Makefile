CUCUMBER ?= cucumber

.PHONY: check
check: build
	@if test x"$${S2E_DIR}" = x""; then \
		echo "ERROR: The S2E_DIR environment variable is not set." 1>&2 ; \
	    echo "       It needs to point to the qemu build directory (qemu-release or qemu-debug)" 1>&2 ; \
	    echo "       inside the S2E build directory. Aborting." 1>&2 ; \
		exit; \
	fi; \
	$(CUCUMBER) -q

.PHONY: build
build:
	$(MAKE) -C tests build

.PHONY: clean
clean:
	$(MAKE) -C tests clean
