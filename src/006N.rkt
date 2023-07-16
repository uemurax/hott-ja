#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。前圏@($ (@opposite-cat{C} . elem-of . @precat{i}))を次のように定義する。
    @unordered-list[
      @list-item{@($ (cat:obj . def-eq . ("C" . record-field . cat:obj)))}
      @list-item{@($ (cat:map . def-eq . (abs (seq ("x" . _ . "1") ("x" . _ . "2")) (("C" . record-field . cat:map) . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "1"))))))}
      @list-item{@($ (cat:id . def-eq . (abs "x" (("C" . record-field . cat:id) . fun-apply . "x"))))}
      @list-item{@($ (cat:comp . def-eq . (abs (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) (abs (seq ("g" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))) ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))) (("C" . record-field . cat:comp) . fun-apply . (seq "f" "g"))))))}
      @list-item{前圏の公理は@${C}のそれから分かる。}
    ]
  }
]
