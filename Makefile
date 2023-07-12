SRC_DIR = src
SITE_DIR = _site
INDEX_FILE = $(SRC_DIR)/index.rkt
HTML_CONFIG_FILE = $(SRC_DIR)/html-config.rkt
LATEX_CONFIG_FILE = $(SRC_DIR)/latex-config.rkt

.PHONY: all
all: build

.PHONY: build
build: html pdf

.PHONY: compile
compile:
	raco make -v $(INDEX_FILE) $(HTML_CONFIG_FILE) $(LATEX_CONFIG_FILE)

.PHONY: html
html: compile
	raco morg --html-config $(HTML_CONFIG_FILE) $(INDEX_FILE) $(SITE_DIR)

.PHONY: pdf
pdf: compile
	raco morg --pdf-config $(LATEX_CONFIG_FILE) $(INDEX_FILE) $(SITE_DIR)

.PHONY: clean-site
clean-site:
	rm -rf $(SITE_DIR)

.PHONY: clean-compiled
clean-compiled:
	find $(SRC_DIR) -name '*.zo' -print -delete
	find $(SRC_DIR) -name '*.dep' -print -delete

.PHONY: clean-all
clean-all: clean-site clean-compiled
