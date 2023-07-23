#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define f "f")
(define g "g")
(define h "h")
(define d "d")
(define y "y")
(define y- "y'")
(define z "z")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B C D . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))と@(math (g . elem-of . (B . fun-type . C)))と@(math (h . elem-of . (C . fun-type . D)))を関数とする。@(math (g . fun-comp . f))と@(math (h . fun-comp . g))が同値ならば@(math f)と@(math g)と@(math h)と@(math (fun-comp h g f))も同値である。
  }
  #:proof @proof[
    @paragraph{
      任意の要素@(math (d . elem-of . D))に対して、レトラクト
      @disp{
        @eq-reasoning[
          @(math (fiber . $* . (fun-comp h g f) d))
          @(math retract-rel/symb) @%{@ref["002L"]}
          @(math (d-pair-type (z . elem-of . (fiber . $* . h d)) (d-pair-type (y . elem-of . (fiber . $* . g (z . record-field . fiber:elem))) (fiber . $* . f (y . record-field . fiber:elem)))))
          @(math retract-rel/symb) @%{@ref["002M"]}
          @(math (d-pair-type (z . elem-of . (fiber . $* . h d)) (d-pair-type (y- . elem-of . (fiber . $* . g (z . record-field . fiber:elem))) (d-pair-type (y . elem-of . (fiber . $* . g (z . record-field . fiber:elem))) (fiber . $* . f (y . record-field . fiber:elem))))))
          @(math retract-rel/symb) @%{@(math (h . fun-comp . g))が同値}
          @(math (d-pair-type (y . elem-of . (fiber . $* . g blank)) (fiber . $* . f (y . record-field . fiber:elem))))
        ]
      }
      を得て、最後の型は@(math (g . fun-comp . f))が同値なので可縮である。よって、@(math (fun-comp h g f))は同値である。すると@ref["002E"]より残りの関数もすべて同値である。
    }
  ]
]
