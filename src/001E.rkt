#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/math/id.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide part:001E)

(define part:001E
  @definition[
    #:id "001E"
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。
      @unordered-list[
        @list-item{関数@($ (id-sym . elem-of . (d-fun-type (implicit (("x" . _ . "1") . elem-of . "A")) (d-fun-type (implicit (("x" . _ . "2") . elem-of . "A")) ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("x" . _ . "2") . id-type . ("x" . _ . "1")))))))を@($ (abs (seq ("x" . _ . "1") ("x" . _ . "2") "z") (id-extension (seq "z" (refl ("x" . _ . "1"))))))と定義する。@($ (id-sym . fun-apply . "p"))を@($ (id-inv "p"))とも書く。}
        @list-item{関数@($ (id-trans . elem-of . (d-fun-type (implicit (("x" . _ . "1") . elem-of . "A")) (d-fun-type (implicit (("x" . _ . "2") . elem-of . "A")) (d-fun-type (implicit (("x" . _ . "3") . elem-of . "A")) ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . ((("x" . _ . "2") . id-type . ("x" . _ . "3")) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "3")))))))))を@($ (abs (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3") "z" "w") (id-extension (seq (id-inv "z") "w"))))と定義する。@($ (id-trans . fun-apply . (seq "p" "q")))を@($ ("q" . id-comp . "p"))とも書く。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001E)))
