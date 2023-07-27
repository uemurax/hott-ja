#lang morg

(require "lib/markup/rule.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt"
         "lib/math/level.rkt")

(define n "n")
(define i "i")
(define A "A")
(define a "a")
(define f "f")
(define x "x")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "しぜんすうがた"]{自然数型}
    @index[#:key "しぜんすう"]{自然数}
    @notation-index[#:key "N"]{@(math nat)}
    @notation-index[#:key "0"]{@(math nat:zero) (自然数)}
    @notation-index[#:key "succ"]{@(math nat:succ) (自然数)}
    @notation-index[#:key "indN"]{@(math nat:ind)}
  ]
  @paragraph{
    @unordered-list[
      @list-item{@dfn{自然数型(type of natural numbers)}@(math (nat . elem-of . (universe . $ . level:zero)))を構成できる。@(math nat)の要素を@dfn{自然数(natural number)}と呼ぶ。}
      @list-item{要素@(math (nat:zero . elem-of . nat))を構成できる。}
      @list-item{要素@(math (n . elem-of . nat))に対して、要素@(math ((nat:succ . $ . n) . elem-of . nat))を構成できる。}
      @list-item{@(math (n . elem-of . nat))を要素、@(math i)を階数、@(math (A . elem-of . (nat . fun-type . (universe . $ . i))))を型の族、@(math (a . elem-of . (A . $ . nat:zero)))を要素、@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . nat)) ((A . $ . x) . fun-type . (A . $ . (nat:succ . $ . x))))))を関数とすると、要素@(math ((nat:ind . $* . n A a f) . elem-of . (A . $ . n)))を構成できる。}
      @list-item{@(math i)を階数、@(math (A . elem-of . (nat . fun-type . (universe . $ . i))))を型の族、@(math (a . elem-of . (A . $ . nat:zero)))を要素、@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . nat)) ((A . $ . x) . fun-type . (A . $ . (nat:succ . $ . x))))))を関数とすると、@(math ((nat:ind . $* . nat:zero A a f) . def-eq . a))と定義される。}
      @list-item{@(math (n . elem-of . nat))を要素、@(math i)を階数、@(math (A . elem-of . (nat . fun-type . (universe . $ . i))))を型の族、@(math (a . elem-of . (A . $ . nat:zero)))を要素、@(math (f . elem-of . (d-fun-type (implicit (x . elem-of . nat)) ((A . $ . x) . fun-type . (A . $ . (nat:succ . $ . x))))))を関数とすると、@(math ((nat:ind . $* . (nat:succ . $ . n) A a f) . def-eq . (f . $ . (nat:ind . $* . n A a f))))と定義される。}
    ]
  }
]
