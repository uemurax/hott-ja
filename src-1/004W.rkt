#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/group.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @example[
    #:id id
    #:indexes @list[
      @index[#:key "ぐん"]{群}
      @index[#:key "ぐんどうけい"]{群同型}
    ]
    @paragraph{
      @${i}を階数とする。型@($ (@group-str{i} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (group:carrier . elem-of . @universe{i}))}
        @list-item{@($ (group:unit . elem-of . group:carrier))}
        @list-item{@($ (group:mul . elem-of . (group:carrier . fun-type . (group:carrier . fun-type . group:carrier))))}
        @list-item{@($ (group:inv . elem-of . (group:carrier . fun-type . group:carrier)))}
      ]
      要素@($ ("G" . elem-of . @group-str{i}))に対して、型@($ (@group-axiom{G} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (blank . elem-of . (is-set ("G" . record-field . group:carrier))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("G" . record-field . group:carrier)) (("G" . record-field . (group:mul . fun-apply . (seq ("G" . record-field . group:unit) "x"))) . id-type . "x"))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("G" . record-field . group:carrier)) ((("G" . record-field . group:mul) . fun-apply . (seq "x" ("G" . record-field . group:unit))) . id-type . "x"))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) ((("G" . record-field . group:mul) . fun-apply . (seq (("G" . record-field . group:mul) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) ("x" . _ . "3"))) . id-type . (("G" . record-field . group:mul) . fun-apply . (seq ("x" . _ . "1") (("G" . record-field . group:mul) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("G" . record-field . group:carrier)) ((("G" . record-field . group:mul) . fun-apply . (seq (("G" . record-field . group:inv) . fun-apply . "x") "x")) . id-type . ("G" . record-field . group:unit)))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . ("G" . record-field . group:carrier)) ((("G" . record-field . group:mul) . fun-apply . (seq "x" (("G" . record-field . group:inv) . fun-apply . "x"))) . id-type . ("G" . record-field . group:unit)))))}
      ]
      型@($ (@group{i} . elem-of . @universe{@level:succ{i}}))を@($ (d-pair-type ("X" . elem-of . @group-str{i}) @group-axiom{X}))と定義する。@${@group{i}}の要素を(階数@${i}の)@dfn{群(group)}と呼ぶ。群@($ ("A" . elem-of . @group{i}))と@($ ("B" . elem-of . @group{i}))に対して、同一視型@($ ("A" . id-type . "B"))を計算しよう。@ref["004X"]と@ref["0048"]より@${@group-axiom{X}}は命題であることが分かるので、@ref["0049"]より同値@($ (("A" . id-type . "B") . equiv . (((proj 1) "A") . id-type . ((proj 1) "B"))))を得る。@ref["0028"]と同様に、@($ (((proj 1) "A") . id-type . ((proj 1) "B")))は次のレコード型と同値であることが分かる。
      @unordered-list[
        @list-item{@($ ("f" . elem-of . ((((proj 1) "A") . record-field . group:carrier) . equiv . (((proj 1) "B") . record-field . group:carrier))))}
        @list-item{@($ (blank . elem-of . (("f" . fun-apply . (((proj 1) "A") . record-field . group:unit)) . id-type . (((proj 1) "B") . record-field . group:unit))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("f" . fun-apply . ((((proj 1) "A") . record-field . group:mul) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . ((((proj 1) "B") . record-field . group:mul) . fun-apply . (seq ("f" . fun-apply . ("x" . _ . "1")) ("f" . fun-apply . ("x" . _ . "2"))))))))}
        @list-item{@($ (blank . elem-of . (d-fun-type ("x" . elem-of . (((proj 1) "A") . record-field . group:carrier)) (("f" . fun-apply . ((((proj 1) "A") . record-field . group:inv) . fun-apply . "x")) . id-type . ((((proj 1) "B") . record-field . group:inv) . fun-apply . ("f" . fun-apply . "x"))))))}
      ]
      この型の要素はいわゆる@dfn{群同型(group isomorphism)}である。@${@group-axiom{G}}の定義で@($ (is-set ("G" . record-field . group:carrier)))を落とすと、@${@group{i}}の同一視の特徴付けは演算だけでなく残りの構造も保つ同値というものになってしまう。
    }
    @paragraph{
      ちなみに、群の間の乗法を保つ関数は単位元と逆元も保つことを示せるので、群同型の型は次のレコード型とも同値である。
      @unordered-list[
        @list-item{@($ ("f" . elem-of . ((((proj 1) "A") . record-field . group:carrier) . equiv . (((proj 1) "B") . record-field . group:carrier))))}
        @list-item{@($ (blank . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (("f" . fun-apply . ((((proj 1) "A") . record-field . group:mul) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) . id-type . ((((proj 1) "B") . record-field . group:mul) . fun-apply . (seq ("f" . fun-apply . ("x" . _ ."1")) ("f" . fun-apply . ("x" . _ . "2"))))))))}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
