#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define z "z")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define a "a")
(define p "p")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。関数@(math ((abs z ((proj 1) . $ . z)) . elem-of . ((d-pair-type (x1 x2 . elem-of* . A) (x1 . id-type . x2)) . fun-type . A)))は同値である。
  }
  #:proof @proof[
    @paragraph{
      任意の要素@(math (a . elem-of . A))に対して、レトラクトの列
      @disp{
        @eq-reasoning[
          @(math (fiber . $* . (abs z ((proj 1) . $ . z)) a))
          @(math retract-rel/symb) @%{並び換え}
          @(math (d-pair-type (x1 . elem-of . A) (d-pair-type (p . elem-of . (x1 . id-type . a)) (d-pair-type (x2 . elem-of . A) (x1 . id-type . x2)))))
          @(math retract-rel/symb) @%{@ref["0026"]}
          @(math (d-pair-type (x2 . elem-of . A) (a . id-type . x2)))
        ]
      }
      を得て、最後の型は@ref["001N"]により可縮である。
    }
  ]
]
