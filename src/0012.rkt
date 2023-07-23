#lang morg

(require "lib/math.rkt"
         "lib/markup/exercise.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define f "f")
(define g "g")
(define h "h")

@exercise[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B C D . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))と@(math (g . elem-of . (B . fun-type . C)))と@(math (h . elem-of . (C . fun-type . D)))を関数とする。
    @ordered-list[
      @list-item{@(math (f . def-eq . (f . fun-comp . id-fun)))であることを確かめよ。}
      @list-item{@(math ((id-fun . fun-comp . f) . def-eq . f))であることを確かめよ。}
      @list-item{@(math (((h . fun-comp . g) . fun-comp . f) . def-eq . (h . fun-comp . (g . fun-comp . f))))であることを確かめよ。}
    ]
  }
]
