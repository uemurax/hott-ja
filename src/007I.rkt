#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/id-over.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define p "p")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族、@(math (f . elem-of . (d-fun-type (x . elem-of . A) (B . $ . x))))を関数とする。関数@disp{
      @(math ((fun-apply-id/d . $ . f) . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . A)) (d-fun-type (p . elem-of . (x1 . id-type . x2)) ((f . $ . x1) . (id-type-over B p) . (f . $ . x2))))))
    }を@(math ((fun-apply-id/d . $* . f refl) . def-eq . refl))で定義する。
  }
]
