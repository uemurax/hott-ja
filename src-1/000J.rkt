#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:000J)

(define part:000J
  @notation[
    #:id "000J"
    @paragraph{
      @unordered-list[
        @list-item{@($ fun-type/symb)は右結合の演算子である。例えば、@($ ("A" . fun-type . ("B" . fun-type . "C")))は@($ ("A" . fun-type . (paren ("B" . fun-type . "C"))))と読む。}
        @list-item{@($ (abs ("x" . _ . "1") dots (abs ("x" . _ . "n") "b")))は@($ (abs (seq ("x" . _ . "1") dots ("x" . _ . "n")) "b"))と略記することがある。}
        @list-item{@($ (fun-apply (% (fun-apply "f" ("a" . _ . "1")) dots) ("a" . _ . "n")))は@($ (fun-apply "f" (seq ("a" . _ . "1") dots ("a" . _ . "n"))))と略記することがある。}
        @list-item{@${@d-fun-type[("x" . elem-of . "A")]{}}の結合は弱い。例えば、@($ (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . "B") ("C" . fun-type . "D"))))は@($ (d-fun-type ("x" . elem-of . "A") (paren (d-fun-type ("y" . elem-of . "B") (paren ("C" . fun-type . "D"))))))と読む。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000J)))
