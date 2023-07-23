#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define n "n")
(define x "x")
(define y "y")
(define c "c")
(define c1 (c . _ . "1"))
(define w "w")
(define v "v")

@proposition[
  #:id (current-id)
  @paragraph{
    一価性と関数外延性を仮定する。@(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素、@(math (n . elem-of . trunc-level))を要素とすると、同値@(math (((trunc:in (trunc-level:succ . $ . n) a1) . id-type . (trunc:in (trunc-level:succ . $ . n) a2)) . equiv . (trunc n (a1 . id-type . a2))))を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["0056"]を型の族@(math ((abs x (trunc n (a1 . id-type . x))) . elem-of . (A . fun-type . (universe . $ . i))))に適用すると、@ref["001S"]より、@(math (trunc (trunc-level:succ . $ . n) (d-pair-type (x . elem-of . A) (trunc n (a1 . id-type . x)))))が可縮であることを示せば十分である。要素@(math (c1 . elem-of . (trunc (trunc-level:succ . $ . n) (d-pair-type (x . elem-of . A) (trunc n (a1 . id-type . x))))))を@(math (trunc:in (trunc-level:succ . $ . n) (pair . $* . a1 (trunc:in n refl))))と定義する。任意の@(math (w . elem-of . (trunc (trunc-level:succ . $ . n) (d-pair-type (x . elem-of . A) (trunc n (a1 . id-type . x))))))に対して同一視@(math (c1 . id-type . w))を構成する。@ref["0052"]よりこの同一視型は@(math (trunc-level:succ . $ . n))型なので、帰納法より任意の@(math (x . elem-of . A))と@(math (v . elem-of . (trunc n (a1 . id-type . x))))に対して同一視@(math (c1 . id-type . (trunc:in (trunc-level:succ . $ . n) (pair . $* . x v))))を構成すればよい。この同一視型は定義から@(math n)型なので、帰納法より任意の@(math (x . elem-of . A))と@(math (y . elem-of . (a1 . id-type . x)))に対して同一視@(math (c1 . id-type . (trunc:in (trunc-level:succ . $ . n) (pair . $* . x (trunc:in n y)))))を構成すればよいが、同一視型の帰納法で@(math refl)を与えればよい。
    }
  ]
]
