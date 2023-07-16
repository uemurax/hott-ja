#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         morg/eq-reasoning)

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を射とする。次は論理的に同値である。
    @ordered-list[
      @list-item[#:id "0000"]{@${f}は同型である。}
      @list-item[#:id "0001"]{任意の対象@($ ("y" . elem-of . "C"))に対して、関数@($ ((abs "g" ("f" . cat:comp-bin . "g")) . elem-of . ((cat:map . fun-apply . (seq "y" ("x" . _ . "1"))) . fun-type . (cat:map . fun-apply . (seq "y" ("x" . _ . "2"))))))は同値である。}
      @list-item[#:id "0002"]{任意の対象@($ ("y" . elem-of . "C"))に対して、関数@($ ((abs "g" ("g" . cat:comp-bin . "f")) . elem-of . ((cat:map . fun-apply . (seq ("x" . _ . "2") "y")) . fun-type . (cat:map . fun-apply . (seq ("x" . _ . "1") "y")))))は同値である。}
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node "005G" #:anchor "0000"]から@anchor-ref[#:node "005G" #:anchor "0001"]を示す。定義から、関数@($ ((abs "g" ("f" . cat:comp-bin . "g")) . elem-of . ((cat:map . fun-apply . (seq "y" ("x" . _ . "1"))) . fun-type . (cat:map . fun-apply . (seq "y" ("x" . _ . "2"))))))は両側可逆であることが分かる。よって、@ref["004K"]よりこれは同値である。
    }
    @paragraph{
      @anchor-ref[#:node "005G" #:anchor "0001"]から@anchor-ref[#:node "005G" #:anchor "0000"]を示す。@($ ((abs "g" ("f" . cat:comp-bin . "g")) . elem-of . ((cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1"))) . fun-type . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "2"))))))が同値なので、射@($ ("h" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1")))))と同一視@($ ("p" . elem-of . (("f" . cat:comp-bin . "h") . id-type . (cat:id . fun-apply . ("x" . _ . "2")))))を得る。関数@($ ((abs "g" ("f" . cat:comp-bin . "g")) . elem-of . ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "1"))) . fun-type . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))))が同値なので、同一視
      @disp{
        @eq-reasoning[
          @($ (cat:comp-bin "f" "h" "f"))
          @($ id-type/symb) @${p}
          @($ "f")
          @($ id-type/symb) @%{前圏の公理}
          @($ ("f" . cat:comp-bin . (cat:id . fun-apply . ("x" . _ . "1"))))
        ]
      }
      から同一視@($ ("q" . elem-of . (("h" . cat:comp-bin . "f") . id-type . (cat:id . fun-apply . ("x" . _ . "1")))))を得る。よって、@${f}は同型である。
    }
    @paragraph{
      @anchor-ref[#:node "005G" #:anchor "0000"]と@anchor-ref[#:node "005G" #:anchor "0002"]の同値性も同様である。
    }
  ]
]
