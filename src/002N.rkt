#lang morg

(require "lib/math/id.rkt"
         "lib/math.rkt")

(define a "a")
(define a0 (a . _ . "0"))
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define a3 (a . _ . "3"))
(define A "A")
(define p "p")
(define p1 (p . _ . "1"))
(define p2 (p . _ . "2"))
(define q "q")
(define q1 (q . _ . "1"))
(define q2 (q . _ . "2"))

@section[
  #:id (current-id)
  #:title @%{高次グルーポイド構造}
  @paragraph{
    要素@(math (a1 a2 . elem-of* . A))に対して、@(math (a1 . id-type . a2))がまた型であるということは、同一視@(math (p1 p2 . elem-of* . (a1 . id-type . a2)))に対してもまた同一視型@(math (p1 . id-type . p2))がある。同一視@(math (q1 q2 . elem-of* . (p1 . id-type . p2)))に対してさらに同一視型@(math (q1 . id-type . q2))があり、これを繰り返すと好きなだけ「高次の」同一視型を得る。実は、これらの高次の同一視型たちは@emph{∞グルーポイド}と呼ばれる構造の一部であることが知られている@ref["Lumsdaine--2010-0000"]@ref["van-den-Berg--Garner--2011-0000"]。∞グルーポイドの構造は無限個の演算を持つ複雑なもので深入りはしない。ただ覚えておくとよいのは、あらゆる型が自動的にそのような豊富な構造を持ち、あらゆる構成が自動的にその構造と整合的になるということである。
  }
  @paragraph{
    ∞グルーポイドの持つ構造の一部を挙げる。∞グルーポイドの文脈では要素@(math (p . elem-of . (a1 . id-type . a2)))は@emph{射}と呼ばれる。@(math (refl . elem-of . (a1 . id-type . a1)))は@emph{恒等射}、@(math ((id-inv p) . elem-of . (a2 . id-type . a1)))は@emph{逆射}、@(math ((q . id-comp . p) . elem-of . (a1 . id-type . a3)))は@emph{合成射}と呼ばれる。@(math ((id-extension . $* . p1 p2) . elem-of . (a1 . id-type . a2)))は@(math (p2 . elem-of . (a0 . id-type . a2)))の@(math (p1 . elem-of . (a0 . id-type . a1)))に沿った@emph{拡張}である。
  }
  (include-part "001M.rkt")
  (include-part "0027.rkt")
  (include-part "002O.rkt")
  (include-part "002P.rkt")
  (include-part "0047.rkt")
  (include-part "002R.rkt")
  (include-part "002Q.rkt")
  (include-part "002S.rkt")
]
