#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/bifunctor.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。@($ (@cat:map/fun{C} . elem-of . (bifunctor @opposite-cat{C} "C" @set-cat{i})))を次のように定義する。
    @unordered-list[
      @list-item{@($ (bifunctor:obj . def-eq . (abs (seq ("x" . _ . "1") ("x" . _ . "2")) (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))))}
      @list-item{@($ (bifunctor:map-1 . def-eq . (abs (seq ("x" . _ . "11") ("x" . _ . "12") "f" ("x" . _ . "2")) (abs "h" ("h" . cat:comp-bin . "f")))))}
      @list-item{@($ (bifunctor:map-2 . def-eq . (abs (seq ("x" . _ . "1") ("x" . _ . "21") ("x" . _ . "22") "f") (abs "h" ("f" . cat:comp-bin . "h")))))}
    ]
  }
]
