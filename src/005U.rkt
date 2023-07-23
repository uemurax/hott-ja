#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/connected.rkt"
         "lib/math/truncation.rkt")

(define n "n")
(define i "i")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nれんけつ"]{@(math n)連結}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とする。型@(math ((is-connected . $* . n A) . elem-of . (universe . $ . i)))を@(math (is-contr . $ . (trunc n A)))と定義する。@(math (is-connected . $* . n A))の要素がある時、@(math A)は@dfn{@(math n)連結(@(math n)-connected)}であると言う。
  }
]
