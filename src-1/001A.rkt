#lang at-exp typed/racket

(require morg/markup
         "lib/math.rkt"
         "lib/article.rkt")

(provide part:001A)

(define part:001A
  @example[
    #:id "001A"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("C" . elem-of . (d-fun-type ("x" . elem-of . "A") (("B" . fun-apply . "x") . fun-type . @universe{i}))))を型の族とする。
      @unordered-list[
        @list-item{関数@($ (@fun-pair-dist{C} . elem-of . ((d-fun-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y")))) . fun-type . (d-pair-type ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (d-fun-type ("x" . elem-of . "A") ("C" . fun-apply . (seq "x" ("f" . fun-apply . "x"))))))))を@($ (abs "h" (pair (seq (abs "x" ((proj 1) ("h" . fun-apply . "x"))) (abs "x" ((proj 2) ("h" . fun-apply . "x")))))))と定義する。}
        @list-item{関数@($ (@fun-pair-dist-inv{C} . elem-of . ((d-pair-type ("f" . elem-of . (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) (d-fun-type ("x" . elem-of . "A") ("C" . fun-apply . (seq "x" ("f" . fun-apply . "x"))))) . fun-type . (d-fun-type ("x" . elem-of . "A") (d-pair-type ("y" . elem-of . ("B" . fun-apply . "x")) ("C" . fun-apply . (seq "x" "y")))))))を@($ (abs "k" (abs "x" (pair (seq ((proj 1) ("k" . fun-apply . "x")) ((proj 2) ("k" . fun-apply . "x")))))))と定義する。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001A)))
