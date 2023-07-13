#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ (("c" . _ . "1") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と@($ (("c" . _ . "2") . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))を要素とすると、@disp{
        @($ (retract (seq (d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))) ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) ("c" . _ . "2")))) (("c" . _ . "1") . id-type . ("c" . _ . "2")))))
      }の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        関数@($ ("f" . elem-of . ((d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))) ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) ("c" . _ . "2")))) . fun-type . (("c" . _ . "1") . id-type . ("c" . _ . "2")))))と@($ ("g" . elem-of . ((("c" . _ . "1") . id-type . ("c" . _ . "2")) . fun-type . (d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) ("c" . _ . "2")))) ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) ("c" . _ . "2")))))))と同一視@($ ("p" . elem-of . (d-fun-type "w" (("g" . fun-apply . ("f" . fun-apply . "w")) . id-type . "w"))))を構成する。@${f}についてはカリー化、一般化して@disp{
          @($ ("f'" . elem-of . (d-fun-type (implicit ("x" . elem-of . "A")) (d-fun-type (implicit ("y" . elem-of . ("B" . fun-apply . "x"))) (d-fun-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . "x")) (((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . "y") . fun-type . (("c" . _ . "1") . id-type . (pair (seq "x" "y")))))))))
        }を構成すればよいが、同一視型の帰納法により@($ (("f'" . fun-apply . (seq (refl ((proj 1) ("c" . _ . "1"))) (refl ((proj 2) ("c" . _ . "1"))))) . def-eq . (refl ("c" . _ . "1"))))と定義できる。@${g}は一般化して@disp{
          @($ ("g'" . elem-of . (d-fun-type (implicit ("x" . elem-of .(d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))) ((("c" . _ . "1") . id-type . "x") . fun-type . (d-pair-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . ((proj 1) "x"))) ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . ((proj 2) "x")))))))
        }を帰納法で@($ (("g'" . fun-apply . (refl ("c" . _ . "1"))) . def-eq . (pair (seq (refl ((proj 1) ("c" . _ . "1"))) (refl ((proj 2) ("c" . _ . "2")))))))と定義する。@${p}も@${f}と同様にカリー化、一般化して@disp{
          @($ ("p'" . elem-of . (d-fun-type (implicit "x") (d-fun-type (implicit "y") (d-fun-type ("z" . elem-of . (((proj 1) ("c" . _ . "1")) . id-type . "x")) (d-fun-type ("w" . elem-of . ((transport (seq "B" "z" ((proj 2) ("c" . _ . "1")))) . id-type . "y")) (("g'" . fun-apply . ("f'" . fun-apply . (seq "z" "w"))) . id-type . (pair (seq "z" "w")))))))))
        }を帰納法により@($ (("p'" . fun-apply . (seq (refl ((proj 1) ("c" . _ . "1"))) (refl ((proj 2) ("c" . _ . "2"))))) . def-eq . (refl blank)))と定義する。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
