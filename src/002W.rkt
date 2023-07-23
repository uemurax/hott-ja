#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt")

(define n "n")
(define n1 (n . _ . "1"))
(define n2 (n . _ . "2"))
(define x "x")
(define y "y")

@example[
  #:id (current-id)
  @paragraph{
    @(math (n1 n2 . elem-of* . nat))を要素とする。要素@(math ((nat:plus . $* . n1 n2) . elem-of . nat))を構成する。自然数の帰納法を使い、@(math ((nat:plus . $* . nat:zero n2) . def-eq . n2))と@(math ((nat:plus . $* . (nat:succ . $ . n1) n2) . def-eq . (nat:succ . $ . (nat:plus . $* . n1 n2))))と定義する。形式的には@(math ((nat:plus . $* . n1 n2) . def-eq . (nat:ind . $* . n1 (abs x nat) n2 (abs* x y (nat:succ . $ . y)))))と定義できる。
  }
]
