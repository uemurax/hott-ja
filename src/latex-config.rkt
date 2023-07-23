#lang at-exp typed/racket

(require morg/latex
         (prefix-in eq: morg/eq-reasoning/latex))

(define (latex-config:make-section-ref [depth : Natural] [num : String])
  (define x : String
    (if (depth . <= . 1)
        "章"
        "節"))
  @text-tex{@|num|@|x|})

(provide-config
  (define cfg book-config)
  (eq:config-update
   (struct-copy config cfg
     [make-section-ref latex-config:make-section-ref]
     [packages @list[
       (package "amsmath" '())
     ]]
     [class "ltjsbook"]
     [class-options '("a4paper")])))
