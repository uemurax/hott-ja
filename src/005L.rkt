#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。
    @unordered-list[
      @list-item{対象@($ ("x" . elem-of . "C"))に対して、@($ ((("F" . record-field . functor:obj) . fun-apply . "x") . elem-of . "D"))の代わりに単に@($ ("F" . fun-apply . "x"))と書く。}
      @list-item{対象@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))と射@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))に対して、@($ ((("F" . record-field . functor:map) . fun-apply . "f") . elem-of . (cat:map . fun-apply . (seq ("F" . fun-apply . ("x" . _ . "1")) ("F" . fun-apply . ("x" . _ . "2"))))))の代わりに単に@($ ("F" . fun-apply . "f"))と書く。}
    ]
  }
]
