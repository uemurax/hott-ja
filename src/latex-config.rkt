#lang at-exp typed/racket

(require morg/latex
         (prefix-in eq: (submod morg/eq-reasoning latex-config)))

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
     [packages @list[
       (package "amsmath" '())
       (package "amssymb" '())
     ]]
     [make-section-ref latex-config:make-section-ref]
     [class "ltjsbook"]
     [class-options '("a4paper")])))
