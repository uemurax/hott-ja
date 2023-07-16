#lang at-exp typed/racket

(require morg/latex/config
         (prefix-in eq: (submod morg/eq-reasoning latex-config))
         morg
         morg/markup/tex)

(define (latex-config:make-section-ref [depth : Natural] [num : String])
  (define x : String
    (if (depth . <= . 1)
        "章"
        "節"))
  @text-tex%{@|num|@|x|})

(provide-config
  (define cfg default-config)
  (eq:config-update
   (struct-copy config cfg
     [front-matter @text-tex%{@macro%{frontmatter}}]
     [main-matter @text-tex%{@macro%{mainmatter}}]
     [back-matter @text-tex%{@macro%{backmatter}}]
     [packages @list[
       (package "amsmath" '())
       (package "amssymb" '())
     ]]
     [make-section-ref latex-config:make-section-ref]
     [section-macros '("chapter" "section" "subsection" "subsubsection" "paragraph")]
     [section-macro-fallback "subparagraph"]
     [class "ltjsbook"]
     [class-options '("a4paper")])))
