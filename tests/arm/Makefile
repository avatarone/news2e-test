SUBDIRS := hello_world \
	   tight_loop \
           base_instructions_kill \
           load_memory \
           on_translate_tb_start_event \
           on_translate_tb_end_event \
           on_translate_insn_start_event \
           on_translate_insn_end_event \
           on_exec_tb_start_event \
           on_exec_tb_end_event \
           on_exec_insn_start_event \
           on_exec_insn_end_event




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



