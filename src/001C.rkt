#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt")

(define i "i")
(define j "j")
(define A "A")
(define B "B")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define p "p")
(define x "x")
(define z "z")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ゆそうかんすう"]{輸送関数}
    @notation-index[#:key "transport"]{@(math transport)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math j)を階数、@(math (B . elem-of . (A . fun-type . (universe . $ . j))))を型の族とする。@(math (a1 a2 . elem-of* . A))と@(math (p . elem-of . (a1 . id-type . a2)))を要素とする。@dfn{輸送関数(transport function)}@disp{
      @(math ((transport . $* . B p) . elem-of . ((B . $ . a1) . fun-type . (B . $ . a2))))
    }を@(math (id-ind . $* . p (abs* x z (B . $ . x))))と定義する。@(math ((transport . $* . B (refl . $i . a1)) . def-eq . (id-fun . $i . (B . $ . a1))))であることが確かめられる。
  }
]
