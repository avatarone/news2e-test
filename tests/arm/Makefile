SUBDIRS := hello_world \
	   tight_loop \
           base_instructions_kill \
           load_memory \
           on_tb_start_event




.PHONY: build
build:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $${dir} build; \
	done

.PHONY: clean
clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $${dir} clean; \
	done



