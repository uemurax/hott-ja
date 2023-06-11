#lang at-exp typed/racket

(require (prefix-in latex: morg/latex/config)
         morg/markup/tex)

(provide latex-config)

(define latex-config
  (struct-copy latex:user-config latex:default-config
    [front-matter @text-tex%{@macro%{frontmatter}}]
    [main-matter @text-tex%{@macro%{mainmatter}}]
    [back-matter @text-tex%{@macro%{backmatter}}]
    [section-macros '("chapter" "section" "subsection" "subsubsection" "paragraph")]
    [section-macro-fallback "subparagraph"]
    [class "ltjsbook"]
    [class-options '("b5paper")]))
