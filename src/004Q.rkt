#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define g "g")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。@(math f)が同値ならば、@(math (linv . $ . f))と@(math (rinv . $ . f))は可縮である。
  }
  #:proof @proof[
    @paragraph{
      関数外延性から、レトラクト@(math ((rinv . $ . f) . retract-rel . (fiber . $* . (abs (g . elem-of . (B . fun-type . A)) (f . fun-comp . g)) id-fun)))を得て、右辺は@ref["004P"]より可縮である。@(math (linv . $ . f))についても同様である。
    }
  ]
]
