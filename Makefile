.ONESHELL:

SOURCE_DIR = src
BUILD_DIR = _build
SITE_DIR = _site
CORE_FILES = index.tex main.tex latexmkrc
SOURCE_NODE_FILES = $(wildcard $(SOURCE_DIR)/node-*.tex)
SOURCE_STYLE_FILES = $(wildcard $(SOURCE_DIR)/my-*.sty)
SOURCE_CORE_FILES = $(patsubst %,$(SOURCE_DIR)/%,$(CORE_FILES))
SOURCE_FILES = $(SOURCE_CORE_FILES) $(SOURCE_NODE_FILES) $(SOURCE_STYLE_FILES)
BUILD_FILES = $(patsubst $(SOURCE_DIR)/%,$(BUILD_DIR)/%,$(SOURCE_FILES))
CSS_FILE = lwarp.css
NODE_PREFIX = node-

.PHONY: all
all: publish

.PHONY: prebuild
prebuild: $(BUILD_FILES)

.PHONY: build_dir
build_dir:
	@mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/index.tex: $(SOURCE_DIR)/index.tex build_dir
	cat $< \
	| sed -e 's/%[[:space:]]*\\CSSFilename{}/\\CSSFilename{$(CSS_FILE)}/' \
	| sed -e 's/%[[:space:]]*HTMLFilename={}/HTMLFilename={$(NODE_PREFIX)}/' \
	> $@

$(BUILD_DIR)/%: $(SOURCE_DIR)/% build_dir
	cp $< $@

.PHONY: build
build: prebuild
	cd $(BUILD_DIR)
	latexmk index
	lwarpmk html
	lwarpmk limages
	lwarpmk html

.PHONY: site_dir
site_dir:
	@mkdir -p $(SITE_DIR)

.PHONY: publish
publish: build site_dir
	cp -t $(SITE_DIR) $(BUILD_DIR)/index.html $(BUILD_DIR)/$(NODE_PREFIX)*.html $(BUILD_DIR)/$(CSS_FILE)

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
	rm -r $(SITE_DIR)
