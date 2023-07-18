#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define A1 (A . _ . "1"))
(define A2 (A . _ . "2"))
(define A3 (A . _ . "3"))
(define f "f")
(define g "g")
(define h "h")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A1 A2 A3 . elem-of* . (universe . $ . i)))を型とする。関数@(math (f . elem-of . (A1 . fun-type . A2)))と@(math (g . elem-of . (A2 . fun-type . A3)))と@(math (h . elem-of . (A3 . fun-type . A1)))がある時、各@(math (A . _ . "n"))と@(math (A . _ . "m"))は論理的に同値であることを確かめよ。
  }
]
