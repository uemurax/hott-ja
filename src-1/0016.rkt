#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/pair.rkt"
         "lib/markup.rkt")

(provide part:0016)

(define part:0016
  @example[
    #:id "0016"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("C" . elem-of . (d-fun-type ("x" . elem-of . "A") (("B" . fun-apply . "x") . fun-type . @universe{i}))))を型の族とする。
      @unordered-list[
        @list-item{関数@($ (@pair-assoc{C} . elem-of . ((d-pair-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("C" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z")))) . fun-type . (d-pair-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y")))))))を@($ (abs "w" (pair (seq ((proj 1) ((proj 1) "w")) (pair (seq ((proj 2) ((proj 1) "w")) ((proj 2) "w")))))))と定義する。}
        @list-item{関数@($ (@pair-assoc-inv{C} . elem-of . ((d-pair-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y")))) . fun-type . (d-pair-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("C" . fun-apply . (seq ((proj 1) "z") ((proj 2) "z")))))))を@($ (abs "w" (pair (seq (pair (seq ((proj 1) "w") ((proj 1) ((proj 2) "w")))) ((proj 2) ((proj 2) "w"))))))と定義する。}
      ]
    }
  ])

  (module+ main
    (require morg/text)
    (display (->text part:0016)))
