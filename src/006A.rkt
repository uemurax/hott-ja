#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt"
         morg/eq-reasoning)

@proposition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))と@($ ("G" . elem-of . (functor (seq "C" "D"))))を関手、@($ ("t" . elem-of . (nat-trans (seq "F" "G"))))を自然変換とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{任意の@($ ("x" . elem-of . "C"))に対して、@($ (("t" . fun-apply . "x") . elem-of . (cat:map . fun-apply . (seq ("F" . fun-apply . "x") ("G" . fun-apply . "x")))))は同型である。}
      @list-item[#:id "0001"]{@${t}は前圏@($ (functor-cat (seq "C" "D")))の射として同型である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node "006A" #:anchor "0001"]から@anchor-ref[#:node "006A" #:anchor "0000"]は自明である。
    }
    @paragraph{
      @anchor-ref[#:node "006A" #:anchor "0000"]から@anchor-ref[#:node "006A" #:anchor "0001"]を示す。各@($ ("x" . elem-of . "C"))に対して、射@($ (("s" . fun-apply . "x") . elem-of . (cat:map . fun-apply . (seq ("G" . fun-apply . "x") ("F" . fun-apply . "x")))))と@($ (("u" . fun-apply . "x") . elem-of . (cat:map . fun-apply . (seq ("G" . fun-apply . "x") ("F" . fun-apply . "x")))))と同一視@($ (("p" . fun-apply . "x") . elem-of . ((("s" . fun-apply . "x") . cat:comp-bin . ("t" . fun-apply . "x")) . id-type . (cat:id . fun-apply . ("F" . fun-apply . "x")))))と@($ (("q" . fun-apply . "x") . elem-of . ((("t" . fun-apply . "x") . cat:comp-bin . ("u" . fun-apply . "x")) . id-type . (cat:id . fun-apply . ("G" . fun-apply . "x")))))を得る。@ref["0068"]より、@${s}と@${u}の自然性を確認すれば十分である。@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を射とする。@($ ((("F" . fun-apply . "f") . cat:comp-bin . ("s" . fun-apply . ("x" . _ . "1"))) . id-type . (("s" . fun-apply . ("x" . _ . "2")) . cat:comp-bin . ("G" . fun-apply . "f"))))を言うには、@ref["005G"]より@($ ((cat:comp-bin ("F" . fun-apply . "f") ("s" . fun-apply . ("x" . _ . "1")) ("t" . fun-apply . ("x" . _ . "1"))) . id-type . (cat:comp-bin ("s" . fun-apply . ("x" . _ . "2")) ("G" . fun-apply . "f") ("t" . fun-apply . ("x" . _ . "1")))))を示せば十分で、これは次のように分かる。
      @disp{
        @eq-reasoning[
          @($ (cat:comp-bin ("F" . fun-apply . "f") ("s" . fun-apply . ("x" . _ . "1")) ("t" . fun-apply . ("x" . _ . "1"))))
          @($ id-type/symb) @%{@($ ("p" . fun-apply . ("x" . _ . "1")))}
          @($ ("F" . fun-apply . "f"))
          @($ id-type/symb) @%{@($ (id-inv ("p" . fun-apply . ("x" . _ . "2"))))}
          @($ (cat:comp-bin ("s" . fun-apply . ("x" . _ . "2")) ("t" . fun-apply . ("x" . _ . "2")) ("F" . fun-apply . "f")))
          @($ id-type/symb) @%{@${t}の自然性}
          @($ (cat:comp-bin ("s" . fun-apply . ("x" . _ . "2")) ("G" . fun-apply . "f") ("t" . fun-apply . ("x" . _ . "1"))))
        ]
      }
      @${u}の自然性も同様である。
    }
  ]
]
