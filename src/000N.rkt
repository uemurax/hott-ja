#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt")

(provide part:000N)

(define part:000N
  @notation[
    #:id "000N"
    @paragraph{
      @unordered-list[
        @list-item{@($ pair-type/symb)は右結合の演算子である。例えば、@($ (pair-type "A" "B" "C"))は@($ ("A" . pair-type . (paren ("B" . pair-type . "C"))))と読む。}
        @list-item{@($ (d-pair-type ("x" . elem-of . "A")))の結合は弱い。例えば、@($ (d-pair-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . "B") ("C" . pair-type . "D"))))は@($ (d-pair-type ("x" . elem-of . "A") (paren (d-pair-type ("y" . elem-of . "B") (paren ("C" . pair-type . "D"))))))と読む。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000N)))
