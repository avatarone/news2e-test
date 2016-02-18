SUBDIRS := arm \


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



