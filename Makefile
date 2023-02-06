.ONESHELL:

ROOT_DIR = $(PWD)
SOURCE_DIR = src
BUILD_DIR = _build
SITE_DIR = _site
IMAGE_DIR = index-images
CORE_FILES = main.tex latexmkrc
CSS_FILES = custom.css
SOURCE_NODE_FILES = $(wildcard $(SOURCE_DIR)/node-*.tex)
SOURCE_STYLE_FILES = $(wildcard $(SOURCE_DIR)/my-*.sty)
SOURCE_CORE_FILES = $(patsubst %,$(SOURCE_DIR)/%,$(CORE_FILES))
SOURCE_CSS_FILES = $(patsubst %,$(SOURCE_DIR)/%,$(CSS_FILES))
SOURCE_FILES = $(SOURCE_CORE_FILES) $(SOURCE_NODE_FILES) $(SOURCE_STYLE_FILES) $(SOURCE_CSS_FILES)
BUILD_CSS_FILES = $(patsubst %,$(BUILD_DIR)/%,$(CSS_FILES)) $(BUILD_DIR)/lwarp.css
NODE_PREFIX = node-

.PHONY: all
all: build

$(BUILD_DIR)/index.tex: $(SOURCE_DIR)/index.tex
	mkdir -p $(BUILD_DIR)
	cat $< \
	| sed -e 's/%[[:space:]]*HTMLFilename={}/HTMLFilename={$(NODE_PREFIX)}/' \
	> $@

$(BUILD_DIR)/lwarpmk.conf: $(BUILD_DIR)/index.tex
	cp -t $(BUILD_DIR) $(SOURCE_FILES)
	cd $(BUILD_DIR)
	latexmk index

.PHONY: build
build: $(BUILD_DIR)/lwarpmk.conf
	cp -t $(BUILD_DIR) $(SOURCE_FILES)
	cd $(BUILD_DIR)
	lwarpmk print
	lwarpmk html
	lwarpmk limages
	lwarpmk html
	sleep 1
	cd $(ROOT_DIR)
	mkdir -p $(SITE_DIR)
	cp -r -t $(SITE_DIR) $(BUILD_DIR)/index.html $(BUILD_DIR)/$(NODE_PREFIX)*.html $(BUILD_CSS_FILES) $(BUILD_DIR)/$(IMAGE_DIR)

.PHONY: clean-build
clean-build:
	rm -rf $(BUILD_DIR)

.PHONY: clean-site
clean-site:
	rm -rf $(SITE_DIR)

.PHONY: clean
clean: clean-site clean-build
