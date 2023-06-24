#lang at-exp typed/racket

(require (prefix-in latex: morg/latex/config)
         (prefix-in latex:eq: (submod morg/eq-reasoning latex-config))
         (prefix-in html: morg/html/config)
         (prefix-in html:eq: (submod morg/eq-reasoning html-config))
         morg/markup
         morg/html/class/inline
         morg/markup/tex)

(provide latex-config
         html-config)

(define (latex-config:make-section-ref [depth : Natural] [num : String])
  (define x : String
    (if (depth . <= . 1)
        "章"
        "節"))
  @text-tex%{@|num|@|x|})

(define latex-config
  (latex:eq:config-update
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
     [class-options '("a4paper")])))

(define custom-css-name "custom.css")

(define custom-css
  @%{
    .@|emph-class-name|, .@|dfn-class-name| {
      font-style: normal;
      font-weight: bold;
    }
  })

(define html-config
  (let ([cfg html:default-config])
    (html:eq:config-update
     (html:config-add-css cfg custom-css-name custom-css))))
