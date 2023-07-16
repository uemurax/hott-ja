#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("A" . elem-of . @presheaf{C}))を前層とする。
    @unordered-list[
      @list-item{対象@($ ("x" . elem-of . "C"))に対して、@($ (("A" . record-field . presheaf:carrier) . fun-apply . "x"))の代わりに単に@($ ("A" . fun-apply . "x"))と書く。}
      @list-item{対象@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))と射@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))と要素@($ ("a" . elem-of . ("A" . fun-apply . ("x" . _ . "2"))))に対して、要素@($ (("a" . presheaf:act-bin . "f") . elem-of . ("A" . fun-apply . ("x" . _ . "1"))))を@($ (("A" . record-field . presheaf:act) . fun-apply . (seq "a" "f")))と定義する。}
    ]
  }
]
