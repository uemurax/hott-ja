#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/qinv.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "QInv"]{@(math qinv)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。型@(math ((qinv . $ . f) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (qinv:inv . elem-of . (B . fun-type . A)))}
      @list-item{@(math (qinv:unit . elem-of . ((qinv:inv . fun-comp . f) . homotopy . id-fun)))}
      @list-item{@(math (qinv:counit . elem-of . ((f . fun-comp . qinv:inv) . homotopy . id-fun)))}
    ]
  }
]
