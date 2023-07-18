#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define g "g")
(define c "c")
(define x "x")
(define y "y")
(define p "p")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B C . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))と@(math (g . elem-of . (B . fun-type . C)))を型、@(math (c . elem-of . C))を要素とすると、@(math ((d-pair-type (y . elem-of . (fiber . $* . g c)) (fiber . $* . f (y . record-field . fiber:elem))) . bi-retract-rel .  (fiber . $* . (g . fun-comp . f) c)))の要素を構成できる。
  }
  #:proof @proof[
    @paragraph{
      次のようにわかる。
      @disp{
        @eq-reasoning[
          @(math (d-pair-type (y . elem-of . (fiber . $* . g c)) (fiber . $* . f (y . record-field . fiber:elem))))
          @(math bi-retract-rel/symb) @%{並び換え}
          @(math (d-pair-type (x . elem-of . A) (d-pair-type (y . elem-of . B) (d-pair-type (p . elem-of . ((f . $ . x) . id-type . y)) ((g . $ . y) . id-type . c)))))
          @(math bi-retract-rel/symb) @%{@ref["001W"]と@ref["0025"]と@ref["001N"]}
          @(math (d-pair-type (x . elem-of . A) ((g . $ . (f . $ . x)) . id-type . c)))
        ]
      }
    }
  ]
]
