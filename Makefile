.ONESHELL:

SOURCE_DIR = src
BUILD_DIR = _build
SITE_DIR = _site
FILES = index.tex main.tex dependent-type-theory.tex my-preamble.sty latexmkrc
SOURCE_FILES = $(foreach X,$(FILES),$(SOURCE_DIR)/$(X))
BUILD_FILES = $(foreach X,$(FILES),$(BUILD_DIR)/$(X))
CSS_FILE = lwarp.css
NODE_PREFIX = node-

.PHONY: all
all: publish

.PHONY: prebuild
prebuild: $(BUILD_FILES)

$(BUILD_DIR)/index.tex: $(SOURCE_DIR)/index.tex
	mkdir -p $(BUILD_DIR)
	cat $< \
	| sed -e 's/%[[:space:]]*\\CSSFilename{}/\\CSSFilename{$(CSS_FILE)}/' \
	| sed -e 's/%[[:space:]]*HTMLFilename={}/HTMLFilename={$(NODE_PREFIX)}/' \
	> $@

$(BUILD_DIR)/%: $(SOURCE_DIR)/%
	mkdir -p $(BUILD_DIR)
	cp $< $@

.PHONY: build
build: prebuild
	cd $(BUILD_DIR)
	latexmk index
	lwarpmk html
	lwarpmk limages
	lwarpmk html

.PHONY: publish
publish: build
	mkdir -p $(SITE_DIR)
	cp -t $(SITE_DIR) $(BUILD_DIR)/index.html $(BUILD_DIR)/$(NODE_PREFIX)*.html $(BUILD_DIR)/$(CSS_FILE)
