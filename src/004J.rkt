#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "りょうがわかぎゃく"]{両側可逆}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。
    @unordered-list[
      @list-item{型@(math ((linv . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list linv:inv (B . fun-type . A)) (list linv:id ((linv:inv . fun-comp . f) . homotopy . id-fun))))と定義する。}
      @list-item{型@(math ((rinv . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list rinv:inv (B . fun-type . A)) (list rinv:id ((f . fun-comp . rinv:inv) . homotopy . id-fun))))と定義する。}
      @list-item{型@(math ((is-biinv . $ . f) . elem-of . (universe . $ . i)))を@(math (record-type (list is-biinv:linv (linv . $ . f)) (list is-biinv:rinv (rinv . $ . f))))と定義する。}
    ]
    @(math (is-biinv . $ . f))の要素がある時、@(math f)は@dfn{両側可逆(biinvertible)}であると言う。
  }
]
