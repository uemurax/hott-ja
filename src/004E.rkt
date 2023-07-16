#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/proposition.rkt")

@lemma[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("E" . elem-of . ("A" . fun-type . ("A" . fun-type . @universe{i}))))を型の族、@($ ("r" . elem-of . (d-fun-type ("x" . elem-of . "A") ("E" . fun-apply . (seq "x" "x")))))と@($ ("f" . elem-of . (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "2")))))))を関数とする。@($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("x" . _ . "2") . elem-of . "A") (is-prop ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))の要素がある時、同値@($ (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . equiv . ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))))を構成でき、特に@${A}は集合である。
  }
  #:proof @proof[
    @paragraph{
      @${r}から同一視型の帰納法より関数@($ ("g" . elem-of . (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))))を得る。@($ ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))が命題であるという仮定から、@${f}と@${g}はレトラクト@($ (("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . retract-rel . (("x" . _ . "1") . id-type . ("x" . _ . "2"))))を定める。よって、@ref["001S"]より同値@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . equiv . ("E" . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を得る。
    }
  ]
]
