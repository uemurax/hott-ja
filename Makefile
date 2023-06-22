SRC_DIR = src-1
SITE_DIR = _site
BUILD_SCRIPT = $(SRC_DIR)/build.rkt

.PHONY: all
all: build

.PHONY: build
build: html pdf

.PHONY: compile
compile:
	raco make -v $(BUILD_SCRIPT)

.PHONY: html
html: compile
	racket $(BUILD_SCRIPT) --html $(SITE_DIR)

.PHONY: pdf
pdf: compile
	racket $(BUILD_SCRIPT) --pdf $(SITE_DIR)

.PHONY: clean-site
clean-site:
	rm -rf $(SITE_DIR)

.PHONY: clean-compiled
clean-compiled:
	find $(SRC_DIR) -name '*.zo' -print -delete
	find $(SRC_DIR) -name '*.dep' -print -delete

.PHONY: clean-all
clean-all: clean-site clean-compiled
