#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide part:0026)

(define part:0026
  @lemma[
    #:id "0026"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とすると、関数@($ (@id-fun{A} . elem-of . ("A" . fun-type . "A")))は同値である。
    }
    #:proof @proof[
      @paragraph{
        @($ ("a" . elem-of . "A"))を要素とする。@($ (fiber (seq @id-fun{A} "a")))の定義から、@($ (d-pair-type ("x" . elem-of . "A") ("x" . id-type . "a")))が可縮であることを示せばよい。@ref["0027"]より@($ ("x" . id-type . "a"))は@($ ("a" . id-type . "x"))のレトラクトなので、@ref["001S"]より@($ (d-pair-type ("x" . elem-of . "A") ("x" . id-type . "a")))は可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:0026)))
