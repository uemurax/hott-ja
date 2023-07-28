#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/level.rkt")

(define i "i")
(define C "C")
(define A "A")
(define B "B")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "Psh(Cat)"]{@(math presheaf-cat)}
  ]
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。前圏@(math ((presheaf-cat . $ . C) . elem-of . (universe . $ . (level:succ . $ . i))))を次のように定義する。
    @unordered-list[
      @list-item{@(math (cat:obj . def-eq . (presheaf . $ . C)))}
      @list-item{@(math (cat:map . def-eq . (abs* A B (presheaf-hom . $* . A B))))}
      @list-item{恒等射と合成は@ref["006L"]の通りである。}
      @list-item{前圏の公理は関数外延性から分かる。}
    ]
  }
]
