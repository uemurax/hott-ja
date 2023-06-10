#lang at-exp typed/racket

(require (prefix-in latex: morg/latex/config))

(provide latex-config)

(define latex-config
  (struct-copy latex:user-config latex:default-config
    [section-macros '("chapter" "section" "subsection" "subsubsection" "paragraph")]
    [section-macro-fallback "subparagraph"]
    [class "ltjsbook"]
    [class-options '("b5paper")]))
