#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(define n "n")
(define i "i")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nかた"]{@(math n)型}
    @notation-index[#:key "IsTrunc"]{@(math is-trunc)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。@(math (n . elem-of . trunc-level))に対して、型@(math ((is-trunc . $* . n A) . elem-of . (universe . $ . i)))を次のように定義する。
    @unordered-list[
      @list-item{@(math ((is-trunc . $* . trunc-level:-2 A) . def-eq . (is-contr . $ . A)))}
      @list-item{@(math ((is-trunc . $* . (trunc-level:succ . $ . n) A) . def-eq . (d-fun-type (x1 x2 . elem-of* . A) (is-trunc . $* . n (x1 . id-type . x2)))))}
    ]
    @(math (is-trunc . $* . n A))の要素がある時、@(math A)は@dfn{@(math n)型(@(math n)-type)}である、または@(math n)-truncatedであると言う。
  }
]
