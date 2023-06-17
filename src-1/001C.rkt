#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001C)

(define part:001C
  @definition[
    #:id "001C"
    #:indexes @list[
      @index[#:key "ゆそうかんすう"]{輸送関数}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@${j}を階数、@($ ("B" . elem-of . ("A" . fun-type . @universe{j})))を型の族とする。@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))と@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を要素とする。@dfn{輸送関数(transport function)}@disp{
        @($ ((transport (seq "B" "p")) . elem-of . (("B" . fun-apply . ("a" . _ . "1")) . fun-type . ("B" . fun-apply . ("a" . _ . "2")))))
      }を@($ (id-ind (seq "p" (abs (seq "x" "z") ("B" . fun-apply . "x")))))と定義する。@($ ((transport (seq "B" (refl ("a" . _ . "1")))) . def-eq . (id-fun ("B" . fun-apply . ("a" . _ . "1")))))であることが確かめられる。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001C)))
