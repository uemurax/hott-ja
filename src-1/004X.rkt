#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("n" . elem-of . trunc-level))を要素とする。@${A}が@${n}型で、任意の@($ ("x" . elem-of . "A"))に対して@($ ("B" . fun-apply . "x"))が@${n}型ならば、@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))も@${n}型である。
    }
    #:proof @proof[
      @paragraph{
        @${n}についての帰納法による。@${n}が@($ trunc-level:-2)の場合は容易である。
      }
      @paragraph{
        @${n}の場合に主張が成り立つと仮定し、@${@trunc-level:succ{n}}の場合を示す。@($ (("c" . _ . "1") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ (("c" . _ . "2") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))に対し、@($ (("c" . _ . "1") . id-type . ("c" . _ . "2")))が@${n}型であることを示す。@ref["002B"]より、同値
        @disp{
          @($ ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . equiv . (d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))) ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) ("c" . _ . "2"))))))
        }
        を得る。仮定より、@($ (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2"))))と各@($ ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) ("c" . _ . "2"))))は@${n}型である。よって、帰納法の仮定を適用すればよい。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
