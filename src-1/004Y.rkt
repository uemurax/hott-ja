#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/ring.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @example[
    #:id id
    #:indexes @list[
      @index[#:key "かん"]{環}
      @index[#:key "かんどうけい"]{環同型}
    ]
    @paragraph{
      @${i}を階数とする。型@($ (@ring-str{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (ring:carrier . elem-of . @universe{i}))}
        @list-item{@($ (ring:zero . elem-of . ring:carrier))}
        @list-item{@($ (ring:plus . elem-of . (ring:carrier . fun-type . (ring:carrier . fun-type . ring:carrier))))}
        @list-item{@($ (ring:minus . elem-of . (ring:carrier . fun-type . ring:carrier)))}
        @list-item{@($ (ring:one . elem-of . ring:carrier))}
        @list-item{@($ (ring:mul . elem-of . (ring:carrier . fun-type . (ring:carrier . fun-type . ring:carrier))))}
      ]
      要素@($ ("R" . elem-of . @ring-str{i}))に対して、型@($ (@ring-axiom{R} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (blank . elem-of . (is-set ("R" . record-field . ring:carrier))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("R" . record-field . ring:carrier)) ((("R" . record-field . ring:plus) . fun-apply . (seq ("R" . record-field . ring:zero) "x")) . id-type . "x"))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) ((("R" . record-field . ring:plus) . fun-apply . (seq (("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) ("x" . _ . "3"))) . id-type . (("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "1") (("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) ((("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . id-type . (("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1")))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type "x" ((("R" . record-field . ring:plus) . fun-apply . (seq "x" (("R" . record-field . ring:minus) . fun-apply . "x"))) . id-type . ("R" . record-field . ring:zero)))))}
        @list-item{@($ (blank . elem-of . (d-fun-type "x" ((("R" . record-field . ring:mul) . fun-apply . (seq ("R" . record-field . ring:one) "x")) . id-type . "x"))))}
        @list-item{@($ (blank . elem-of . (d-fun-type "x" ((("R" . record-field . ring:mul) . fun-apply . (seq "x" ("R" . record-field . ring:one))) . id-type . "x"))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) ((("R" . record-field . ring:mul) . fun-apply . (seq (("R" . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) ("x" . _ . "3"))) . id-type . (("R" . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "1") (("R" . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq "x" ("y" . _ . "1") ("y" . _ . "2")) ((("R" . record-field . ring:mul) . fun-apply . (seq "x" (("R" . record-field . ring:plus) . fun-apply . (seq ("y" . _ . "1") ("y" . _ . "2"))))) . id-type . (("R" . record-field . ring:plus) . fun-apply . (seq (("R" . record-field . ring:mul) . fun-apply . (seq "x" ("y" . _ . "1"))) (("R" . record-field . ring:mul) . fun-apply . (seq "x" ("y" . _ . "2")))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") "y") ((("R" . record-field . ring:mul) . fun-apply . (seq (("R" . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) "y")) . id-type . (("R" . record-field . ring:plus) . fun-apply . (seq (("R" . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "1") "y")) (("R" . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "2") "y"))))))))}
      ]
      型@($ (@ring{i} . elem-of . @universe{@level:succ{i}}))を@($ (d-pair-type ("X" . elem-of . @ring-str{i}) @ring-axiom{X}))と定義する。@${@ring{i}}の要素を(階数@${i}の)@dfn{環(ring)}と呼ぶ。環@($ ("A" . elem-of . @ring{i}))と@($ ("B" . elem-of . @ring{i}))に対して、同一視型@($ ("A" . id-type . "B"))は次のレコード型と同値であることが分かる。
      @unordered-list[
        @list-item{@($ ("f" . elem-of . ((((proj 1) "A") . record-field . ring:carrier) . equiv . (((proj 1) "B") . record-field . ring:carrier))))}
        @list-item{@($ (blank . elem-of . (("f" . fun-apply . (((proj 1) "A") . record-field . ring:zero)) . id-type . (((proj 1) "B") . record-field . ring:zero))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("f" . fun-apply . ((((proj 1) "A") . record-field . ring:plus) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . ((((proj 1) "B") . record-field . ring:plus) . fun-apply . (seq ("f" . fun-apply . ("x" . _ . "1")) ("f" . fun-apply . ("x" . _ . "2"))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type "x" (("f" . fun-apply . ((((proj 1) "A") . record-field . ring:minus) . fun-apply . "x")) . id-type . ((((proj 1) "B") . record-field . ring:minus) . fun-apply . ("f" . fun-apply . "x"))))))}
        @list-item{@($ (blank . elem-of . (("f" . fun-apply . (((proj 1) "A") . record-field . ring:one)) . id-type . (((proj 1) "B") . record-field . ring:one))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("f" . fun-apply . ((((proj 1) "A") . record-field . ring:mul) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . ((((proj 1) "B") . record-field . ring:mul) . fun-apply . (seq ("f" . fun-apply . ("x" . _ . "1")) ("f" . fun-apply . ("x" . _ . "2"))))))))}
      ]
      この型の要素はいわゆる@dfn{環同型(ring isomorphism)}である。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
