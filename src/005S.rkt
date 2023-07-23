#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define a "a")
(define c "c")
(define z "z")
(define x "x")
(define p "p")
(define q "q")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数、@(math (a . elem-of . A))と@(math (c . elem-of . (fiber . $* . f (f . $ . a))))を要素とすると、同値
    @disp{
      @(math (((record-elem (list fiber:elem a) (list fiber:id refl)) . id-type . c) . equiv . (fiber . $* . ((fun-apply-id . $ . f) . $i* . ((proj 1) . $ . c) a) ((proj 2) . $ . c))))
    }
    を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["001S"]を適用する。レトラクト
      @disp{
        @eq-reasoning[
          @(math (d-pair-type (z . elem-of . (fiber . $* . f (f . $ . a))) (fiber . $* . ((fun-apply-id . $ . f) . $i* . ((proj 1) . $ . c) a) ((proj 2) . $ . c))))
          @(math retract-rel/symb) @%{並び替え}
          @(math (d-pair-type (x . elem-of . A) (d-pair-type (p . elem-of . (x . id-type . a)) (d-pair-type (q . elem-of . ((f . $ . x) . id-type . (f . $ . a))) ((f . $ . p) . id-type . q)))))
          @(math retract-rel/symb) @%{@ref["0026"]}
          @(math (d-pair-type (q . elem-of . ((f . $ . a) . id-type . (f . $ . a))) ((f . $ . refl) . id-type . q)))
        ]
      }
      を得て、最後の型は@ref["001N"]より可縮である。
    }
  ]
]
