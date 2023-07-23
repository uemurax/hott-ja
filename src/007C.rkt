#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define z "z")
(define a "a")
(define p "p")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型、@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を型の族とする。@(math (d-fun-type (x . elem-of . A) (is-contr . $ . (B . $ . x))))の要素があるならば、関数@(math ((abs z ((proj 1) . $ . z)) . elem-of . ((d-pair-type (x . elem-of . A) (B . $ . x)) . fun-type . A)))は同値である。
  }
  #:proof @proof[
    @paragraph{
      任意の@(math (a . elem-of . A))に対して、レトラクト
      @disp{
        @eq-reasoning[
          @(math (fiber . $* . (abs z ((proj 1) . $ . z)) a))
          @(math retract-rel/symb) @%{並び換え}
          @(math (d-pair-type (x . elem-of . A) (d-pair-type (p . elem-of . (x . id-type . a)) (B . $ . x))))
          @(math retract-rel/symb) @%{@ref["0026"]}
          @(math (B . $ . a))
        ]
      }
      を得て、最後の型は仮定より可縮である。
    }
  ]
]
