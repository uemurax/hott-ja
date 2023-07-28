#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/truncation.rkt"
         "lib/math/n-type.rkt")

(define i "i")
(define j "j")
(define A "A")
(define B "B")
(define n "n")
(define a "a")
(define c "c")
(define f "f")
(define x "x")
(define z "z")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "[nきりつめ]"]{@(math n)切り詰め}
    @notation-index[#:key "||A||n"]{@(math (trunc n A))}
    @notation-index[#:key "|a|n"]{@(math (trunc:in n a))}
    @notation-index[#:key "ind||A||n"]{@(math (trunc:ind n A))}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (n . elem-of . trunc-level))を要素とする。
    @unordered-list[
      @list-item{@dfn{@(math n)切り詰め(@(math n)-truncation)}@(math ((trunc n A) . elem-of . (universe . $ . i)))を構成できる。}
      @list-item{@(math (trunc n A))は@(math n)型である(ことを示す要素を構成できる)。}
      @list-item{要素@(math (a . elem-of . A))に対して、要素@(math ((trunc:in n a) . elem-of . (trunc n A)))を構成できる。}
      @list-item{@(math (c . elem-of . (trunc n A)))を要素、@(math j)を階数、@(math (B . elem-of . ((trunc n A) . fun-type . (universe . $ . j))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . (trunc:in n x)))))を関数とする。@(math (d-fun-type (z . elem-of . (trunc n A)) (is-trunc . $* . n (B . $ . z))))の要素があるなら、要素@(math (((trunc:ind n A) . $* . c B f) . elem-of . (B . $ . c)))を構成できる。}
      @list-item{@(math (a . elem-of . A))を要素、@(math j)を階数、@(math (B . elem-of . ((trunc n A) . fun-type . (universe . $ . j))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . (trunc:in n x)))))を関数とする。@(math (d-fun-type (z . elem-of . (trunc n A)) (is-trunc . $* . n (B . $ . z))))の要素があるなら、@(math (((trunc:ind n A) . $* . a B f) . def-eq . (f . $ . a)))を定義される。}
    ]
  }
]
