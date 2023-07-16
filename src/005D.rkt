#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。@${x}が@${C}の対象であることを@($ ("x" . elem-of . ("C" . record-field . cat:obj)))の代わりに単に@($ ("x" . elem-of . "C"))と書く。対象@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))に対して、@($ (("C" . record-field . cat:map) . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))の代わりに単に@($ (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))と書く。@($ (("x" . _ . "1") . elem-of . "C"))と書いた時点で@${C}の前圏の構造が暗黙に了解されるのでこの表記で曖昧性はない。同様に、対象@($ ("x" . elem-of . "C"))に対して、@($ ("C" . record-field . (cat:id . fun-apply . "x")))の代わりに単に@($ (cat:id . fun-apply . "x"))と書く。合成@($ (cat:comp . fun-apply . (seq ("f" . _ . "2") ("f" . _ . "1"))))は二項演算子を使って@($ (("f" . _ . "2") . cat:comp-bin . ("f" . _ . "1")))と書く。
  }
]
