#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

(define i "i")
(define A "A")
(define B "B")
(define p "p")
(define x "x")
(define f "f")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とする。関数@(math (p . elem-of . ((paren (A . fun-type . (d-pair-type (x . elem-of . A) (B . $ . x)))) . fun-type . (paren (A . fun-type . A)))))を@(math (abs f (abs x ((proj 1) . $ . (f . $ . x)))))とし、型@(math ((section-of-proj . $* . A B) . elem-of . (universe . $ . i)))を@(math (fiber . $* . p id-fun))と定義する。
  }
]
