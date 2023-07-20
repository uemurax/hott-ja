#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define c "c")
(define c1 (c . _ . "1"))
(define c2 (c . _ . "2"))
(define E "E")
(define x "x")
(define y "y")
(define z "z")
(define p "p")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (c1 c2 . elem-of* . (A . pair-type . B)))を要素とする。同値@(math ((c1 . id-type . c2) . equiv . ((((proj 1) . $ . c1) . id-type . ((proj 1) . $ . c2)) . pair-type . (((proj 2) . $ . c1) . id-type . ((proj 2) . $ . c2)))))を構成しよう。@ref["001S"]を適用する。@(math (E . elem-of . ((A . pair-type . B) . fun-type . (universe . $ . i))))を@(math (abs z ((((proj 1) . $ . c1) . id-type . ((proj 1) . $ . z)) . pair-type . (((proj 2) . $ . c1) . id-type . ((proj 2) . $ . z)))))と定義する。要素@(math ((pair . $* . refl refl) . elem-of . (E . $ . c1)))を得る。レトラクトの列
    @disp{
      @eq-reasoning[
        @(math (d-pair-type (z . elem-of . (A . pair-type . B)) (E . $ . z)))
        @(math retract-rel/symb) @%{並び換え}
        @(math (d-pair-type (x . elem-of . A) (d-pair-type (p . elem-of . (((proj 1) . $ . c1) . id-type . x)) (d-pair-type (y . elem-of . B) (((proj 2) . $ . c1) . id-type . y)))))
        @(math retract-rel/symb) @%{@ref["001N"]と@ref["0025"]}
        @(math (d-pair-type (y . elem-of . B) (((proj 2) . $ . c1) . id-type . y)))
      ]
    }
    を得て、最後の型は@ref["001N"]により可縮なので、@ref["001K"]より@(math (d-pair-type (z . elem-of . (A . pair-type . B)) (E . $ . z)))も可縮である。
  }
]
