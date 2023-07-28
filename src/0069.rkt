#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/nat-trans.rkt")

(define i "i")
(define C "C")
(define D "D")
(define F "F")
(define G "G")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "Fun(Cat)"]{@(math functor-cat)}
  ]
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏とする。前圏@(math ((functor-cat . $* . C D) . elem-of . (precat . $ . i)))を次のように定義する。
    @unordered-list[
      @list-item{@(math (cat:obj . def-eq . (functor . $* . C D)))}
      @list-item{@(math (cat:map . def-eq . (abs* F G (nat-trans . $* . F G))))}
      @list-item{恒等射と合成は@ref["0067"]の通り。}
      @list-item{残りは@ref["0068"]から容易に示せる。}
    ]
  }
]
