#lang morg

(require "lib/math/id.rkt"
         "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define a "a")
(define a0 (a . _ . "0"))
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define c "c")
(define p "p")
(define q "q")
(define q- "q'")
(define r "r")
(define s "s")
(define x "x")
(define z "z")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (a1 a2 . elem-of* . A))を要素とする。@(math A)が可縮ならば@(math (a1 . id-type . a2))も可縮である。
  }
  #:proof @proof[
    @paragraph{
      @(math (c . elem-of . (is-contr . $ . A)))と仮定する。要素@(math (p . elem-of . (a1 . id-type . a2)))と@(math (q . elem-of . (d-fun-type (z . elem-of . (a1 . id-type . a2)) (p . id-type . z))))を構成すればよい。仮定@(math c)より@(math (a0 . elem-of . "A"))と@(math (r . elem-of . (d-fun-type (x . elem-of . A) (a0 . id-type . x))))を得る。@(math (p . def-eq . (id-extension . $* . (r . $ . a1) (r . $ . a2))))と定義する。@(math q)については、一般化したもの@(math (q- . elem-of . (d-fun-type (x . elem-of . A) (d-fun-type (z . elem-of . (a1 . id-type . x)) ((id-extension . $* . (r . $ . a1) (r . $ . x)) . id-type . z)))))を構成し、@(math (q . def-eq . (q- . $ . a2)))と定義する。同一視型の帰納法により、要素@(math (s . elem-of . ((id-extension . $* . (r . $ . a1) (r . $ . a1)) . id-type . refl)))を構成すればよいが、これは@ref["001M"]で構成した。
    }
  ]
]
