#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "よねだうめこみ"]{米田埋め込み}
    @notation-index[#:key "よ"]{@(math yoneda)}
  ]
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。@dfn{米田埋め込み(Yoneda embedding)}@(math ((yoneda . $ . C) . elem-of . (functor . $* . C (presheaf-cat . $ . C))))を@ref["006R"]と@ref["006M"]で@(math (cat:map/fun . $ . C))に対応するものと定義する。
  }
]
