#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏とする。前圏@($ ((functor-cat (seq "C" "D")) . elem-of . @precat{i}))を次のように定義する。
    @unordered-list[
      @list-item{@($ (cat:obj . def-eq . (functor (seq "C" "D"))))}
      @list-item{@($ (cat:map . def-eq . (abs (seq "F" "G") (nat-trans (seq "F" "G")))))}
      @list-item{恒等射と合成は@ref["0067"]の通り。}
      @list-item{残りは@ref["0068"]から容易に示せる。}
    ]
  }
]
