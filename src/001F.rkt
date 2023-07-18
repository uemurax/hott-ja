#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define z "z")
(define p "p")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。関数@disp{
      @(math ((fun-apply-id . $ . f) . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . A)) ((x1 . id-type . x2) . fun-type . ((f . $ . x1) . id-type . (f . $ . x2))))))
    }を@(math (abs* x1 x2 z (transport . $* . (abs x ((f . $ . x1) . id-type . (f . $ . x))) z refl)))と定義する。文脈上わかる場合は、@(math (fun-apply-id . $* . f p))のことを@(math (f . $ . p))と書いてしまうこともある。
  }
]
