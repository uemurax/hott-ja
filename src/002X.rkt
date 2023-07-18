#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt")

(define n "n")
(define m "m")
(define f "f")
(define x "x")
(define y "y")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "げんしさいき"]{原始再帰}
  ]
  @paragraph{
    @(math (n . elem-of . nat))を要素、@(math (f . elem-of . (nat . fun-type . (nat . fun-type . nat))))を関数とする。@dfn{原始再帰(primitive recursion)}による関数@(math ((prim-rec . $* . n f) . elem-of . (nat . fun-type . nat)))が@(math ((prim-rec . $* . n f nat:zero) . def-eq . n))と@(math ((prim-rec . $* . n f (nat:succ . $ . m)) . def-eq . (f . $* . m (prim-rec . $* . n f m))))で定義される。形式的には@(math ((prim-rec . $* . n f) . def-eq . (abs m (nat:ind . $* . m (abs x nat) n (abs* x y (f . $* . x y))))))である。よって、いわゆる@emph{原始再帰的関数}はすべて構成できる。
  }
]
