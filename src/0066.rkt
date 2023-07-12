#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         "lib/math/proposition.rkt"
         "lib/math/logic.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "しぜんへんかん"]{自然変換}
      @index[#:key "しぜんせい"]{自然性}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))と@($ ("G" . elem-of . (functor (seq "C" "D"))))を関手とする。型@($ ((nat-trans (seq "F" "G")) . elem-of . @universe{i}))を
      @disp{
        @($ (prop-compr ("t" . elem-of . (d-fun-type ("x" . elem-of . "C") (cat:map . fun-apply . (seq ("F" . fun-apply . "x") ("G" . fun-apply . "x"))))) (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (forall ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) ((("G" . fun-apply . "f") . cat:comp-bin . ("t" . fun-apply . ("x" . _ . "1"))) . id-type . (("t" . fun-apply . ("x" . _ . "2")) . cat:comp-bin . ("F" . fun-apply . "f")))))))
      }
      と定義する。@($ (nat-trans (seq "F" "G")))の要素を@${F}から@${G}への@dfn{自然変換(natural transformation)}と呼ぶ。自然変換@($ ("t" . elem-of . (nat-trans (seq "F" "G"))))が満たすべき性質(@($ (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (forall ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) ((("G" . fun-apply . "f") . cat:comp-bin . ("t" . fun-apply . ("x" . _ . "1"))) . id-type . (("t" . fun-apply . ("x" . _ . "2")) . cat:comp-bin . ("F" . fun-apply . "f")))))))を@${t}の@dfn{自然性(naturality)}と言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
