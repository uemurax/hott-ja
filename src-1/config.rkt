#lang at-exp typed/racket

(require (prefix-in latex: morg/latex/config)
         morg/markup/tex)

(provide latex-config)

(define (latex-config:make-section-ref [depth : Natural] [num : String])
  (define x : String
    (if (depth . <= . 1)
        "章"
        "節"))
  @text-tex%{@|num|@|x|})

(define latex-config
  (struct-copy latex:config latex:default-config
    [front-matter @text-tex%{@macro%{frontmatter}}]
    [main-matter @text-tex%{@macro%{mainmatter}}]
    [back-matter @text-tex%{@macro%{backmatter}}]
    [packages @list[
      (latex:package "amsmath" '())
      (latex:package "amssymb" '())
    ]]
    [make-section-ref latex-config:make-section-ref]
    [section-macros '("chapter" "section" "subsection" "subsubsection" "paragraph")]
    [section-macro-fallback "subparagraph"]
    [class "ltjsbook"]
    [class-options '("a4paper")]))
