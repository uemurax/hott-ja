#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt")

(provide-part (id)
  @exercise[
    #:id id
    #:indexes @list[
      @index[#:key "こうとうしぜんへんかん"]{恒等自然変換}
      @index[#:key "ごうせいしぜんへんかん"]{合成自然変換}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。
      @ordered-list[
        @list-item{関手@($ ("F" . elem-of . (functor (seq "C" "D"))))に対して、@dfn{恒等自然変換}@($ (@id-nat-trans{F} . elem-of . (nat-trans (seq "F" "F"))))を@($ (abs "x" (cat:id . fun-apply . ("F" . fun-apply . "x"))))と定義する。@${@id-nat-trans{F}}の自然性を確認せよ。}
        @list-item{関手@($ (("F" . _ . "1") . elem-of . (functor (seq "C" "D"))))と@($ (("F" . _ . "2") . elem-of . (functor (seq "C" "D"))))と@($ (("F" . _ . "3") . elem-of . (functor (seq "C" "D"))))と自然変換@($ (("t" . _ . "1") . elem-of . (nat-trans (seq ("F" . _ . "1") ("F" . _ . "2")))))と@($ (("t" . _ . "2") . elem-of . (nat-trans (seq ("F" . _ . "2") ("F" . _ . "3")))))に対して、@dfn{合成}@($ ((("t" . _ . "2") . nat-trans-comp . ("t" . _ . "1")) . elem-of . (nat-trans (seq ("F" . _ . "1") ("F" . _ . "3")))))を@($ (abs "x" ((("t" . _ . "2") . fun-apply . "x") . cat:comp-bin . (("t" . _ . "1") . fun-apply . "x"))))と定義する。@($ (("t" . _ . "2") . nat-trans-comp . ("t" . _ . "1")))の自然性を確認せよ。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
